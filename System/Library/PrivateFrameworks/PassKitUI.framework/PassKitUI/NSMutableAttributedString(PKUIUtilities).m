@interface NSMutableAttributedString(PKUIUtilities)
- (void)pk_addLinkURL:()PKUIUtilities toRange:withColor:isUnderlined:;
@end

@implementation NSMutableAttributedString(PKUIUtilities)

- (void)pk_addLinkURL:()PKUIUtilities toRange:withColor:isUnderlined:
{
  v15 = a3;
  v12 = a6;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL && a5 && a4 + a5 <= [a1 length])
  {
    if (v12)
    {
      [a1 addAttribute:*MEMORY[0x1E69DB650] value:v12 range:{a4, a5}];
    }

    [a1 addAttribute:*MEMORY[0x1E69DB670] value:v15 range:{a4, a5}];
    v13 = *MEMORY[0x1E69DB758];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:a7];
    [a1 addAttribute:v13 value:v14 range:{a4, a5}];
  }
}

@end