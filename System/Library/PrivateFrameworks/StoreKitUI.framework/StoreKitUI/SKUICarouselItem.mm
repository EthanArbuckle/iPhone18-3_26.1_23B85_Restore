@interface SKUICarouselItem
- (SKUICarouselItem)initWithComponentContext:(id)a3;
- (id)artworkForSize:(CGSize)a3;
- (id)description;
@end

@implementation SKUICarouselItem

- (SKUICarouselItem)initWithComponentContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICarouselItem initWithComponentContext:];
  }

  v24.receiver = self;
  v24.super_class = SKUICarouselItem;
  v5 = [(SKUICarouselItem *)&v24 init];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"adamId"];
    if (objc_opt_respondsToSelector())
    {
      v5->_carouselItemIdentifier = [v7 longLongValue];
    }

    v8 = [v6 objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 copy];
      [v9 setComponentDictionary:v8];
      v10 = [[SKUILink alloc] initWithComponentContext:v9];
      link = v5->_link;
      v5->_link = v10;

      v12 = [(SKUILink *)v5->_link title];
      accessibilityLabel = v5->_accessibilityLabel;
      v5->_accessibilityLabel = v12;

      if (!v5->_accessibilityLabel)
      {
        v14 = [(SKUILink *)v5->_link item];
        v15 = [v14 title];
        v16 = v5->_accessibilityLabel;
        v5->_accessibilityLabel = v15;
      }
    }

    if (v5->_accessibilityLabel)
    {
      v17 = v7;
    }

    else
    {
      v17 = [v6 objectForKey:@"designLabel"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        v19 = v5->_accessibilityLabel;
        v5->_accessibilityLabel = v18;
      }
    }

    v20 = [v6 objectForKey:*MEMORY[0x277D6A300]];
    v21 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v20];
    artworkProvider = v5->_artworkProvider;
    v5->_artworkProvider = v21;
  }

  return v5;
}

- (id)artworkForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = *&artworkForSize__sScreenScale;
  if (*&artworkForSize__sScreenScale < 0.00000011920929)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 scale];
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