@interface VUIGroupWatchActivityPreviewMetadata
+ (id)metadataFromSerializedData:(id)data;
- (VUIGroupWatchActivityPreviewMetadata)initWithContextData:(id)data;
- (VUIGroupWatchActivityPreviewMetadata)initWithMediaItem:(id)item fallbackUrl:(id)url;
- (VUIGroupWatchActivityPreviewMetadata)initWithPlayable:(id)playable fallbackUrl:(id)url;
- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)title showTitle:(id)showTitle seasonTitle:(id)seasonTitle seasonNumber:(id)number episodeNumber:(id)episodeNumber imageUrlFormat:(id)format artworkImage:(CGImage *)image fallbackUrl:(id)self0 isTVShow:(BOOL)self1 allowsSceneAssociation:(BOOL)self2;
- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)title subtitle:(id)subtitle imageUrlFormat:(id)format artworkImage:(CGImage *)image fallbackUrl:(id)url allowsSceneAssociation:(BOOL)association;
- (id)localizedSubtitleForSeasonNumber:(id)number episodeNumber:(id)episodeNumber;
- (id)serializedDataWithSeasonTitlesEnabled:(BOOL)enabled;
- (id)subtitleWithSeasonTitlesEnabled:(BOOL)enabled;
@end

@implementation VUIGroupWatchActivityPreviewMetadata

- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)title subtitle:(id)subtitle imageUrlFormat:(id)format artworkImage:(CGImage *)image fallbackUrl:(id)url allowsSceneAssociation:(BOOL)association
{
  titleCopy = title;
  subtitleCopy = subtitle;
  formatCopy = format;
  urlCopy = url;
  v22.receiver = self;
  v22.super_class = VUIGroupWatchActivityPreviewMetadata;
  v18 = [(VUIGroupWatchActivityPreviewMetadata *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, title);
    objc_storeStrong(&v19->_seasonTitle, subtitle);
    objc_storeStrong(&v19->_imageUrlFormat, format);
    v19->_artworkImage = image;
    objc_storeStrong(&v19->_fallbackUrl, url);
    v19->_allowsSceneAssociation = association;
  }

  return v19;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithContextData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy vui_stringForKey:@"title"];
  v5 = [dataCopy vui_stringForKey:@"showTitle"];
  v6 = [dataCopy vui_stringForKey:@"seasonTitle"];
  v7 = [dataCopy vui_numberForKey:@"seasonNumber"];
  v8 = [dataCopy vui_numberForKey:@"episodeNumber"];
  v9 = [dataCopy vui_stringForKey:@"imageUrlFormat"];
  v10 = [dataCopy vui_URLForKey:@"fallbackUrl"];
  v11 = [dataCopy vui_BOOLForKey:@"isTVShow" defaultValue:0];
  v12 = [dataCopy vui_BOOLForKey:@"allowsSceneAssociation" defaultValue:1];

  BYTE1(v15) = v12;
  LOBYTE(v15) = v11;
  v13 = [(VUIGroupWatchActivityPreviewMetadata *)self initWithTitle:v4 showTitle:v5 seasonTitle:v6 seasonNumber:v7 episodeNumber:v8 imageUrlFormat:v9 artworkImage:0 fallbackUrl:v10 isTVShow:v15 allowsSceneAssociation:?];

  return v13;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithPlayable:(id)playable fallbackUrl:(id)url
{
  playableCopy = playable;
  selfCopy = self;
  objc_storeStrong(&self->_playable, playable);
  urlCopy = url;
  metadata = [playableCopy metadata];
  if ([metadata contentType] == 3)
  {
    v9 = 1;
  }

  else
  {
    metadata2 = [playableCopy metadata];
    if ([metadata2 contentType] == 1)
    {
      v9 = 1;
    }

    else
    {
      metadata3 = [playableCopy metadata];
      v12 = [metadata3 contentType] == 4;

      v9 = v12;
    }
  }

  metadata4 = [playableCopy metadata];
  title = [metadata4 title];
  metadata5 = [playableCopy metadata];
  showTitle = [metadata5 showTitle];
  metadata6 = [playableCopy metadata];
  seasonTitle = [metadata6 seasonTitle];
  metadata7 = [playableCopy metadata];
  seasonNumber = [metadata7 seasonNumber];
  metadata8 = [playableCopy metadata];
  episodeNumber = [metadata8 episodeNumber];
  metadata9 = [playableCopy metadata];
  artworkURLFormat = [metadata9 artworkURLFormat];
  playbackModes = [playableCopy playbackModes];
  BYTE1(v22) = [playbackModes containsObject:@"Immersive"] ^ 1;
  LOBYTE(v22) = v9;
  v28 = [(VUIGroupWatchActivityPreviewMetadata *)selfCopy initWithTitle:title showTitle:showTitle seasonTitle:seasonTitle seasonNumber:seasonNumber episodeNumber:episodeNumber imageUrlFormat:artworkURLFormat artworkImage:0 fallbackUrl:urlCopy isTVShow:v22 allowsSceneAssociation:?];

  return v28;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithMediaItem:(id)item fallbackUrl:(id)url
{
  itemCopy = item;
  v7 = *MEMORY[0x1E69D5AB0];
  urlCopy = url;
  v9 = [itemCopy mediaItemMetadataForProperty:v7];
  imageProxy = self->_imageProxy;
  self->_imageProxy = v9;

  v11 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
  v12 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D38]];
  v13 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5D30]];
  v14 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B80]];
  v15 = *MEMORY[0x1E69D5DB8];
  v16 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DB8]];
  if ([v16 length])
  {
    v17 = v15;
  }

  else
  {
    v17 = *MEMORY[0x1E69D5AB8];
  }

  v18 = [itemCopy mediaItemMetadataForProperty:v17];
  v19 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  BYTE1(v22) = 1;
  LOBYTE(v22) = [v19 isEqualToString:*MEMORY[0x1E69D5ED0]];
  v20 = [(VUIGroupWatchActivityPreviewMetadata *)self initWithTitle:v11 showTitle:v12 seasonTitle:0 seasonNumber:v13 episodeNumber:v14 imageUrlFormat:v18 artworkImage:0 fallbackUrl:urlCopy isTVShow:v22 allowsSceneAssociation:?];

  return v20;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)title showTitle:(id)showTitle seasonTitle:(id)seasonTitle seasonNumber:(id)number episodeNumber:(id)episodeNumber imageUrlFormat:(id)format artworkImage:(CGImage *)image fallbackUrl:(id)self0 isTVShow:(BOOL)self1 allowsSceneAssociation:(BOOL)self2
{
  titleCopy = title;
  showTitleCopy = showTitle;
  seasonTitleCopy = seasonTitle;
  numberCopy = number;
  episodeNumberCopy = episodeNumber;
  formatCopy = format;
  urlCopy = url;
  v32.receiver = self;
  v32.super_class = VUIGroupWatchActivityPreviewMetadata;
  v21 = [(VUIGroupWatchActivityPreviewMetadata *)&v32 init];
  v22 = v21;
  if (v21)
  {
    p_title = &v21->_title;
    if (show)
    {
      objc_storeStrong(&v21->_title, showTitle);
      objc_storeStrong(&v22->_seasonTitle, seasonTitle);
      objc_storeStrong(&v22->_seasonNumber, number);
      p_title = &v22->_episodeNumber;
      v24 = episodeNumberCopy;
    }

    else
    {
      v24 = titleCopy;
    }

    v25 = v24;
    v26 = *p_title;
    *p_title = v25;

    objc_storeStrong(&v22->_imageUrlFormat, format);
    v22->_artworkImage = image;
    objc_storeStrong(&v22->_fallbackUrl, url);
    v22->_allowsSceneAssociation = association;
  }

  return v22;
}

