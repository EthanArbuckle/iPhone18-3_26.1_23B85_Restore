@interface TSWPRep
@end

@implementation TSWPRep

void __56__TSWPRep_SXAccessibility__accessibilityAttributedValue__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  v10 = TSUDynamicCast();

  if (v10)
  {
    v8 = [*(a1 + 32) sxaxRepRelativeRangeFromStorageRelativeRange:{a3, a4}];
    [*(a1 + 40) addAttribute:*MEMORY[0x1E6988E90] value:MEMORY[0x1E695E118] range:{v8, v9}];
  }
}

uint64_t __56__TSWPRep_SXAccessibility__accessibilityAttributedValue__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = a2;
  v7 = [v16 firstLabelType];
  v8 = v16;
  if (v7)
  {
    v9 = [v16 valueForProperty:183];
    v10 = [v9 firstObject];

    if (v10)
    {
      [*(a1 + 32) addAttribute:*MEMORY[0x1E6988EA0] value:v10 range:{*(a1 + 48), *(a1 + 56)}];
      v11 = *MEMORY[0x1E6988E98];
      v12 = MEMORY[0x1E696AD98];
      v13 = *(a1 + 32);
      ++*(*(*(a1 + 40) + 8) + 24);
      v14 = [v12 numberWithUnsignedInteger:?];
      [v13 addAttribute:v11 value:v14 range:{*(a1 + 48), *(a1 + 56)}];
    }

    *a5 = 1;

    v8 = v16;
  }

  return MEMORY[0x1EEE66BB8](v7, v8);
}

@end