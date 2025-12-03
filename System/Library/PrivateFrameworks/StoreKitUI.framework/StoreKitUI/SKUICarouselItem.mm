@interface SKUICarouselItem
- (SKUICarouselItem)initWithComponentContext:(id)context;
- (id)artworkForSize:(CGSize)size;
- (id)description;
@end

@implementation SKUICarouselItem

- (SKUICarouselItem)initWithComponentContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICarouselItem initWithComponentContext:];
  }

  v24.receiver = self;
  v24.super_class = SKUICarouselItem;
  v5 = [(SKUICarouselItem *)&v24 init];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"adamId"];
    if (objc_opt_respondsToSelector())
    {
      v5->_carouselItemIdentifier = [v7 longLongValue];
    }

    v8 = [componentDictionary objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [contextCopy copy];
      [v9 setComponentDictionary:v8];
      v10 = [[SKUILink alloc] initWithComponentContext:v9];
      link = v5->_link;
      v5->_link = v10;

      title = [(SKUILink *)v5->_link title];
      accessibilityLabel = v5->_accessibilityLabel;
      v5->_accessibilityLabel = title;

      if (!v5->_accessibilityLabel)
      {
        item = [(SKUILink *)v5->_link item];
        title2 = [item title];
        v16 = v5->_accessibilityLabel;
        v5->_accessibilityLabel = title2;
      }
    }

    if (v5->_accessibilityLabel)
    {
      v17 = v7;
    }

    else
    {
      v17 = [componentDictionary objectForKey:@"designLabel"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        v19 = v5->_accessibilityLabel;
        v5->_accessibilityLabel = v18;
      }
    }

    v20 = [componentDictionary objectForKey:*MEMORY[0x277D6A300]];
    v21 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v20];
    artworkProvider = v5->_artworkProvider;
    v5->_artworkProvider = v21;
  }

  return v5;
}

- (id)artworkForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = *&artworkForSize__sScreenScale;
  if (*&artworkForSize__sScreenScale < 0.00000011920929)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    artworkForSize__sScreenScale = v8;

    v6 = *&artworkForSize__sScreenScale;
  }

  v9 = height * v6;
  v10 = width * v6;
  artworkProvider = self->_artworkProvider;

  return [(SKUIArtworkProviding *)artworkProvider preferredExactArtworkForSize:v10, v9];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUICarouselItem;
  v4 = [(SKUICarouselItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@, %@", v4, self->_accessibilityLabel, self->_link];

  return v5;
}

- (void)initWithComponentContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICarouselItem initWithComponentContext:]";
}

@end