@interface PUParallaxVisualDiagnosticsProvider
- (void)_addImagingGatingScores:(id)a3;
- (void)_addLayerStack:(id)a3;
- (void)_addLayerStackProperties:(id)a3;
- (void)_addLayersTable:(id)a3;
- (void)_addSegmentationItemProperties:(id)a3;
- (void)_drawLayer:(id)a3 inRect:(CGRect)a4 context:(id)a5;
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
@end

@implementation PUParallaxVisualDiagnosticsProvider

- (void)_addSegmentationItemProperties:(id)a3
{
  v4 = a3;
  [v4 beginPage];
  [v4 currentPageBounds];
  v22 = CGRectInset(v21, 20.0, 20.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v9 appendString:@"\n"];
  [v9 appendString:@"Segmentation Item Properties\n\n"];
  v10 = [(PUParallaxVisualDiagnosticsProvider *)self segmentationItem];
  [v10 classification];
  v11 = PFPosterClassificationName();
  [v9 appendFormat:@"Classification: %@\n", v11];

  [v9 appendFormat:@"Available styles:\n"];
  v12 = [(PUParallaxVisualDiagnosticsProvider *)self segmentationItem];
  v13 = [v12 availableStyles];
  v14 = PFMap();

  v15 = [v14 componentsJoinedByString:{@", \n\t"}];
  [v9 appendFormat:@"\t%@\n", v15];
  v16 = [(PUParallaxVisualDiagnosticsProvider *)self segmentationItem];
  [v16 settlingEffectStatus];
  v17 = PIPosterSettlingEffectStatusDescription();
  [v9 appendFormat:@"Settling Effect Status: %@", v17];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__PUParallaxVisualDiagnosticsProvider__addSegmentationItemProperties___block_invoke_2;
  v19[3] = &unk_1E7B80210;
  v20 = v9;
  v18 = v9;
  [v4 drawTextInRect:v19 configuration:{x, y, width, height}];
  [v4 endPage];
}

void __70__PUParallaxVisualDiagnosticsProvider__addSegmentationItemProperties___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:15.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

- (void)_addImagingGatingScores:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 beginPage];
  [v4 currentPageBounds];
  v43 = CGRectInset(v42, 20.0, 20.0);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v9 appendString:@"\n"];
  [v9 appendString:@"Imaging Gating scores\n\n"];
  v10 = [(PUParallaxVisualDiagnosticsProvider *)self segmentationItem];

  if (v10)
  {
    v11 = [(PUParallaxVisualDiagnosticsProvider *)self segmentationItem];
    v12 = [v11 scores];

    if ([MEMORY[0x1E69BDF28] curatedSegmentationGatingDecisionForSegmentationScores:v12])
    {
      v13 = @"Pass";
    }

    else
    {
      v13 = @"Fail";
    }

    [v9 appendFormat:@"Curated Segmentation gating: %@\n", v13];
    if ([MEMORY[0x1E69BDF28] manualSegmentationGatingDecisionForSegmentationScores:v12])
    {
      v14 = @"Pass";
    }

    else
    {
      v14 = @"Fail";
    }

    [v9 appendFormat:@"Manual Segmentation gating: %@\n", v14];
    if ([MEMORY[0x1E69BDF28] layoutGatingDecisionForSegmentationScores:v12])
    {
      v15 = @"Pass";
    }

    else
    {
      v15 = @"Fail";
    }

    [v9 appendFormat:@"Layout gating: %@\n", v15];
    [v9 appendFormat:@"Scores: %@\n", v12];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = [(PUParallaxVisualDiagnosticsProvider *)self segmentationItem];
    v17 = [v16 settlingEffectGatingDiagnostics];

    v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      do
      {
        v21 = 0;
        do
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v9 appendFormat:@"%@\n", *(*(&v35 + 1) + 8 * v21++)];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v19);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [(PUParallaxVisualDiagnosticsProvider *)self segmentationItem];
    v23 = [v22 spatialPhotoGatingDiagnosticsOnlyFailures:0];

    v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        v27 = 0;
        do
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [v9 appendFormat:@"%@\n", *(*(&v31 + 1) + 8 * v27++)];
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v25);
    }
  }

  else
  {
    [v9 appendFormat:@"Segmentation item not available\n"];
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__PUParallaxVisualDiagnosticsProvider__addImagingGatingScores___block_invoke;
  v29[3] = &unk_1E7B80210;
  v30 = v9;
  v28 = v9;
  [v4 drawTextInRect:v29 configuration:{x, y, width, height}];
  [v4 endPage];
}

