@interface PXMockAudioAsset
- (BOOL)isAudioEqualToAsset:(id)asset;
- (PXMockAudioAsset)init;
- (PXMockAudioAsset)initWithConfiguration:(id)configuration;
- (id)artworkURLForTargetPixelSize:(CGSize)size;
- (void)setDuration:(id *)duration;
- (void)setExportableDuration:(id *)duration;
@end

@implementation PXMockAudioAsset

- (void)setExportableDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_exportableDuration.epoch = duration->var3;
  *&self->_exportableDuration.value = v3;
}

- (void)setDuration:(id *)duration
{
  v3 = *&duration->var0;
  self->_duration.epoch = duration->var3;
  *&self->_duration.value = v3;
}

- (id)artworkURLForTargetPixelSize:(CGSize)size
{
  height = size.height;
  *&size.width = size.width;
  *&size.width = floorf(*&size.width);
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:size.width];
  stringValue = [v5 stringValue];

  v7 = height;
  *&v8 = floorf(v7);
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  stringValue2 = [v9 stringValue];

  artworkURLFormat = [(PXMockAudioAsset *)self artworkURLFormat];
  v12 = [artworkURLFormat stringByReplacingOccurrencesOfString:@"{w}" withString:stringValue];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"{h}" withString:stringValue2];

  v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];

  return v14;
}

- (BOOL)isAudioEqualToAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy catalog] == 1)
  {
    identifier = [assetCopy identifier];
    identifier2 = [(PXMockAudioAsset *)self identifier];
    if (identifier == identifier2)
    {
      v7 = 1;
    }

    else
    {
      v7 = [identifier isEqualToString:identifier2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXMockAudioAsset)init
{
  v15.receiver = self;
  v15.super_class = PXMockAudioAsset;
  v2 = [(PXMockAudioAsset *)&v15 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Mock Song %@", v2->_identifier];
    title = v2->_title;
    v2->_title = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Mock Artist %@", v2->_identifier];
    artistName = v2->_artistName;
    v2->_artistName = v8;

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Mock Album %@", v2->_identifier];
    albumTitle = v2->_albumTitle;
    v2->_albumTitle = v10;

    v2->_pace = 2;
    v12 = objc_opt_class();
    audioSessionClass = v2->_audioSessionClass;
    v2->_audioSessionClass = v12;

    v2->_flags = 0;
  }

  return v2;
}

- (PXMockAudioAsset)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PXMockAudioAsset *)self init];
  if (v5)
  {
    configurationCopy[2](configurationCopy, v5);
  }

  return v5;
}

@end