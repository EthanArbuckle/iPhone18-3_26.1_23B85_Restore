@interface PXPassthroughMediaAnalyzer
- (PXPassthroughMediaAnalyzer)initWithMatchedTimeRanges:(id)ranges;
- (PXPassthroughMediaAnalyzer)initWithTimeRangeProvider:(id)provider;
- (id)requestAnalysisForAssets:(id)assets options:(unint64_t)options contexts:(id)contexts resultHandler:(id)handler;
- (id)requestMatchedTimeRangesForAsset:(id)asset searchQueryMatchInfo:(id)info contextualVideoThumbnailID:(id)d resultHandler:(id)handler;
@end

@implementation PXPassthroughMediaAnalyzer

- (id)requestAnalysisForAssets:(id)assets options:(unint64_t)options contexts:(id)contexts resultHandler:(id)handler
{
  assetsCopy = assets;
  contextsCopy = contexts;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMediaAnalyzer.m" lineNumber:209 description:@"This code path is not implemented."];

  abort();
}

- (id)requestMatchedTimeRangesForAsset:(id)asset searchQueryMatchInfo:(id)info contextualVideoThumbnailID:(id)d resultHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x1E696AE38];
  assetCopy = asset;
  v11 = [v9 progressWithTotalUnitCount:10];
  [v11 setCompletedUnitCount:1];
  timeRangeProvider = self->_timeRangeProvider;
  [assetCopy duration];
  v14 = v13;

  v15 = timeRangeProvider[2](timeRangeProvider, v14);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PXPassthroughMediaAnalyzer_requestMatchedTimeRangesForAsset_searchQueryMatchInfo_contextualVideoThumbnailID_resultHandler___block_invoke;
  block[3] = &unk_1E774A0E0;
  v16 = v11;
  v24 = v15;
  v25 = handlerCopy;
  v23 = v16;
  v17 = v15;
  v18 = handlerCopy;
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

- (PXPassthroughMediaAnalyzer)initWithMatchedTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__PXPassthroughMediaAnalyzer_initWithMatchedTimeRanges___block_invoke;
  v8[3] = &unk_1E7735D58;
  v9 = rangesCopy;
  v5 = rangesCopy;
  v6 = [(PXPassthroughMediaAnalyzer *)self initWithTimeRangeProvider:v8];

  return v6;
}

- (PXPassthroughMediaAnalyzer)initWithTimeRangeProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PXPassthroughMediaAnalyzer;
  v5 = [(PXPassthroughMediaAnalyzer *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(providerCopy);
    timeRangeProvider = v5->_timeRangeProvider;
    v5->_timeRangeProvider = v6;
  }

  return v5;
}

@end