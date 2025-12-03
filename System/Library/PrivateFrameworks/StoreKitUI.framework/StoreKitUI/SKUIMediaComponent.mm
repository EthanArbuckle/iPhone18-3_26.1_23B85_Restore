@interface SKUIMediaComponent
- (SKUIMediaComponent)initWithArtwork:(id)artwork;
- (SKUIMediaComponent)initWithArtworkProvider:(id)provider appearance:(int64_t)appearance;
- (SKUIMediaComponent)initWithCustomPageContext:(id)context;
- (SKUIMediaComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (id)bestThumbnailArtwork;
- (id)bestThumbnailForWidth:(double)width;
- (id)valueForMetricsField:(id)field;
@end

@implementation SKUIMediaComponent

- (SKUIMediaComponent)initWithArtwork:(id)artwork
{
  v21[1] = *MEMORY[0x277D85DE8];
  artworkCopy = artwork;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMediaComponent *)v5 initWithArtwork:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIMediaComponent;
  v13 = [(SKUIMediaComponent *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_mediaType = 0;
    v15 = objc_alloc_init(SKUIArtworkList);
    thumbnailArtworkProvider = v14->_thumbnailArtworkProvider;
    v14->_thumbnailArtworkProvider = v15;

    v17 = v14->_thumbnailArtworkProvider;
    v21[0] = artworkCopy;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [(SKUIArtworkProviding *)v17 setArtworks:v18];
  }

  return v14;
}

- (SKUIMediaComponent)initWithArtworkProvider:(id)provider appearance:(int64_t)appearance
{
  providerCopy = provider;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIMediaComponent *)v7 initWithArtworkProvider:v8 appearance:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIMediaComponent;
  v15 = [(SKUIMediaComponent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_mediaAppearance = appearance;
    v15->_mediaType = 0;
    v17 = [providerCopy copy];
    thumbnailArtworkProvider = v16->_thumbnailArtworkProvider;
    v16->_thumbnailArtworkProvider = v17;
  }

  return v16;
}

- (SKUIMediaComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMediaComponent *)v5 initWithCustomPageContext:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v43.receiver = self;
  v43.super_class = SKUIMediaComponent;
  v13 = [(SKUIPageComponent *)&v43 initWithCustomPageContext:contextCopy];
  if (v13)
  {
    componentDictionary = [contextCopy componentDictionary];
    v15 = [componentDictionary objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      accessibilityLabel = v13->_accessibilityLabel;
      v13->_accessibilityLabel = v16;
    }

    v18 = [componentDictionary objectForKey:@"align"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13->_alignment = SKUIPageComponentAlignmentForString(v18);
    }

    v19 = [componentDictionary objectForKey:@"duration"];

    if (objc_opt_respondsToSelector())
    {
      [v19 doubleValue];
      v13->_duration = v20;
    }

    v21 = [componentDictionary objectForKey:@"link"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [contextCopy copy];
      [v22 setComponentDictionary:v21];
      v23 = [[SKUILink alloc] initWithComponentContext:v22];
      link = v13->_link;
      v13->_link = v23;
    }

    v25 = [componentDictionary objectForKey:@"adamId"];

    if (objc_opt_respondsToSelector())
    {
      v13->_mediaIdentifier = [v25 longLongValue];
    }

    v26 = [componentDictionary objectForKey:@"subType"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    if ([v26 isEqualToString:@"audio"])
    {
      v27 = 1;
    }

    else
    {
      if (![v26 isEqualToString:@"video"])
      {
LABEL_22:
        v28 = [componentDictionary objectForKey:@"url"];

        if (!v28)
        {
          v29 = [componentDictionary objectForKey:@"audioUrl"];
          if (!v29)
          {
            v29 = [componentDictionary objectForKey:@"videoUrl"];
          }

          v28 = v29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v28 copy];
          mediaURLString = v13->_mediaURLString;
          v13->_mediaURLString = v30;
        }

        v32 = [componentDictionary objectForKey:@"artwork"];

        v33 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v32];
        thumbnailArtworkProvider = v13->_thumbnailArtworkProvider;
        v13->_thumbnailArtworkProvider = v33;

        v35 = [componentDictionary objectForKey:@"title"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = [v35 copy];
          title = v13->_title;
          v13->_title = v36;
        }

        v38 = [componentDictionary objectForKey:@"titleSize"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *&v39 = SKUIEditorialTitleSizeForString(v38);
        }

        else
        {
          v40 = objc_opt_respondsToSelector();
          LODWORD(v39) = 17.0;
          if (v40)
          {
            [v38 floatValue];
          }
        }

        v13->_titleFontSize = *&v39;
        v41 = [componentDictionary objectForKey:@"titleWeight"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13->_titleFontWeight = SKUIPageComponentFontWeightForString(v41);
        }

        goto LABEL_37;
      }

      v27 = 2;
    }

    v13->_mediaType = v27;
    goto LABEL_22;
  }

LABEL_37:

  return v13;
}

- (SKUIMediaComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIMediaComponent *)v7 initWithFeaturedContentContext:v8 kind:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v21.receiver = self;
  v21.super_class = SKUIMediaComponent;
  v15 = [(SKUIPageComponent *)&v21 initWithFeaturedContentContext:contextCopy kind:kind];
  if (v15)
  {
    componentDictionary = [contextCopy componentDictionary];
    v17 = [componentDictionary objectForKey:@"artwork"];
    v18 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v17];
    thumbnailArtworkProvider = v15->_thumbnailArtworkProvider;
    v15->_thumbnailArtworkProvider = v18;

    v15->_mediaType = 0;
  }

  return v15;
}

- (id)bestThumbnailArtwork
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  thumbnailArtworkProvider = self->_thumbnailArtworkProvider;
  if (v5 == 2.0)
  {
    [(SKUIArtworkProviding *)thumbnailArtworkProvider largestArtwork];
  }

  else
  {
    [(SKUIArtworkProviding *)thumbnailArtworkProvider smallestArtwork];
  }
  v7 = ;

  return v7;
}

- (id)bestThumbnailForWidth:(double)width
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = v6 * width;

  bestThumbnailArtwork = [(SKUIArtworkProviding *)self->_thumbnailArtworkProvider artworkForSize:v7];
  if (!bestThumbnailArtwork)
  {
    bestThumbnailArtwork = [(SKUIMediaComponent *)self bestThumbnailArtwork];
  }

  return bestThumbnailArtwork;
}

- (id)valueForMetricsField:(id)field
{
  fieldCopy = field;
  if ([fieldCopy isEqualToString:*MEMORY[0x277D6A490]])
  {
    title = [MEMORY[0x277CCABB0] numberWithLongLong:self->_mediaIdentifier];
LABEL_6:
    v6 = title;
    goto LABEL_7;
  }

  if (([fieldCopy isEqualToString:*MEMORY[0x277D6A4A0]] & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", *MEMORY[0x277D6A4A8]))
  {
    title = [(SKUIMediaComponent *)self title];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end