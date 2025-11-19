@interface WLKArtworkVariant
+ (id)artworkURLFromTemplate:(id)a3 forSize:(CGSize)a4 cropCode:(id)a5 format:(id)a6;
- (CGSize)artworkSize;
- (NSURL)artworkURL;
- (WLKArtworkVariant)initWithDictionary:(id)a3;
- (id)artworkSizeTemplateURL;
- (id)artworkURLForSize:(CGSize)a3 cropCode:(id)a4 format:(id)a5;
- (id)description;
@end

@implementation WLKArtworkVariant

- (WLKArtworkVariant)initWithDictionary:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v35.receiver = self;
    v35.super_class = WLKArtworkVariant;
    v5 = [(WLKArtworkVariant *)&v35 init];
    if (!v5)
    {
LABEL_75:
      self = v5;
      v11 = self;
      goto LABEL_76;
    }

    v6 = [v4 allKeys];
    v7 = [v6 firstObject];

    v8 = v7;
    objc_opt_class();
    v9 = v8;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_66:
      v12 = [v4 objectForKey:v8];

      v13 = [v12 objectForKey:@"width"];
      [v13 floatValue];
      v15 = v14;
      v16 = [v12 objectForKey:@"height"];
      [v16 floatValue];
      v5->_artworkSize.width = v15;
      v5->_artworkSize.height = v17;

      v18 = [v12 objectForKey:@"url"];
      v19 = [v18 copy];
      artworkURLString = v5->_artworkURLString;
      v5->_artworkURLString = v19;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 hasPrefix:@"bundle://"])
      {
        v21 = [v18 rangeOfString:@"bundle://"];
        v23 = [v18 substringFromIndex:v21 + v22];
        v24 = [MEMORY[0x277CCA8D8] mainBundle];
        v25 = [v24 resourcePath];
        v26 = [v25 stringByAppendingPathComponent:v23];
        v27 = [v26 copy];
        artworkURLTemplate = v5->_artworkURLTemplate;
        v5->_artworkURLTemplate = v27;
      }

      else
      {
        v29 = [v18 copy];
        v23 = v5->_artworkURLTemplate;
        v5->_artworkURLTemplate = v29;
      }

      v30 = [v12 objectForKey:@"format"];
      v31 = [v30 copy];
      format = v5->_format;
      v5->_format = v31;

      if ([(NSString *)v5->_format compare:@"lsr" options:1]== NSOrderedSame)
      {
        v33 = v5->_format;
        v5->_format = @"lcr";
      }

      v5->_supportsLayeredImage = [v12 wlk_BOOLForKey:@"supportsLayeredImage" defaultValue:0];
      v5->_alpha = [v12 wlk_BOOLForKey:@"hasAlpha" defaultValue:0];
      if (!v5->_format)
      {
        v5->_format = @"jpg";
      }

      v4 = v12;
      goto LABEL_75;
    }

    v9 = [v8 lowercaseString];

    if ([v9 isEqualToString:@"banner"])
    {
      v10 = 1;
    }

    else
    {
      if (![v9 isEqualToString:@"other"])
      {
        if ([v9 isEqualToString:@"coverart"])
        {
          v10 = 2;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"previewframe"])
        {
          v10 = 4;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"showlogo"])
        {
          v10 = 5;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"castincharacter"])
        {
          v10 = 3;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"fullscreenbackground"])
        {
          v10 = 6;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"contentlogo"])
        {
          v10 = 8;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"fullcolorcontentlogo"])
        {
          v10 = 21;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"singlecolorcontentlogo"])
        {
          v10 = 22;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"flowcaseimage"])
        {
          v10 = 7;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"logoglyph"])
        {
          v10 = 9;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"appicon"])
        {
          v10 = 10;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"heroimage"])
        {
          v10 = 11;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"masterlockupimage"])
        {
          v10 = 12;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"evodfeaturing"])
        {
          v10 = 13;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"actioncoverart"])
        {
          v10 = 14;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"upnextbackground"])
        {
          v10 = 15;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"keyframe"])
        {
          v10 = 16;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"coverart16x9"])
        {
          v10 = 17;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"whitelogo"])
        {
          v10 = 18;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"centeredfullscreenbackgroundimage"])
        {
          v10 = 20;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"shelfimagebackground"])
        {
          v10 = 23;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"posterart"])
        {
          v10 = 24;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"showposterart"])
        {
          v10 = 25;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"shelfimage"])
        {
          v10 = 26;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"keyframeimage"])
        {
          v10 = 27;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"shelfitemimage"])
        {
          v10 = 28;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"shelfitemimagelive"])
        {
          v10 = 29;
          goto LABEL_65;
        }

        if ([v9 isEqualToString:@"shelfitemimagepost"])
        {
          v10 = 30;
          goto LABEL_65;
        }
      }

      v10 = 19;
    }

