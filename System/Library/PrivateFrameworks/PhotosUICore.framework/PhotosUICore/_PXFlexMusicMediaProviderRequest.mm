@interface _PXFlexMusicMediaProviderRequest
- (_PXFlexMusicMediaProviderRequest)init;
- (_PXFlexMusicMediaProviderRequest)initWithAsset:(id)asset options:(id)options requestID:(int64_t)d resultHandler:(id)handler;
@end

@implementation _PXFlexMusicMediaProviderRequest

- (_PXFlexMusicMediaProviderRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicMediaProvider.m" lineNumber:192 description:{@"%s is not available as initializer", "-[_PXFlexMusicMediaProviderRequest init]"}];

  abort();
}

- (_PXFlexMusicMediaProviderRequest)initWithAsset:(id)asset options:(id)options requestID:(int64_t)d resultHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = _PXFlexMusicMediaProviderRequest;
  v14 = [(_PXFlexMusicMediaProviderRequest *)&v21 init];
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