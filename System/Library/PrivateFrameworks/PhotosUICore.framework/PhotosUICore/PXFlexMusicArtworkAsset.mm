@interface PXFlexMusicArtworkAsset
- (BOOL)isEqual:(id)equal;
- (CGRect)acceptableCropRect;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (NSString)uuid;
- (PXFlexMusicArtworkAsset)init;
- (PXFlexMusicArtworkAsset)initWithAudioAsset:(id)asset;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    audioAsset = [equalCopy audioAsset];
    audioAsset2 = [(PXFlexMusicArtworkAsset *)self audioAsset];
    v7 = [audioAsset isEqual:audioAsset2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uuid
{
  audioAsset = [(PXFlexMusicArtworkAsset *)self audioAsset];
  identifier = [audioAsset identifier];

  return identifier;
}

- (PXFlexMusicArtworkAsset)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicArtworkAsset.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXFlexMusicArtworkAsset init]"}];

  abort();
}

- (PXFlexMusicArtworkAsset)initWithAudioAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PXFlexMusicArtworkAsset;
  v6 = [(PXFlexMusicArtworkAsset *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioAsset, asset);
  }

  return v7;
}

@end