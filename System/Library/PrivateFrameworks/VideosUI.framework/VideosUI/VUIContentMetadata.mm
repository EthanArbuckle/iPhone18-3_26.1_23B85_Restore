@interface VUIContentMetadata
+ (id)validMediaTags;
- (NSArray)roles;
- (NSDate)releasedDate;
- (NSDate)rentalExpiration;
- (NSNumber)artworkAspectRatio;
- (NSNumber)artworkHeight;
- (NSNumber)artworkWidth;
- (NSNumber)previewFrameHeight;
- (NSNumber)previewFrameWidth;
- (NSNumber)showArtworkHeight;
- (NSNumber)showArtworkWidth;
- (NSNumber)videoDynamicRange;
- (NSNumber)videoResolutionClass;
- (NSString)artworkURLFormat;
- (NSString)previewFrameURLFormat;
- (NSString)showArtworkURLFormat;
- (VUIContentMetadata)initWithDictionary:(id)dictionary;
- (VUIContentMetadata)initWithTitle:(id)title showTitle:(id)showTitle seasonTitle:(id)seasonTitle seasonNumber:(id)number episodeNumber:(id)episodeNumber artworkURL:(id)l;
- (VUIUpsellOnExitPolicy)upsellOnExitPolicy;
- (id)backingDictionary;
- (unint64_t)contentType;
- (unint64_t)tomatoFreshness;
@end

@implementation VUIContentMetadata

+ (id)validMediaTags
{
  if (validMediaTags_onceToken != -1)
  {
    +[VUIContentMetadata validMediaTags];
  }

  v3 = validMediaTags__validMediaTags;

  return v3;
}

void __36__VUIContentMetadata_validMediaTags__block_invoke()
{
  v2[7] = *MEMORY[0x1E69E9840];
  v2[0] = @"hasAD";
  v2[1] = @"hasSDH";
  v2[2] = @"hasImmersive";
  v2[3] = @"has3D";
  v2[4] = @"hasDolbyAtmos";
  v2[5] = @"isBlackedOut";
  v2[6] = @"isUpgradeEligible";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:7];
  v1 = validMediaTags__validMediaTags;
  validMediaTags__validMediaTags = v0;
}

- (VUIContentMetadata)initWithDictionary:(id)dictionary
{
  v13[4] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = VUIContentMetadata;
  v5 = [(VUIContentMetadata *)&v11 init];
  if (v5)
  {
    if ([dictionaryCopy count])
    {
      v6 = [dictionaryCopy copy];
      metadataDictionary = v5->_metadataDictionary;
      v5->_metadataDictionary = v6;
    }

    v12[0] = @"Episode";
    v12[1] = @"Movie";
    v13[0] = &unk_1F5E5D530;
    v13[1] = &unk_1F5E5D548;
    v12[2] = @"Show";
    v12[3] = @"Season";
    v13[2] = &unk_1F5E5D560;
    v13[3] = &unk_1F5E5D578;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    contentTypeMap = v5->_contentTypeMap;
    v5->_contentTypeMap = v8;
  }

  return v5;
}

- (VUIContentMetadata)initWithTitle:(id)title showTitle:(id)showTitle seasonTitle:(id)seasonTitle seasonNumber:(id)number episodeNumber:(id)episodeNumber artworkURL:(id)l
{
  v14 = MEMORY[0x1E695DF90];
  lCopy = l;
  episodeNumberCopy = episodeNumber;
  numberCopy = number;
  seasonTitleCopy = seasonTitle;
  showTitleCopy = showTitle;
  titleCopy = title;
  dictionary = [v14 dictionary];
  [dictionary vui_setObjectIfNotNil:titleCopy forKey:@"title"];

  [dictionary vui_setObjectIfNotNil:showTitleCopy forKey:@"showTitle"];
  [dictionary vui_setObjectIfNotNil:seasonTitleCopy forKey:@"seasonTitle"];

  [dictionary vui_setObjectIfNotNil:numberCopy forKey:@"seasonNumber"];
  [dictionary vui_setObjectIfNotNil:episodeNumberCopy forKey:@"episodeNumber"];

  [dictionary vui_setObjectIfNotNil:lCopy forKey:@"artwork"];
  v22 = [(VUIContentMetadata *)self initWithDictionary:dictionary];

  return v22;
}

