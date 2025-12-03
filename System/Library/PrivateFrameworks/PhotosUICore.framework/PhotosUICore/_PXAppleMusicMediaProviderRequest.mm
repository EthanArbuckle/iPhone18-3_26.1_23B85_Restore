@interface _PXAppleMusicMediaProviderRequest
- (_PXAppleMusicMediaProviderRequest)init;
- (_PXAppleMusicMediaProviderRequest)initWithAsset:(id)asset options:(id)options requestID:(int64_t)d resultHandler:(id)handler;
@end

@implementation _PXAppleMusicMediaProviderRequest

- (_PXAppleMusicMediaProviderRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicMediaProvider.m" lineNumber:57 description:{@"%s is not available as initializer", "-[_PXAppleMusicMediaProviderRequest init]"}];

  abort();
}

- (_PXAppleMusicMediaProviderRequest)initWithAsset:(id)asset options:(id)options requestID:(int64_t)d resultHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = _PXAppleMusicMediaProviderRequest;
  v14 = [(_PXAppleMusicMediaProviderRequest *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_requestID = d;
    objc_storeStrong(&v14->_asset, asset);
    v16 = [optionsCopy copy];
    options = v15->_options;
    v15->_options = v16;

    v18 = [handlerCopy copy];
    resultHandler = v15->_resultHandler;
    v15->_resultHandler = v18;
  }

  return v15;
}

@end