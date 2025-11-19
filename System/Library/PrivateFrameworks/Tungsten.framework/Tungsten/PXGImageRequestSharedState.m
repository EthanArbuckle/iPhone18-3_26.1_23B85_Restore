@interface PXGImageRequestSharedState
- (CGSize)targetSize;
- (PXGImageRequestSharedState)initWithDisplayAssetFetchResult:(id)a3 observer:(id)a4 presentationStyles:(unint64_t)a5 targetSize:(CGSize)a6 screenScale:(double)a7 screenMaxHeadroom:(double)a8 adjustment:(id)a9 intent:(unint64_t)a10 useLowMemoryDecode:(BOOL)a11 applyCleanApertureCrop:(BOOL)a12 mediaProvider:(id)a13;
@end

@implementation PXGImageRequestSharedState

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXGImageRequestSharedState)initWithDisplayAssetFetchResult:(id)a3 observer:(id)a4 presentationStyles:(unint64_t)a5 targetSize:(CGSize)a6 screenScale:(double)a7 screenMaxHeadroom:(double)a8 adjustment:(id)a9 intent:(unint64_t)a10 useLowMemoryDecode:(BOOL)a11 applyCleanApertureCrop:(BOOL)a12 mediaProvider:(id)a13
{
  height = a6.height;
  width = a6.width;
  v23 = a3;
  v30 = a4;
  v24 = a9;
  v25 = a13;
  v31.receiver = self;
  v31.super_class = PXGImageRequestSharedState;
  v26 = [(PXGImageRequestSharedState *)&v31 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_displayAssetFetchResult, a3);
    objc_storeStrong(&v27->_observer, a4);
    v27->_presentationStyles = a5;
    v27->_targetSize.width = width;
    v27->_targetSize.height = height;
    v27->_screenScale = a7;
    v27->_screenMaxHeadroom = a8;
    objc_storeStrong(&v27->_adjustment, a9);
    v27->_intent = a10;
    objc_storeStrong(&v27->_mediaProvider, a13);
    v27->_useLowMemoryDecode = a11;
    v27->_applyCleanApertureCrop = a12;
  }

  return v27;
}

@end