@interface NSString
@end

@implementation NSString

void __56__NSString_CACHelpers__cac_stringByFilteringPunctuation__block_invoke()
{
  v3 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  v0 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  [v3 addCharactersInString:@"&+'’-"];
  v1 = [v3 invertedSet];
  v2 = cac_stringByFilteringPunctuation___punctuationSet;
  cac_stringByFilteringPunctuation___punctuationSet = v1;
}

uint64_t __56__NSString_CACHelpers__cac_stringByCollapsingWhitespace__block_invoke()
{
  cac_stringByCollapsingWhitespace___regex = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"  +" options:1 error:0];

  return MEMORY[0x2821F96F8]();
}

@end