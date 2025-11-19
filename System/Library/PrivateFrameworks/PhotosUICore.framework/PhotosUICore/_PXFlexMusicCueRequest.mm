@interface _PXFlexMusicCueRequest
- (_PXFlexMusicCueRequest)init;
- (_PXFlexMusicCueRequest)initWithAsset:(id)a3 resultHandler:(id)a4;
@end

@implementation _PXFlexMusicCueRequest

- (_PXFlexMusicCueRequest)initWithAsset:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _PXFlexMusicCueRequest;
  v9 = [(_PXFlexMusicCueRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    v11 = [v8 copy];
    resultHandler = v10->_resultHandler;
    v10->_resultHandler = v11;
  }

  return v10;
}

- (_PXFlexMusicCueRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFlexMusicCueProvider.m" lineNumber:103 description:{@"%s is not available as initializer", "-[_PXFlexMusicCueRequest init]"}];

  abort();
}

@end