- (id)subtitleWithSeasonTitlesEnabled:(BOOL)enabled
{
  if (!enabled && ([(VUIGroupWatchActivityPreviewMetadata *)self seasonNumber], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, [(VUIGroupWatchActivityPreviewMetadata *)self episodeNumber], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    seasonNumber = [(VUIGroupWatchActivityPreviewMetadata *)self seasonNumber];
    episodeNumber = [(VUIGroupWatchActivityPreviewMetadata *)self episodeNumber];
    seasonTitle = [(VUIGroupWatchActivityPreviewMetadata *)self localizedSubtitleForSeasonNumber:seasonNumber episodeNumber:episodeNumber];
  }

  else
  {
    seasonTitle = [(VUIGroupWatchActivityPreviewMetadata *)self seasonTitle];
  }

  return seasonTitle;
}

- (id)localizedSubtitleForSeasonNumber:(id)number episodeNumber:(id)episodeNumber
{
  episodeNumberCopy = episodeNumber;
  numberCopy = number;
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"TV.SeasonEpisode.Abbreviated"];
  vui_languageAwareDescription = [numberCopy vui_languageAwareDescription];

  v10 = [v8 stringByReplacingOccurrencesOfString:@"@@seasonNumber@@" withString:vui_languageAwareDescription];
  vui_languageAwareDescription2 = [episodeNumberCopy vui_languageAwareDescription];

  v12 = [v10 stringByReplacingOccurrencesOfString:@"@@episodeNumber@@" withString:vui_languageAwareDescription2];

  return v12;
}

- (id)serializedDataWithSeasonTitlesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  title = [(VUIGroupWatchActivityPreviewMetadata *)self title];
  [dictionary vui_setObjectIfNotNil:title forKey:@"title"];

  v7 = [(VUIGroupWatchActivityPreviewMetadata *)self subtitleWithSeasonTitlesEnabled:enabledCopy];
  [dictionary vui_setObjectIfNotNil:v7 forKey:@"subtitle"];

  imageUrlFormat = [(VUIGroupWatchActivityPreviewMetadata *)self imageUrlFormat];
  [dictionary vui_setObjectIfNotNil:imageUrlFormat forKey:@"imageUrlFormat"];

  fallbackUrl = [(VUIGroupWatchActivityPreviewMetadata *)self fallbackUrl];
  absoluteString = [fallbackUrl absoluteString];
  [dictionary vui_setObjectIfNotNil:absoluteString forKey:@"fallbackUrl"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIGroupWatchActivityPreviewMetadata allowsSceneAssociation](self, "allowsSceneAssociation")}];
  [dictionary setObject:v11 forKey:@"allowsSceneAssociation"];

  v14 = 0;
  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v14];

  return v12;
}

+ (id)metadataFromSerializedData:(id)data
{
  v10 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:&v10];
  v4 = [v3 vui_stringForKey:@"title"];
  v5 = [v3 vui_stringForKey:@"subtitle"];
  v6 = [v3 vui_stringForKey:@"imageUrlFormat"];
  v7 = [v3 vui_URLForKey:@"fallbackUrl"];
  v8 = -[VUIGroupWatchActivityPreviewMetadata initWithTitle:subtitle:imageUrlFormat:artworkImage:fallbackUrl:allowsSceneAssociation:]([VUIGroupWatchActivityPreviewMetadata alloc], "initWithTitle:subtitle:imageUrlFormat:artworkImage:fallbackUrl:allowsSceneAssociation:", v4, v5, v6, 0, v7, [v3 vui_BOOLForKey:@"allowsSceneAssociation" defaultValue:1]);

  return v8;
}

@end