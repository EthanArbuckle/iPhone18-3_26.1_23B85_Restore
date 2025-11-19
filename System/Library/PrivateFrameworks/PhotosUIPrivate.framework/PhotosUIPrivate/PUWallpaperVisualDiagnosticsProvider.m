@interface PUWallpaperVisualDiagnosticsProvider
+ (id)visualDiagnosticsActionForSuggestion:(id)a3 asset:(id)a4 fromViewController:(id)a5;
+ (id)visualDiagnosticsConfigurationForSuggestion:(id)a3 asset:(id)a4;
- (PUWallpaperVisualDiagnosticsProvider)initWithSuggestion:(id)a3 asset:(id)a4;
- (void)_addAssetDiagnostics:(id)a3;
- (void)_addCropDiagnostics:(id)a3;
- (void)_addSuggestionDiagnostics:(id)a3;
- (void)_drawAsset:(id)a3 inRect:(CGRect)a4 context:(id)a5;
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
@end

@implementation PUWallpaperVisualDiagnosticsProvider

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(PUWallpaperVisualDiagnosticsProvider *)self suggestion];
  v7 = [(PUWallpaperVisualDiagnosticsProvider *)self asset];
  v8 = [v5 visualDiagnosticsConfigurationForSuggestion:v6 asset:v7];

  v9 = dispatch_semaphore_create(0);
  v10 = MEMORY[0x1E69C3C80];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__PUWallpaperVisualDiagnosticsProvider_collectTapToRadarDiagnosticsIntoContainer___block_invoke;
  v14[3] = &unk_1E7B80258;
  v15 = v4;
  v16 = v9;
  v11 = v9;
  v12 = v4;
  [v10 requestVisualDiagnosticsPDFDocumentURLWithConfiguration:v8 resultHandler:v14];
  v13 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v11, v13);
}

intptr_t __82__PUWallpaperVisualDiagnosticsProvider_collectTapToRadarDiagnosticsIntoContainer___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addAttachment:a2];
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

- (void)_drawAsset:(id)a3 inRect:(CGRect)a4 context:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = [(PUWallpaperVisualDiagnosticsProvider *)self mediaProvider];
  v12 = objc_alloc_init(MEMORY[0x1E69C4518]);
  [v12 setDeliveryMode:1];
  [v12 setSynchronous:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__PUWallpaperVisualDiagnosticsProvider__drawAsset_inRect_context___block_invoke;
  v13[3] = &__block_descriptor_64_e34_v24__0__UIImage_8__NSDictionary_16l;
  *&v13[4] = x;
  *&v13[5] = y;
  *&v13[6] = width;
  *&v13[7] = height;
  [v11 requestImageForAsset:v10 targetSize:0 contentMode:v12 options:v13 resultHandler:{width, height}];
}

- (void)_addSuggestionDiagnostics:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperVisualDiagnosticsProvider *)self suggestion];

  if (v5)
  {
    [v4 addTitlePageWithTitle:@"Suggestion Details" subtitle:&stru_1F2AC6818];
    [v4 beginPage];
    [v4 currentPageBounds];
    v17 = CGRectInset(v16, 20.0, 20.0);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v10 appendString:@"\n"];
    v11 = [(PUWallpaperVisualDiagnosticsProvider *)self suggestion];
    v12 = [v11 debugDescription];
    [v10 appendFormat:@"%@\n", v12];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__PUWallpaperVisualDiagnosticsProvider__addSuggestionDiagnostics___block_invoke;
    v14[3] = &unk_1E7B80210;
    v15 = v10;
    v13 = v10;
    [v4 drawTextInRect:v14 configuration:{x, y, width, height}];
    [v4 endPage];
  }
}

void __66__PUWallpaperVisualDiagnosticsProvider__addSuggestionDiagnostics___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:10.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

- (void)_addAssetDiagnostics:(id)a3
{
  v4 = a3;
  [v4 addTitlePageWithTitle:@"Asset Details" subtitle:&stru_1F2AC6818];
  [v4 beginPage];
  v5 = [(PUWallpaperVisualDiagnosticsProvider *)self asset];
  [v4 currentPageBounds];
  v22 = CGRectInset(v21, 20.0, 20.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v10 appendString:@"\n"];
  v11 = [v5 uuid];
  [v10 appendFormat:@"UUID: %@\n", v11];

  v12 = [v5 localCreationDate];
  [v10 appendFormat:@"Date: %@\n", v12];

  [v5 curationScore];
  [v10 appendFormat:@"Curation Score: %0.2f\n", v13];
  v14 = [v5 mediaAnalysisProperties];
  [v14 wallpaperScore];
  [v10 appendFormat:@"Wallpaper Score: %0.2f\n", v15];

  v16 = [v5 sceneClassifications];
  v17 = PXStorySceneClassificationDescription();
  [v10 appendFormat:@"Scenes: %@\n", v17];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__PUWallpaperVisualDiagnosticsProvider__addAssetDiagnostics___block_invoke;
  v19[3] = &unk_1E7B80210;
  v20 = v10;
  v18 = v10;
  [v4 drawTextInRect:v19 configuration:{x, y, width, height}];
  [v4 endPage];
}

