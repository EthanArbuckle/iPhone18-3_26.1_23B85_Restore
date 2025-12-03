@interface PXAssetAnalyzer
- (BOOL)canAnalyzeAsset:(id)asset forWorkerType:(int64_t)type;
- (PXAssetAnalyzer)init;
- (void)_handleResultForRequest:(id)request success:(BOOL)success;
@end

@implementation PXAssetAnalyzer

- (void)_handleResultForRequest:(id)request success:(BOOL)success
{
  requestCopy = request;
  asset = [requestCopy asset];
  uuid = [asset uuid];

  workerType = [requestCopy workerType];
  v8 = [(PXAssetAnalyzer *)self _keyForAssetUUID:uuid forWorkerType:workerType];
  [(NSMutableDictionary *)self->_analyzerUUIDToRequest removeObjectForKey:v8];
}

void __46__PXAssetAnalyzer_analyzeAsset_forWorkerType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 _keyForAssetUUID:v3 forWorkerType:*(a1 + 48)];

  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v4];
  if (!v5)
  {
    if ([*(a1 + 32) canAnalyzeAsset:*(a1 + 40) forWorkerType:*(a1 + 48)])
    {
      v6 = [[_PXAssetAnalyzerRequest alloc] initWithAsset:*(a1 + 40) workerType:*(a1 + 48)];
      [*(*(a1 + 32) + 8) setObject:v6 forKeyedSubscript:v4];
      objc_initWeak(&location, *(a1 + 32));
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __46__PXAssetAnalyzer_analyzeAsset_forWorkerType___block_invoke_2;
      v7[3] = &unk_1E774B330;
      objc_copyWeak(&v9, &location);
      v5 = v6;
      v8 = v5;
      [(_PXAssetAnalyzerRequest *)v5 runWithResultHandler:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    else
    {
      v5 = 0;
    }
  }
}

void __46__PXAssetAnalyzer_analyzeAsset_forWorkerType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResultForRequest:*(a1 + 32) success:a2];
}

- (BOOL)canAnalyzeAsset:(id)asset forWorkerType:(int64_t)type
{
  assetCopy = asset;
  v6 = assetCopy;
  if (type || ![assetCopy canPlayPhotoIris] || (objc_msgSend(v6, "px_isSharedAlbumAsset") & 1) != 0 || objc_msgSend(v6, "playbackVariation"))
  {
    isVariationSuggestionStatesUnknown = 0;
  }

  else
  {
    isVariationSuggestionStatesUnknown = [v6 isVariationSuggestionStatesUnknown];
  }

  return isVariationSuggestionStatesUnknown;
}

- (PXAssetAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = PXAssetAnalyzer;
  v2 = [(PXAssetAnalyzer *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    analyzerUUIDToRequest = v2->_analyzerUUIDToRequest;
    v2->_analyzerUUIDToRequest = dictionary;
  }

  return v2;
}

@end