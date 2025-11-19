@interface NSString
@end

@implementation NSString

uint64_t __54__NSString_SCROBrailleAdditions___illegalCharacterSet__block_invoke()
{
  _illegalCharacterSet___illegalCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\r\n\t"];

  return MEMORY[0x2821F96F8]();
}

void __53__NSString_SCROBrailleAdditions___legalWhiteSpaceSet__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _illegalCharacterSet];
  v5 = [v1 invertedSet];

  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v3 = [v2 mutableCopy];
  v4 = _legalWhiteSpaceSet___legalWhiteSpaceSet;
  _legalWhiteSpaceSet___legalWhiteSpaceSet = v3;

  [_legalWhiteSpaceSet___legalWhiteSpaceSet formIntersectionWithCharacterSet:v5];
}

@end