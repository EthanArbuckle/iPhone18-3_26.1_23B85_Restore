@interface UIActivityContentFooterView
@end

@implementation UIActivityContentFooterView

id __49___UIActivityContentFooterView__createEditButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

@end