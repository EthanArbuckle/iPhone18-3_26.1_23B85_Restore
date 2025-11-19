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
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [v4 setContentInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  v6 = [v4 textContainer];

  [v6 setLineFragmentPadding:0.0];
}

+ (id)pkui_plainInteractiveTextViewWithFrame:()PKUIUtilities
{
  v6 = [[a1 alloc] initWithFrame:{a2, a3, a4, a5}];
  [(objc_class *)a1 pkui_styleTextView:v6];

  return v6;
}

+ (id)pkui_plainNonInteractiveTextViewWithFrame:()PKUIUtilities
{
  v6 = [[a1 alloc] initReadonlyAndUnselectableWithFrame:0 textContainer:{a2, a3, a4, a5}];
  [(objc_class *)a1 pkui_styleTextView:v6];
  [v6 setUserInteractionEnabled:0];
  [v6 setScrollEnabled:0];

  return v6;
}

- (double)pkui_textFrame
{
  [a1 frame];
  v3 = v2;
  [a1 textContainerInset];
  return v3 + v4;
}

@end