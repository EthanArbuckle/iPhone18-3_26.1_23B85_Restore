@interface _PXFlexMusicCueRequest
- (_PXFlexMusicCueRequest)init;
- (_PXFlexMusicCueRequest)initWithAsset:(id)asset resultHandler:(id)handler;
@end

@implementation _PXFlexMusicCueRequest

- (_PXFlexMusicCueRequest)initWithAsset:(id)asset resultHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = _PXFlexMusicCueRequest;
  v9 = [(_PXFlexMusicCueRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    v11 = [handlerCopy copy];
    resultHandler = v10->_resultHandler;
    v10->_resultHandler = v11;
  }

  return v10;
}

- (_PXFlexMusicCueRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicCueProvider.m" lineNumber:103 description:{@"%s is not available as initializer", "-[_PXFlexMusicCueRequest init]"}];

  abort();
}

@end