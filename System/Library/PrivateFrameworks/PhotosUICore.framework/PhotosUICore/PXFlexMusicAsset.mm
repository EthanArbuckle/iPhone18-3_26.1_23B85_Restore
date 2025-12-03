@interface PXFlexMusicAsset
- (BOOL)isAudioEqualToAsset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (PXDisplayAsset)artworkDisplayAsset;
- (PXFlexMusicAsset)assetWithTargetDuration:(id *)duration;
- (PXFlexMusicAsset)initWithConfiguration:(id)configuration;
- (void)setDuration:(id *)duration;
- (void)setTargetDuration:(id *)duration;
@end

@implementation PXFlexMusicAsset

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_duration.epoch = duration->var3;
  *&self->_duration.value = v3;
}

- (void)setTargetDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_targetDuration.epoch = duration->var3;
  *&self->_targetDuration.value = v3;
}

- (PXFlexMusicAsset)assetWithTargetDuration:(id *)duration
{
  v5 = [PXFlexMusicAsset alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PXFlexMusicAsset_assetWithTargetDuration___block_invoke;
  v8[3] = &unk_1E772C7D8;
  v8[4] = self;
  v9 = *duration;
  v6 = [(PXFlexMusicAsset *)v5 initWithConfiguration:v8];

  return v6;
}

void __44__PXFlexMusicAsset_assetWithTargetDuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 title];
  [v4 setTitle:v5];

  v6 = [*(a1 + 32) artistName];
  [v4 setArtistName:v6];

  v7 = [*(a1 + 32) subtitle];
  [v4 setSubtitle:v7];

  v8 = [*(a1 + 32) identifier];
  [v4 setIdentifier:v8];

  v9 = [*(a1 + 32) assetTagsDescription];
  v10 = [v9 copy];
  [v4 setAssetTagsDescription:v10];

  v11 = [*(a1 + 32) colorGradeCategory];
  v12 = [v11 copy];
  [v4 setColorGradeCategory:v12];

  [v4 setPace:{objc_msgSend(*(a1 + 32), "pace")}];
  [v4 setFlags:{objc_msgSend(*(a1 + 32), "flags")}];
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  [v4 setTargetDuration:&v13];
}

- (PXDisplayAsset)artworkDisplayAsset
{
  v2 = [[PXFlexMusicArtworkAsset alloc] initWithAudioAsset:self];

  return v2;
}

- (PXFlexMusicAsset)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7.receiver = self;
  v7.super_class = PXFlexMusicAsset;
  v5 = [(PXFlexMusicAsset *)&v7 init];
  if (v5)
  {
    configurationCopy[2](configurationCopy, v5);
  }

  return v5;
}

- (BOOL)isAudioEqualToAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(PXFlexMusicAsset *)self identifier];
    identifier2 = [assetCopy identifier];
    if (identifier == identifier2 || [identifier isEqual:identifier2])
    {
      [(PXFlexMusicAsset *)self targetDuration];
      if (assetCopy)
      {
        [assetCopy targetDuration];
      }

      else
      {
        memset(&v9, 0, sizeof(v9));
      }

      v7 = CMTimeCompare(&time1, &v9) == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(PXFlexMusicAsset *)equalCopy identifier];
      identifier2 = [(PXFlexMusicAsset *)self identifier];
      if (identifier == identifier2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [identifier isEqual:identifier2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end