@interface PSBundleController
- (PSBundleController)initWithParentListController:(id)controller;
@end

@implementation PSBundleController

- (PSBundleController)initWithParentListController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PSBundleController;
  v5 = [(PSBundleController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, controllerCopy);
  }

  return v6;
}

@end