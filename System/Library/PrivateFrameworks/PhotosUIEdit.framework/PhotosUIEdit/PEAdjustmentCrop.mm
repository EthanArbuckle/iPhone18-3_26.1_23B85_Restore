@interface PEAdjustmentCrop
- (CGSize)aspectRatio;
- (PEAdjustmentCrop)initWithModifier:(id)a3;
- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7;
@end

@implementation PEAdjustmentCrop

- (CGSize)aspectRatio
{
  width = self->_aspectRatio.width;
  height = self->_aspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)applyToCompositionController:(id)a3 valuesCalculator:(id)a4 asset:(id)a5 livePortraitBehaviorDelegate:(id)a6 completionHandler:(id)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a7;
  v11 = objc_alloc(MEMORY[0x277D2CFB0]);
  v12 = [v9 composition];
  v13 = [v11 initWithComposition:v12];

  v59 = 0;
  v14 = [v13 submitSynchronous:&v59];
  v15 = [v14 geometry];

  if (v15)
  {
    [v15 extent];
    NUPixelRectToCGRect();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(PEAdjustmentCrop *)self modifier];
    v25 = v24[2](v21, v23);
    v27 = v26;

    if (v21 == 0.0 || v23 == 0.0 || (v21 == *MEMORY[0x277D3A858] ? (v28 = v23 == *(MEMORY[0x277D3A858] + 8)) : (v28 = 0), v28))
    {
      v29 = 1.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 134218496;
        v61 = v21;
        v62 = 2048;
        v63 = v23;
        v64 = 2048;
        v65 = 0x3FF0000000000000;
        _os_log_fault_impl(&dword_25E6E9000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
      }
    }

    else
    {
      v29 = fabs(v21 / v23);
    }

    if (v25 == 0.0 || v27 == 0.0 || v25 == *MEMORY[0x277D3A858] && v27 == *(MEMORY[0x277D3A858] + 8))
    {
      v30 = 1.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 134218496;
        v61 = v25;
        v62 = 2048;
        v63 = v27;
        v64 = 2048;
        v65 = 0x3FF0000000000000;
        _os_log_fault_impl(&dword_25E6E9000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
      }
    }

    else
    {
      v30 = fabs(v25 / v27);
    }

    if (vabdd_f64(v30, v29) > 0.00000999999975)
    {
      v57 = v27;
      v31 = v17 + v21 * 0.5;
      v32 = v19 + v23 * 0.5;
      PFSizeWithAspectRatioFittingSize();
      v34 = v33;
      v36 = v35;
      v37 = v31 + v33 * -0.5;
      v38 = v32 + v35 * -0.5;
      [v15 orientation];
      NUOrientationInverse();
      if (NUOrientationIsValid())
      {
        NUPixelSizeFromCGSize();
        NUOrientationTransformRect();
        v37 = v39;
        v38 = v40;
        v34 = v41;
        v36 = v42;
      }

      v43 = [v9 cropAdjustmentController];
      [v43 cropRect];
      v45 = v44;
      v47 = v46;

      v67.origin.x = v37;
      v67.origin.y = v38;
      v67.size.width = v34;
      v67.size.height = v36;
      v68 = CGRectOffset(v67, v45, v47);
      x = v68.origin.x;
      y = v68.origin.y;
      width = v68.size.width;
      height = v68.size.height;
      if ((v25 | v57) < 0)
      {
        v55 = [MEMORY[0x277CCA890] currentHandler];
        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NUPixelSize NUPixelSizeMake(NSInteger, NSInteger)"}];
        [v55 handleFailureInFunction:v56 file:@"NUGeometryPrimitives.h" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"(width >= 0) && (height >= 0)"}];
      }

      v52 = NUOrientationTransformImageSize();
      v53 = *MEMORY[0x277D3AA08];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __119__PEAdjustmentCrop_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke;
      v58[3] = &__block_descriptor_80_e36_v16__0__PICropAdjustmentController_8l;
      *&v58[4] = x;
      *&v58[5] = y;
      *&v58[6] = width;
      *&v58[7] = height;
      v58[8] = v52;
      v58[9] = v54;
      [v9 modifyAdjustmentWithKey:v53 modificationBlock:v58];
    }

    v10[2](v10, 1, 0);
  }
}

void __119__PEAdjustmentCrop_applyToCompositionController_valuesCalculator_asset_livePortraitBehaviorDelegate_completionHandler___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setCropRect:{v3, v4, v5, v6}];
  [v7 setConstraintWidth:*(a1 + 8)];
  [v7 setConstraintHeight:*(a1 + 9)];
  [v7 setIsAuto:0];
  [v7 setEnabled:1];
}

- (PEAdjustmentCrop)initWithModifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PEAdjustmentCrop;
  v5 = [(PEAdjustmentCrop *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    modifier = v5->_modifier;
    v5->_modifier = v6;
  }

  return v5;
}

@end