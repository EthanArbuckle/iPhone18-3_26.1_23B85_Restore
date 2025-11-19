@interface PXMockAudioAsset
- (BOOL)isAudioEqualToAsset:(id)a3;
- (PXMockAudioAsset)init;
- (PXMockAudioAsset)initWithConfiguration:(id)a3;
- (id)artworkURLForTargetPixelSize:(CGSize)a3;
- (void)setDuration:(id *)a3;
- (void)setExportableDuration:(id *)a3;
@end

@implementation PXMockAudioAsset

- (void)setExportableDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_exportableDuration.epoch = a3->var3;
  *&self->_exportableDuration.value = v3;
}

- (void)setDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_duration.epoch = a3->var3;
  *&self->_duration.value = v3;
}

- (id)artworkURLForTargetPixelSize:(CGSize)a3
{
  height = a3.height;
  *&a3.width = a3.width;
  *&a3.width = floorf(*&a3.width);
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:a3.width];
  v6 = [v5 stringValue];

  v7 = height;
  *&v8 = floorf(v7);
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v10 = [v9 stringValue];

  v11 = [(PXMockAudioAsset *)self artworkURLFormat];
  v12 = [v11 stringByReplacingOccurrencesOfString:@"{w}" withString:v6];
  v13 = [v12 stringByReplacingOccurrencesOfString:@"{h}" withString:v10];

  v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];

  return v14;
}

- (BOOL)isAudioEqualToAsset:(id)a3
{
  v4 = a3;
  if ([v4 catalog] == 1)
  {
    v5 = [v4 identifier];
    v6 = [(PXMockAudioAsset *)self identifier];
    if (v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isEqualToString:v6];
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;

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

- (PXMockAudioAsset)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PXMockAudioAsset *)self init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

@end