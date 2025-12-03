@interface _PXGMediaRequest
- (CGSize)bestReceivedSize;
- (_PXGMediaRequest)initWithAsset:(id)asset observer:(id)observer postProcessOptions:(unint64_t)options;
@end

@implementation _PXGMediaRequest

- (CGSize)bestReceivedSize
{
  width = self->_bestReceivedSize.width;
  height = self->_bestReceivedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_PXGMediaRequest)initWithAsset:(id)asset observer:(id)observer postProcessOptions:(unint64_t)options
{
  assetCopy = asset;
  observerCopy = observer;
  v14.receiver = self;
  v14.super_class = _PXGMediaRequest;
  v11 = [(_PXGMediaRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, asset);
    objc_storeStrong(&v12->_observer, observer);
    v12->_postProcessOptions = options;
    v12->_bestReceivedSize = *MEMORY[0x277CBF3A8];
  }

  return v12;
}

@end