@interface NSMutableString
@end

@implementation NSMutableString

uint64_t __49__NSMutableString_ICSWriter__controlCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithRange:{0, 9}];
  v1 = controlCharacterSet_controlCharacterSet;
  controlCharacterSet_controlCharacterSet = v0;

  [controlCharacterSet_controlCharacterSet addCharactersInRange:{10, 22}];
  v2 = controlCharacterSet_controlCharacterSet;

  return [v2 addCharactersInRange:{127, 1}];
}

@end