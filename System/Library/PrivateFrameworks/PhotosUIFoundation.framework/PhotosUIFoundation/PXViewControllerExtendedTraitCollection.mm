@interface PXViewControllerExtendedTraitCollection
+ (int64_t)userInterfaceFeatureForViewController:(id)controller;
- (PXViewControllerExtendedTraitCollection)initWithViewController:(id)controller;
- (UIViewController)viewController;
- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)feature;
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
  selfCopy = self;
  viewController = [(PXViewControllerExtendedTraitCollection *)selfCopy viewController];
  v4 = viewController;
  if (viewController)
  {
    v5 = PXGetRootViewController(viewController);
    v6 = v5;
    if (v5 != v4)
    {
      px_extendedTraitCollection = [v5 px_extendedTraitCollection];

      if ([(PXExtendedTraitCollection *)px_extendedTraitCollection isEnabled])
      {
        selfCopy = px_extendedTraitCollection;
      }

      else
      {
        selfCopy = selfCopy;
      }
    }
  }

  return selfCopy;
}

- (id)viewIfLoaded
{
  viewController = [(PXViewControllerExtendedTraitCollection *)self viewController];
  viewIfLoaded = [viewController viewIfLoaded];

  return viewIfLoaded;
}

- (PXViewControllerExtendedTraitCollection)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [objc_opt_class() userInterfaceFeatureForViewController:controllerCopy];
  v9.receiver = self;
  v9.super_class = PXViewControllerExtendedTraitCollection;
  v6 = [(PXExtendedTraitCollection *)&v9 _initForSubclassWithUserInterfaceFeature:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(v6 + 48, controllerCopy);
  }

  return v7;
}

- (id)_initForSubclassWithUserInterfaceFeature:(int64_t)feature
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXViewControllerExtendedTraitCollection.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXViewControllerExtendedTraitCollection _initForSubclassWithUserInterfaceFeature:]"}];

  abort();
}

+ (int64_t)userInterfaceFeatureForViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    userInterfaceFeature = [controllerCopy userInterfaceFeature];
  }

  else
  {
    userInterfaceFeature = 0;
  }

  return userInterfaceFeature;
}

@end