void __63__PUParallaxVisualDiagnosticsProvider__addImagingGatingScores___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:15.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

- (void)_addLayerStackProperties:(id)a3
{
  v4 = a3;
  [v4 beginPage];
  [v4 currentPageBounds];
  v26 = CGRectInset(v25, 20.0, 20.0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v9 appendString:@"\n"];
  [v9 appendString:@"LayerStack Properties\n\n"];
  v10 = [(PUParallaxVisualDiagnosticsProvider *)self compoundLayerStack];
  v11 = [v10 portraitLayerStack];
  [v11 size];
  v12 = NSStringFromCGSize(v24);
  [v9 appendFormat:@"CanvasSize: %@\n\n", v12];

  v13 = [(PUParallaxVisualDiagnosticsProvider *)self compoundLayerStack];
  v14 = [v13 portraitLayerStack];
  v15 = [v14 layout];
  v16 = [v15 debugDescription];
  [v9 appendFormat:@"Portrait Layout: %@\n", v16];

  [v9 appendString:@"\n\n\n"];
  v17 = [(PUParallaxVisualDiagnosticsProvider *)self compoundLayerStack];
  v18 = [v17 landscapeLayerStack];
  v19 = [v18 layout];
  v20 = [v19 debugDescription];
  [v9 appendFormat:@"Landscape Layout: %@\n", v20];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__PUParallaxVisualDiagnosticsProvider__addLayerStackProperties___block_invoke;
  v22[3] = &unk_1E7B80210;
  v23 = v9;
  v21 = v9;
  [v4 drawTextInRect:v22 configuration:{x, y, width, height}];
  [v4 endPage];
}

void __64__PUParallaxVisualDiagnosticsProvider__addLayerStackProperties___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:15.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

