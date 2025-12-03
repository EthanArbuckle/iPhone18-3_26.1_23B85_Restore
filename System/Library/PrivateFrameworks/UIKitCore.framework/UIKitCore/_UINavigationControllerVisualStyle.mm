@interface _UINavigationControllerVisualStyle
- (_UINavigationControllerVisualStyle)initWithNavigationController:(id)controller;
@end

@implementation _UINavigationControllerVisualStyle

- (_UINavigationControllerVisualStyle)initWithNavigationController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _UINavigationControllerVisualStyle;
  result = [(_UINavigationControllerVisualStyle *)&v5 init];
  if (result)
  {
    result->_navigationController = controller;
  }

  return result;
}

@end