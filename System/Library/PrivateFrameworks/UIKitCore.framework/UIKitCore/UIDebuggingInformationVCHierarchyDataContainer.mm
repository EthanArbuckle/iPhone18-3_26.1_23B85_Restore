@interface UIDebuggingInformationVCHierarchyDataContainer
- (UIDebuggingInformationVCHierarchyDataContainer)initWithViewController:(id)a3 atLevel:(int64_t)a4;
- (UIViewController)viewController;
@end

@implementation UIDebuggingInformationVCHierarchyDataContainer

- (UIDebuggingInformationVCHierarchyDataContainer)initWithViewController:(id)a3 atLevel:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationVCHierarchyDataContainer;
  v7 = [(UIDebuggingInformationVCHierarchyDataContainer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewController, v6);
    v8->_level = a4;
  }

  return v8;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end