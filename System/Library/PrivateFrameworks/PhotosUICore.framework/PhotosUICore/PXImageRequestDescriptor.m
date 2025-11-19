@interface PXImageRequestDescriptor
- (BOOL)isEqual:(id)a3;
- (CGSize)targetSize;
- (PXImageRequestDescriptor)init;
- (PXImageRequestDescriptor)initWithAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXImageRequestDescriptor.m" lineNumber:57 description:{@"%s is not available as initializer", "-[PXImageRequestDescriptor init]"}];

  abort();
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXImageRequestDescriptor *)self asset];
  [(PXImageRequestDescriptor *)self targetSize];
  v8 = v7;
  [(PXImageRequestDescriptor *)self targetSize];
  v10 = v9;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXImageRequestDescriptor contentMode](self, "contentMode")}];
  v12 = [(PXImageRequestDescriptor *)self options];
  v13 = [v3 initWithFormat:@"<%@ %p; asset: %@, targetSize: {%.2f, %.2f}; contentMode: %@; options: %@>", v5, self, v6, v8, v10, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXImageRequestDescriptor *)self asset];
      v7 = [(PXImageRequestDescriptor *)v5 asset];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        [(PXImageRequestDescriptor *)self targetSize];
        v9 = v8;
        v11 = v10;
        [(PXImageRequestDescriptor *)v5 targetSize];
        v13 = 0;
        if (v9 == v14 && v11 == v12)
        {
          v15 = [(PXImageRequestDescriptor *)self contentMode];
          v13 = v15 == [(PXImageRequestDescriptor *)v5 contentMode];
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

- (PXImageRequestDescriptor)initWithAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PXImageRequestDescriptor;
  v14 = [(PXImageRequestDescriptor *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, a3);
    v15->_targetSize.width = width;
    v15->_targetSize.height = height;
    v15->_contentMode = a5;
    v16 = [v13 copy];
    options = v15->_options;
    v15->_options = v16;
  }

  return v15;
}

@end