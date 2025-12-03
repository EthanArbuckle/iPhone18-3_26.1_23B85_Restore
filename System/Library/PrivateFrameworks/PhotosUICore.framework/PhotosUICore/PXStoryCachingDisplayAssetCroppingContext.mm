@interface PXStoryCachingDisplayAssetCroppingContext
- (PXStoryCachingDisplayAssetCroppingContext)init;
- (PXStoryCachingDisplayAssetCroppingContext)initWithCroppingContext:(id)context;
- (id)cropContentRectsForMultipartPanoramaAsset:(id)asset axis:(int64_t)axis cropContentsRectsApectRatio:(double)ratio;
- (void)dealloc;
- (void)requestIndividualFaceRectsInAsset:(id)asset options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryCachingDisplayAssetCroppingContext

- (id)cropContentRectsForMultipartPanoramaAsset:(id)asset axis:(int64_t)axis cropContentsRectsApectRatio:(double)ratio
{
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(PXDisplayAsset *)selfCopy->_cachedPanoramaAsset isContentEqualTo:assetCopy]|| selfCopy->_cachedPanoramaAxis != axis || selfCopy->_cachedPanoramaCropContentsRectsApectRatio != ratio)
  {
    objc_storeStrong(&selfCopy->_cachedPanoramaAsset, asset);
    selfCopy->_cachedPanoramaAxis = axis;
    selfCopy->_cachedPanoramaCropContentsRectsApectRatio = ratio;
    v11 = [(PXStoryDisplayAssetCroppingContext *)selfCopy->_croppingContext cropContentRectsForMultipartPanoramaAsset:assetCopy axis:axis cropContentsRectsApectRatio:ratio];
    cachedPanoramaCropContentRects = selfCopy->_cachedPanoramaCropContentRects;
    selfCopy->_cachedPanoramaCropContentRects = v11;
  }

  v13 = selfCopy->_cachedPanoramaCropContentRects;
  objc_sync_exit(selfCopy);

  return v13;
}

- (void)requestIndividualFaceRectsInAsset:(id)asset options:(unint64_t)options resultHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  handlerCopy = handler;
  if (options)
  {
    PXAssertGetLog();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(PXDisplayAsset *)selfCopy->_cachedAsset isContentEqualTo:assetCopy]!= 2 || selfCopy->_cachedOptions != options)
  {
    objc_storeStrong(&selfCopy->_cachedAsset, asset);
    selfCopy->_cachedOptions = options;
    selfCopy->_cachedFaceCount = 0;
    croppingContext = selfCopy->_croppingContext;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __101__PXStoryCachingDisplayAssetCroppingContext_requestIndividualFaceRectsInAsset_options_resultHandler___block_invoke;
    v13[3] = &unk_1E77332D0;
    v13[4] = selfCopy;
    [(PXStoryDisplayAssetCroppingContext *)croppingContext requestIndividualFaceRectsInAsset:assetCopy options:options resultHandler:v13];
  }

  handlerCopy[2](handlerCopy, selfCopy->_cachedFaceCount, selfCopy->_cachedNormalizedFaceRects, selfCopy->_cachedFeaturedFaceCount, 0);
  objc_sync_exit(selfCopy);
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

- (PXStoryCachingDisplayAssetCroppingContext)initWithCroppingContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PXStoryCachingDisplayAssetCroppingContext;
  v6 = [(PXStoryCachingDisplayAssetCroppingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_croppingContext, context);
  }

  return v7;
}

- (PXStoryCachingDisplayAssetCroppingContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryCachingDisplayAssetCroppingContext.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStoryCachingDisplayAssetCroppingContext init]"}];

  abort();
}

@end