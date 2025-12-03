@interface NSString(ChineseJapanese)
- (MCKeyboardInput)_asTypeInputsWithNearbyKeyMap:()ChineseJapanese;
- (id)_firstComposedCharacter;
@end

@implementation NSString(ChineseJapanese)

- (id)_firstComposedCharacter
{
  selfCopy = self;
  if ([selfCopy length])
  {
    v2 = [selfCopy rangeOfComposedCharacterSequenceAtIndex:0];
    v4 = v3;
    if (v3 != [selfCopy length])
    {
      v5 = [selfCopy substringWithRange:{v2, v4}];

      selfCopy = v5;
    }
  }

  return selfCopy;
}

- (MCKeyboardInput)_asTypeInputsWithNearbyKeyMap:()ChineseJapanese
{
  v4 = a3;
  v5 = objc_alloc_init(MCKeyboardInput);
  if ([self length])
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x277CCACA8] _stringWithUnichar:{objc_msgSend(self, "characterAtIndex:", v6)}];
      array = [MEMORY[0x277CBEB18] array];
      v9 = [v4 valueForKey:v7];
      if (v9)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __59__NSString_ChineseJapanese___asTypeInputsWithNearbyKeyMap___block_invoke;
        v12[3] = &unk_278730C88;
        v13 = array;
        [v9 enumerateObjectsUsingBlock:v12];
      }

      v10 = [[MCTypeInput alloc] initWithCharacters:v7 nearbyKeys:array];
      [(MCKeyboardInput *)v5 composeNew:v10];

      ++v6;
    }

    while ([self length] > v6);
  }

  return v5;
}

@end