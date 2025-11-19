@interface PXFlexMusicArtworkAsset
- (BOOL)isEqual:(id)a3;
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (NSString)uuid;
- (PXFlexMusicArtworkAsset)init;
- (PXFlexMusicArtworkAsset)initWithAudioAsset:(id)a3;
@end

@implementation PXFlexMusicArtworkAsset

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 audioAsset];
    v6 = [(PXFlexMusicArtworkAsset *)self audioAsset];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uuid
{
  v2 = [(PXFlexMusicArtworkAsset *)self audioAsset];
  v3 = [v2 identifier];

  return v3;
}

- (PXFlexMusicArtworkAsset)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFlexMusicArtworkAsset.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXFlexMusicArtworkAsset init]"}];

  abort();
}

- (PXFlexMusicArtworkAsset)initWithAudioAsset:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXFlexMusicArtworkAsset;
  v6 = [(PXFlexMusicArtworkAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioAsset, a3);
  }

  return v7;
}

@end