- (void)_addLayersTable:(id)a3
{
  v4 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_2;
  v13[3] = &unk_1E7B79288;
  v14 = @"Layer";
  v15 = @"Id";
  v16 = @"Size";
  v17 = @"Frame";
  v18 = @"zPosition";
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_8;
  v6[3] = &unk_1E7B79348;
  v6[4] = self;
  v7 = @"Layer";
  v8 = v4;
  v9 = @"Id";
  v10 = @"Size";
  v11 = @"Frame";
  v12 = @"zPosition";
  v5 = v4;
  [v5 addPagesForTableWithConfiguration:&__block_literal_global_372 columnsConfiguration:v13 rowsConfiguration:v6];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 addColumnWithIdentifier:v3 configuration:&__block_literal_global_378];
  [v4 addColumnWithIdentifier:a1[5] configuration:&__block_literal_global_380];
  [v4 addColumnWithIdentifier:a1[6] configuration:&__block_literal_global_382];
  [v4 addColumnWithIdentifier:a1[7] configuration:&__block_literal_global_384];
  [v4 addColumnWithIdentifier:a1[8] configuration:&__block_literal_global_386];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_8(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] compoundLayerStack];
  v5 = [v4 portraitLayerStack];
  v6 = [v5 layers];
  v7 = [v6 mutableCopy];

  v8 = [a1[4] compoundLayerStack];
  v9 = [v8 landscapeLayerStack];

  if (v9)
  {
    v10 = [a1[4] compoundLayerStack];
    v11 = [v10 landscapeLayerStack];
    v12 = [v11 layers];
    [v7 addObjectsFromArray:v12];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_9;
  v19[3] = &unk_1E7B79320;
  v20 = v3;
  *&v13 = a1[5];
  *(&v13 + 1) = a1[4];
  v18 = v13;
  v14 = a1[6];
  v15 = a1[7];
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v21 = v18;
  v22 = v16;
  v23 = a1[8];
  v24 = a1[9];
  v25 = a1[10];
  v17 = v3;
  [v7 enumerateObjectsUsingBlock:v19];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Layers Stack"];
  [v2 setDefaultRowHeight:30.0];
  [v2 setDefaultRowFontSize:7.0];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_10;
  v17[3] = &unk_1E7B792F8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v18 = v7;
  v19 = v8;
  v24 = a3;
  v20 = v5;
  v10 = v9;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v21 = v15;
  v22 = v14;
  v23 = *(a1 + 88);
  v16 = v5;
  [v6 addRowWithConfiguration:v17];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHeight:70.0];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_11;
  v22 = &unk_1E7B792D0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v26 = *(a1 + 96);
  v23 = v4;
  v24 = v6;
  v25 = *(a1 + 56);
  [v3 addCellForColumnWithIdentifier:v5 rendering:&v19];
  v7 = *(a1 + 64);
  v8 = [*(a1 + 48) identifier];
  [v3 addCellForColumnWithIdentifier:v7 text:v8];

  [*(a1 + 48) pixelSize];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.0fx%0.0f", v9, v10];
  [v3 addCellForColumnWithIdentifier:*(a1 + 72) text:v11];
  [*(a1 + 48) frame];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x:%.3f, y:%.3f, width:%.3f, height:%.3f}", v12, v13, v14, v15, v19, v20, v21, v22, v23];
  [v3 addCellForColumnWithIdentifier:*(a1 + 80) text:v16];
  v17 = *(a1 + 88);
  [*(a1 + 48) zPosition];
  [v3 addCellForColumnWithIdentifier:v17 format:{@"%.1f", v18}];
}

uint64_t __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_11(uint64_t a1, void *a2, double a3)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_12;
  v14[3] = &__block_descriptor_40_e52_v16__0___PXVisualDiagnosticsDrawTextConfiguration__8l;
  v14[4] = *(a1 + 56);
  [a2 drawTextInRect:v14 configuration:a3];
  v4 = [*(a1 + 32) asset];
  [v4 aspectRatio];
  PXRectWithAspectRatioFittingRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  return [*(a1 + 32) _drawLayer:*(a1 + 40) inRect:*(a1 + 48) context:{v6 + 25.0, v8, v10, v12}];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = a2;
  v4 = [[v3 alloc] initWithFormat:@"#%li", *(a1 + 32)];
  [v5 setText:v4];

  [v5 setFontSize:7.0];
  [v5 setRelativePosition:{0.0, 0.5}];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"zPosition"];
  [v2 setWidth:70.0];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Frame"];
  [v2 setWidth:120.0];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Size"];
  [v2 setWidth:70.0];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Id"];
  [v2 setWidth:70.0];
}

void __55__PUParallaxVisualDiagnosticsProvider__addLayersTable___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTitle:@"Layer"];
  [v2 setWidth:120.0];
}

