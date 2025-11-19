@interface SADecoratedString
@end

@implementation SADecoratedString

uint64_t __102__SADecoratedString_SiriUIFoundationAdditions__sruif_enumerateRangesOfRegionsWithProperty_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isEqualToString:a2];
  if (result)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

unint64_t __118__SADecoratedString_SiriUIFoundationAdditions__sruif_attributedStringValueWithAttribute_value_forRegionsWithProperty___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) length];
  if (result >= a2 + a3)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);

    return [v7 addAttribute:v8 value:v9 range:{a2, a3}];
  }

  return result;
}

@end