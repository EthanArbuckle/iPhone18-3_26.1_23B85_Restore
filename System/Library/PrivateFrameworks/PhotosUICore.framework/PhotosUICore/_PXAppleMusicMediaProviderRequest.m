@interface _PXAppleMusicMediaProviderRequest
- (_PXAppleMusicMediaProviderRequest)init;
- (_PXAppleMusicMediaProviderRequest)initWithAsset:(id)a3 options:(id)a4 requestID:(int64_t)a5 resultHandler:(id)a6;
@end

@implementation _PXAppleMusicMediaProviderRequest

- (_PXAppleMusicMediaProviderRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAppleMusicMediaProvider.m" lineNumber:57 description:{@"%s is not available as initializer", "-[_PXAppleMusicMediaProviderRequest init]"}];

  abort();
}

- (_PXAppleMusicMediaProviderRequest)initWithAsset:(id)a3 options:(id)a4 requestID:(int64_t)a5 resultHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = _PXAppleMusicMediaProviderRequest;
  v14 = [(_PXAppleMusicMediaProviderRequest *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_requestID = a5;
    objc_storeStrong(&v14->_asset, a3);
    v16 = [v12 copy];
    options = v15->_options;
    v15->_options = v16;

    v18 = [v13 copy];
    resultHandler = v15->_resultHandler;
    v15->_resultHandler = v18;
  }

  return v15;
}

@end