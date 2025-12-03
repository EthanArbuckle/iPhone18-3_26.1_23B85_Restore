@interface SKUIArtworkProvidingFactory
+ (id)artworkCacheCandidatesForProvider:(id)provider;
+ (id)artworkProviderForStoreResponse:(id)response;
@end

@implementation SKUIArtworkProvidingFactory

+ (id)artworkProviderForStoreResponse:(id)response
{
  responseCopy = response;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIArtworkProvidingFactory artworkProviderForStoreResponse:];
  }

  if ([SKUIArtworkList canHandleArtworkFormat:responseCopy])
  {
    v4 = [[SKUIArtworkList alloc] initWithArtworkListArray:responseCopy];
LABEL_9:
    v5 = v4;
    goto LABEL_11;
  }

  if ([SKUIArtworkTemplate canHandleArtworkFormat:responseCopy])
  {
    v4 = [[SKUIArtworkTemplate alloc] initWithTemplateDictionary:responseCopy];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

+ (id)artworkCacheCandidatesForProvider:(id)provider
{
  providerCopy = provider;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIArtworkProvidingFactory artworkCacheCandidatesForProvider:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    artworks = [providerCopy artworks];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      servedArtworks = [providerCopy servedArtworks];
      artworks = [servedArtworks allObjects];
    }

    else
    {
      artworks = 0;
    }
  }

  return artworks;
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