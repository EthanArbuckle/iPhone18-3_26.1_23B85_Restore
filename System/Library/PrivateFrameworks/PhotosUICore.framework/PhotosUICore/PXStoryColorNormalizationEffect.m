@interface PXStoryColorNormalizationEffect
- (NSString)effectDetails;
- (NSString)effectSummary;
- (PXStoryColorNormalizationEffect)initWithEntityManager:(id)a3;
- (void)_handleResult:(id)a3 resultType:(unint64_t)a4 requestID:(int64_t)a5;
- (void)_updateColorLookupCube;
- (void)setAssetNormalization:(id)a3;
- (void)setCurrentRequestID:(int64_t)a3;
@end

@implementation PXStoryColorNormalizationEffect

- (void)_handleResult:(id)a3 resultType:(unint64_t)a4 requestID:(int64_t)a5
{
  v8 = a3;
  if (a4 >= 2)
  {
    if (a4 == 2 && [(PXStoryColorNormalizationEffect *)self currentRequestID]== a5)
    {
      v9 = [(PXGEffect *)self queue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__PXStoryColorNormalizationEffect__handleResult_resultType_requestID___block_invoke;
      v10[3] = &unk_1E774C620;
      v10[4] = self;
      v11 = v8;
      dispatch_async(v9, v10);
    }
  }

  else
  {
    [(PXGColorGradingEffect *)self setColorLookupCube:v8];
  }
}

- (void)_updateColorLookupCube
{
  objc_initWeak(&location, self);
  library = self->_library;
  v4 = [(PXStoryColorNormalizationEffect *)self assetNormalization];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __57__PXStoryColorNormalizationEffect__updateColorLookupCube__block_invoke;
  v9 = &unk_1E7731F78;
  objc_copyWeak(&v10, &location);
  v5 = [(PXStoryColorNormalizationCubeLibrary *)library requestColorCubeForAssetNormalization:v4 completionHandler:&v6];
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

- (void)setCurrentRequestID:(int64_t)a3
{
  if (self->_currentRequestID != a3)
  {
    [(PXStoryColorNormalizationCubeLibrary *)self->_library cancelRequest:?];
    self->_currentRequestID = a3;
  }
}

- (void)setAssetNormalization:(id)a3
{
  v8 = a3;
  v5 = self->_assetNormalization;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PFStoryRecipeDisplayAssetNormalization *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_assetNormalization, a3);
      [(PXStoryColorNormalizationEffect *)self _updateColorLookupCube];
    }
  }
}

- (NSString)effectDetails
{
  v2 = [(PXStoryColorNormalizationEffect *)self assetNormalization];
  v3 = [v2 detailedDescription];

  return v3;
}

- (NSString)effectSummary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXGEffect *)self effectId];
  v5 = [(PXGColorGradingEffect *)self colorLookupCube];
  v6 = [v3 stringWithFormat:@"EffectID:%d Cube:%ld", v4, objc_msgSend(v5, "edgeSize")];

  return v6;
}

- (PXStoryColorNormalizationEffect)initWithEntityManager:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXStoryColorNormalizationEffect;
  v3 = [(PXGColorGradingEffect *)&v7 initWithEntityManager:a3];
  if (v3)
  {
    v4 = +[PXStoryColorNormalizationCubeLibrary sharedInstance];
    library = v3->_library;
    v3->_library = v4;
  }

  return v3;
}

@end