@interface PXFeedViewConfiguration
- (PXFeedViewConfiguration)init;
- (PXFeedViewConfiguration)initWithFeedConfiguration:(id)configuration extendedTraitCollection:(id)collection;
- (UIViewController)containerViewController;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXFeedViewConfiguration

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  feedConfiguration = [(PXFeedViewConfiguration *)self feedConfiguration];
  extendedTraitCollection = [(PXFeedViewConfiguration *)self extendedTraitCollection];
  v7 = [v4 initWithFeedConfiguration:feedConfiguration extendedTraitCollection:extendedTraitCollection];

  containerViewController = [(PXFeedViewConfiguration *)self containerViewController];
  [v7 setContainerViewController:containerViewController];

  return v7;
}

- (PXFeedViewConfiguration)initWithFeedConfiguration:(id)configuration extendedTraitCollection:(id)collection
{
  configurationCopy = configuration;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = PXFeedViewConfiguration;
  v8 = [(PXFeedViewConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [configurationCopy copy];
    feedConfiguration = v8->_feedConfiguration;
    v8->_feedConfiguration = v9;

    objc_storeStrong(&v8->_extendedTraitCollection, collection);
  }

  return v8;
}

- (PXFeedViewConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewConfiguration.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXFeedViewConfiguration init]"}];

  abort();
}

@end