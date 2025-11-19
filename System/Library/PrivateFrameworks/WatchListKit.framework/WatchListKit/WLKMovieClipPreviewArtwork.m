@interface WLKMovieClipPreviewArtwork
- (CGSize)artworkSize;
- (WLKArtworkVariant)artworkVariant;
- (WLKMovieClipPreviewArtwork)init;
- (WLKMovieClipPreviewArtwork)initWithDictionary:(id)a3;
- (id)_init;
@end

@implementation WLKMovieClipPreviewArtwork

- (WLKMovieClipPreviewArtwork)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WLKMovieClipPreviewArtwork *)self _init];
    if (v5)
    {
      v6 = [v4 wlk_stringForKey:@"bgColor"];
      v7 = v5[2];
      v5[2] = v6;

      *(v5 + 8) = [v4 wlk_BOOLForKey:@"supportsLayeredImage" defaultValue:0];
      v8 = [v4 wlk_stringForKey:@"textColor1"];
      v9 = v5[3];
      v5[3] = v8;

      v10 = [v4 wlk_stringForKey:@"textColor2"];
      v11 = v5[4];
      v5[4] = v10;

      v12 = [v4 wlk_stringForKey:@"textColor3"];
      v13 = v5[5];
      v5[5] = v12;

      v14 = [v4 wlk_stringForKey:@"textColor4"];
      v15 = v5[5];
      v5[5] = v14;

      v16 = [v4 wlk_stringForKey:@"url"];
      v17 = v5[7];
      v5[7] = v16;

      v18 = [v4 wlk_numberForKey:@"height"];
      v19 = [v4 wlk_numberForKey:@"width"];
      v20 = v19;
      if (v18 && v19)
      {
        [v19 doubleValue];
        v22 = v21;
        [v18 doubleValue];
        v5[8] = v22;
        v5[9] = v23;
      }
    }

    self = v5;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = WLKMovieClipPreviewArtwork;
  return [(WLKMovieClipPreviewArtwork *)&v3 init];
}

- (WLKMovieClipPreviewArtwork)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKMovieClipPreviewArtwork" format:@"-init is not supported. Use -initWithDictionary:"];

  return 0;
}

- (WLKArtworkVariant)artworkVariant
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (!self->_url || (*MEMORY[0x277CBF3A8] == self->_artworkSize.width ? (v3 = *(MEMORY[0x277CBF3A8] + 8) == self->_artworkSize.height) : (v3 = 0), v3))
  {
    v7 = 0;
  }

  else
  {
    v10[0] = @"width";
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v11[0] = v4;
    v10[1] = @"height";
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_artworkSize.height];
    v11[1] = v5;
    v11[2] = @"jpg";
    v10[2] = @"format";
    v10[3] = @"url";
    v11[3] = self->_url;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

    v7 = [[WLKArtworkVariant alloc] initWithDictionary:v6];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (CGSize)artworkSize
{
  width = self->_artworkSize.width;
  height = self->_artworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end