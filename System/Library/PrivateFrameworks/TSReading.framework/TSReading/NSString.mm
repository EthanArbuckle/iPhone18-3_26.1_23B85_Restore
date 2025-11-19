@interface NSString
@end

@implementation NSString

uint64_t __81__NSString_TSWPAdditions__stringForValue_withListNumberFormat_includeFormatting___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  [v0 addCharactersInRange:{46, 1}];
  [v0 addCharactersInRange:{40, 1}];
  result = [v0 addCharactersInRange:{41, 1}];
  +[NSString(TSWPAdditions) stringForValue:withListNumberFormat:includeFormatting:]::_formattingCharacterSet = v0;
  return result;
}

@end