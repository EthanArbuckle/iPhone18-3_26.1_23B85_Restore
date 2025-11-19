@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

uint64_t __78__NSMutableAttributedString_UIKitAdditions___ui_restoreOriginalFontAttributes__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    [*(a1 + 32) addAttribute:*off_1E70EC918 value:a2 range:{a3, a4}];
  }

  v7 = *(a1 + 32);
  v8 = *off_1E70EC978;

  return [v7 removeAttribute:v8 range:{a3, a4}];
}

@end