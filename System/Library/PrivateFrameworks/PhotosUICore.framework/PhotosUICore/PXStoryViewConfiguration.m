@interface PXStoryViewConfiguration
- (PXStoryViewConfiguration)init;
- (PXStoryViewConfiguration)initWithConfiguration:(id)a3 extendedTraitCollection:(id)a4;
- (UIViewController)containerViewController;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXStoryViewConfiguration

- (UIViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PXStoryViewConfiguration *)self configuration];
  v6 = [v5 copy];
  v7 = [(PXStoryViewConfiguration *)self extendedTraitCollection];
  v8 = [v4 initWithConfiguration:v6 extendedTraitCollection:v7];

  v9 = [(PXStoryViewConfiguration *)self containerViewController];
  [v8 setContainerViewController:v9];

  return v8;
}

- (PXStoryViewConfiguration)initWithConfiguration:(id)a3 extendedTraitCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXStoryViewConfiguration;
  v9 = [(PXStoryViewConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_extendedTraitCollection, a4);
  }

  return v10;
}

- (PXStoryViewConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryViewConfiguration.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryViewConfiguration init]"}];

  abort();
}

@end