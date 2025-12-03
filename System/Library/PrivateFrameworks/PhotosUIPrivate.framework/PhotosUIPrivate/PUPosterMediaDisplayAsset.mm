@interface PUPosterMediaDisplayAsset
- (BOOL)isEqual:(id)equal;
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (PUPosterMediaDisplayAsset)init;
- (PUPosterMediaDisplayAsset)initWithPosterMedia:(id)media;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      posterMedia = [(PUPosterMediaDisplayAsset *)self posterMedia];
      assetUUID = [posterMedia assetUUID];
      posterMedia2 = [(PUPosterMediaDisplayAsset *)equalCopy posterMedia];
      assetUUID2 = [posterMedia2 assetUUID];
      if (assetUUID == assetUUID2)
      {
        v9 = 1;
      }

      else
      {
        v9 = [assetUUID isEqualToString:assetUUID2];
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
  posterMedia = [(PUPosterMediaDisplayAsset *)self posterMedia];
  v3 = [posterMedia hash];

  return v3;
}

- (PUPosterMediaDisplayAsset)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPosterMediaDisplayAsset.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PUPosterMediaDisplayAsset init]"}];

  abort();
}

- (PUPosterMediaDisplayAsset)initWithPosterMedia:(id)media
{
  mediaCopy = media;
  v9.receiver = self;
  v9.super_class = PUPosterMediaDisplayAsset;
  v6 = [(PUPosterMediaDisplayAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_posterMedia, media);
  }

  return v7;
}

@end