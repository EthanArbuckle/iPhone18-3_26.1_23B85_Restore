@interface _UIPresentationControllerVisualStyle
- (_UIPresentationControllerVisualStyle)initWithPresentationController:(id)a3;
@end

@implementation _UIPresentationControllerVisualStyle

- (_UIPresentationControllerVisualStyle)initWithPresentationController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIPresentationControllerVisualStyle;
  result = [(_UIPresentationControllerVisualStyle *)&v5 init];
  if (result)
  {
    result->_presentationController = a3;
  }

  return result;
}

@end