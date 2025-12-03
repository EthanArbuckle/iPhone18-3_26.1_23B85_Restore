@interface WLKArtworkVariant
+ (id)artworkURLFromTemplate:(id)template forSize:(CGSize)size cropCode:(id)code format:(id)format;
- (CGSize)artworkSize;
- (NSURL)artworkURL;
- (WLKArtworkVariant)initWithDictionary:(id)dictionary;
- (id)artworkSizeTemplateURL;
- (id)artworkURLForSize:(CGSize)size cropCode:(id)code format:(id)format;
- (id)description;
@end

@implementation WLKArtworkVariant

- (WLKArtworkVariant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count] == 1)
  {
    v35.receiver = self;
    v35.super_class = WLKArtworkVariant;
    v5 = [(WLKArtworkVariant *)&v35 init];
    if (!v5)
    {
LABEL_75:
      self = v5;
      selfCopy = self;
      goto LABEL_76;
    }

    allKeys = [dictionaryCopy allKeys];
    firstObject = [allKeys firstObject];

    v8 = firstObject;
    objc_opt_class();
    lowercaseString = v8;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_66:
      v12 = [dictionaryCopy objectForKey:v8];

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
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        resourcePath = [mainBundle resourcePath];
        v26 = [resourcePath stringByAppendingPathComponent:v23];
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

      dictionaryCopy = v12;
      goto LABEL_75;
    }

    lowercaseString = [v8 lowercaseString];

    if ([lowercaseString isEqualToString:@"banner"])
    {
      v10 = 1;
    }

    else
    {
      if (![lowercaseString isEqualToString:@"other"])
      {
        if ([lowercaseString isEqualToString:@"coverart"])
        {
          v10 = 2;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"previewframe"])
        {
          v10 = 4;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"showlogo"])
        {
          v10 = 5;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"castincharacter"])
        {
          v10 = 3;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"fullscreenbackground"])
        {
          v10 = 6;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"contentlogo"])
        {
          v10 = 8;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"fullcolorcontentlogo"])
        {
          v10 = 21;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"singlecolorcontentlogo"])
        {
          v10 = 22;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"flowcaseimage"])
        {
          v10 = 7;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"logoglyph"])
        {
          v10 = 9;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"appicon"])
        {
          v10 = 10;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"heroimage"])
        {
          v10 = 11;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"masterlockupimage"])
        {
          v10 = 12;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"evodfeaturing"])
        {
          v10 = 13;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"actioncoverart"])
        {
          v10 = 14;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"upnextbackground"])
        {
          v10 = 15;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"keyframe"])
        {
          v10 = 16;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"coverart16x9"])
        {
          v10 = 17;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"whitelogo"])
        {
          v10 = 18;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"centeredfullscreenbackgroundimage"])
        {
          v10 = 20;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"shelfimagebackground"])
        {
          v10 = 23;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"posterart"])
        {
          v10 = 24;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"showposterart"])
        {
          v10 = 25;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"shelfimage"])
        {
          v10 = 26;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"keyframeimage"])
        {
          v10 = 27;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"shelfitemimage"])
        {
          v10 = 28;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"shelfitemimagelive"])
        {
          v10 = 29;
          goto LABEL_65;
        }

        if ([lowercaseString isEqualToString:@"shelfitemimagepost"])
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

  selfCopy = 0;
LABEL_76:

  return selfCopy;
}

- (NSURL)artworkURL
{
  v2 = [(WLKArtworkVariant *)self artworkURLForSize:self->_artworkSize.width, self->_artworkSize.height];
  v3 = [v2 copy];

  return v3;
}

- (id)artworkURLForSize:(CGSize)size cropCode:(id)code format:(id)format
{
  height = size.height;
  width = size.width;
  format = format;
  if (!format)
  {
    format = self->_format;
  }

  formatCopy = format;
  formatCopy2 = format;
  codeCopy = code;
  v14 = [objc_opt_class() artworkURLFromTemplate:self->_artworkURLTemplate forSize:codeCopy cropCode:formatCopy format:{width, height}];

  return v14;
}

+ (id)artworkURLFromTemplate:(id)template forSize:(CGSize)size cropCode:(id)code format:(id)format
{
  height = size.height;
  width = size.width;
  codeCopy = code;
  formatCopy = format;
  v12 = [template mutableCopy];
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
    if ([(__CFString *)codeCopy length])
    {
      v27 = codeCopy;
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
    [v12 replaceCharactersInRange:v28 withString:{v29, formatCopy}];
  }

  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v31 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
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

  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v7 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
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
  artworkURL = [(WLKArtworkVariant *)self artworkURL];
  absoluteString = [artworkURL absoluteString];
  v9 = [v3 stringWithFormat:@"%@ type: %ld, size: %@, url: %@", v4, artworkType, v6, absoluteString];

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