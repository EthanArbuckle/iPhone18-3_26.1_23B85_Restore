@interface PXGImageRequestSharedState
- (CGSize)targetSize;
- (PXGImageRequestSharedState)initWithDisplayAssetFetchResult:(id)result observer:(id)observer presentationStyles:(unint64_t)styles targetSize:(CGSize)size screenScale:(double)scale screenMaxHeadroom:(double)headroom adjustment:(id)adjustment intent:(unint64_t)self0 useLowMemoryDecode:(BOOL)self1 applyCleanApertureCrop:(BOOL)self2 mediaProvider:(id)self3;
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

- (PXGImageRequestSharedState)initWithDisplayAssetFetchResult:(id)result observer:(id)observer presentationStyles:(unint64_t)styles targetSize:(CGSize)size screenScale:(double)scale screenMaxHeadroom:(double)headroom adjustment:(id)adjustment intent:(unint64_t)self0 useLowMemoryDecode:(BOOL)self1 applyCleanApertureCrop:(BOOL)self2 mediaProvider:(id)self3
{
  height = size.height;
  width = size.width;
  resultCopy = result;
  observerCopy = observer;
  adjustmentCopy = adjustment;
  providerCopy = provider;
  v31.receiver = self;
  v31.super_class = PXGImageRequestSharedState;
  v26 = [(PXGImageRequestSharedState *)&v31 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_displayAssetFetchResult, result);
    objc_storeStrong(&v27->_observer, observer);
    v27->_presentationStyles = styles;
    v27->_targetSize.width = width;
    v27->_targetSize.height = height;
    v27->_screenScale = scale;
    v27->_screenMaxHeadroom = headroom;
    objc_storeStrong(&v27->_adjustment, adjustment);
    v27->_intent = intent;
    objc_storeStrong(&v27->_mediaProvider, provider);
    v27->_useLowMemoryDecode = decode;
    v27->_applyCleanApertureCrop = crop;
  }

  return v27;
}

@end