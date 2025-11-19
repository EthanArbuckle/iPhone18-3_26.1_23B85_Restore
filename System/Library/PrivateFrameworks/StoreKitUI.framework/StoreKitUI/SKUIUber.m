@interface SKUIUber
- (SKUIUber)initWithUberDictionary:(id)a3;
@end

@implementation SKUIUber

- (SKUIUber)initWithUberDictionary:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIUber *)v5 initWithUberDictionary:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIUber;
  v13 = [(SKUIUber *)&v23 init];
  if (v13)
  {
    v14 = [v4 objectForKey:@"masterArt"];
    v15 = [SKUIArtworkProvidingFactory artworkProviderForStoreResponse:v14];
    artworkProvider = v13->_artworkProvider;
    v13->_artworkProvider = v15;

    v17 = [v4 objectForKey:@"description"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      text = v13->_text;
      v13->_text = v18;
    }

    v20 = [[SKUIColorScheme alloc] initWithColorSchemeDictionary:v4];
    colorScheme = v13->_colorScheme;
    v13->_colorScheme = v20;
  }

  return v13;
}

@end