@interface PSBundleController
- (PSBundleController)initWithParentListController:(id)a3;
@end

@implementation PSBundleController

- (PSBundleController)initWithParentListController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PSBundleController;
  v5 = [(PSBundleController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_parent, v4);
  }

  return v6;
}

@end