- (id)backingDictionary
{
  v2 = [(NSDictionary *)self->_metadataDictionary copy];

  return v2;
}

- (unint64_t)contentType
{
  v3 = [(NSDictionary *)self->_metadataDictionary vui_stringForKey:@"type"];
  v4 = [(NSDictionary *)self->_contentTypeMap vui_numberForKey:v3];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (NSString)artworkURLFormat
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"artwork"];
  v3 = [v2 vui_stringForKey:@"url"];

  return v3;
}

- (NSNumber)artworkWidth
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"artwork"];
  v3 = [v2 vui_numberForKey:@"width"];

  return v3;
}

- (NSNumber)artworkHeight
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"artwork"];
  v3 = [v2 vui_numberForKey:@"height"];

  return v3;
}

- (NSNumber)artworkAspectRatio
{
  artworkWidth = [(VUIContentMetadata *)self artworkWidth];
  artworkHeight = [(VUIContentMetadata *)self artworkHeight];
  v5 = artworkHeight;
  v6 = 0;
  if (artworkWidth && artworkHeight)
  {
    [artworkHeight doubleValue];
    if (v7 <= 0.0)
    {
      v6 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E696AD98];
      [artworkWidth doubleValue];
      v10 = v9;
      [v5 doubleValue];
      v6 = [v8 numberWithDouble:v10 / v11];
    }
  }

  return v6;
}

- (NSString)previewFrameURLFormat
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"previewFrameArtwork"];
  v3 = [v2 vui_stringForKey:@"url"];

  return v3;
}

- (NSNumber)previewFrameWidth
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"previewFrameArtwork"];
  v3 = [v2 vui_numberForKey:@"width"];

  return v3;
}

- (NSNumber)previewFrameHeight
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"previewFrameArtwork"];
  v3 = [v2 vui_numberForKey:@"height"];

  return v3;
}

- (NSString)showArtworkURLFormat
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"showArtwork"];
  v3 = [v2 vui_stringForKey:@"url"];

  return v3;
}

- (NSNumber)showArtworkWidth
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"showArtwork"];
  v3 = [v2 vui_numberForKey:@"width"];

  return v3;
}

- (NSNumber)showArtworkHeight
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"showArtwork"];
  v3 = [v2 vui_numberForKey:@"height"];

  return v3;
}

- (NSDate)releasedDate
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_numberForKey:@"releaseDate"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v6 = [v4 dateWithTimeIntervalSince1970:v5 / 1000.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDate)rentalExpiration
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_numberForKey:@"rentalExpiration"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v6 = [v4 dateWithTimeIntervalSince1970:v5 / 1000.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)tomatoFreshness
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_stringForKey:@"tomatometerFreshness"];
  if ([v2 length])
  {
    if ([v2 isEqualToString:@"Fresh"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"CertifiedFresh"])
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (NSNumber)videoResolutionClass
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_stringForKey:@"videoResolutionClass"];
  lowercaseString = [v2 lowercaseString];

  if ([lowercaseString isEqualToString:@"4k"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"uhd"))
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"hd"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [lowercaseString isEqualToString:@"sd"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];

  return v5;
}

- (NSNumber)videoDynamicRange
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_stringForKey:@"videoDynamicRange"];
  lowercaseString = [v2 lowercaseString];

  if ([lowercaseString isEqualToString:@"dolbyvisionhdr"])
  {
    v4 = 3;
  }

  else if ([lowercaseString isEqualToString:@"hdr"])
  {
    v4 = 2;
  }

  else if ([lowercaseString isEqualToString:@"hdr10plus"])
  {
    v4 = 4;
  }

  else
  {
    v4 = [lowercaseString isEqualToString:@"sdr"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];

  return v5;
}

- (NSArray)roles
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_metadataDictionary vui_arrayForKey:@"roles"];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [VUIRolesEntity alloc];
        v11 = [(VUIRolesEntity *)v10 initWithDictionary:v9, v13];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (VUIUpsellOnExitPolicy)upsellOnExitPolicy
{
  v2 = [(NSDictionary *)self->_metadataDictionary vui_dictionaryForKey:@"upsellExitPolicy"];
  v3 = [[VUIUpsellOnExitPolicy alloc] initWithDictionary:v2];

  return v3;
}

@end