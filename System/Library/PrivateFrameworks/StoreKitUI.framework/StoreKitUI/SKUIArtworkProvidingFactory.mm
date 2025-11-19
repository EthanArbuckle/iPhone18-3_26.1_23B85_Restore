@interface SKUIArtworkProvidingFactory
+ (id)artworkCacheCandidatesForProvider:(id)a3;
+ (id)artworkProviderForStoreResponse:(id)a3;
@end

@implementation SKUIArtworkProvidingFactory

+ (id)artworkProviderForStoreResponse:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIArtworkProvidingFactory artworkProviderForStoreResponse:];
  }

  if ([SKUIArtworkList canHandleArtworkFormat:v3])
  {
    v4 = [[SKUIArtworkList alloc] initWithArtworkListArray:v3];
LABEL_9:
    v5 = v4;
    goto LABEL_11;
  }

  if ([SKUIArtworkTemplate canHandleArtworkFormat:v3])
  {
    v4 = [[SKUIArtworkTemplate alloc] initWithTemplateDictionary:v3];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

+ (id)artworkCacheCandidatesForProvider:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIArtworkProvidingFactory artworkCacheCandidatesForProvider:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 artworks];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 servedArtworks];
      v4 = [v5 allObjects];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (void)artworkProviderForStoreResponse:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIArtworkProvidingFactory artworkProviderForStoreResponse:]";
}

+ (void)artworkCacheCandidatesForProvider:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIArtworkProvidingFactory artworkCacheCandidatesForProvider:]";
}

@end