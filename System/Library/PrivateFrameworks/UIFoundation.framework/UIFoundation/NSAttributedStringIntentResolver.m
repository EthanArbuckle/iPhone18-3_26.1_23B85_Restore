@interface NSAttributedStringIntentResolver
@end

@implementation NSAttributedStringIntentResolver

uint64_t __78___NSAttributedStringIntentResolver_attributesByResolvingIntentsInAttributes___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  return [v2 objectForKeyedSubscript:a2];
}

uint64_t __78___NSAttributedStringIntentResolver_attributesByResolvingIntentsInAttributes___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) mutableCopy];
    v6 = *(*(*(a1 + 40) + 8) + 40);
  }

  return [v6 setObject:a3 forKeyedSubscript:a2];
}

uint64_t __90___NSAttributedStringIntentResolver__replaceInlinePresentationIntentInString_range_value___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  if (a3)
  {
    return [v4 addAttribute:a2 value:a3 range:{a1[5], a1[6]}];
  }

  else
  {
    return [v4 removeAttribute:a2 range:{a1[5], a1[6]}];
  }
}

@end