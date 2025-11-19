@interface PXImageAsset
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (PXImageAsset)initWithImage:(id)a3;
- (double)aspectRatio;
- (int64_t)isContentEqualTo:(id)a3;
@end

@implementation PXImageAsset

- (int64_t)isContentEqualTo:(id)a3
{
  if (a3 == self)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGRect)faceAreaRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)acceptableCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)aspectRatio
{
  v2 = [(PXImageAsset *)self image];
  [v2 size];
  v5 = 1.0;
  if (v3 != 0.0 && v4 != 0.0 && (v3 != *MEMORY[0x1E69BDDB0] || v4 != *(MEMORY[0x1E69BDDB0] + 8)))
  {
    v5 = fabs(v3 / v4);
  }

  return v5;
}

- (PXImageAsset)initWithImage:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXImageAsset;
  v6 = [(PXImageAsset *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    [v5 size];
    v7->_pixelWidth = v8;
    [v5 size];
    v7->_pixelHeight = v9;
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "hash")}];
    v14 = [v10 initWithFormat:@"%@-%@", v12, v13];
    uuid = v7->_uuid;
    v7->_uuid = v14;
  }

  return v7;
}

@end