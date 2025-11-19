@interface _UINavigationControllerVisualStyleTVOS
- (_UINavigationControllerVisualStyleTVOS)initWithNavigationController:(id)a3;
@end

@implementation _UINavigationControllerVisualStyleTVOS

- (_UINavigationControllerVisualStyleTVOS)initWithNavigationController:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UINavigationControllerVisualStyleTVOS;
  v3 = [(_UINavigationControllerVisualStyle *)&v7 initWithNavigationController:a3];
  if (v3)
  {
    v4 = objc_alloc_init(_UINavigationCrossfadeAnimator);
    transitionController = v3->_transitionController;
    v3->_transitionController = v4;
  }

  return v3;
}

@end