@interface PXImageRequestDescriptor
- (BOOL)isEqual:(id)equal;
- (CGSize)targetSize;
- (PXImageRequestDescriptor)init;
- (PXImageRequestDescriptor)initWithAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXImageRequestDescriptor

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXImageRequestDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequestDescriptor.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXImageRequestDescriptor init]"}];

  abort();
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  asset = [(PXImageRequestDescriptor *)self asset];
  [(PXImageRequestDescriptor *)self targetSize];
  v8 = v7;
  [(PXImageRequestDescriptor *)self targetSize];
  v10 = v9;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXImageRequestDescriptor contentMode](self, "contentMode")}];
  options = [(PXImageRequestDescriptor *)self options];
  v13 = [v3 initWithFormat:@"<%@ %p; asset: %@, targetSize: {%.2f, %.2f}; contentMode: %@; options: %@>", v5, self, asset, v8, v10, v11, options];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      asset = [(PXImageRequestDescriptor *)self asset];
      asset2 = [(PXImageRequestDescriptor *)v5 asset];
      if (asset == asset2 || [asset isEqual:asset2])
      {
        [(PXImageRequestDescriptor *)self targetSize];
        v9 = v8;
        v11 = v10;
        [(PXImageRequestDescriptor *)v5 targetSize];
        v13 = 0;
        if (v9 == v14 && v11 == v12)
        {
          contentMode = [(PXImageRequestDescriptor *)self contentMode];
          v13 = contentMode == [(PXImageRequestDescriptor *)v5 contentMode];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(PXDisplayAsset *)self->_asset hash]^ self->_targetSize.width;
  options = self->_options;
  v5 = v3 ^ self->_targetSize.height ^ self->_contentMode;
  return v5 ^ [(PXImageRequestOptions *)options hash];
}

- (PXImageRequestDescriptor)initWithAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  v19.receiver = self;
  v19.super_class = PXImageRequestDescriptor;
  v14 = [(PXImageRequestDescriptor *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, asset);
    v15->_targetSize.width = width;
    v15->_targetSize.height = height;
    v15->_contentMode = mode;
    v16 = [optionsCopy copy];
    options = v15->_options;
    v15->_options = v16;
  }

  return v15;
}

@end