void __61__PUWallpaperVisualDiagnosticsProvider__addAssetDiagnostics___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:10.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

- (void)_addCropDiagnostics:(id)a3
{
  v4 = a3;
  [v4 addTitlePageWithTitle:@"Wallpaper Crop" subtitle:&stru_1F2AC6818];
  v5 = [v4 CGContext];
  v6 = [(PUWallpaperVisualDiagnosticsProvider *)self asset];
  [v6 preferredCropRect];
  v106 = __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke(v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v6 acceptableCropRect];
  v21 = __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke(v17, v18, v19, v20);
  v109 = v22;
  v110 = v21;
  v107 = v24;
  v108 = v23;
  [v6 faceAreaRect];
  v29 = __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke(v25, v26, v27, v28);
  v115 = v30;
  v117 = v29;
  v111 = v32;
  v113 = v31;
  [v4 beginPage];
  [v4 currentPageBounds];
  slice = CGRectInset(v138, 10.0, 10.0);
  memset(&remainder, 0, sizeof(remainder));
  memset(&v135, 0, sizeof(v135));
  CGRectDivide(slice, &slice, &remainder, 260.0, CGRectMaxYEdge);
  CGRectDivide(slice, &v135, &slice, 250.0, CGRectMaxYEdge);
  [v6 aspectRatio];
  PXRectWithAspectRatioFittingRect();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  [(PUWallpaperVisualDiagnosticsProvider *)self _drawAsset:v6 inRect:v4 context:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_2;
  aBlock[3] = &unk_1E7B801C0;
  v134 = v5;
  v41 = v4;
  v133 = v41;
  v42 = _Block_copy(aBlock);
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_4;
  v126[3] = &unk_1E7B801E8;
  v128 = v34;
  v129 = v36;
  v130 = v38;
  v131 = v40;
  v119 = v42;
  v127 = v119;
  v43 = _Block_copy(v126);
  v44 = [MEMORY[0x1E69DC888] redColor];
  v43[2](v43, v44, @"Preferred", v106, v12, v14, v16);

  v45 = [MEMORY[0x1E69DC888] orangeColor];
  v43[2](v43, v45, @"Acceptable", v110, v109, v108, v107);

  v46 = [MEMORY[0x1E69DC888] blueColor];
  v43[2](v43, v46, @"Face Area", v117, v115, v113, v111);

  PFDeviceScreenSize();
  v48 = v47;
  v50 = v49;
  [v6 pixelWidth];
  [v6 pixelHeight];
  v125 = 0;
  PFDeviceLockScreenFocusAreaRectNormalized();
  [v6 suggestedCropForTargetSize:&v125 withFocusRegion:v48 andOutputCropScore:{v50, v51, v52, v53, v54}];
  PXRectNormalize();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wallpaper w/ FocusRegion %.3f", v125];
  v64 = [MEMORY[0x1E69DC888] systemYellowColor];
  v43[2](v43, v64, v63, v56, v58, v60, v62);

  v124 = 0;
  v116 = *(MEMORY[0x1E695F050] + 8);
  v118 = *MEMORY[0x1E695F050];
  v112 = *(MEMORY[0x1E695F050] + 24);
  v114 = *(MEMORY[0x1E695F050] + 16);
  [v6 suggestedCropForTargetSize:&v124 withFocusRegion:v48 andOutputCropScore:v50];
  PXRectNormalize();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Wallpaper %.3f", v124];
  v74 = [MEMORY[0x1E69DC888] systemBlueColor];
  v43[2](v43, v74, v73, v66, v68, v70, v72);

  if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
  {
    v123 = 0;
    PFDeviceLockScreenFocusAreaRectNormalized();
    [v6 suggestedCropForTargetSize:&v123 withFocusRegion:v50 andOutputCropScore:{v48, v75, v76, v77, v78}];
    PXRectNormalize();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Alternative Wallpaper w/ FocusRegion %.3f", v123];
    v88 = [MEMORY[0x1E69DC888] systemYellowColor];
    v43[2](v43, v88, v87, v80, v82, v84, v86);

    v122 = 0;
    [v6 suggestedCropForTargetSize:&v122 withFocusRegion:v50 andOutputCropScore:{v48, v118, v116, v114, v112}];
    PXRectNormalize();
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Alternative Wallpaper %.3f", v124];
    v98 = [MEMORY[0x1E69DC888] systemBlueColor];
    v43[2](v43, v98, v97, v90, v92, v94, v96);
  }

  [v41 endPage];
  [v41 beginPage];
  v99 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v100 = [v6 wallpaperCroppingDebugKeyValuePairs];
  [v99 appendFormat:@"%@\n", v100];

  [v41 currentPageBounds];
  v140 = CGRectInset(v139, 20.0, 20.0);
  x = v140.origin.x;
  y = v140.origin.y;
  width = v140.size.width;
  height = v140.size.height;
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_5;
  v120[3] = &unk_1E7B80210;
  v121 = v99;
  v105 = v99;
  [v41 drawTextInRect:v120 configuration:{x, y, width, height}];
  [v41 endPage];
}

double __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = a1;
  if (!CGRectIsNull(*&a1))
  {
    v10.origin.x = v7;
    v10.origin.y = a2;
    v10.size.width = a3;
    v10.size.height = a4;
    if (!CGRectIsInfinite(v10))
    {
      PXRectFlippedVertically();
      return v8;
    }
  }

  return v7;
}

