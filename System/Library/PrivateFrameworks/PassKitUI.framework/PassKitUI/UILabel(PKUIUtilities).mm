@interface UILabel(PKUIUtilities)
- (double)pkui_sizeThatFits:()PKUIUtilities forceWordWrap:;
@end

@implementation UILabel(PKUIUtilities)

- (double)pkui_sizeThatFits:()PKUIUtilities forceWordWrap:
{
  v9 = [a1 attributedText];
  [v9 pkui_sizeThatFits:objc_msgSend(a1 withNumberOfLines:"numberOfLines") forceWordWrap:{a5, a2, a3}];
  v11 = v10;

  return v11;
}

@end