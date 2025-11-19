@interface SXWebContentConfigurationProvider
- (SXWebContentConfigurationProvider)initWithPresentationAttributesProvider:(id)a3 storeFrontProvider:(id)a4 liveActivityAttributesProvider:(id)a5 feedConfigurationFactory:(id)a6 viewControllerPresentationManager:(id)a7 locale:(id)a8 location:(id)a9;
- (id)configurationForSize:(CGSize)a3 dataSources:(id)a4 sourceURL:(id)a5;
- (void)invokeChangeListener;
- (void)presentationAttributesDidChangeFrom:(id)a3 toAttributes:(id)a4;
@end

@implementation SXWebContentConfigurationProvider

- (SXWebContentConfigurationProvider)initWithPresentationAttributesProvider:(id)a3 storeFrontProvider:(id)a4 liveActivityAttributesProvider:(id)a5 feedConfigurationFactory:(id)a6 viewControllerPresentationManager:(id)a7 locale:(id)a8 location:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = SXWebContentConfigurationProvider;
  v18 = [(SXWebContentConfigurationProvider *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_presentationAttributesProvider, a3);
    [v25 addObserver:v19];
    objc_storeStrong(&v19->_storeFrontProvider, a4);
    objc_storeStrong(&v19->_liveActivityAttributesProvider, a5);
    objc_storeStrong(&v19->_feedConfigurationFactory, a6);
    objc_storeStrong(&v19->_viewControllerPresentationManager, a7);
    objc_storeStrong(&v19->_locale, a8);
    objc_storeStrong(&v19->_location, a9);
  }

  return v19;
}

- (void)invokeChangeListener
{
  v3 = [(SXWebContentConfigurationProvider *)self changeBlock];

  if (v3)
  {
    v4 = [(SXWebContentConfigurationProvider *)self changeBlock];
    v4[2]();
  }
}

- (id)configurationForSize:(CGSize)a3 dataSources:(id)a4 sourceURL:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = MEMORY[0x1E69CE168];
  v33 = a5;
  v32 = a4;
  v10 = objc_alloc_init(v9);
  v11 = [(SXWebContentConfigurationProvider *)self viewControllerPresentationManager];
  v12 = [v11 presentingViewController];

  if (v12)
  {
    v13 = [(SXWebContentConfigurationProvider *)self feedConfigurationFactory];
    v14 = [(SXWebContentConfigurationProvider *)self viewControllerPresentationManager];
    v15 = [v14 presentingViewController];
    v16 = [v13 createFeedConfigurationForViewController:v15];

    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  v18 = [objc_alloc(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:width systemSafeAreaFrame:{height, 0.0, 0.0, width, height, 0, 0, *&width, *&height, 0, 0, *&width, *&height}];
  v19 = objc_alloc(MEMORY[0x1E69CE138]);
  v31 = [(SXWebContentConfigurationProvider *)self storeFrontProvider];
  v20 = [v31 storeFrontIdentifier];
  v21 = [(SXWebContentConfigurationProvider *)self locale];
  v22 = [(SXWebContentConfigurationProvider *)self presentationAttributesProvider];
  v23 = [v22 presentationAttributes];
  v24 = [v23 contentSizeCategory];
  v25 = [(SXWebContentConfigurationProvider *)self location];
  v26 = [(SXWebContentConfigurationProvider *)self liveActivityAttributesProvider];
  LOBYTE(v29) = 0;
  LOBYTE(v28) = [v26 supportsLiveActivities];
  v30 = [v19 initWithStoreFront:v20 locale:v21 contentEnvironment:0 contentSizeCategory:v24 layoutGuide:v18 dataSources:v32 location:v25 sourceURL:v33 activePictureInPictureURL:0 feedConfiguration:v17 supportsLiveActivities:v28 keyboardConfiguration:0 networkStatus:0 isTransitioning:v29];

  return v30;
}

- (void)presentationAttributesDidChangeFrom:(id)a3 toAttributes:(id)a4
{
  v6 = a4;
  v7 = [a3 contentSizeCategory];
  v8 = [v6 contentSizeCategory];

  LOBYTE(v6) = [v7 isEqualToString:v8];
  if ((v6 & 1) == 0)
  {

    [(SXWebContentConfigurationProvider *)self invokeChangeListener];
  }
}

@end