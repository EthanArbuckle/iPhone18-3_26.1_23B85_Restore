@interface NSAttributedString(StocksUICoreText)
- (BOOL)su_containsExcessiveLineHeightCharacter;
- (double)su_languageAwareOutsetsAtScale:()StocksUICoreText;
@end

@implementation NSAttributedString(StocksUICoreText)

- (BOOL)su_containsExcessiveLineHeightCharacter
{
  string = [self string];
  v2 = su_excessiveLineHeightCharacters();
  v3 = [string rangeOfCharacterFromSet:v2] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (double)su_languageAwareOutsetsAtScale:()StocksUICoreText
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4010000000;
  v13 = &unk_220932BFB;
  v4 = *(MEMORY[0x277D768C8] + 16);
  v14 = *MEMORY[0x277D768C8];
  v15 = v4;
  v5 = [self length];
  v6 = *MEMORY[0x277D740A8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__NSAttributedString_StocksUICoreText__su_languageAwareOutsetsAtScale___block_invoke;
  v9[3] = &unk_27844A4D8;
  *&v9[5] = a2;
  v9[4] = &v10;
  [self enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v9}];
  v7 = v11[4];
  _Block_object_dispose(&v10, 8);
  return v7;
}

@end