@interface _PXAudioAssetImageProviderRequest
- (CGSize)targetSize;
- (_PXAudioAssetImageProviderRequest)init;
- (_PXAudioAssetImageProviderRequest)initWithAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7 requestID:(int64_t)a8 signpostID:(unint64_t)a9;
- (id)description;
@end

@implementation _PXAudioAssetImageProviderRequest

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_PXAudioAssetImageProviderRequest *)self asset];
  [(_PXAudioAssetImageProviderRequest *)self targetSize];
  v7 = NSStringFromCGSize(v11);
  v8 = [v3 initWithFormat:@"<%@ %p; asset: %@, targetSize: %@ requestID: %ld>", v5, self, v6, v7, -[_PXAudioAssetImageProviderRequest requestID](self, "requestID")];

  return v8;
}

- (_PXAudioAssetImageProviderRequest)initWithAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7 requestID:(int64_t)a8 signpostID:(unint64_t)a9
{
  height = a4.height;
  width = a4.width;
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v26.receiver = self;
  v26.super_class = _PXAudioAssetImageProviderRequest;
  v21 = [(_PXAudioAssetImageProviderRequest *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_asset, a3);
    v22->_targetSize.width = width;
    v22->_targetSize.height = height;
    v22->_contentMode = a5;
    objc_storeStrong(&v22->_options, a6);
    v23 = [v20 copy];
    resultHandler = v22->_resultHandler;
    v22->_resultHandler = v23;

    v22->_requestID = a8;
    v22->_signpostID = a9;
  }

  return v22;
}

- (_PXAudioAssetImageProviderRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAudioAssetImageProvider.m" lineNumber:222 description:{@"%s is not available as initializer", "-[_PXAudioAssetImageProviderRequest init]"}];

  abort();
}

@end