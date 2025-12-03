@interface UILabel(PKUIUtilities)
- (double)pkui_sizeThatFits:()PKUIUtilities forceWordWrap:;
@end

@implementation UILabel(PKUIUtilities)

- (double)pkui_sizeThatFits:()PKUIUtilities forceWordWrap:
{
  attributedText = [self attributedText];
  [attributedText pkui_sizeThatFits:objc_msgSend(self withNumberOfLines:"numberOfLines") forceWordWrap:{a5, a2, a3}];
  v11 = v10;

  return v11;
}

@end