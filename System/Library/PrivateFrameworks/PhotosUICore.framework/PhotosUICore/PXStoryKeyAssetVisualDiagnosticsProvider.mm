@interface PXStoryKeyAssetVisualDiagnosticsProvider
- (PXStoryKeyAssetVisualDiagnosticsProvider)init;
- (PXStoryKeyAssetVisualDiagnosticsProvider)initWithModel:(id)a3;
- (void)_requestPotentialKeyAssetsWithResultHandler:(id)a3;
- (void)_requestThumbnailTimelineWithKeyAsset:(id)a3 resultHandler:(id)a4;
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
@end

@implementation PXStoryKeyAssetVisualDiagnosticsProvider

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v7 addTitlePageWithTitle:@"Visual Diagnostics" subtitle:@"Key Asset"];
  v9 = [(PXStoryKeyAssetVisualDiagnosticsProvider *)self helper];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke;
  v13[3] = &unk_1E773A108;
  v13[4] = self;
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = a2;
  v10 = v9;
  v11 = v7;
  v12 = v8;
  [(PXStoryKeyAssetVisualDiagnosticsProvider *)self _requestPotentialKeyAssetsWithResultHandler:v13];
}

void __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    [v5 count];
    v11;
    a1[5];
    a1[6];
    a1[7];
    PXIterateAsynchronously();
  }

  v12 = a1[7];
  v13 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(9, a3, @"potential key assets request failed", v6, v7, v8, v9, v10, v14);
  v12[2](v12, 0, v13);
}

void __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "index")}];
  v5 = PLStoryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v18 = [v3 index];
    v19 = 2048;
    v20 = [v3 count];
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "creating visual diagnostics for potential key asset %ti/%ti %@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_29;
  v10[3] = &unk_1E773A0B8;
  v6 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = v4;
  v7 = *(a1 + 64);
  v15 = v3;
  v16 = v7;
  v14 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  [v6 _requestThumbnailTimelineWithKeyAsset:v9 resultHandler:v10];
}

void __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) beginPage];
  [*(a1 + 32) currentPageBounds];
  v21 = CGRectInset(v20, 10.0, 10.0);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  memset(&remainder, 0, sizeof(remainder));
  memset(&v15, 0, sizeof(v15));
  v11 = CGRectGetHeight(v21) * 0.4;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectDivide(v22, &slice, &remainder, v11, CGRectMinYEdge);
  CGRectDivide(remainder, &v15, &remainder, 10.0, CGRectMinYEdge);
  CGRectDivide(remainder, &v17, &remainder, 30.0, CGRectMaxYEdge);
  CGRectDivide(remainder, &v15, &v18, 10.0, CGRectMaxYEdge);
  if (v5)
  {
    [v5 size];
    PXSizeGetAspectRatio();
  }

  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_2_30;
  v13[3] = &unk_1E773A040;
  v14 = v6;
  [v12 drawTextInRect:v13 configuration:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];

  [*(a1 + 48) aspectRatio];
  PXRectWithAspectRatioFittingRect();
}

void __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_2_30(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"Error: %@", *(a1 + 32)];
  [v4 setText:v5];

  v6 = [MEMORY[0x1E69DC888] redColor];
  [v4 setTextColor:v6];
}

void __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 firstSegmentIdentifier];
  if (v4)
  {
    [v4 timeRangeForSegmentWithIdentifier:v5];
  }

  [*(a1 + 32) size];
  PXRectWithOriginAndSize();
}

void __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setText:v2];
  [v3 setFontSize:10.0];
}

void __92__PXStoryKeyAssetVisualDiagnosticsProvider_addVisualDiagnosticsToContext_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    __dst[90] = v5;
    __dst[91] = v6;
    v7 = a2;
    v9 = (a5 + 16);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      memcpy(__dst, v9, 0x290uLL);
      if (v11 == 1)
      {
        v12 = *(a1 + 32);
        v13 = [*(a1 + 40) clipWithIdentifier:v10];
        v14 = [v13 resource];

        v15 = [v14 px_storyResourceDisplayAsset];
        LODWORD(v12) = [v12 isEqual:v15];

        if (v12)
        {
          v16[4] = *&__dst[75];
          v16[5] = *&__dst[77];
          v16[6] = *&__dst[79];
          v17 = __dst[81];
          v16[0] = *&__dst[67];
          v16[1] = *&__dst[69];
          v16[2] = *&__dst[71];
          v16[3] = *&__dst[73];
          [*(a1 + 56) setKenBurnsAnimationInfo:v16];
        }
      }

      v9 += 96;
      --v7;
    }

    while (v7);
  }
}

