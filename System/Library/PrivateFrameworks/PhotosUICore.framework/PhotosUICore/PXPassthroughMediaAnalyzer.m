@interface PXPassthroughMediaAnalyzer
- (PXPassthroughMediaAnalyzer)initWithMatchedTimeRanges:(id)a3;
- (PXPassthroughMediaAnalyzer)initWithTimeRangeProvider:(id)a3;
- (id)requestAnalysisForAssets:(id)a3 options:(unint64_t)a4 contexts:(id)a5 resultHandler:(id)a6;
- (id)requestMatchedTimeRangesForAsset:(id)a3 searchQueryMatchInfo:(id)a4 contextualVideoThumbnailID:(id)a5 resultHandler:(id)a6;
@end

@implementation PXPassthroughMediaAnalyzer

- (id)requestAnalysisForAssets:(id)a3 options:(unint64_t)a4 contexts:(id)a5 resultHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXMediaAnalyzer.m" lineNumber:209 description:@"This code path is not implemented."];

  abort();
}

- (id)requestMatchedTimeRangesForAsset:(id)a3 searchQueryMatchInfo:(id)a4 contextualVideoThumbnailID:(id)a5 resultHandler:(id)a6
{
  v8 = a6;
  v9 = MEMORY[0x1E696AE38];
  v10 = a3;
  v11 = [v9 progressWithTotalUnitCount:10];
  [v11 setCompletedUnitCount:1];
  timeRangeProvider = self->_timeRangeProvider;
  [v10 duration];
  v14 = v13;

  v15 = timeRangeProvider[2](timeRangeProvider, v14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PXPassthroughMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke;
  block[3] = &unk_1E774A0E0;
  v16 = v11;
  v24 = v15;
  v25 = v8;
  v23 = v16;
  v17 = v15;
  v18 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v19 = v24;
  v20 = v16;

  return v16;
}

uint64_t __125__PXPassthroughMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (PXPassthroughMediaAnalyzer)initWithMatchedTimeRanges:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXPassthroughMediaAnalyzer_initWithMatchedTimeRanges___block_invoke;
  v8[3] = &unk_1E7735D58;
  v9 = v4;
  v5 = v4;
  v6 = [(PXPassthroughMediaAnalyzer *)self initWithTimeRangeProvider:v8];

  return v6;
}

- (PXPassthroughMediaAnalyzer)initWithTimeRangeProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXPassthroughMediaAnalyzer;
  v5 = [(PXPassthroughMediaAnalyzer *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    timeRangeProvider = v5->_timeRangeProvider;
    v5->_timeRangeProvider = v6;
  }

  return v5;
}

@end