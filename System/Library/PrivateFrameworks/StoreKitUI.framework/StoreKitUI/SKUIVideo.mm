@interface SKUIVideo
- (SKUIVideo)initWithVideoDictionary:(id)a3;
@end

@implementation SKUIVideo

- (SKUIVideo)initWithVideoDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIVideo initWithVideoDictionary:];
  }

  v15.receiver = self;
  v15.super_class = SKUIVideo;
  v5 = [(SKUIVideo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"previewFrame"];
    v7 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v6];
    artworks = v5->_artworks;
    v5->_artworks = v7;

    v9 = [v4 objectForKey:@"video"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v9];
      url = v5->_url;
      v5->_url = v10;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }

      url = [v9 objectForKey:@"url"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:url];
        v13 = v5->_url;
        v5->_url = v12;
      }
    }

LABEL_12:
  }

  return v5;
}

- (void)initWithVideoDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIVideo initWithVideoDictionary:]";
}

@end