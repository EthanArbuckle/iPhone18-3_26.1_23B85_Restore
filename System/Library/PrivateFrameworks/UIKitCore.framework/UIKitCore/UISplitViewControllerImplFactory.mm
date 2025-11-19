@interface UISplitViewControllerImplFactory
+ (id)sharedInstance;
- (Class)implClassForSplitViewController:(id)a3;
- (UISplitViewControllerImplFactory)init;
@end

@implementation UISplitViewControllerImplFactory

void __50__UISplitViewControllerImplFactory_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4A2AC8;
  qword_1ED4A2AC8 = v0;
}

- (UISplitViewControllerImplFactory)init
{
  v6.receiver = self;
  v6.super_class = UISplitViewControllerImplFactory;
  v2 = [(UISplitViewControllerImplFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    implProvider = v2->_implProvider;
    v2->_implProvider = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UISplitViewControllerImplFactory_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_1381 != -1)
  {
    dispatch_once(&_MergedGlobals_1381, block);
  }

  v2 = qword_1ED4A2AC8;

  return v2;
}

- (Class)implClassForSplitViewController:(id)a3
{
  v5 = +[UISplitViewController _forcedImpl];
  if (v5 == 1 || v5 == 2 || v5 == 3)
  {
    v6 = objc_opt_class();
  }

  else
  {
    v7 = [(UISplitViewControllerImplFactory *)self implProvider];
    v6 = [v7 implClassForSplitViewController:a3];
  }

  return v6;
}

@end