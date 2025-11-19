@interface NSString
@end

@implementation NSString

uint64_t __47__NSString_VSSpeechService__vs_isCJKCharacter___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = vs_isCJKCharacter____CJKCharacterSet;
  vs_isCJKCharacter____CJKCharacterSet = v0;

  [vs_isCJKCharacter____CJKCharacterSet addCharactersInRange:{19968, 40959}];
  [vs_isCJKCharacter____CJKCharacterSet addCharactersInRange:{13312, 19903}];
  [vs_isCJKCharacter____CJKCharacterSet addCharactersInRange:{0x20000, 173791}];
  [vs_isCJKCharacter____CJKCharacterSet addCharactersInRange:{173824, 177983}];
  [vs_isCJKCharacter____CJKCharacterSet addCharactersInRange:{177984, 178207}];
  [vs_isCJKCharacter____CJKCharacterSet addCharactersInRange:{178208, 183983}];
  v2 = vs_isCJKCharacter____CJKCharacterSet;

  return [v2 addCharactersInRange:{183984, 191471}];
}

@end