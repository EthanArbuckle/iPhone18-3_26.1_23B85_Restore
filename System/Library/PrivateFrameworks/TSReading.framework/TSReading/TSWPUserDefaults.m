@interface TSWPUserDefaults
+ (BOOL)automaticallyDetectLinks;
+ (BOOL)automaticallyDetectLists;
+ (BOOL)spellCheckingEnabled;
+ (BOOL)superscriptNumericalSuffixes;
+ (void)registerUserDefaults:(BOOL)a3;
+ (void)setAutomaticallyDetectLinks:(BOOL)a3;
+ (void)setAutomaticallyDetectLists:(BOOL)a3;
+ (void)setInvisiblesColor:(id)a3;
+ (void)setSpellCheckingEnabled:(BOOL)a3;
+ (void)setSuperscriptNumericalSuffixes:(BOOL)a3;
@end

@implementation TSWPUserDefaults

+ (BOOL)automaticallyDetectLinks
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v2 BOOLForKey:@"TWSPAutomaticallyDetectLinks"];
}

+ (BOOL)automaticallyDetectLists
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v2 BOOLForKey:@"TWSPAutomaticallyDetectLists"];
}

+ (BOOL)superscriptNumericalSuffixes
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v2 BOOLForKey:@"TWSPSuperscriptNumericalSuffixes"];
}

+ (BOOL)spellCheckingEnabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [v2 BOOLForKey:@"TSWPSpellCheckingEnabled"];
}

+ (void)setInvisiblesColor:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPUserDefaults setInvisiblesColor:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPUserDefaults.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:137 description:@"iOS does not support setting the invisibles color"];
}

+ (void)setAutomaticallyDetectLinks:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v4 setBool:v3 forKey:@"TWSPAutomaticallyDetectLinks"];
}

+ (void)setAutomaticallyDetectLists:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v4 setBool:v3 forKey:@"TWSPAutomaticallyDetectLists"];
}

+ (void)setSuperscriptNumericalSuffixes:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v4 setBool:v3 forKey:@"TWSPSuperscriptNumericalSuffixes"];
}

+ (void)setSpellCheckingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v4 setBool:v3 forKey:@"TSWPSpellCheckingEnabled"];
}

+ (void)registerUserDefaults:(BOOL)a3
{
  v3 = a3;
  if (([a1 p_UserDefaultSet:@"TWSPAutomaticallyDetectLinks" force:a3] & 1) == 0)
  {
    [a1 setAutomaticallyDetectLinks:1];
  }

  if (([a1 p_UserDefaultSet:@"TWSPAutomaticallyDetectLists" force:v3] & 1) == 0)
  {
    [a1 setAutomaticallyDetectLists:1];
  }

  if (([a1 p_UserDefaultSet:@"TWSPSuperscriptNumericalSuffixes" force:v3] & 1) == 0)
  {
    [a1 setSuperscriptNumericalSuffixes:0];
  }

  if (([a1 p_UserDefaultSet:@"TSWPSpellCheckingEnabled" force:v3] & 1) == 0)
  {
    if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
    {
      v5 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    }

    else
    {
      v5 = 1;
    }

    [a1 setSpellCheckingEnabled:v5];
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v6 synchronize];
}

@end