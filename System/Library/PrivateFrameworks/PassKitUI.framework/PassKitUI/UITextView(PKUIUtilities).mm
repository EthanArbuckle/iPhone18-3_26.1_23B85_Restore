@interface UITextView(PKUIUtilities)
+ (id)pkui_plainInteractiveTextViewWithFrame:()PKUIUtilities;
+ (id)pkui_plainNonInteractiveTextViewWithFrame:()PKUIUtilities;
+ (void)pkui_styleTextView:()PKUIUtilities;
- (double)pkui_textFrame;
@end

@implementation UITextView(PKUIUtilities)

+ (void)pkui_styleTextView:()PKUIUtilities
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  clearColor = [v3 clearColor];
  [v4 setBackgroundColor:clearColor];

  [v4 setContentInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  textContainer = [v4 textContainer];

  [textContainer setLineFragmentPadding:0.0];
}

+ (id)pkui_plainInteractiveTextViewWithFrame:()PKUIUtilities
{
  v6 = [[self alloc] initWithFrame:{a2, a3, a4, a5}];
  [(objc_class *)self pkui_styleTextView:v6];

  return v6;
}

+ (id)pkui_plainNonInteractiveTextViewWithFrame:()PKUIUtilities
{
  v6 = [[self alloc] initReadonlyAndUnselectableWithFrame:0 textContainer:{a2, a3, a4, a5}];
  [(objc_class *)self pkui_styleTextView:v6];
  [v6 setUserInteractionEnabled:0];
  [v6 setScrollEnabled:0];

  return v6;
}

- (double)pkui_textFrame
{
  [self frame];
  v3 = v2;
  [self textContainerInset];
  return v3 + v4;
}

@end