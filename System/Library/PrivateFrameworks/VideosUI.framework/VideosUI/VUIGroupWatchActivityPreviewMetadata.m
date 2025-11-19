@interface VUIGroupWatchActivityPreviewMetadata
+ (id)metadataFromSerializedData:(id)a3;
- (VUIGroupWatchActivityPreviewMetadata)initWithContextData:(id)a3;
- (VUIGroupWatchActivityPreviewMetadata)initWithMediaItem:(id)a3 fallbackUrl:(id)a4;
- (VUIGroupWatchActivityPreviewMetadata)initWithPlayable:(id)a3 fallbackUrl:(id)a4;
- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)a3 showTitle:(id)a4 seasonTitle:(id)a5 seasonNumber:(id)a6 episodeNumber:(id)a7 imageUrlFormat:(id)a8 artworkImage:(CGImage *)a9 fallbackUrl:(id)a10 isTVShow:(BOOL)a11 allowsSceneAssociation:(BOOL)a12;
- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)a3 subtitle:(id)a4 imageUrlFormat:(id)a5 artworkImage:(CGImage *)a6 fallbackUrl:(id)a7 allowsSceneAssociation:(BOOL)a8;
- (id)localizedSubtitleForSeasonNumber:(id)a3 episodeNumber:(id)a4;
- (id)serializedDataWithSeasonTitlesEnabled:(BOOL)a3;
- (id)subtitleWithSeasonTitlesEnabled:(BOOL)a3;
@end

@implementation VUIGroupWatchActivityPreviewMetadata

- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)a3 subtitle:(id)a4 imageUrlFormat:(id)a5 artworkImage:(CGImage *)a6 fallbackUrl:(id)a7 allowsSceneAssociation:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = VUIGroupWatchActivityPreviewMetadata;
  v18 = [(VUIGroupWatchActivityPreviewMetadata *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_title, a3);
    objc_storeStrong(&v19->_seasonTitle, a4);
    objc_storeStrong(&v19->_imageUrlFormat, a5);
    v19->_artworkImage = a6;
    objc_storeStrong(&v19->_fallbackUrl, a7);
    v19->_allowsSceneAssociation = a8;
  }

  return v19;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithContextData:(id)a3
{
  v3 = a3;
  v4 = [v3 vui_stringForKey:@"title"];
  v5 = [v3 vui_stringForKey:@"showTitle"];
  v6 = [v3 vui_stringForKey:@"seasonTitle"];
  v7 = [v3 vui_numberForKey:@"seasonNumber"];
  v8 = [v3 vui_numberForKey:@"episodeNumber"];
  v9 = [v3 vui_stringForKey:@"imageUrlFormat"];
  v10 = [v3 vui_URLForKey:@"fallbackUrl"];
  v11 = [v3 vui_BOOLForKey:@"isTVShow" defaultValue:0];
  v12 = [v3 vui_BOOLForKey:@"allowsSceneAssociation" defaultValue:1];

  BYTE1(v15) = v12;
  LOBYTE(v15) = v11;
  v13 = [(VUIGroupWatchActivityPreviewMetadata *)self initWithTitle:v4 showTitle:v5 seasonTitle:v6 seasonNumber:v7 episodeNumber:v8 imageUrlFormat:v9 artworkImage:0 fallbackUrl:v10 isTVShow:v15 allowsSceneAssociation:?];

  return v13;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithPlayable:(id)a3 fallbackUrl:(id)a4
{
  v7 = a3;
  v27 = self;
  objc_storeStrong(&self->_playable, a3);
  v29 = a4;
  v8 = [v7 metadata];
  if ([v8 contentType] == 3)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v7 metadata];
    if ([v10 contentType] == 1)
    {
      v9 = 1;
    }

    else
    {
      v11 = [v7 metadata];
      v12 = [v11 contentType] == 4;

      v9 = v12;
    }
  }

  v26 = [v7 metadata];
  v30 = [v26 title];
  v25 = [v7 metadata];
  v13 = [v25 showTitle];
  v24 = [v7 metadata];
  v14 = [v24 seasonTitle];
  v23 = [v7 metadata];
  v15 = [v23 seasonNumber];
  v16 = [v7 metadata];
  v17 = [v16 episodeNumber];
  v18 = [v7 metadata];
  v19 = [v18 artworkURLFormat];
  v20 = [v7 playbackModes];
  BYTE1(v22) = [v20 containsObject:@"Immersive"] ^ 1;
  LOBYTE(v22) = v9;
  v28 = [(VUIGroupWatchActivityPreviewMetadata *)v27 initWithTitle:v30 showTitle:v13 seasonTitle:v14 seasonNumber:v15 episodeNumber:v17 imageUrlFormat:v19 artworkImage:0 fallbackUrl:v29 isTVShow:v22 allowsSceneAssociation:?];

  return v28;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithMediaItem:(id)a3 fallbackUrl:(id)a4
{
  v6 = a3;
  v7 = *MEMORY[0x1E69D5AB0];
  v8 = a4;
  v9 = [v6 mediaItemMetadataForProperty:v7];
  imageProxy = self->_imageProxy;
  self->_imageProxy = v9;

  v11 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
  v12 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D38]];
  v13 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D30]];
  v14 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B80]];
  v15 = *MEMORY[0x1E69D5DB8];
  v16 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DB8]];
  if ([v16 length])
  {
    v17 = v15;
  }

  else
  {
    v17 = *MEMORY[0x1E69D5AB8];
  }

  v18 = [v6 mediaItemMetadataForProperty:v17];
  v19 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  BYTE1(v22) = 1;
  LOBYTE(v22) = [v19 isEqualToString:*MEMORY[0x1E69D5ED0]];
  v20 = [(VUIGroupWatchActivityPreviewMetadata *)self initWithTitle:v11 showTitle:v12 seasonTitle:0 seasonNumber:v13 episodeNumber:v14 imageUrlFormat:v18 artworkImage:0 fallbackUrl:v8 isTVShow:v22 allowsSceneAssociation:?];

  return v20;
}

