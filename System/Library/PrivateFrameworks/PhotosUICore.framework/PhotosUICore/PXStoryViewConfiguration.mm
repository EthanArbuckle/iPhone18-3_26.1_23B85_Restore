@interface PXStoryViewConfiguration
- (PXStoryViewConfiguration)init;
- (PXStoryViewConfiguration)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection;
- (UIViewController)containerViewController;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXStoryViewConfiguration

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  configuration = [(PXStoryViewConfiguration *)self configuration];
  v6 = [configuration copy];
  extendedTraitCollection = [(PXStoryViewConfiguration *)self extendedTraitCollection];
  v8 = [v4 initWithConfiguration:v6 extendedTraitCollection:extendedTraitCollection];

  containerViewController = [(PXStoryViewConfiguration *)self containerViewController];
  [v8 setContainerViewController:containerViewController];

  return v8;
}

- (PXStoryViewConfiguration)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection
{
  configurationCopy = configuration;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = PXStoryViewConfiguration;
  v9 = [(PXStoryViewConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_extendedTraitCollection, collection);
  }

  return v10;
}

- (PXStoryViewConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewConfiguration.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryViewConfiguration init]"}];

  abort();
}

@end