- (void)_requestThumbnailTimelineWithKeyAsset:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PXStoryKeyAssetVisualDiagnosticsProvider__requestThumbnailTimelineWithKeyAsset_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7739FF0;
  aBlock[5] = v9;
  aBlock[4] = v7;
  _Block_copy(aBlock);
  [(PXStoryKeyAssetVisualDiagnosticsProvider *)self model];
  [objc_claimAutoreleasedReturnValue() configuration];
  objc_claimAutoreleasedReturnValue();
  PXDisplayAssetFetchResultFromAsset();
}

uint64_t __96__PXStoryKeyAssetVisualDiagnosticsProvider__requestThumbnailTimelineWithKeyAsset_resultHandler___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __96__PXStoryKeyAssetVisualDiagnosticsProvider__requestThumbnailTimelineWithKeyAsset_resultHandler___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 timeline];
  if (v5)
  {
    v6 = v5;
    (*(*(a1 + 32) + 16))();
    v5 = v6;
    *a3 = 1;
  }
}

void __96__PXStoryKeyAssetVisualDiagnosticsProvider__requestThumbnailTimelineWithKeyAsset_resultHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = PXStoryErrorCreateWithCodeDebugFormat(1, @"request timed out", a3, a4, a5, a6, a7, a8, v9);
  (*(v8 + 16))(v8, 0, v10);
}

- (void)_requestPotentialKeyAssetsWithResultHandler:(id)a3
{
  v4 = a3;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PXStoryKeyAssetVisualDiagnosticsProvider__requestPotentialKeyAssetsWithResultHandler___block_invoke;
  aBlock[3] = &unk_1E7739FA0;
  v22 = v23;
  v5 = v4;
  v21 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PXStoryKeyAssetVisualDiagnosticsProvider *)self model];
  v8 = [v7 configuration];
  v9 = [v8 copy];

  [v9 setOptions:{objc_msgSend(v9, "options") & 0xFFFFFFFFFFFFFFFDLL}];
  v10 = objc_alloc_init(PXStoryDefaultAssetsProducerFactory);
  v11 = [(PXStoryDefaultAssetsProducerFactory *)v10 assetsProducerForConfiguration:v9];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__PXStoryKeyAssetVisualDiagnosticsProvider__requestPotentialKeyAssetsWithResultHandler___block_invoke_2;
  v18[3] = &unk_1E7739FC8;
  v12 = v6;
  v19 = v12;
  v13 = [v11 requestAssetsWithOptions:1 storyQueue:0 resultHandler:v18];

  v14 = dispatch_time(0, 10000000000);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__PXStoryKeyAssetVisualDiagnosticsProvider__requestPotentialKeyAssetsWithResultHandler___block_invoke_3;
  v16[3] = &unk_1E774C250;
  v17 = v12;
  v15 = v12;
  dispatch_after(v14, MEMORY[0x1E69E96A0], v16);

  _Block_object_dispose(v23, 8);
}

uint64_t __88__PXStoryKeyAssetVisualDiagnosticsProvider__requestPotentialKeyAssetsWithResultHandler___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __88__PXStoryKeyAssetVisualDiagnosticsProvider__requestPotentialKeyAssetsWithResultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (([v2 isDegraded] & 1) == 0)
  {
    v3 = [v2 object];
    v4 = [v3 dataSource];

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v4 numberOfSections];
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = 0;
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      v11 = vnegq_f64(v9);
      do
      {
        v12[0] = [v4 identifier];
        v12[1] = v8;
        v13 = v11;
        v10 = [v4 assetsInSectionIndexPath:v12];
        [v5 addObject:v10];

        ++v8;
      }

      while (v7 != v8);
    }

    PXDisplayAssetFetchResultFromFetchResults();
  }
}

void __88__PXStoryKeyAssetVisualDiagnosticsProvider__requestPotentialKeyAssetsWithResultHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = PXStoryErrorCreateWithCodeDebugFormat(1, @"request timed out", a3, a4, a5, a6, a7, a8, v9);
  (*(v8 + 16))(v8, 0, v10);
}

- (PXStoryKeyAssetVisualDiagnosticsProvider)initWithModel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PXStoryKeyAssetVisualDiagnosticsProvider;
  v6 = [(PXStoryKeyAssetVisualDiagnosticsProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v8 = [PXStoryVisualDiagnosticsProviderHelper alloc];
    v9 = [(PXStoryModel *)v7->_model configuration];
    v10 = [(PXStoryVisualDiagnosticsProviderHelper *)v8 initWithConfiguration:v9];
    helper = v7->_helper;
    v7->_helper = v10;
  }

  return v7;
}

- (PXStoryKeyAssetVisualDiagnosticsProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryKeyAssetVisualDiagnosticsProvider.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXStoryKeyAssetVisualDiagnosticsProvider init]"}];

  abort();
}

@end