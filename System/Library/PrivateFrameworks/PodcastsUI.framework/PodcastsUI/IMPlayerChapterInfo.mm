@interface IMPlayerChapterInfo
- ($377CF2390FDF0262336A0B78E33E12FE)assetTimeRange;
- ($377CF2390FDF0262336A0B78E33E12FE)mediaTimeRange;
- (BOOL)isEqual:(id)equal;
- (UIImage)artwork;
- (id)description;
- (unint64_t)hash;
- (void)setArtworkData:(id)data;
- (void)setAssetTimeRange:(id *)range;
- (void)setMediaTimeRange:(id *)range;
@end

@implementation IMPlayerChapterInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(IMPlayerChapterInfo *)self title];
      if (title)
      {
        title2 = [(IMPlayerChapterInfo *)v5 title];
        v8 = title2 != 0;
      }

      else
      {
        v8 = 0;
      }

      externalURL = [(IMPlayerChapterInfo *)self externalURL];
      if (externalURL)
      {
        v11 = externalURL;
        externalURL2 = [(IMPlayerChapterInfo *)v5 externalURL];

        if (externalURL2)
        {
          v13 = v8;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          title3 = [(IMPlayerChapterInfo *)self title];
          title4 = [(IMPlayerChapterInfo *)v5 title];
          if ([title3 isEqualToString:title4])
          {
            externalURL3 = [(IMPlayerChapterInfo *)self externalURL];
            externalURL4 = [(IMPlayerChapterInfo *)v5 externalURL];
            v9 = [externalURL3 isEqual:externalURL4];
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_23;
        }

        if (v8)
        {
          goto LABEL_18;
        }

        if (externalURL2)
        {
          title3 = [(IMPlayerChapterInfo *)self externalURL];
          title4 = [(IMPlayerChapterInfo *)v5 externalURL];
          v18 = [title3 isEqual:title4];
          goto LABEL_22;
        }
      }

      else if (v8)
      {
LABEL_18:
        title3 = [(IMPlayerChapterInfo *)self title];
        title4 = [(IMPlayerChapterInfo *)v5 title];
        v18 = [title3 isEqualToString:title4];
LABEL_22:
        v9 = v18;
LABEL_23:

LABEL_25:
        goto LABEL_26;
      }

      v9 = 0;
      goto LABEL_25;
    }

    v9 = 0;
  }

LABEL_26:

  return v9;
}

- (unint64_t)hash
{
  title = [(IMPlayerChapterInfo *)self title];
  if (title)
  {
    externalURL = [(IMPlayerChapterInfo *)self externalURL];

    if (externalURL)
    {
      title2 = [(IMPlayerChapterInfo *)self title];
      v6 = [title2 hash];
      externalURL2 = [(IMPlayerChapterInfo *)self externalURL];
      title = ([externalURL2 hash] ^ v6);
    }

    else
    {
      title = 0;
    }
  }

  title3 = [(IMPlayerChapterInfo *)self title];

  if (title3)
  {
    title4 = [(IMPlayerChapterInfo *)self title];
LABEL_11:
    v12 = title4;
    title = [title4 hash];

    return title;
  }

  externalURL3 = [(IMPlayerChapterInfo *)self externalURL];

  if (externalURL3)
  {
    title4 = [(IMPlayerChapterInfo *)self externalURL];
    goto LABEL_11;
  }

  artwork = [(IMPlayerChapterInfo *)self artwork];

  if (artwork)
  {
    title4 = [(IMPlayerChapterInfo *)self artwork];
    goto LABEL_11;
  }

  return title;
}

- (void)setArtworkData:(id)data
{
  objc_storeStrong(&self->_artworkData, data);
  dataCopy = data;
  artwork = self->_artwork;
  self->_artwork = 0;
}

