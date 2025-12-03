@interface UILabel(Truncation)
+ (uint64_t)px_isTruncatedForAttributedString:()Truncation forWidth:lines:;
- (BOOL)px_isTruncatedForWidth:()Truncation lines:;
@end

@implementation UILabel(Truncation)

- (BOOL)px_isTruncatedForWidth:()Truncation lines:
{
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  [self textRectForBounds:*MEMORY[0x1E695F058] limitedToNumberOfLines:{v8, a2, 9.22337204e18}];
  v10 = v9;
  [self textRectForBounds:a4 + 1 limitedToNumberOfLines:{v7, v8, a2, 9.22337204e18}];
  return v11 > v10;
}

+ (uint64_t)px_isTruncatedForAttributedString:()Truncation forWidth:lines:
{
  v7 = px_isTruncatedForAttributedString_forWidth_lines__onceToken;
  v8 = a4;
  if (v7 != -1)
  {
    dispatch_once(&px_isTruncatedForAttributedString_forWidth_lines__onceToken, &__block_literal_global_18789);
  }

  [px_isTruncatedForAttributedString_forWidth_lines__label setAttributedText:v8];

  v9 = px_isTruncatedForAttributedString_forWidth_lines__label;

  return [v9 px_isTruncatedForWidth:a5 lines:self];
}

@end