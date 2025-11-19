@interface _UINavigationControllerVisualStyle
- (_UINavigationControllerVisualStyle)initWithNavigationController:(id)a3;
@end

@implementation _UINavigationControllerVisualStyle

- (_UINavigationControllerVisualStyle)initWithNavigationController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UINavigationControllerVisualStyle;
  result = [(_UINavigationControllerVisualStyle *)&v5 init];
  if (result)
  {
    result->_navigationController = a3;
  }

  return result;
}

@end