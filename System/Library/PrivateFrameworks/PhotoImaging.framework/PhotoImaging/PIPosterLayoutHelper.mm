@interface PIPosterLayoutHelper
- (double)centerLayoutHorizontalTarget;
- (id)intermediateWithAdaptiveStrategy:(unint64_t)a3 intermediate:(id)a4;
- (id)intermediateWithInactiveStrategy:(unint64_t)a3 intermediate:(id)a4;
- (id)intermediateWithOverlapStrategy:(unint64_t)a3 intermediate:(id)a4;
- (id)intermediateWithZoomStrategy:(unint64_t)a3 intermediate:(id)a4;
- (id)pixelBasedIntermediateWithOverlapStrategy:(unint64_t)a3 intermediate:(id)a4 translationY:(double)a5;
- (id)scoreIntermediate:(id)a3;
- (void)initWithCIContext:(double)a3 matte:(double)a4 posterClassification:(double)a5 initialRect:(double)a6 imageSize:(double)a7 effectiveAcceptableRect:(uint64_t)a8 effectivePreferredRect:(void *)a9 validBoundsNormalized:(void *)a10 headroomFeasible:(uint64_t)a11 hasTopEdgeContact:(uint64_t)a12 shouldConstrainLayoutToBounds:(uint64_t)a13 computeSpatial:(char)a14 spatialPadding:(__int128)a15 layoutType:(uint64_t)a16 allowedLayoutStrategies:(uint64_t)a17 layoutConfiguration:(__int128)a18;
- (void)initWithPosterClassification:(uint64_t)a3 initialRect:(uint64_t)a4 imageSize:(uint64_t)a5 effectiveAcceptableRect:(uint64_t)a6 effectivePreferredRect:(uint64_t)a7 validBoundsNormalized:(uint64_t)a8 headroomFeasible:(uint64_t)a9 hasTopEdgeContact:(uint64_t)a10 computeSpatial:(uint64_t)a11 spatialPadding:(uint64_t)a12 layoutType:(uint64_t)a13 allowedLayoutStrategies:(uint64_t)a14 layoutConfiguration:(uint64_t)a15;
@end

@implementation PIPosterLayoutHelper

