@interface UILabelAttributedStringContent
@end

@implementation UILabelAttributedStringContent

void __59___UILabelAttributedStringContent_labelViewTextAttachments__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __69___UILabelAttributedStringContent_intelligenceLightAttributedStrings__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *off_1E70EC920;
  v7 = 32;
  if (!a2)
  {
    v7 = 40;
  }

  v8 = *(a1 + v7);
  v9 = +[UIColor clearColor];
  [v8 addAttribute:v6 value:v9 range:{a3, a4}];
}

@end