- (void)_drawLayer:(id)a3 inRect:(CGRect)a4 context:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [v11 CGContext];
  CGContextSaveGState(v12);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGContextClipToRect(v12, v40);
  v13 = [MEMORY[0x1E69DC888] lightGrayColor];
  CGContextSetFillColorWithColor(v12, [v13 CGColor]);

  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  CGContextFillRect(v12, v41);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v10;
    v15 = objc_alloc(MEMORY[0x1E695F658]);
    v16 = [v14 image];
    v31 = *MEMORY[0x1E695F9B8];
    v32 = MEMORY[0x1E695E110];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v18 = [v15 initWithCVPixelBuffer:v16 options:v17];

    [v18 extent];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [MEMORY[0x1E695F620] context];
    v28 = [v27 createCGImage:v18 fromRect:{v20, v22, v24, v26}];

    if ((v24 == 0.0 || v26 == 0.0 || v24 == *MEMORY[0x1E69BDDB0] && v26 == *(MEMORY[0x1E69BDDB0] + 8)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v34 = v24;
      v35 = 2048;
      v36 = v26;
      v37 = 2048;
      v38 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B36F3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }

    PFSizeWithAspectRatioFittingSize();
    v42.size.width = v29;
    v42.size.height = v30;
    v42.origin.x = x + width * 0.5 + v29 * -0.5;
    v42.origin.y = y + height * 0.5 + v30 * -0.5;
    CGContextDrawImage(v12, v42, v28);
    CGImageRelease(v28);
  }

  else
  {
    [v11 drawTextInRect:&__block_literal_global_39571 configuration:{x, y, width, height}];
  }

  CGContextRestoreGState(v12);
}

void __65__PUParallaxVisualDiagnosticsProvider__drawLayer_inRect_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setText:@"Settling Effect Video"];
  [v2 setFontSize:15.0];
  v3 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setTextColor:v3];
}

- (void)_addLayerStack:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUParallaxVisualDiagnosticsProvider *)self compoundLayerStack];
  v6 = [v5 portraitLayerStack];
  v7 = [v6 layers];
  v8 = [v7 mutableCopy];

  v9 = [(PUParallaxVisualDiagnosticsProvider *)self compoundLayerStack];
  v10 = [v9 landscapeLayerStack];

  if (v10)
  {
    v11 = [(PUParallaxVisualDiagnosticsProvider *)self compoundLayerStack];
    v12 = [v11 landscapeLayerStack];
    v13 = [v12 layers];
    [v8 addObjectsFromArray:v13];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v8;
  v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * v17);
        [v4 beginPage];
        memset(&slice, 0, sizeof(slice));
        [v4 currentPageBounds];
        slice = CGRectInset(v47, 10.0, 10.0);
        memset(&remainder, 0, sizeof(remainder));
        memset(&v38, 0, sizeof(v38));
        CGRectDivide(slice, &slice, &remainder, 260.0, CGRectMaxYEdge);
        CGRectDivide(slice, &v38, &slice, 250.0, CGRectMaxYEdge);
        v19 = [(PUParallaxVisualDiagnosticsProvider *)self asset];
        [v19 aspectRatio];
        PXRectWithAspectRatioFittingRect();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        [(PUParallaxVisualDiagnosticsProvider *)self _drawLayer:v18 inRect:v4 context:v21, v23, v25, v27];
        v28 = objc_alloc_init(MEMORY[0x1E696AD60]);
        [v28 appendString:@"\n"];
        v29 = [v18 debugDescription];
        [v28 appendFormat:@"%@\n", v29];

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __54__PUParallaxVisualDiagnosticsProvider__addLayerStack___block_invoke;
        v36[3] = &unk_1E7B80210;
        v37 = v28;
        x = v38.origin.x;
        y = v38.origin.y;
        width = v38.size.width;
        height = v38.size.height;
        v34 = v28;
        [v4 drawTextInRect:v36 configuration:{x, y, width, height}];
        [v4 endPage];

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v15);
  }
}

void __54__PUParallaxVisualDiagnosticsProvider__addLayerStack___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:10.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(PUParallaxVisualDiagnosticsProvider *)self _addCoverPage:v6];
  [(PUParallaxVisualDiagnosticsProvider *)self _addLayersTable:v6];
  [(PUParallaxVisualDiagnosticsProvider *)self _addLayerStack:v6];
  [(PUParallaxVisualDiagnosticsProvider *)self _addLayerStackProperties:v6];
  [(PUParallaxVisualDiagnosticsProvider *)self _addImagingGatingScores:v6];
  [(PUParallaxVisualDiagnosticsProvider *)self _addSegmentationItemProperties:v6];

  v7[2](v7, 1, 0);
}

@end