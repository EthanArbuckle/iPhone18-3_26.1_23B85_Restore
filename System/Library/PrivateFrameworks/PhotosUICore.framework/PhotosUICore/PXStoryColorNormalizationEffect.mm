@interface PXStoryColorNormalizationEffect
- (NSString)effectDetails;
- (NSString)effectSummary;
- (PXStoryColorNormalizationEffect)initWithEntityManager:(id)manager;
- (void)_handleResult:(id)result resultType:(unint64_t)type requestID:(int64_t)d;
- (void)_updateColorLookupCube;
- (void)setAssetNormalization:(id)normalization;
- (void)setCurrentRequestID:(int64_t)d;
@end

@implementation PXStoryColorNormalizationEffect

- (void)_handleResult:(id)result resultType:(unint64_t)type requestID:(int64_t)d
{
  resultCopy = result;
  if (type >= 2)
  {
    if (type == 2 && [(PXStoryColorNormalizationEffect *)self currentRequestID]== d)
    {
      queue = [(PXGEffect *)self queue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__PXStoryColorNormalizationEffect__handleResult_resultType_requestID___block_invoke;
      v10[3] = &unk_1E774C620;
      v10[4] = self;
      v11 = resultCopy;
      dispatch_async(queue, v10);
    }
  }

  else
  {
    [(PXGColorGradingEffect *)self setColorLookupCube:resultCopy];
  }
}

- (void)_updateColorLookupCube
{
  objc_initWeak(&location, self);
  library = self->_library;
  assetNormalization = [(PXStoryColorNormalizationEffect *)self assetNormalization];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __57__PXStoryColorNormalizationEffect__updateColorLookupCube__block_invoke;
  v9 = &unk_1E7731F78;
  objc_copyWeak(&v10, &location);
  v5 = [(PXStoryColorNormalizationCubeLibrary *)library requestColorCubeForAssetNormalization:assetNormalization completionHandler:&v6];
  [(PXStoryColorNormalizationEffect *)self setCurrentRequestID:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__PXStoryColorNormalizationEffect__updateColorLookupCube__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleResult:v7 resultType:a3 requestID:a4];
}

- (void)setCurrentRequestID:(int64_t)d
{
  if (self->_currentRequestID != d)
  {
    [(PXStoryColorNormalizationCubeLibrary *)self->_library cancelRequest:?];
    self->_currentRequestID = d;
  }
}

- (void)setAssetNormalization:(id)normalization
{
  normalizationCopy = normalization;
  v5 = self->_assetNormalization;
  v6 = v5;
  if (v5 == normalizationCopy)
  {
  }

  else
  {
    v7 = [(PFStoryRecipeDisplayAssetNormalization *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetNormalization, normalization);
      [(PXStoryColorNormalizationEffect *)self _updateColorLookupCube];
    }
  }
}

- (NSString)effectDetails
{
  assetNormalization = [(PXStoryColorNormalizationEffect *)self assetNormalization];
  detailedDescription = [assetNormalization detailedDescription];

  return detailedDescription;
}

- (NSString)effectSummary
{
  v3 = MEMORY[0x1E696AEC0];
  effectId = [(PXGEffect *)self effectId];
  colorLookupCube = [(PXGColorGradingEffect *)self colorLookupCube];
  v6 = [v3 stringWithFormat:@"EffectID:%d Cube:%ld", effectId, objc_msgSend(colorLookupCube, "edgeSize")];

  return v6;
}

- (PXStoryColorNormalizationEffect)initWithEntityManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = PXStoryColorNormalizationEffect;
  v3 = [(PXGColorGradingEffect *)&v7 initWithEntityManager:manager];
  if (v3)
  {
    v4 = +[PXStoryColorNormalizationCubeLibrary sharedInstance];
    library = v3->_library;
    v3->_library = v4;
  }

  return v3;
}

@end