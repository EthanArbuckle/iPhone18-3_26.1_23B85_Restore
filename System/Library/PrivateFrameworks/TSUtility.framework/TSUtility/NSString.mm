@interface NSString
@end

@implementation NSString

id __110__NSString_TSUNumberFormatStringUtilities__newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand__block_invoke()
{
  result = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"−\uFE6E－﹢＋"];
  newStringBySubstitutingCharactersCFNumberFormatterDoesntUnderstand_replacedCharacterSet = result;
  return result;
}

void __55__NSString_SFUJsonAdditions__appendJsonStringToString___block_invoke()
{
  appendJsonStringToString__escapeCharacters = [MEMORY[0x277CCAB50] characterSetWithRange:{0, 32}];
  [appendJsonStringToString__escapeCharacters addCharactersInString:@"\"\\""];
  v1 = 539566120;
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v1 length:2];
  [appendJsonStringToString__escapeCharacters addCharactersInString:v0];
}

@end