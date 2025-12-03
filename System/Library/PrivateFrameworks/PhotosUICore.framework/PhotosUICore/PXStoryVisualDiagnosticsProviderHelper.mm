@interface PXStoryVisualDiagnosticsProviderHelper
- (PXStoryVisualDiagnosticsProviderHelper)init;
- (PXStoryVisualDiagnosticsProviderHelper)initWithConfiguration:(id)configuration;
- (void)drawAsset:(id)asset contentsRect:(id *)rect inRect:(CGRect)inRect context:(id)context;
- (void)drawAsset:(id)asset inRect:(CGRect)rect context:(id)context;
- (void)drawCropRectsForAsset:(id)asset inRect:(CGRect)rect context:(id)context configuration:(id)configuration;
- (void)drawSegmentOfTimeline:(id)timeline withIdentifier:(int64_t)identifier inRect:(CGRect)rect context:(id)context;
@end

@implementation PXStoryVisualDiagnosticsProviderHelper

- (void)drawCropRectsForAsset:(id)asset inRect:(CGRect)rect context:(id)context configuration:(id)configuration
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  assetCopy = asset;
  contextCopy = context;
  configurationCopy = configuration;
  v16 = objc_alloc_init(_PXStoryVisualDiagnosticsCropRectsConfiguration);
  configurationCopy[2](configurationCopy, v16);

  cGContext = [contextCopy CGContext];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_2;
  aBlock[3] = &unk_1E772CDF8;
  aBlock[5] = cGContext;
  v76 = contextCopy;
  aBlock[4] = v76;
  v18 = _Block_copy(aBlock);
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_4;
  v104[3] = &unk_1E772CE20;
  *&v104[5] = x;
  *&v104[6] = y;
  *&v104[7] = width;
  *&v104[8] = height;
  v19 = v18;
  v104[4] = v19;
  v20 = _Block_copy(v104);
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_5;
  v103[3] = &unk_1E772CE48;
  *&v103[5] = x;
  *&v103[6] = y;
  *&v103[7] = width;
  *&v103[8] = height;
  v103[9] = cGContext;
  v103[4] = v19;
  v21 = _Block_copy(v103);
  if (v16)
  {
    [(_PXStoryVisualDiagnosticsCropRectsConfiguration *)v16 kenBurnsAnimationInfo];
    v100 = v92;
    v101 = v93;
    v102 = v94;
    [(_PXStoryVisualDiagnosticsCropRectsConfiguration *)v16 kenBurnsAnimationInfo];
  }

  else
  {
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0;
  }

  v89 = v84;
  v90 = v85;
  v91 = v86;
  v22 = [(_PXStoryVisualDiagnosticsCropRectsConfiguration *)v16 movieHighlight:3221225472];
  if (v22)
  {
    [v22 bestPlaybackRect];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
  }

  else
  {
    v24 = *MEMORY[0x1E695F050];
    v26 = *(MEMORY[0x1E695F050] + 8);
    v28 = *(MEMORY[0x1E695F050] + 16);
    v30 = *(MEMORY[0x1E695F050] + 24);
  }

  [assetCopy preferredCropRect];
  v35 = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke(v31, v32, v33, v34);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  redColor = [MEMORY[0x1E69DC888] redColor];
  v43 = (v20 + 16);
  (*(v20 + 2))(v20, redColor, @"Preferred", v35, v37, v39, v41);

  [assetCopy acceptableCropRect];
  v48 = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke(v44, v45, v46, v47);
  v50 = v49;
  v52 = v51;
  v54 = v53;
  orangeColor = [MEMORY[0x1E69DC888] orangeColor];
  (*(v20 + 2))(v20, orangeColor, @"Acceptable", v48, v50, v52, v54);

  [assetCopy faceAreaRect];
  v60 = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke(v56, v57, v58, v59);
  v62 = v61;
  v64 = v63;
  v66 = v65;
  blueColor = [MEMORY[0x1E69DC888] blueColor];
  (*(v20 + 2))(v20, blueColor, @"Face Area", v60, v62, v64, v66);

  croppingContext = [(PXStoryVisualDiagnosticsProviderHelper *)self croppingContext];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = v75;
  v80[2] = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_6;
  v80[3] = &unk_1E772CE70;
  v69 = v20;
  v80[4] = v69;
  [croppingContext requestIndividualFaceRectsInAsset:assetCopy options:1 resultHandler:v80];

  greenColor = [MEMORY[0x1E69DC888] greenColor];
  (*v43)(v69, greenColor, @"Best Playback", v24, v26, v28, v30);

  cyanColor = [MEMORY[0x1E69DC888] cyanColor];
  v72 = v21[2];
  v77 = v100;
  v78 = v101;
  v79 = v102;
  v72(v21, &v77, cyanColor, @"Source", 0.4, 3.0);

  magentaColor = [MEMORY[0x1E69DC888] magentaColor];
  v74 = v21[2];
  v77 = v89;
  v78 = v90;
  v79 = v91;
  v74(v21, &v77, magentaColor, @"Target", 0.6, 3.0);

  [(_PXStoryVisualDiagnosticsCropRectsConfiguration *)v16 TVPreviewSize];
  PXSizeIsEmpty();
}

