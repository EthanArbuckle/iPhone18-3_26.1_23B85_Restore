@interface UITextView(UITextViewPrintFormatter)
- (void)drawRect:()UITextViewPrintFormatter forViewPrintFormatter:;
@end

@implementation UITextView(UITextViewPrintFormatter)

- (void)drawRect:()UITextViewPrintFormatter forViewPrintFormatter:
{
  v9 = [a1 _containerView];
  [v9 drawRect:{a2, a3, a4, a5}];
}

@end