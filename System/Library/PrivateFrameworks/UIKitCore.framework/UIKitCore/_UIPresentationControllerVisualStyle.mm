@interface _UIPresentationControllerVisualStyle
- (_UIPresentationControllerVisualStyle)initWithPresentationController:(id)controller;
@end

@implementation _UIPresentationControllerVisualStyle

- (_UIPresentationControllerVisualStyle)initWithPresentationController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _UIPresentationControllerVisualStyle;
  result = [(_UIPresentationControllerVisualStyle *)&v5 init];
  if (result)
  {
    result->_presentationController = controller;
  }

  return result;
}

@end