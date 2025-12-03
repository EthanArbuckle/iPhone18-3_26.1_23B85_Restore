@interface UITextRefinementInteraction_CustomHighlighter
- (UITextRefinementInteraction_CustomHighlighter)initWithLongPressGesture:(id)gesture;
@end

@implementation UITextRefinementInteraction_CustomHighlighter

- (UITextRefinementInteraction_CustomHighlighter)initWithLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  v8.receiver = self;
  v8.super_class = UITextRefinementInteraction_CustomHighlighter;
  v5 = [(UITextInteraction *)&v8 init];
  if (v5)
  {
    v6 = gestureCopy;
    [v6 setName:@"com.apple.UIKit.textLoupe"];
    [(UITextInteraction *)v5 addGestureRecognizer:v6 withName:0x1EFBA76B0];
  }

  return v5;
}

@end