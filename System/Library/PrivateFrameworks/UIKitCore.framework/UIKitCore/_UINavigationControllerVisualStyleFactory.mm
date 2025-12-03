@interface _UINavigationControllerVisualStyleFactory
+ (id)sharedInstance;
- (_UINavigationControllerVisualStyleFactory)init;
- (id)styleForNavigationController:(id)controller;
@end

@implementation _UINavigationControllerVisualStyleFactory

+ (id)sharedInstance
{
  if (_MergedGlobals_1140 != -1)
  {
    dispatch_once(&_MergedGlobals_1140, &__block_literal_global_299);
  }

  v3 = qword_1ED49E5C0;

  return v3;
}

- (_UINavigationControllerVisualStyleFactory)init
{
  v6.receiver = self;
  v6.super_class = _UINavigationControllerVisualStyleFactory;
  v2 = [(_UINavigationControllerVisualStyleFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    visualStyleProvider = v2->_visualStyleProvider;
    v2->_visualStyleProvider = v3;
  }

  return v2;
}

- (id)styleForNavigationController:(id)controller
{
  controllerCopy = controller;
  visualStyleProvider = [(_UINavigationControllerVisualStyleFactory *)self visualStyleProvider];
  v6 = [visualStyleProvider styleForNavigationController:controllerCopy];

  return v6;
}

@end