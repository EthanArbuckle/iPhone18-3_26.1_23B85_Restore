@interface PXFeedViewConfiguration
- (PXFeedViewConfiguration)init;
- (PXFeedViewConfiguration)initWithFeedConfiguration:(id)a3 extendedTraitCollection:(id)a4;
- (UIViewController)containerViewController;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXFeedViewConfiguration

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PXFeedViewConfiguration *)self feedConfiguration];
  v6 = [(PXFeedViewConfiguration *)self extendedTraitCollection];
  v7 = [v4 initWithFeedConfiguration:v5 extendedTraitCollection:v6];

  v8 = [(PXFeedViewConfiguration *)self containerViewController];
  [v7 setContainerViewController:v8];

  return v7;
}

- (PXFeedViewConfiguration)initWithFeedConfiguration:(id)a3 extendedTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXFeedViewConfiguration;
  v8 = [(PXFeedViewConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    feedConfiguration = v8->_feedConfiguration;
    v8->_feedConfiguration = v9;

    objc_storeStrong(&v8->_extendedTraitCollection, a4);
  }

  return v8;
}

- (PXFeedViewConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedViewConfiguration.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXFeedViewConfiguration init]"}];

  abort();
}

@end