- (id)scoreIntermediate:(id)a3
{
  v4 = a3;
  [(PFParallaxLayoutHelper *)self computeCropScoreForIntermediate:v4];
  v78 = v5;
  v6 = self->_matte;
  v8 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  if ([(PFParallaxLayoutHelper *)self headroomFeasible])
  {
    [(PFParallaxLayoutHelper *)self extendedImageSize];
  }

  else
  {
    [(PFParallaxLayoutHelper *)self originalImageSize];
  }

  v11 = v9;
  v12 = v10;
  [v4 visibleRect];
  v17 = v16 - v8;
  v18 = 0.0;
  v19 = 0.0;
  if (v11 != 0.0)
  {
    v17 = v17 / v11;
    v19 = v14 / v11;
  }

  v20 = v13 - v7;
  if (v12 != 0.0)
  {
    v20 = v20 / v12;
    v18 = v15 / v12;
  }

  [(CIImage *)v6 extent];
  v23 = v21 + v17 * v22;
  v26 = v24 + v20 * v25;
  v27 = v19 * v22;
  v28 = v18 * v25;
  [(PFParallaxLayoutHelper *)self unsafeAreaInImageSpaceWithVisibleFrame:v23, v26, v19 * v22, v18 * v25];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v87 = 0u;
  v88 = 0u;
  v37 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
  [PISegmentationHelper computeClockLayerOrderWithVisibleFrame:v6 segmentationMatte:v37 layoutConfiguration:self->_context context:0 interactive:v23, v26, v27, v28];

  [PISegmentationHelper computeMatteCoverageWithRect:v6 segmentationMatte:self->_context context:v30, v32, v34, v36];
  v39 = v38;
  [v4 visibleRect];
  [(PFParallaxLayoutHelper *)self unsafeAreaInImageSpaceWithVisibleFrame:?];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v39;
  if ([v4 overlapStrategy] == 4)
  {
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    if ([(PFParallaxLayoutHelper *)self canInflate])
    {
      [objc_opt_class() inflatePersonFaceRect:{v50, v52, v54, v56}];
      v50 = v57;
      v52 = v58;
      v54 = v59;
      v56 = v60;
    }

    v90.origin.x = v41;
    v90.origin.y = v43;
    v90.size.width = v45;
    v90.size.height = v47;
    v94.origin.x = v50;
    v94.origin.y = v52;
    v94.size.width = v54;
    v94.size.height = v56;
    v91 = CGRectIntersection(v90, v94);
    if (v91.size.width == 0.0 || v91.size.height == 0.0 || (v91.size.height == *(MEMORY[0x1E69BDDB0] + 8) ? (v61 = v91.size.width == *MEMORY[0x1E69BDDB0]) : (v61 = 0), v61))
    {
      v62 = 0.0;
    }

    else
    {
      v62 = v91.size.width * v91.size.height;
    }

    v63 = v47 == 0.0 || v45 == 0.0;
    if (v63)
    {
      v64 = v45 * v47;
    }

    else
    {
      v65 = v47 == *(MEMORY[0x1E69BDDB0] + 8) && v45 == *MEMORY[0x1E69BDDB0];
      v64 = v45 * v47;
      v66 = v45 * v47;
      if (!v65)
      {
LABEL_30:
        [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
        v95.origin.x = v67;
        v95.origin.y = v68;
        v95.size.width = v69;
        v95.size.height = v70;
        v92.origin.x = v41;
        v92.origin.y = v43;
        v92.size.width = v45;
        v92.size.height = v47;
        v93 = CGRectIntersection(v92, v95);
        if (v93.size.width == 0.0 || v93.size.height == 0.0 || (v93.size.height == *(MEMORY[0x1E69BDDB0] + 8) ? (v71 = v93.size.width == *MEMORY[0x1E69BDDB0]) : (v71 = 0), v71))
        {
          v72 = 0.0;
          if (!v63)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v72 = v93.size.width * v93.size.height;
          if (!v63)
          {
LABEL_40:
            if (v47 != *(MEMORY[0x1E69BDDB0] + 8) || v45 != *MEMORY[0x1E69BDDB0])
            {
              goto LABEL_46;
            }
          }
        }

        v64 = 0.0;
LABEL_46:
        v48 = v62 / v66;
        v39 = v72 / v64;
        goto LABEL_47;
      }
    }

    v66 = 0.0;
    goto LABEL_30;
  }

LABEL_47:
  [(PFParallaxLayoutHelper *)self scoreAdjustmentWithUnscoredIntermediate:v4 unsafeAreaOverlap:v48 timeBottomOverlap:0.0 timeTopOverlap:0.0];
  v79[1] = 3221225472;
  v79[0] = MEMORY[0x1E69E9820];
  v79[2] = __42__PIPosterLayoutHelper_scoreIntermediate___block_invoke;
  v79[3] = &unk_1E82ACB60;
  v81 = v78;
  v82 = (v78 + v74) * 0.5;
  v83 = 0;
  v84 = 0;
  v85 = v48;
  v86 = v39;
  v79[4] = self;
  v75 = v4;
  v80 = v75;
  v76 = [v75 updateWithConfiguration:v79];

  return v76;
}

void __42__PIPosterLayoutHelper_scoreIntermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setCropScore:v3];
  [v4 setLayoutScore:*(a1 + 56)];
  [v4 setTimeBottomOverlap:*(a1 + 64)];
  [v4 setTimeTopOverlap:*(a1 + 72)];
  [v4 setUnsafeAreaOverlap:*(a1 + 80)];
  [v4 setUninflatedUnsafeAreaOverlap:*(a1 + 88)];
  [v4 setHasTopEdgeContact:{objc_msgSend(*(a1 + 32), "hasTopEdgeContact")}];
  [*(a1 + 40) maxClockShift];
  [v4 setMaxClockShift:?];
}

- (id)intermediateWithAdaptiveStrategy:(unint64_t)a3 intermediate:(id)a4
{
  v6 = a4;
  if ([v6 overlapStrategy] == 5)
  {
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __70__PIPosterLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke;
    v72[3] = &unk_1E82ACB38;
    v73 = v6;
    a3 = [v73 updateWithConfiguration:v72];
  }

  else
  {
    [v6 visibleRect];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v6 headroomStrategy]);
    if (a3)
    {
      if (a3 == 2)
      {
        v17 = v15;
        v18 = v16;
        v19 = MEMORY[0x1E69C07A8];
        [v6 visibleRect];
        v67 = v21;
        v69 = v20;
        v23 = v22;
        v25 = v24;
        [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
        v35 = [(PFParallaxLayoutHelper *)self classification];
        [(PFParallaxLayoutHelper *)self allowedClockStretch];
        [v19 adaptiveFrameForVisibleFrame:v34 essentialRect:v35 originalImageSize:v69 layoutConfiguration:v67 classification:v23 maxClockStretchOverride:{v25, v27, v29, v31, v33, *&v17, *&v18, v36}];
        v68 = v38;
        v70 = v37;
        v12 = v39;
        v14 = v40;

        [v6 visibleRect];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        matte = self->_matte;
        v50 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
        [PISegmentationHelper computeStretchOverlapYOffsetWithVisibleFrame:matte imageSize:0 segmentationMatte:v50 classicOverlap:self->_context layoutConfiguration:v42 context:v44, v46, v48, v17, v18];
        v52 = v51;

        v53 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
        [v53 maxStrechAmountNormalized];
        v55 = v54;
        [v6 visibleRect];
        v57 = v55 * v56;
        [(PFParallaxLayoutHelper *)self allowedClockStretch];
        v59 = v58 * v57;

        [v6 visibleRect];
        v61 = v59 - (v14 - v60);
        v10 = v68;
        v62 = v52 - v61;
        if (v62 < 0.0)
        {
          v62 = 0.0;
        }

        v63 = v52 - v62;
        [v6 visibleRect];
        v65 = v63 / v64;
        v8 = v70;
      }

      else
      {
        v65 = 0.0;
      }

      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __70__PIPosterLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke_2;
      v71[3] = &__block_descriptor_80_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
      v71[4] = v8;
      v71[5] = v10;
      v71[6] = v12;
      *&v71[7] = v14;
      v71[8] = a3;
      *&v71[9] = v65;
      a3 = [v6 updateWithConfiguration:v71];
    }
  }

  return a3;
}

