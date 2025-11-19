@interface SKUIBrickItem
- (SKUIBrickItem)initWithBannerRoomContext:(id)a3;
- (SKUIBrickItem)initWithComponentContext:(id)a3;
- (id)description;
- (void)_setLinkInfoWithLinkDictionary:(id)a3 context:(id)a4;
@end

@implementation SKUIBrickItem

- (SKUIBrickItem)initWithBannerRoomContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrickItem initWithBannerRoomContext:];
  }

  v20.receiver = self;
  v20.super_class = SKUIBrickItem;
  v5 = [(SKUIBrickItem *)&v20 init];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIBrickItem *)v5 _setLinkInfoWithLinkDictionary:v7 context:v4];
    }

    if (!v5->_accessibilityLabel)
    {
      v8 = [v6 objectForKey:@"imageAltText"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 copy];
        accessibilityLabel = v5->_accessibilityLabel;
        v5->_accessibilityLabel = v9;
      }
    }

    v11 = [v6 objectForKey:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[SKUIEditorialComponent alloc] initWithBrickRoomText:v11];
      editorial = v5->_editorial;
      v5->_editorial = v12;
    }

    v14 = [v6 objectForKey:@"imageUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v14];
      if (v15)
      {
        v16 = [[SKUIArtwork alloc] initWithURL:v15 size:SKUIBrickItemSize()];
        artwork = v5->_artwork;
        v5->_artwork = v16;
      }
    }

    v18 = [v6 objectForKey:@"adamId"];

    if (objc_opt_respondsToSelector())
    {
      v5->_brickIdentifier = [v18 longLongValue];
    }
  }

  return v5;
}

- (SKUIBrickItem)initWithComponentContext:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrickItem initWithComponentContext:];
  }

  v26.receiver = self;
  v26.super_class = SKUIBrickItem;
  v5 = [(SKUIBrickItem *)&v26 init];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"link"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SKUIBrickItem *)v5 _setLinkInfoWithLinkDictionary:v7 context:v4];
    }

    if (!v5->_accessibilityLabel)
    {
      v8 = [v6 objectForKey:@"designLabel"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 copy];
        accessibilityLabel = v5->_accessibilityLabel;
        v5->_accessibilityLabel = v9;
      }
    }

    v11 = [v6 objectForKey:@"editorial"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v4 copy];
      [v12 setComponentDictionary:v11];
      v13 = [[SKUIEditorialComponent alloc] initWithCustomPageContext:v12];
      editorial = v5->_editorial;
      v5->_editorial = v13;
    }

    v15 = [v6 objectForKey:*MEMORY[0x277D6A300]];
    v16 = SKUIBrickItemSize();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v15;
      v18 = [[SKUIArtwork alloc] initWithArtworkDictionary:v17];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_19:
        v20 = [v6 objectForKey:@"fcKind"];
        v21 = [v6 objectForKey:@"type"];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 integerValue] == 290 || objc_msgSend(v21, "isEqualToString:", @"counter"))
        {
          v22 = [[SKUICountdown alloc] initWithCountdownDictionary:v6];
          countdown = v5->_countdown;
          v5->_countdown = v22;
        }

        v24 = [v6 objectForKey:@"adamId"];
        if (objc_opt_respondsToSelector())
        {
          v5->_brickIdentifier = [v24 longLongValue];
        }

        goto LABEL_26;
      }

      v18 = [SKUIArtworkList artworkForSize:v16 artworkDictionaries:v15];
    }

    artwork = v5->_artwork;
    v5->_artwork = v18;

    goto LABEL_19;
  }

LABEL_26:

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIBrickItem;
  v4 = [(SKUIBrickItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@, %@", v4, self->_accessibilityLabel, self->_link];

  return v5;
}

- (void)_setLinkInfoWithLinkDictionary:(id)a3 context:(id)a4
{
  v6 = a3;
  v14 = [a4 copy];
  [v14 setComponentDictionary:v6];

  v7 = [[SKUILink alloc] initWithComponentContext:v14];
  link = self->_link;
  self->_link = v7;

  v9 = [(SKUILink *)self->_link title];
  accessibilityLabel = self->_accessibilityLabel;
  self->_accessibilityLabel = v9;

  if (!self->_accessibilityLabel)
  {
    v11 = [(SKUILink *)self->_link item];
    v12 = [v11 title];
    v13 = self->_accessibilityLabel;
    self->_accessibilityLabel = v12;
  }
}

- (void)initWithBannerRoomContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrickItem initWithBannerRoomContext:]";
}

- (void)initWithComponentContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrickItem initWithComponentContext:]";
}

@end