void __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_2(uint64_t a1, const CGPath *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
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
  v26[2] = __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_3;
  v26[3] = &unk_1E7732C40;
  v27 = v17;
  v28 = v18;
  v29 = a9;
  v24 = v18;
  v25 = v17;
  [v19 drawTextInRect:v26 configuration:{x, y, width, height}];
}

void __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a6;
  v12 = a7;
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  if (!CGRectIsEmpty(v15))
  {
    PXRectDenormalize();
  }
}

void __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  PXStoryRectIsNull();
}

CGFloat __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (!CGRectIsNull(*&a1))
  {
    v9.origin.x = a1;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    if (!CGRectIsInfinite(v9))
    {
      PXRectFlippedVertically();
    }
  }

  return a1;
}

void __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = (a3 + 16);
    do
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.6 blue:1.0 alpha:1.0];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v5];
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      v13 = v6[1];
      v6 += 4;
      (*(v7 + 16))(v7, v8, v9, v10, v11, v12, v13);

      ++v5;
    }

    while (a2 != v5);
  }
}

void __93__PXStoryVisualDiagnosticsProviderHelper_drawCropRectsForAsset_inRect_context_configuration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setText:v3];
  [v4 setTextColor:*(a1 + 40)];
  [v4 setRelativePosition:{*(a1 + 48), 1.0}];
}

- (void)drawSegmentOfTimeline:(id)timeline withIdentifier:(int64_t)identifier inRect:(CGRect)rect context:(id)context
{
  timelineCopy = timeline;
  contextCopy = context;
  if (timelineCopy)
  {
    [timelineCopy timeRangeForSegmentWithIdentifier:identifier];
  }

  [timelineCopy size];
  PXRectWithOriginAndSize();
}

void __94__PXStoryVisualDiagnosticsProviderHelper_drawSegmentOfTimeline_withIdentifier_inRect_context___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    PXRectNormalize();
  }
}

- (void)drawAsset:(id)asset contentsRect:(id *)rect inRect:(CGRect)inRect context:(id)context
{
  height = inRect.size.height;
  width = inRect.size.width;
  y = inRect.origin.y;
  x = inRect.origin.x;
  assetCopy = asset;
  contextCopy = context;
  cGContext = [contextCopy CGContext];
  CGContextSaveGState(cGContext);
  if ([contextCopy isPrivateDataAllowed])
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    CGContextClipToRect(cGContext, v23);
    PXStoryRectDecompose();
  }

  CGContextSetLineWidth(cGContext, 1.0);
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  CGContextSetStrokeColorWithColor(cGContext, [blackColor CGColor]);

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGContextStrokeRect(cGContext, v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinY = CGRectGetMinY(v26);
  CGContextMoveToPoint(cGContext, MinX, MinY);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MaxX = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxY = CGRectGetMaxY(v28);
  CGContextAddLineToPoint(cGContext, MaxX, MaxY);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v19 = CGRectGetMaxX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v20 = CGRectGetMinY(v30);
  CGContextMoveToPoint(cGContext, v19, v20);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v21 = CGRectGetMinX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v22 = CGRectGetMaxY(v32);
  CGContextAddLineToPoint(cGContext, v21, v22);
  CGContextStrokePath(cGContext);
  CGContextRestoreGState(cGContext);
}

uint64_t __80__PXStoryVisualDiagnosticsProviderHelper_drawAsset_contentsRect_inRect_context___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    PXSizeScale();
  }

  return result;
}

double *__80__PXStoryVisualDiagnosticsProviderHelper_drawAsset_contentsRect_inRect_context___block_invoke_2(double *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = [a2 drawInRect:{result[5], result[6], result[7], result[8]}];
    *(*(*(v2 + 4) + 8) + 24) = 1;
  }

  return result;
}

- (void)drawAsset:(id)asset inRect:(CGRect)rect context:(id)context
{
  v5 = *(off_1E7722240 + 1);
  v6[0] = *off_1E7722240;
  v6[1] = v5;
  v6[2] = *(off_1E7722240 + 2);
  [(PXStoryVisualDiagnosticsProviderHelper *)self drawAsset:asset contentsRect:v6 inRect:context context:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
}

- (PXStoryVisualDiagnosticsProviderHelper)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = PXStoryVisualDiagnosticsProviderHelper;
  v6 = [(PXStoryVisualDiagnosticsProviderHelper *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v7->_contentsScale = 2.0;
    v8 = [PXStoryDefaultDisplayAssetCroppingContext alloc];
    assetCollection = [(PXStoryConfiguration *)v7->_configuration assetCollection];
    v10 = [(PXStoryDefaultDisplayAssetCroppingContext *)v8 initWithAssetCollection:assetCollection detailedSaliency:0];
    croppingContext = v7->_croppingContext;
    v7->_croppingContext = v10;

    mediaProvider = [(PXStoryConfiguration *)v7->_configuration mediaProvider];
    mediaProvider = v7->_mediaProvider;
    v7->_mediaProvider = mediaProvider;
  }

  return v7;
}

- (PXStoryVisualDiagnosticsProviderHelper)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryVisualDiagnosticsProviderHelper.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryVisualDiagnosticsProviderHelper init]"}];

  abort();
}

@end