void __70__PIPosterLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 visibleRect];
  [v3 setAdaptiveVisibleRect:?];
  [v3 setAdaptiveStrategy:1];
}

void __70__PIPosterLayoutHelper_intermediateWithAdaptiveStrategy_intermediate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setAdaptiveVisibleRect:{v3, v4, v5, v6}];
  [v7 setAdaptiveStrategy:*(a1 + 64)];
  [v7 setMaxClockShift:*(a1 + 72)];
}

- (id)intermediateWithInactiveStrategy:(unint64_t)a3 intermediate:(id)a4
{
  v6 = a4;
  [v6 visibleRect];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  v15 = *(MEMORY[0x1E695F050] + 16);
  v82 = *MEMORY[0x1E695F050];
  v83 = v15;
  [v6 adaptiveVisibleRect];
  if (a3)
  {
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    if (a3 != 2)
    {
      v24 = 0.0;
      if (a3 == 1)
      {
        [v6 visibleRect];
      }

      else
      {
        v27 = 0.0;
        v26 = 0.0;
        v25 = 0.0;
      }

      goto LABEL_9;
    }

    v72 = v18;
    v73 = v16;
    [(PFParallaxLayoutHelper *)self originalImageSize];
    v29 = v28;
    v31 = v30;
    memset(v81, 0, sizeof(v81));
    [v6 visibleRect];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = [v6 headroomStrategy] == 2;
    matte = self->_matte;
    v42 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
    v70 = v29;
    v71 = v31;
    [PISegmentationHelper computeInactiveFrameWithVisibleFrame:1 imageSize:v40 canUpdateVisibleRect:matte considerHeadroom:v42 segmentationMatte:self->_context layoutConfiguration:v33 context:v35, v37, v39, v29, v31];

    v85.origin = 0u;
    v85.size = 0u;
    if (CGRectIsNull(v85) || CGRectIsNull(v81[0]))
    {
LABEL_7:
      a3 = 0;
      goto LABEL_10;
    }

    y = v81[0].origin.y;
    x = v81[0].origin.x;
    height = v81[0].size.height;
    width = v81[0].size.width;
    v22 = v72;
    v20 = v73;
    if ([v6 adaptiveStrategy] == 2)
    {
      [v6 adaptiveVisibleRect];
      if (!CGRectIsNull(v86))
      {
        v44 = MEMORY[0x1E69C07A8];
        [v6 visibleRect];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [v6 adaptiveVisibleRect];
        [v44 topFrameForVisibleRect:v46 adaptiveRect:{v48, v50, v52, v53, v54, v55, v56}];
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;
        v80 = 0u;
        v79 = 0u;
        v78 = 0u;
        v77 = 0u;
        v65 = [v6 headroomStrategy] == 2;
        v66 = self->_matte;
        v67 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
        [PISegmentationHelper computeInactiveFrameWithVisibleFrame:1 imageSize:v65 canUpdateVisibleRect:v66 considerHeadroom:v67 segmentationMatte:self->_context layoutConfiguration:v58 context:v60, v62, v64, v70, v71];

        if (CGRectIsNull(v81[1]) || CGRectIsNull(v81[0]))
        {
          goto LABEL_7;
        }

        v82 = v79;
        v83 = v80;
        v20 = v77;
        v22 = v78;
        [v6 adaptiveVisibleRect];
        v21 = v68;
        [v6 visibleRect];
        v23 = *(&v77 + 1) + *(&v78 + 1) - v69;
      }
    }

    v24 = v81[1].size.height;
    v27 = v81[1].size.width;
    v26 = v81[1].origin.y;
    v25 = v81[1].origin.x;
LABEL_9:
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __70__PIPosterLayoutHelper_intermediateWithInactiveStrategy_intermediate___block_invoke;
    v74[3] = &__block_descriptor_168_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
    *&v74[4] = x;
    *&v74[5] = y;
    *&v74[6] = width;
    *&v74[7] = height;
    v74[8] = a3;
    *&v74[9] = v25;
    *&v74[10] = v26;
    *&v74[11] = v27;
    *&v74[12] = v24;
    v74[13] = v20;
    v74[14] = v21;
    v74[15] = v22;
    *&v74[16] = v23;
    v76 = v83;
    v75 = v82;
    a3 = [v6 updateWithConfiguration:v74];
  }

LABEL_10:

  return a3;
}

