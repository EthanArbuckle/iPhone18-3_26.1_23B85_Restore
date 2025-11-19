@interface PXStoryChapteredComposabilityResults
- ($94F468A8D4C62B317260615823C2B210)composabilityScoresAtIndex:(unint64_t)a3;
- (PXStoryChapteredComposabilityResults)init;
- (PXStoryChapteredComposabilityResults)initWithDisplayAssets:(id)a3 originalResults:(id)a4 chapterCollection:(id)a5;
- (unint64_t)count;
@end

@implementation PXStoryChapteredComposabilityResults

- ($94F468A8D4C62B317260615823C2B210)composabilityScoresAtIndex:(unint64_t)a3
{
  v5 = [(PXStoryChapteredComposabilityResults *)self originalResults];
  [v5 composabilityScoresAtIndex:a3];
  v7 = v6;
  v9 = v8;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__PXStoryChapteredComposabilityResults_composabilityScoresAtIndex___block_invoke;
  aBlock[3] = &unk_1E7743BB8;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  if ((v10[2](v10, a3 - 1) & 1) != 0 || v10[2](v10, a3))
  {
    v9 = 0.0;
    v7 = 0.0;
  }

  if (v10[2](v10, a3 + 1))
  {
    v9 = 0.0;
  }

  v11 = v7;
  v12 = v9;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

uint64_t __67__PXStoryChapteredComposabilityResults_composabilityScoresAtIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v3 = a2 + 1;
  v4 = [*(a1 + 32) displayAssets];
  v5 = [v4 count];

  if (v3 >= v5)
  {
    return 0;
  }

  v6 = [*(a1 + 32) chapterCollection];
  v7 = [*(a1 + 32) displayAssets];
  v8 = [v7 objectAtIndexedSubscript:v3];
  v9 = [v6 containsChapterBeginningWithAsset:v8];

  return v9;
}

- (unint64_t)count
{
  v2 = [(PXStoryChapteredComposabilityResults *)self originalResults];
  v3 = [v2 count];

  return v3;
}

- (PXStoryChapteredComposabilityResults)initWithDisplayAssets:(id)a3 originalResults:(id)a4 chapterCollection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXStoryChapteredComposabilityResults;
  v12 = [(PXStoryChapteredComposabilityResults *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_displayAssets, a3);
    objc_storeStrong(&v13->_originalResults, a4);
    objc_storeStrong(&v13->_chapterCollection, a5);
  }

  return v13;
}

- (PXStoryChapteredComposabilityResults)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChapteredComposabilityResults.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXStoryChapteredComposabilityResults init]"}];

  abort();
}

@end