@interface TSWPUserDefaults
+ (BOOL)automaticallyDetectLinks;
+ (BOOL)automaticallyDetectLists;
+ (BOOL)spellCheckingEnabled;
+ (BOOL)superscriptNumericalSuffixes;
+ (void)registerUserDefaults:(BOOL)defaults;
+ (void)setAutomaticallyDetectLinks:(BOOL)links;
+ (void)setAutomaticallyDetectLists:(BOOL)lists;
+ (void)setInvisiblesColor:(id)color;
+ (void)setSpellCheckingEnabled:(BOOL)enabled;
+ (void)setSuperscriptNumericalSuffixes:(BOOL)suffixes;
@end

@implementation TSWPUserDefaults

+ (BOOL)automaticallyDetectLinks
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [standardUserDefaults BOOLForKey:@"TWSPAutomaticallyDetectLinks"];
}

+ (BOOL)automaticallyDetectLists
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [standardUserDefaults BOOLForKey:@"TWSPAutomaticallyDetectLists"];
}

+ (BOOL)superscriptNumericalSuffixes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [standardUserDefaults BOOLForKey:@"TWSPSuperscriptNumericalSuffixes"];
}

+ (BOOL)spellCheckingEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [standardUserDefaults BOOLForKey:@"TSWPSpellCheckingEnabled"];
}

+ (void)setInvisiblesColor:(id)color
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPUserDefaults setInvisiblesColor:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUserDefaults.m"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:137 description:@"iOS does not support setting the invisibles color"];
}

+ (void)setAutomaticallyDetectLinks:(BOOL)links
{
  linksCopy = links;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults setBool:linksCopy forKey:@"TWSPAutomaticallyDetectLinks"];
}

+ (void)setAutomaticallyDetectLists:(BOOL)lists
{
  listsCopy = lists;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults setBool:listsCopy forKey:@"TWSPAutomaticallyDetectLists"];
}

+ (void)setSuperscriptNumericalSuffixes:(BOOL)suffixes
{
  suffixesCopy = suffixes;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults setBool:suffixesCopy forKey:@"TWSPSuperscriptNumericalSuffixes"];
}

+ (void)setSpellCheckingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults setBool:enabledCopy forKey:@"TSWPSpellCheckingEnabled"];
}

+ (void)registerUserDefaults:(BOOL)defaults
{
  defaultsCopy = defaults;
  if (([self p_UserDefaultSet:@"TWSPAutomaticallyDetectLinks" force:defaults] & 1) == 0)
  {
    [self setAutomaticallyDetectLinks:1];
  }

  if (([self p_UserDefaultSet:@"TWSPAutomaticallyDetectLists" force:defaultsCopy] & 1) == 0)
  {
    [self setAutomaticallyDetectLists:1];
  }

  if (([self p_UserDefaultSet:@"TWSPSuperscriptNumericalSuffixes" force:defaultsCopy] & 1) == 0)
  {
    [self setSuperscriptNumericalSuffixes:0];
  }

  if (([self p_UserDefaultSet:@"TSWPSpellCheckingEnabled" force:defaultsCopy] & 1) == 0)
  {
    if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
    {
      v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    }

    else
    {
      v5 = 1;
    }

    [self setSpellCheckingEnabled:v5];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults synchronize];
}

@end