void __70__PIPosterLayoutHelper_intermediateWithInactiveStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setInactiveStrategy:*(a1 + 64)];
  [v7 setInactiveRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [v7 setAdaptiveVisibleRect:{*(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  [v7 setAdaptiveInactiveTopRect:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
}

- (id)intermediateWithOverlapStrategy:(unint64_t)a3 intermediate:(id)a4
{
  v104 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([v7 zoomStrategy] == 5)
  {
    v8 = &__block_literal_global_28743;
LABEL_3:
    v9 = [v7 updateWithConfiguration:v8];
LABEL_27:
    v4 = v9;
    goto LABEL_28;
  }

  -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v7 headroomStrategy]);
  v11 = v10;
  v13 = v12;
  if (a3 <= 2)
  {
    if (a3 < 2)
    {
      v100.receiver = self;
      v100.super_class = PIPosterLayoutHelper;
      [(PFParallaxLayoutHelper *)&v100 intermediateWithOverlapStrategy:a3 intermediate:v7];
      v9 = LABEL_7:;
      goto LABEL_27;
    }

    if (a3 == 2)
    {
      [v7 visibleRect];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      matte = self->_matte;
      v65 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
      [PISegmentationHelper computeTargetOverlapYOffsetWithVisibleFrame:matte imageSize:v65 segmentationMatte:self->_context layoutConfiguration:v57 context:v59, v61, v63, v11, v13];
      v67 = v66;

      v68 = self;
      v69 = 2;
      goto LABEL_26;
    }

LABEL_28:

    return v4;
  }

  if (a3 == 3)
  {
    *buf = 0;
    [v7 visibleRect];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = self->_matte;
    v79 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
    [PISegmentationHelper computeAvoidOverlapYOffsetWithVisibleFrame:v78 imageSize:v79 segmentationMatte:buf layoutConfiguration:self->_context outputUnsafeOverlap:v71 context:v73, v75, v77, v11, v13];
    v67 = v80;

    if (*buf > *MEMORY[0x1E69C0BB8] && ([(PFParallaxLayoutHelper *)self classification]== 1 || [(PFParallaxLayoutHelper *)self classification]== 2))
    {
      v99.receiver = self;
      v99.super_class = PIPosterLayoutHelper;
      [(PFParallaxLayoutHelper *)&v99 intermediateWithOverlapStrategy:4 intermediate:v7];
      goto LABEL_7;
    }

    v68 = self;
    v69 = 3;
LABEL_26:
    v9 = [(PIPosterLayoutHelper *)v68 pixelBasedIntermediateWithOverlapStrategy:v69 intermediate:v7 translationY:v67];
    goto LABEL_27;
  }

  if (a3 == 5)
  {
    [v7 visibleRect];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = self->_matte;
    v23 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
    [PISegmentationHelper computeStretchOverlapYOffsetWithVisibleFrame:v22 imageSize:0 segmentationMatte:v23 classicOverlap:self->_context layoutConfiguration:v15 context:v17, v19, v21, v11, v13];
    v25 = v24;

    [v7 visibleRect];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
    [v34 maxStrechAmountNormalized];
    v36 = v33 * v35;
    [(PFParallaxLayoutHelper *)self allowedClockStretch];
    v38 = v36 * v37;

    v39 = v25 - v38;
    if (v25 - v38 < 0.0)
    {
      v39 = 0.0;
    }

    v40 = v29 - v39;
    v41 = v25 - v39;
    if ([(PFParallaxLayoutHelper *)self classification]== 1 || [(PFParallaxLayoutHelper *)self classification]== 2)
    {
      v42 = MEMORY[0x1E69C07A8];
      [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
      v44 = v43;
      v96 = v11;
      v97 = v13;
      v45 = v41;
      v47 = v46;
      v49 = v48;
      v95 = v50;
      v51 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
      v52 = v49;
      v13 = v97;
      [v42 widgetZoneAdjustmentForVisibleFrame:v51 essentialRect:v27 layoutConfiguration:{v40, v31, v33, v44, v47, v52, v95}];
      v54 = v53;

      v40 = v40 - v54;
      v41 = v45 - v54;
      v11 = v96;
    }

    v106.origin.x = 0.0;
    v106.origin.y = 0.0;
    v106.size.width = v11;
    v106.size.height = v13;
    v107.origin.x = v27;
    v107.origin.y = v40;
    v107.size.width = v31;
    v107.size.height = v33;
    if (!CGRectContainsRect(v106, v107))
    {
      v4 = 0;
      goto LABEL_28;
    }

    [v7 visibleRect];
    v4 = 0;
    if (v41 / v55 >= 0.0 && fabs(v41 / v55) > 0.00000999999975)
    {
      v98[0] = MEMORY[0x1E69E9820];
      v98[1] = 3221225472;
      v98[2] = __69__PIPosterLayoutHelper_intermediateWithOverlapStrategy_intermediate___block_invoke_24;
      v98[3] = &__block_descriptor_80_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
      v98[4] = 5;
      *&v98[5] = v41 / v55;
      *&v98[6] = v27;
      *&v98[7] = v40;
      *&v98[8] = v31;
      *&v98[9] = v33;
      v8 = v98;
      goto LABEL_3;
    }

    goto LABEL_28;
  }

  if (a3 != 4)
  {
    goto LABEL_28;
  }

  v82 = NUAssertLogger_28745();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
  {
    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "overlapStrategy != PFParallaxUtilityOverlapForceMetadataAvoid"];
    *buf = 138543362;
    *&buf[4] = v83;
    _os_log_error_impl(&dword_1C7694000, v82, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v84 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v86 = NUAssertLogger_28745();
  v87 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v87)
    {
      v90 = dispatch_get_specific(*v84);
      v91 = MEMORY[0x1E696AF00];
      v92 = v90;
      v93 = [v91 callStackSymbols];
      v94 = [v93 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v90;
      v102 = 2114;
      v103 = v94;
      _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v87)
  {
    v88 = [MEMORY[0x1E696AF00] callStackSymbols];
    v89 = [v88 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    *&buf[4] = v89;
    _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  _NUAssertFailHandler();
  return NUAssertLogger_28745();
}

void __69__PIPosterLayoutHelper_intermediateWithOverlapStrategy_intermediate___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setOverlapStrategy:v3];
  [v4 setMaxClockShift:*(a1 + 40)];
  [v4 setVisibleRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

- (id)pixelBasedIntermediateWithOverlapStrategy:(unint64_t)a3 intermediate:(id)a4 translationY:(double)a5
{
  v8 = a4;
  [v8 visibleRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v8 headroomStrategy]);
  v18 = v17;
  v20 = v19;
  v50.origin.x = v10;
  v50.origin.y = v12;
  v50.size.width = v14;
  v50.size.height = v16;
  v21 = v20 - CGRectGetMaxY(v50);
  if (v21 > a5)
  {
    v21 = a5;
  }

  if (v21 <= -v12)
  {
    v22 = -v12;
  }

  else
  {
    v22 = v21;
  }

  v51.origin.x = v10;
  v51.origin.y = v12;
  v51.size.width = v14;
  v51.size.height = v16;
  v52 = CGRectOffset(v51, 0.0, v22);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  if (!self->_shouldConstrainLayoutToBounds)
  {
    goto LABEL_33;
  }

  rect1 = v18;
  [(PFParallaxLayoutHelper *)self pixelValidBounds];
  v28 = v27;
  v30 = v29;
  rect = v31;
  v33 = v32;
  if ([v8 headroomStrategy] == 2 || (v53.origin.x = v28, v53.origin.y = v30, v53.size.width = rect, v53.size.height = v33, CGRectIsNull(v53)))
  {
    v28 = 0.0;
    v30 = 0.0;
  }

  else
  {
    rect1 = rect;
    v20 = v33;
  }

  v34 = y + height;
  v35 = rect1;
  if (x + width >= v28 + rect1)
  {
    v36 = v28 + rect1;
  }

  else
  {
    v36 = x + width;
  }

  if (v28 >= v36)
  {
    v36 = v28;
  }

  if (v34 >= v30 + v20)
  {
    v37 = v30 + v20;
  }

  else
  {
    v37 = y + height;
  }

  if (v30 >= v37)
  {
    v37 = v30;
  }

  v38 = x + v36 - (x + width);
  v39 = y + v37 - v34;
  if (v38 >= v28 + rect1)
  {
    v38 = v28 + rect1;
  }

  x = v28 >= v38 ? v28 : v38;
  v40 = v39 >= v30 + v20 ? v30 + v20 : v39;
  y = v30 >= v40 ? v30 : v40;
  v41 = v28;
  v42 = v30;
  v43 = v20;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  if (!CGRectContainsRect(*(&v35 - 2), v54))
  {
    v44 = 0;
  }

  else
  {
LABEL_33:
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __92__PIPosterLayoutHelper_pixelBasedIntermediateWithOverlapStrategy_intermediate_translationY___block_invoke;
    v48[3] = &__block_descriptor_72_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
    *&v48[4] = x;
    *&v48[5] = y;
    *&v48[6] = width;
    *&v48[7] = height;
    v48[8] = a3;
    v44 = [v8 updateWithConfiguration:v48];
  }

  return v44;
}

void __92__PIPosterLayoutHelper_pixelBasedIntermediateWithOverlapStrategy_intermediate_translationY___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setOverlapStrategy:*(a1 + 8)];
}

- (id)intermediateWithZoomStrategy:(unint64_t)a3 intermediate:(id)a4
{
  v169 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3 - 1 < 3)
  {
    v164.receiver = self;
    v164.super_class = PIPosterLayoutHelper;
    [(PFParallaxLayoutHelper *)&v164 intermediateWithZoomStrategy:a3 intermediate:v6];
    v8 = LABEL_3:;
LABEL_4:
    v9 = v8;
    goto LABEL_80;
  }

  if (a3 != 4)
  {
    if (a3 == 5)
    {
      [v6 visibleRect];
      if (v10 >= 1.0)
      {
        [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
        if (v11 >= 1.0)
        {
          [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
          v13 = v12;
          v15 = v14;
          [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
          v18 = v16 + v17 * 0.5;
          [v7 visibleRect];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          matte = self->_matte;
          v28 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
          [PISegmentationHelper computeCenterZoomAreaWithMidpoint:matte visibleFrame:v28 segmentationMatte:self->_context layoutConfiguration:v18 context:v20, v22, v24, v26];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v171.origin.x = v30;
          v171.origin.y = v32;
          v171.size.width = v34;
          v171.size.height = v36;
          if (!CGRectIsNull(v171))
          {
            v37 = v13 + v15 * 0.5;
            v38 = v30 + v34 * 0.5;
            [v7 visibleRect];
            v40 = v34 / v39;
            [MEMORY[0x1E69C07A8] centerLayoutHorizontalUpperBound];
            if (v40 > v41 || ([MEMORY[0x1E69C07A8] centerLayoutHorizontalLowerBound], v42 = 1.0, v40 < v43))
            {
              [(PIPosterLayoutHelper *)self centerLayoutHorizontalTarget];
              v42 = v44 / v40;
            }

            [v7 visibleRect];
            v154 = v42;
            v46 = 1.0 / v42 * v45;
            v48 = 1.0 / v42 * v47;
            [v7 visibleRect];
            v51 = v49 + v50 * 0.5 - v37;
            [v7 visibleRect];
            v53 = v38 + v46 * -0.5;
            v156 = v37 + v51 / v52 * v48 + v48 * -0.5;
            v158 = v46;
            -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v7 headroomStrategy]);
            v55 = v54;
            v57 = v56;
            [(PFParallaxLayoutHelper *)self pixelValidBounds];
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v65 = v64;
            if ([v7 headroomStrategy] == 2 || (v172.origin.x = v59, v172.origin.y = v61, v172.size.width = v63, v172.size.height = v65, CGRectIsNull(v172)))
            {
              v59 = 0.0;
              v61 = 0.0;
            }

            else
            {
              v55 = v63;
              v57 = v65;
            }

            v138 = v158;
            v139 = v48 + v156;
            if (v158 + v53 >= v59 + v55)
            {
              v140 = v59 + v55;
            }

            else
            {
              v140 = v158 + v53;
            }

            if (v59 >= v140)
            {
              v140 = v59;
            }

            if (v139 >= v61 + v57)
            {
              v141 = v61 + v57;
            }

            else
            {
              v141 = v48 + v156;
            }

            if (v61 >= v141)
            {
              v141 = v61;
            }

            v142 = v53 + v140 - (v158 + v53);
            v143 = v156 + v141 - v139;
            if (v142 >= v59 + v55)
            {
              v142 = v59 + v55;
            }

            v144 = v59 >= v142 ? v59 : v142;
            v145 = v143 >= v61 + v57 ? v61 + v57 : v143;
            v146 = v61 >= v145 ? v61 : v145;
            v173.origin.x = v59;
            v173.origin.y = v61;
            v173.size.width = v55;
            v173.size.height = v57;
            v147 = v144;
            v148 = v146;
            v149 = v48;
            if (CGRectContainsRect(v173, *(&v138 - 2)))
            {
              v161[0] = MEMORY[0x1E69E9820];
              v161[1] = 3221225472;
              v161[2] = __66__PIPosterLayoutHelper_intermediateWithZoomStrategy_intermediate___block_invoke_2;
              v161[3] = &__block_descriptor_80_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
              *&v161[4] = v144;
              *&v161[5] = v146;
              *&v161[6] = v158;
              *&v161[7] = v48;
              v161[8] = 5;
              *&v161[9] = v154;
              v135 = v161;
              goto LABEL_107;
            }
          }
        }
      }
    }

    goto LABEL_79;
  }

  [v6 visibleRect];
  if (v66 >= 1.0)
  {
    [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
    if (v67 >= 1.0)
    {
      -[PFParallaxLayoutHelper imageSizeWithHeadroomStrategy:](self, "imageSizeWithHeadroomStrategy:", [v7 headroomStrategy]);
      v77 = v76;
      v79 = v78;
      v81 = *MEMORY[0x1E695EFF8];
      v80 = *(MEMORY[0x1E695EFF8] + 8);
      [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
      v84 = v82 + v83 * 0.5;
      v87 = v85 + v86 * 0.5;
      [v7 visibleRect];
      v89 = v88;
      v91 = v90;
      v92 = v84 + v88 * -0.5;
      v93 = v87 + v90 * -0.5;
      v94 = v88 + v92;
      v95 = v90 + v93;
      v96 = v81 + v77;
      if (v94 >= v96)
      {
        v97 = v96;
      }

      else
      {
        v97 = v94;
      }

      if (v81 >= v97)
      {
        v97 = v81;
      }

      v159 = v79;
      v98 = v79 + v80;
      if (v95 >= v79 + v80)
      {
        v99 = v79 + v80;
      }

      else
      {
        v99 = v95;
      }

      if (v80 >= v99)
      {
        v99 = v80;
      }

      v100 = v92 + v97 - v94;
      v101 = v93 + v99 - v95;
      if (v100 >= v96)
      {
        v100 = v96;
      }

      if (v81 >= v100)
      {
        v102 = v81;
      }

      else
      {
        v102 = v100;
      }

      if (v101 >= v98)
      {
        v103 = v98;
      }

      else
      {
        v103 = v101;
      }

      if (v80 >= v103)
      {
        v104 = v80;
      }

      else
      {
        v104 = v103;
      }

      buf[0] = 1;
      v105 = self->_matte;
      v106 = [(PFParallaxLayoutHelper *)self layoutConfiguration];
      [PISegmentationHelper computeHeadroomZoomFactorWithVisibleFrame:buf zoomTowardsTop:v105 matte:v106 layoutConfiguration:self->_context context:v102, v104, v89, v91];
      v108 = v107;

      if (v108 < 1.0)
      {
        v163.receiver = self;
        v163.super_class = PIPosterLayoutHelper;
        [(PFParallaxLayoutHelper *)&v163 intermediateWithZoomStrategy:4 intermediate:v7];
        goto LABEL_3;
      }

      v116 = 0.0;
      if (buf[0])
      {
        v116 = v159;
      }

      v157 = v116;
      [MEMORY[0x1E69C0798] targetZoomFactorLimitWithLayoutType:{-[PFParallaxLayoutHelper layoutType](self, "layoutType")}];
      if (v108 >= v117)
      {
        v108 = v117;
      }

      v160 = v108;
      [v7 visibleRect];
      v155 = v118 * (1.0 / v108);
      v120 = v119 * (1.0 / v108);
      [(PFParallaxLayoutHelper *)self pixelEffectiveAcceptable];
      v123 = v121 + v122 * 0.5;
      [v7 visibleRect];
      v126 = v124 + v125 * 0.5 - v157;
      [v7 visibleRect];
      v128 = v123 + v155 * -0.5;
      v129 = v157 + v126 / v127 * v120 + v120 * -0.5;
      v130 = v120 + v129;
      if (v155 + v128 >= v96)
      {
        v131 = v96;
      }

      else
      {
        v131 = v155 + v128;
      }

      if (v81 >= v131)
      {
        v131 = v81;
      }

      if (v130 >= v98)
      {
        v132 = v98;
      }

      else
      {
        v132 = v120 + v129;
      }

      if (v80 >= v132)
      {
        v132 = v80;
      }

      v133 = v128 + v131 - (v155 + v128);
      v134 = v129 + v132 - v130;
      if (v133 >= v96)
      {
        v133 = v96;
      }

      if (v81 >= v133)
      {
        v133 = v81;
      }

      if (v134 >= v98)
      {
        v134 = v98;
      }

      v162[0] = MEMORY[0x1E69E9820];
      v162[1] = 3221225472;
      v162[2] = __66__PIPosterLayoutHelper_intermediateWithZoomStrategy_intermediate___block_invoke;
      v162[3] = &__block_descriptor_80_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
      if (v80 >= v134)
      {
        v134 = v80;
      }

      *&v162[4] = v133;
      *&v162[5] = v134;
      *&v162[6] = v155;
      *&v162[7] = v120;
      v162[8] = 4;
      *&v162[9] = v160;
      v135 = v162;
LABEL_107:
      v8 = [v7 updateWithConfiguration:v135];
      goto LABEL_4;
    }
  }

  [v7 visibleRect];
  if (v68 < 1.0)
  {
    v69 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_49);
    }

    v70 = MEMORY[0x1E69B3D70];
    v71 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
    {
      v72 = MEMORY[0x1E696AEC0];
      v73 = v71;
      v74 = [v72 stringWithFormat:@"Invalid parameter not satisfying: %s", "intermediate.visibleRect.size.width >= 1"];
      *buf = 138543362;
      v166 = v74;
      _os_log_impl(&dword_1C7694000, v73, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v75 = *v69;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v75 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_49);
        }

        goto LABEL_49;
      }

      if (v75 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_49);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
LABEL_49:
      v109 = *v70;
      if (os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
        v111 = MEMORY[0x1E696AF00];
        v112 = specific;
        v113 = v109;
        v114 = [v111 callStackSymbols];
        v115 = [v114 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v166 = specific;
        v167 = 2114;
        v168 = v115;
        _os_log_error_impl(&dword_1C7694000, v113, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_78:
      _NUAssertContinueHandler();
      goto LABEL_79;
    }

    v136 = *v70;
    if (os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
    {
      v150 = MEMORY[0x1E696AF00];
      v151 = v136;
      v152 = [v150 callStackSymbols];
      v153 = [v152 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v166 = v153;
      _os_log_error_impl(&dword_1C7694000, v151, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_78;
  }

LABEL_79:
  v9 = 0;
LABEL_80:

  return v9;
}

void __66__PIPosterLayoutHelper_intermediateWithZoomStrategy_intermediate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setZoomStrategy:*(a1 + 64)];
  [v7 setZoomFactor:*(a1 + 72)];
}

void __66__PIPosterLayoutHelper_intermediateWithZoomStrategy_intermediate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setVisibleRect:{v3, v4, v5, v6}];
  [v7 setZoomStrategy:*(a1 + 64)];
  [v7 setZoomFactor:*(a1 + 72)];
}

- (double)centerLayoutHorizontalTarget
{
  [MEMORY[0x1E69C0798] targetCenterZoomFactorWithLayoutType:{-[PFParallaxLayoutHelper layoutType](self, "layoutType")}];
  v3 = v2;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"PICenterLayoutHorizontalTarget"];

  if (v5)
  {
    [v5 doubleValue];
    v3 = v6;
  }

  return v3;
}

- (void)initWithPosterClassification:(uint64_t)a3 initialRect:(uint64_t)a4 imageSize:(uint64_t)a5 effectiveAcceptableRect:(uint64_t)a6 effectivePreferredRect:(uint64_t)a7 validBoundsNormalized:(uint64_t)a8 headroomFeasible:(uint64_t)a9 hasTopEdgeContact:(uint64_t)a10 computeSpatial:(uint64_t)a11 spatialPadding:(uint64_t)a12 layoutType:(uint64_t)a13 allowedLayoutStrategies:(uint64_t)a14 layoutConfiguration:(uint64_t)a15
{
  v51 = *MEMORY[0x1E69E9840];
  v23 = a22;
  v24 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v25 = MEMORY[0x1E69B3D70];
    v26 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v27 = MEMORY[0x1E696AEC0];
      v28 = v26;
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      v32 = [v27 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v30, v31];
      *buf = 138543362;
      v48 = v32;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v33 = *v24;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v33 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_49);
        }

LABEL_11:
        v39 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v41 = MEMORY[0x1E696AF00];
          v42 = specific;
          v43 = v39;
          v44 = [v41 callStackSymbols];
          v45 = [v44 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v48 = specific;
          v49 = 2114;
          v50 = v45;
          _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v33 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_49);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v34 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      v37 = [v35 callStackSymbols];
      v38 = [v37 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v38;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v46 = objc_opt_class();
    NSStringFromClass(v46);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_49);
  }
}

