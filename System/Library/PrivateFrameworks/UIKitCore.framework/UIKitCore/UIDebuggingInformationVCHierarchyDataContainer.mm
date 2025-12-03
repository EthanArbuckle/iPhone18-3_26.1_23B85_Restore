@interface UIDebuggingInformationVCHierarchyDataContainer
- (UIDebuggingInformationVCHierarchyDataContainer)initWithViewController:(id)controller atLevel:(int64_t)level;
- (UIViewController)viewController;
@end

@implementation UIDebuggingInformationVCHierarchyDataContainer

- (UIDebuggingInformationVCHierarchyDataContainer)initWithViewController:(id)controller atLevel:(int64_t)level
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationVCHierarchyDataContainer;
  v7 = [(UIDebuggingInformationVCHierarchyDataContainer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewController, controllerCopy);
    v8->_level = level;
  }

  return v8;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end