- (VUIGroupWatchActivityPreviewMetadata)initWithTitle:(id)a3 showTitle:(id)a4 seasonTitle:(id)a5 seasonNumber:(id)a6 episodeNumber:(id)a7 imageUrlFormat:(id)a8 artworkImage:(CGImage *)a9 fallbackUrl:(id)a10 isTVShow:(BOOL)a11 allowsSceneAssociation:(BOOL)a12
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v32.receiver = self;
  v32.super_class = VUIGroupWatchActivityPreviewMetadata;
  v21 = [(VUIGroupWatchActivityPreviewMetadata *)&v32 init];
  v22 = v21;
  if (v21)
  {
    p_title = &v21->_title;
    if (a11)
    {
      objc_storeStrong(&v21->_title, a4);
      objc_storeStrong(&v22->_seasonTitle, a5);
      objc_storeStrong(&v22->_seasonNumber, a6);
      p_title = &v22->_episodeNumber;
      v24 = v18;
    }

    else
    {
      v24 = v31;
    }

    v25 = v24;
    v26 = *p_title;
    *p_title = v25;

    objc_storeStrong(&v22->_imageUrlFormat, a8);
    v22->_artworkImage = a9;
    objc_storeStrong(&v22->_fallbackUrl, a10);
    v22->_allowsSceneAssociation = a12;
  }

  return v22;
}

- (id)subtitleWithSeasonTitlesEnabled:(BOOL)a3
{
  if (!a3 && ([(VUIGroupWatchActivityPreviewMetadata *)self seasonNumber], (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, [(VUIGroupWatchActivityPreviewMetadata *)self episodeNumber], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(VUIGroupWatchActivityPreviewMetadata *)self seasonNumber];
    v8 = [(VUIGroupWatchActivityPreviewMetadata *)self episodeNumber];
    v9 = [(VUIGroupWatchActivityPreviewMetadata *)self localizedSubtitleForSeasonNumber:v7 episodeNumber:v8];
  }

  else
  {
    v9 = [(VUIGroupWatchActivityPreviewMetadata *)self seasonTitle];
  }

  return v9;
}

- (id)localizedSubtitleForSeasonNumber:(id)a3 episodeNumber:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"TV.SeasonEpisode.Abbreviated"];
  v9 = [v6 vui_languageAwareDescription];

  v10 = [v8 stringByReplacingOccurrencesOfString:@"@@seasonNumber@@" withString:v9];
  v11 = [v5 vui_languageAwareDescription];

  v12 = [v10 stringByReplacingOccurrencesOfString:@"@@episodeNumber@@" withString:v11];

  return v12;
}

- (id)serializedDataWithSeasonTitlesEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(VUIGroupWatchActivityPreviewMetadata *)self title];
  [v5 vui_setObjectIfNotNil:v6 forKey:@"title"];

  v7 = [(VUIGroupWatchActivityPreviewMetadata *)self subtitleWithSeasonTitlesEnabled:v3];
  [v5 vui_setObjectIfNotNil:v7 forKey:@"subtitle"];

  v8 = [(VUIGroupWatchActivityPreviewMetadata *)self imageUrlFormat];
  [v5 vui_setObjectIfNotNil:v8 forKey:@"imageUrlFormat"];

  v9 = [(VUIGroupWatchActivityPreviewMetadata *)self fallbackUrl];
  v10 = [v9 absoluteString];
  [v5 vui_setObjectIfNotNil:v10 forKey:@"fallbackUrl"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUIGroupWatchActivityPreviewMetadata allowsSceneAssociation](self, "allowsSceneAssociation")}];
  [v5 setObject:v11 forKey:@"allowsSceneAssociation"];

  v14 = 0;
  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v14];

  return v12;
}

+ (id)metadataFromSerializedData:(id)a3
{
  v10 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v10];
  v4 = [v3 vui_stringForKey:@"title"];
  v5 = [v3 vui_stringForKey:@"subtitle"];
  v6 = [v3 vui_stringForKey:@"imageUrlFormat"];
  v7 = [v3 vui_URLForKey:@"fallbackUrl"];
  v8 = -[VUIGroupWatchActivityPreviewMetadata initWithTitle:subtitle:imageUrlFormat:artworkImage:fallbackUrl:allowsSceneAssociation:]([VUIGroupWatchActivityPreviewMetadata alloc], "initWithTitle:subtitle:imageUrlFormat:artworkImage:fallbackUrl:allowsSceneAssociation:", v4, v5, v6, 0, v7, [v3 vui_BOOLForKey:@"allowsSceneAssociation" defaultValue:1]);

  return v8;
}

@end