- (void)initWithCIContext:(double)a3 matte:(double)a4 posterClassification:(double)a5 initialRect:(double)a6 imageSize:(double)a7 effectiveAcceptableRect:(uint64_t)a8 effectivePreferredRect:(void *)a9 validBoundsNormalized:(void *)a10 headroomFeasible:(uint64_t)a11 hasTopEdgeContact:(uint64_t)a12 shouldConstrainLayoutToBounds:(uint64_t)a13 computeSpatial:(char)a14 spatialPadding:(__int128)a15 layoutType:(uint64_t)a16 allowedLayoutStrategies:(uint64_t)a17 layoutConfiguration:(__int128)a18
{
  v35 = a9;
  v36 = a10;
  v46.receiver = a1;
  v46.super_class = PIPosterLayoutHelper;
  v37 = objc_msgSendSuper2(&v46, sel_initWithPosterClassification_initialRect_imageSize_effectiveAcceptableRect_effectivePreferredRect_validBoundsNormalized_headroomFeasible_hasTopEdgeContact_computeSpatial_spatialPadding_layoutType_allowedLayoutStrategies_layoutConfiguration_, a11, a12, a13, a23, a25, a26, a2, a3, a4, a5, a6, a7, a15, a16, a17, a18, a19, a20, a21, a22, a24, a27);
  v38 = v37[26];
  v37[26] = v35;
  v39 = v35;

  v40 = v37[27];
  v37[27] = v36;

  *(v37 + 224) = a14;
  return v37;
}

@end