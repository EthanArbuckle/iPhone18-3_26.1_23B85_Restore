@interface PXStoryCachingDisplayAssetCroppingContext
- (PXStoryCachingDisplayAssetCroppingContext)init;
- (PXStoryCachingDisplayAssetCroppingContext)initWithCroppingContext:(id)a3;
- (id)cropContentRectsForMultipartPanoramaAsset:(id)a3 axis:(int64_t)a4 cropContentsRectsApectRatio:(double)a5;
- (void)dealloc;
- (void)requestIndividualFaceRectsInAsset:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5;
@end

@implementation PXStoryCachingDisplayAssetCroppingContext

- (id)cropContentRectsForMultipartPanoramaAsset:(id)a3 axis:(int64_t)a4 cropContentsRectsApectRatio:(double)a5
{
  v9 = a3;
  v10 = self;
  objc_sync_enter(v10);
  if ([(PXDisplayAsset *)v10->_cachedPanoramaAsset isContentEqualTo:v9]|| v10->_cachedPanoramaAxis != a4 || v10->_cachedPanoramaCropContentsRectsApectRatio != a5)
  {
    objc_storeStrong(&v10->_cachedPanoramaAsset, a3);
    v10->_cachedPanoramaAxis = a4;
    v10->_cachedPanoramaCropContentsRectsApectRatio = a5;
    v11 = [(PXStoryDisplayAssetCroppingContext *)v10->_croppingContext cropContentRectsForMultipartPanoramaAsset:v9 axis:a4 cropContentsRectsApectRatio:a5];
    cachedPanoramaCropContentRects = v10->_cachedPanoramaCropContentRects;
    v10->_cachedPanoramaCropContentRects = v11;
  }

  v13 = v10->_cachedPanoramaCropContentRects;
  objc_sync_exit(v10);

  return v13;
}

- (void)requestIndividualFaceRectsInAsset:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (a4)
  {
    PXAssertGetLog();
  }

  v11 = self;
  objc_sync_enter(v11);
  if ([(PXDisplayAsset *)v11->_cachedAsset isContentEqualTo:v9]!= 2 || v11->_cachedOptions != a4)
  {
    objc_storeStrong(&v11->_cachedAsset, a3);
    v11->_cachedOptions = a4;
    v11->_cachedFaceCount = 0;
    croppingContext = v11->_croppingContext;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __101__PXStoryCachingDisplayAssetCroppingContext_requestIndividualFaceRectsInAsset_options_resultHandler___block_invoke;
    v13[3] = &unk_1E77332D0;
    v13[4] = v11;
    [(PXStoryDisplayAssetCroppingContext *)croppingContext requestIndividualFaceRectsInAsset:v9 options:a4 resultHandler:v13];
  }

  v10[2](v10, v11->_cachedFaceCount, v11->_cachedNormalizedFaceRects, v11->_cachedFeaturedFaceCount, 0);
  objc_sync_exit(v11);
}

uint64_t __101__PXStoryCachingDisplayAssetCroppingContext_requestIndividualFaceRectsInAsset_options_resultHandler___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(result + 32) + 32) = a2;
  *(*(result + 32) + 40) = a4;
  if (a2 >= 1)
  {
    _PXGArrayResize();
  }

  return result;
}

- (void)dealloc
{
  free(self->_cachedNormalizedFaceRects);
  v3.receiver = self;
  v3.super_class = PXStoryCachingDisplayAssetCroppingContext;
  [(PXStoryCachingDisplayAssetCroppingContext *)&v3 dealloc];
}

- (PXStoryCachingDisplayAssetCroppingContext)initWithCroppingContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryCachingDisplayAssetCroppingContext;
  v6 = [(PXStoryCachingDisplayAssetCroppingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_croppingContext, a3);
  }

  return v7;
}

- (PXStoryCachingDisplayAssetCroppingContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryCachingDisplayAssetCroppingContext.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStoryCachingDisplayAssetCroppingContext init]"}];

  abort();
}

@end