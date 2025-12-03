@interface _PXAudioAssetImageProviderRequest
- (CGSize)targetSize;
- (_PXAudioAssetImageProviderRequest)init;
- (_PXAudioAssetImageProviderRequest)initWithAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler requestID:(int64_t)d signpostID:(unint64_t)iD;
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
  asset = [(_PXAudioAssetImageProviderRequest *)self asset];
  [(_PXAudioAssetImageProviderRequest *)self targetSize];
  v7 = NSStringFromCGSize(v11);
  v8 = [v3 initWithFormat:@"<%@ %p; asset: %@, targetSize: %@ requestID: %ld>", v5, self, asset, v7, -[_PXAudioAssetImageProviderRequest requestID](self, "requestID")];

  return v8;
}

- (_PXAudioAssetImageProviderRequest)initWithAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler requestID:(int64_t)d signpostID:(unint64_t)iD
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = _PXAudioAssetImageProviderRequest;
  v21 = [(_PXAudioAssetImageProviderRequest *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_asset, asset);
    v22->_targetSize.width = width;
    v22->_targetSize.height = height;
    v22->_contentMode = mode;
    objc_storeStrong(&v22->_options, options);
    v23 = [handlerCopy copy];
    resultHandler = v22->_resultHandler;
    v22->_resultHandler = v23;

    v22->_requestID = d;
    v22->_signpostID = iD;
  }

  return v22;
}

- (_PXAudioAssetImageProviderRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAudioAssetImageProvider.m" lineNumber:222 description:{@"%s is not available as initializer", "-[_PXAudioAssetImageProviderRequest init]"}];

  abort();
}

@end