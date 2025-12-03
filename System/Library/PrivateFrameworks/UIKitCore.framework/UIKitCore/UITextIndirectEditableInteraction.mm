@interface UITextIndirectEditableInteraction
- (UITextIndirectEditableInteraction)initWithView:(id)view;
@end

@implementation UITextIndirectEditableInteraction

- (UITextIndirectEditableInteraction)initWithView:(id)view
{
  v9.receiver = self;
  v9.super_class = UITextIndirectEditableInteraction;
  v4 = [(UITextInteraction *)&v9 init];
  v5 = v4;
  if (view && v4)
  {
    v6 = +[_UIKeyboardBasedTextSelectionGestureController sharedInstance];
    textSelectionGestureController = v5->_textSelectionGestureController;
    v5->_textSelectionGestureController = v6;
  }

  return v5;
}

@end