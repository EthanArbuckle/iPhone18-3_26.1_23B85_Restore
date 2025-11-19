@interface UILabel
@end

@implementation UILabel

uint64_t __72__UILabel_Truncation__px_isTruncatedForAttributedString_forWidth_lines___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69DCC10]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v2 = px_isTruncatedForAttributedString_forWidth_lines__label;
  px_isTruncatedForAttributedString_forWidth_lines__label = v1;

  v3 = px_isTruncatedForAttributedString_forWidth_lines__label;

  return [v3 setNumberOfLines:0];
}

@end