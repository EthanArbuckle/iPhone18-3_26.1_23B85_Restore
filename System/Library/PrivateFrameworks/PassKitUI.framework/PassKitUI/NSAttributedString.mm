@interface NSAttributedString
@end

@implementation NSAttributedString

void __87__NSAttributedString_PKUIUtilities__pkui_sizeThatFits_withNumberOfLines_forceWordWrap___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *MEMORY[0x1E69DB688];
  v13 = v7;
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DB688]];

  if (v9)
  {
    v10 = [v13 objectForKeyedSubscript:v8];
    v11 = [v10 mutableCopy];

    [v11 setLineBreakMode:0];
    v12 = [v13 mutableCopy];
    [v12 setObject:v11 forKeyedSubscript:v8];
    [*(a1 + 32) setAttributes:v12 range:{a3, a4}];
  }
}

@end