void __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_2(uint64_t a1, const CGPath *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v17 = a4;
  v18 = [a3 colorWithAlphaComponent:0.8];
  CGContextSaveGState(*(a1 + 40));
  CGContextSetStrokeColorWithColor(*(a1 + 40), [v18 CGColor]);
  CGContextAddPath(*(a1 + 40), a2);
  CGContextStrokePath(*(a1 + 40));
  CGContextRestoreGState(*(a1 + 40));
  v19 = *(a1 + 32);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  v31 = CGRectInset(v30, 3.0, 3.0);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_3;
  v26[3] = &unk_1E7B80198;
  v27 = v17;
  v28 = v18;
  v29 = a9;
  v24 = v18;
  v25 = v17;
  [v19 drawTextInRect:v26 configuration:{x, y, width, height}];
}

void __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_4(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v19 = a2;
  v13 = a3;
  v21.origin.x = a4;
  v21.origin.y = a5;
  v21.size.width = a6;
  v21.size.height = a7;
  if (!CGRectIsEmpty(v21))
  {
    PXRectDenormalize();
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v18 = CGPathCreateWithRect(v22, 0);
    (*(*(a1 + 32) + 16))(x, y, width, height, 0.0);
    CGPathRelease(v18);
  }
}

void __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:10.0];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setTextColor:v4];
}

void __60__PUWallpaperVisualDiagnosticsProvider__addCropDiagnostics___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setText:v3];
  [v4 setTextColor:*(a1 + 40)];
  [v4 setRelativePosition:{*(a1 + 48), 1.0}];
}

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(PUWallpaperVisualDiagnosticsProvider *)self _addCoverPage:v6];
  [(PUWallpaperVisualDiagnosticsProvider *)self _addCropDiagnostics:v6];
  [(PUWallpaperVisualDiagnosticsProvider *)self _addSuggestionDiagnostics:v6];
  [(PUWallpaperVisualDiagnosticsProvider *)self _addAssetDiagnostics:v6];

  v7[2](v7, 1, 0);
}

- (PUWallpaperVisualDiagnosticsProvider)initWithSuggestion:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PUWallpaperVisualDiagnosticsProvider;
  v9 = [(PUWallpaperVisualDiagnosticsProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, a3);
    objc_storeStrong(&v10->_asset, a4);
    v11 = objc_alloc(MEMORY[0x1E69C3858]);
    v12 = objc_alloc_init(MEMORY[0x1E6978860]);
    v13 = [v11 initWithImageManager:v12];
    mediaProvider = v10->_mediaProvider;
    v10->_mediaProvider = v13;
  }

  return v10;
}

+ (id)visualDiagnosticsActionForSuggestion:(id)a3 asset:(id)a4 fromViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E69DC628];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __102__PUWallpaperVisualDiagnosticsProvider_visualDiagnosticsActionForSuggestion_asset_fromViewController___block_invoke;
  v18[3] = &unk_1E7B80170;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = a1;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [v11 actionWithTitle:@"Visual Diagnostics" image:v12 identifier:0 handler:v18];

  return v16;
}

void __102__PUWallpaperVisualDiagnosticsProvider_visualDiagnosticsActionForSuggestion_asset_fromViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) visualDiagnosticsConfigurationForSuggestion:*(a1 + 32) asset:*(a1 + 40)];
  [MEMORY[0x1E69C3C80] showVisualDiagnosticsWithConfiguration:v2 fromViewController:*(a1 + 48) completionHandler:&__block_literal_global_94991];
}

+ (id)visualDiagnosticsConfigurationForSuggestion:(id)a3 asset:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PUWallpaperVisualDiagnosticsProvider alloc] initWithSuggestion:v6 asset:v5];

  v8 = [objc_alloc(MEMORY[0x1E69C4618]) initWithRootProvider:v7];
  [v8 setName:@"VisualDiagnostics"];
  [v8 setIsPrivateDataAllowed:1];

  return v8;
}

@end