- (UIImage)artwork
{
  artwork = self->_artwork;
  if (artwork)
  {
    v3 = artwork;
  }

  else
  {
    artworkData = [(IMPlayerChapterInfo *)self artworkData];

    if (artworkData)
    {
      v6 = MEMORY[0x277D755B8];
      artworkData2 = [(IMPlayerChapterInfo *)self artworkData];
      v8 = [v6 imageWithData:artworkData2];

      [v8 size];
      if (v10 > 600.0 || v9 > 600.0)
      {
        v11 = [v8 imageWithSize:1 preserveAspectRatio:{600.0, 600.0}];

        v8 = v11;
      }

      [v8 size];
      if (v12 != v13)
      {
        v14 = v12;
        v15 = v13;
        if (v12 < v13)
        {
          v12 = v13;
        }

        if (v12 >= 140.0)
        {
          v16 = v12;
        }

        else
        {
          v16 = 140.0;
        }

        v17 = [v8 colorAtPixelX:(v14 + -1.0) y:0];
        v18 = [MEMORY[0x277D75348] colorWithRed:(BYTE2(v17) / 255.0) green:(BYTE1(v17) / 255.0) blue:(v17 / 255.0) alpha:(HIBYTE(v17) / 255.0)];
        v19 = *MEMORY[0x277CBF348];
        v20 = *(MEMORY[0x277CBF348] + 8);
        [v8 scale];
        v22 = v21;
        v32.width = v16;
        v32.height = v16;
        UIGraphicsBeginImageContextWithOptions(v32, 1, v22);
        [v18 set];
        v33.origin.x = v19;
        v33.origin.y = v20;
        v33.size.width = v16;
        v33.size.height = v16;
        UIRectFill(v33);
        [v8 drawInRect:0 blendMode:CGRectCenterRectInRect(v19 alpha:{v20, v14, v15, v19, v20, v16, v16)}];
        v23 = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();
        v8 = v23;
      }

      if (os_feature_enabled_red_sun())
      {
        imageByPreparingForDisplay = [v8 imageByPreparingForDisplay];
        v25 = imageByPreparingForDisplay;
        if (imageByPreparingForDisplay)
        {
          v26 = imageByPreparingForDisplay;
        }

        else
        {
          v26 = v8;
        }

        v27 = v26;
        v28 = self->_artwork;
        self->_artwork = v27;
      }

      else
      {
        v29 = v8;
        v25 = self->_artwork;
        self->_artwork = v29;
      }

      v3 = self->_artwork;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = off_2782BE170[[(IMPlayerChapterInfo *)self type]];
  v5 = qword_2782BE180[[(IMPlayerChapterInfo *)self metadataType]];
  title = [(IMPlayerChapterInfo *)self title];
  externalURL = [(IMPlayerChapterInfo *)self externalURL];
  [(IMPlayerChapterInfo *)self time];
  v9 = v8;
  [(IMPlayerChapterInfo *)self duration];
  v11 = v10;
  [(IMPlayerChapterInfo *)self mediaTimeRange];
  v12 = CMTimeRangeCopyDescription(0, &range);
  [(IMPlayerChapterInfo *)self assetTimeRange];
  v13 = CMTimeRangeCopyDescription(0, &range);
  v14 = [v3 stringWithFormat:@"<%p> type=%s metadata_type=%s title=%@ url=%@ time=%f duration=%f mediaTimeRange=%@ assetTimeRange=%@", self, v4, v5, title, externalURL, v9, v11, v12, v13];

  return v14;
}

- ($377CF2390FDF0262336A0B78E33E12FE)mediaTimeRange
{
  v3 = *&self[1].var1.var1;
  *&retstr->var0.var0 = *&self[1].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var0.var0;
  return self;
}

- (void)setMediaTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_mediaTimeRange.start.epoch = *&range->var0.var3;
  *&self->_mediaTimeRange.duration.timescale = v4;
  *&self->_mediaTimeRange.start.value = v3;
}

- ($377CF2390FDF0262336A0B78E33E12FE)assetTimeRange
{
  v3 = *&self[2].var1.var1;
  *&retstr->var0.var0 = *&self[2].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var0;
  return self;
}

- (void)setAssetTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var1.var1;
  *&self->_assetTimeRange.start.epoch = *&range->var0.var3;
  *&self->_assetTimeRange.duration.timescale = v4;
  *&self->_assetTimeRange.start.value = v3;
}

@end