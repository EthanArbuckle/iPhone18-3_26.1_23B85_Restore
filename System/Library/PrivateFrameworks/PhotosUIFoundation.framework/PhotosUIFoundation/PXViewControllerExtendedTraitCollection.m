@interface PXViewControllerExtendedTraitCollection
+ (int64_t)userInterfaceFeatureForViewController:(id)a3;
- (PXViewControllerExtendedTraitCollection)initWithViewController:(id)a3;
- (UIViewController)viewController;
- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)a3;
- (id)rootExtendedTraitCollection;
- (id)viewIfLoaded;
@end

@implementation PXViewControllerExtendedTraitCollection

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (id)rootExtendedTraitCollection
{
  v2 = self;
  v3 = [(PXViewControllerExtendedTraitCollection *)v2 viewController];
  v4 = v3;
  if (v3)
  {
    v5 = PXGetRootViewController(v3);
    v6 = v5;
    if (v5 != v4)
    {
      v7 = [v5 px_extendedTraitCollection];

      if ([(PXExtendedTraitCollection *)v7 isEnabled])
      {
        v2 = v7;
      }

      else
      {
        v2 = v2;
      }
    }
  }

  return v2;
}

- (id)viewIfLoaded
{
  v2 = [(PXViewControllerExtendedTraitCollection *)self viewController];
  v3 = [v2 viewIfLoaded];

  return v3;
}

- (PXViewControllerExtendedTraitCollection)initWithViewController:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() userInterfaceFeatureForViewController:v4];
  v9.receiver = self;
  v9.super_class = PXViewControllerExtendedTraitCollection;
  v6 = [(PXExtendedTraitCollection *)&v9 _initForSubclassWithUserInterfaceFeature:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(v6 + 48, v4);
  }

  return v7;
}

- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXViewControllerExtendedTraitCollection.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXViewControllerExtendedTraitCollection _initForSubclassWithUserInterfaceFeature:]"}];

  abort();
}

+ (int64_t)userInterfaceFeatureForViewController:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 userInterfaceFeature];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end