LABEL_65:
    v5->_artworkType = v10;
    goto LABEL_66;
  }

  v11 = 0;
LABEL_76:

  return v11;
}

- (NSURL)artworkURL
{
  v2 = [(WLKArtworkVariant *)self artworkURLForSize:self->_artworkSize.width, self->_artworkSize.height];
  v3 = [v2 copy];

  return v3;
}

- (id)artworkURLForSize:(CGSize)a3 cropCode:(id)a4 format:(id)a5
{
  height = a3.height;
  width = a3.width;
  format = a5;
  if (!a5)
  {
    format = self->_format;
  }

  v11 = format;
  v12 = a5;
  v13 = a4;
  v14 = [objc_opt_class() artworkURLFromTemplate:self->_artworkURLTemplate forSize:v13 cropCode:v11 format:{width, height}];

  return v14;
}

+ (id)artworkURLFromTemplate:(id)a3 forSize:(CGSize)a4 cropCode:(id)a5 format:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a5;
  v11 = a6;
  v12 = [a3 mutableCopy];
  v13 = [v12 rangeOfString:@"{w}"];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v13;
    v16 = v14;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.0f", *&width];
    [v12 replaceCharactersInRange:v15 withString:{v16, v17}];
  }

  v18 = [v12 rangeOfString:@"{h}"];
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = v18;
    v21 = v19;
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.0f", *&height];
    [v12 replaceCharactersInRange:v20 withString:{v21, v22}];
  }

  v23 = [v12 rangeOfString:@"{c}"];
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v23;
    v26 = v24;
    if ([(__CFString *)v10 length])
    {
      v27 = v10;
    }

    else
    {
      v27 = &stru_288206BC0;
    }

    [v12 replaceCharactersInRange:v25 withString:{v26, v27}];
  }

  v28 = [v12 rangeOfString:@"{f}"];
  if (v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 replaceCharactersInRange:v28 withString:{v29, v11}];
  }

  v30 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v31 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v30];
  v32 = [v31 mutableCopy];

  v33 = [MEMORY[0x277CBEBC0] URLWithString:v32];

  return v33;
}

- (id)artworkSizeTemplateURL
{
  v3 = [(NSString *)self->_artworkURLTemplate mutableCopy];
  v4 = [v3 rangeOfString:@"{f}"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 replaceCharactersInRange:v4 withString:{v5, self->_format}];
  }

  v6 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v7 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v6];
  v8 = [v7 mutableCopy];

  v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = WLKArtworkVariant;
  v4 = [(WLKArtworkVariant *)&v11 description];
  artworkType = self->_artworkType;
  [(WLKArtworkVariant *)self artworkSize];
  v6 = [(WLKArtworkVariant *)self _sizeDescription:?];
  v7 = [(WLKArtworkVariant *)self artworkURL];
  v8 = [v7 absoluteString];
  v9 = [v3 stringWithFormat:@"%@ type: %ld, size: %@, url: %@", v4, artworkType, v6, v8];

  return v9;
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