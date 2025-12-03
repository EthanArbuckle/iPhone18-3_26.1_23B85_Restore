@interface UITextView(UITextViewPrintFormatter)
- (void)drawRect:()UITextViewPrintFormatter forViewPrintFormatter:;
@end

@implementation UITextView(UITextViewPrintFormatter)

- (void)drawRect:()UITextViewPrintFormatter forViewPrintFormatter:
{
  _containerView = [self _containerView];
  [_containerView drawRect:{a2, a3, a4, a5}];
}

@end