@interface SXWebContentConfigurationProvider
- (SXWebContentConfigurationProvider)initWithPresentationAttributesProvider:(id)provider storeFrontProvider:(id)frontProvider liveActivityAttributesProvider:(id)attributesProvider feedConfigurationFactory:(id)factory viewControllerPresentationManager:(id)manager locale:(id)locale location:(id)location;
- (id)configurationForSize:(CGSize)size dataSources:(id)sources sourceURL:(id)l;
- (void)invokeChangeListener;
- (void)presentationAttributesDidChangeFrom:(id)from toAttributes:(id)attributes;
@end

@implementation SXWebContentConfigurationProvider

- (SXWebContentConfigurationProvider)initWithPresentationAttributesProvider:(id)provider storeFrontProvider:(id)frontProvider liveActivityAttributesProvider:(id)attributesProvider feedConfigurationFactory:(id)factory viewControllerPresentationManager:(id)manager locale:(id)locale location:(id)location
{
  providerCopy = provider;
  frontProviderCopy = frontProvider;
  attributesProviderCopy = attributesProvider;
  factoryCopy = factory;
  managerCopy = manager;
  localeCopy = locale;
  locationCopy = location;
  v26.receiver = self;
  v26.super_class = SXWebContentConfigurationProvider;
  v18 = [(SXWebContentConfigurationProvider *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_presentationAttributesProvider, provider);
    [providerCopy addObserver:v19];
    objc_storeStrong(&v19->_storeFrontProvider, frontProvider);
    objc_storeStrong(&v19->_liveActivityAttributesProvider, attributesProvider);
    objc_storeStrong(&v19->_feedConfigurationFactory, factory);
    objc_storeStrong(&v19->_viewControllerPresentationManager, manager);
    objc_storeStrong(&v19->_locale, locale);
    objc_storeStrong(&v19->_location, location);
  }

  return v19;
}

- (void)invokeChangeListener
{
  changeBlock = [(SXWebContentConfigurationProvider *)self changeBlock];

  if (changeBlock)
  {
    changeBlock2 = [(SXWebContentConfigurationProvider *)self changeBlock];
    changeBlock2[2]();
  }
}

- (id)configurationForSize:(CGSize)size dataSources:(id)sources sourceURL:(id)l
{
  height = size.height;
  width = size.width;
  v9 = MEMORY[0x1E69CE168];
  lCopy = l;
  sourcesCopy = sources;
  v10 = objc_alloc_init(v9);
  viewControllerPresentationManager = [(SXWebContentConfigurationProvider *)self viewControllerPresentationManager];
  presentingViewController = [viewControllerPresentationManager presentingViewController];

  if (presentingViewController)
  {
    feedConfigurationFactory = [(SXWebContentConfigurationProvider *)self feedConfigurationFactory];
    viewControllerPresentationManager2 = [(SXWebContentConfigurationProvider *)self viewControllerPresentationManager];
    presentingViewController2 = [viewControllerPresentationManager2 presentingViewController];
    v16 = [feedConfigurationFactory createFeedConfigurationForViewController:presentingViewController2];

    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  v18 = [objc_alloc(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:width systemSafeAreaFrame:{height, 0.0, 0.0, width, height, 0, 0, *&width, *&height, 0, 0, *&width, *&height}];
  v19 = objc_alloc(MEMORY[0x1E69CE138]);
  storeFrontProvider = [(SXWebContentConfigurationProvider *)self storeFrontProvider];
  storeFrontIdentifier = [storeFrontProvider storeFrontIdentifier];
  locale = [(SXWebContentConfigurationProvider *)self locale];
  presentationAttributesProvider = [(SXWebContentConfigurationProvider *)self presentationAttributesProvider];
  presentationAttributes = [presentationAttributesProvider presentationAttributes];
  contentSizeCategory = [presentationAttributes contentSizeCategory];
  location = [(SXWebContentConfigurationProvider *)self location];
  liveActivityAttributesProvider = [(SXWebContentConfigurationProvider *)self liveActivityAttributesProvider];
  LOBYTE(v29) = 0;
  LOBYTE(v28) = [liveActivityAttributesProvider supportsLiveActivities];
  v30 = [v19 initWithStoreFront:storeFrontIdentifier locale:locale contentEnvironment:0 contentSizeCategory:contentSizeCategory layoutGuide:v18 dataSources:sourcesCopy location:location sourceURL:lCopy activePictureInPictureURL:0 feedConfiguration:v17 supportsLiveActivities:v28 keyboardConfiguration:0 networkStatus:0 isTransitioning:v29];

  return v30;
}

- (void)presentationAttributesDidChangeFrom:(id)from toAttributes:(id)attributes
{
  attributesCopy = attributes;
  contentSizeCategory = [from contentSizeCategory];
  contentSizeCategory2 = [attributesCopy contentSizeCategory];

  LOBYTE(attributesCopy) = [contentSizeCategory isEqualToString:contentSizeCategory2];
  if ((attributesCopy & 1) == 0)
  {

    [(SXWebContentConfigurationProvider *)self invokeChangeListener];
  }
}

@end