@interface PUPosterMediaDisplayAsset
- (BOOL)isEqual:(id)a3;
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (PUPosterMediaDisplayAsset)init;
- (PUPosterMediaDisplayAsset)initWithPosterMedia:(id)a3;
- (unint64_t)hash;
@end

@implementation PUPosterMediaDisplayAsset

- (CGRect)acceptableCropRect
{
  v2 = *MEMORY[0x1E69BDDA8];
  v3 = *(MEMORY[0x1E69BDDA8] + 8);
  v4 = *(MEMORY[0x1E69BDDA8] + 16);
  v5 = *(MEMORY[0x1E69BDDA8] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
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

- (CGRect)preferredCropRect
{
  v2 = *MEMORY[0x1E69BDDA8];
  v3 = *(MEMORY[0x1E69BDDA8] + 8);
  v4 = *(MEMORY[0x1E69BDDA8] + 16);
  v5 = *(MEMORY[0x1E69BDDA8] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PUPosterMediaDisplayAsset *)self posterMedia];
      v6 = [v5 assetUUID];
      v7 = [(PUPosterMediaDisplayAsset *)v4 posterMedia];
      v8 = [v7 assetUUID];
      if (v6 == v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = [v6 isEqualToString:v8];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(PUPosterMediaDisplayAsset *)self posterMedia];
  v3 = [v2 hash];

  return v3;
}

- (PUPosterMediaDisplayAsset)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPosterMediaDisplayAsset.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PUPosterMediaDisplayAsset init]"}];

  abort();
}

- (PUPosterMediaDisplayAsset)initWithPosterMedia:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUPosterMediaDisplayAsset;
  v6 = [(PUPosterMediaDisplayAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_posterMedia, a3);
  }

  return v7;
}

@end