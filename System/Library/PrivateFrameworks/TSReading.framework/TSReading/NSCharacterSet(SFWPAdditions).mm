@interface NSCharacterSet(SFWPAdditions)
+ (uint64_t)allQuotesCharacterSetExcludingLeft;
+ (uint64_t)allQuotesCharacterSetExcludingRight;
+ (uint64_t)breakingSpaceCharacterSet;
+ (uint64_t)invisibleCharacterSet;
+ (uint64_t)lineBreakingCharacterSet;
+ (uint64_t)normalQuotesCharacterSet;
+ (uint64_t)smartDoubleQuotesCharacterSet;
+ (uint64_t)smartQuotesCharacterSet;
+ (uint64_t)smartSingleQuotesCharacterSet;
+ (uint64_t)spaceCharacterSet;
+ (void)postSmartSet;
+ (void)preSmartSet;
@end

@implementation NSCharacterSet(SFWPAdditions)

+ (uint64_t)breakingSpaceCharacterSet
{
  result = +[NSCharacterSet(SFWPAdditions) breakingSpaceCharacterSet]::sBreakingSpaceCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) breakingSpaceCharacterSet]::sBreakingSpaceCharacterSet)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&sBreakingSpaceCharacterArray length:15];
    +[NSCharacterSet(SFWPAdditions) breakingSpaceCharacterSet]::sBreakingSpaceCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v1];
    v2 = +[NSCharacterSet(SFWPAdditions) breakingSpaceCharacterSet]::sBreakingSpaceCharacterSet;

    return +[NSCharacterSet(SFWPAdditions) breakingSpaceCharacterSet]::sBreakingSpaceCharacterSet;
  }

  return result;
}

+ (uint64_t)invisibleCharacterSet
{
  result = +[NSCharacterSet(SFWPAdditions) invisibleCharacterSet]::sInvisibleCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) invisibleCharacterSet]::sInvisibleCharacterSet)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&sInvisibleCharacterArray length:31];
    +[NSCharacterSet(SFWPAdditions) invisibleCharacterSet]::sInvisibleCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v1];
    v2 = +[NSCharacterSet(SFWPAdditions) invisibleCharacterSet]::sInvisibleCharacterSet;

    return +[NSCharacterSet(SFWPAdditions) invisibleCharacterSet]::sInvisibleCharacterSet;
  }

  return result;
}

+ (uint64_t)spaceCharacterSet
{
  result = +[NSCharacterSet(SFWPAdditions) spaceCharacterSet]::sSpaceCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) spaceCharacterSet]::sSpaceCharacterSet)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&sSpaceCharacterArray length:19];
    +[NSCharacterSet(SFWPAdditions) spaceCharacterSet]::sSpaceCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v1];
    v2 = +[NSCharacterSet(SFWPAdditions) spaceCharacterSet]::sSpaceCharacterSet;

    return +[NSCharacterSet(SFWPAdditions) spaceCharacterSet]::sSpaceCharacterSet;
  }

  return result;
}

+ (uint64_t)normalQuotesCharacterSet
{
  result = +[NSCharacterSet(SFWPAdditions) normalQuotesCharacterSet]::sNormalQuotesCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) normalQuotesCharacterSet]::sNormalQuotesCharacterSet)
  {
    v1 = 2555938;
    result = [objc_alloc(MEMORY[0x277CCAB50]) initWithCharacters:&v1 length:2];
    +[NSCharacterSet(SFWPAdditions) normalQuotesCharacterSet]::sNormalQuotesCharacterSet = result;
  }

  return result;
}

+ (uint64_t)smartSingleQuotesCharacterSet
{
  result = +[NSCharacterSet(SFWPAdditions) smartSingleQuotesCharacterSet]::sSmartSingleQuotesCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) smartSingleQuotesCharacterSet]::sSmartSingleQuotesCharacterSet)
  {
    v1 = 538517528;
    result = [objc_alloc(MEMORY[0x277CCAB50]) initWithCharacters:&v1 length:2];
    +[NSCharacterSet(SFWPAdditions) smartSingleQuotesCharacterSet]::sSmartSingleQuotesCharacterSet = result;
  }

  return result;
}

+ (uint64_t)smartDoubleQuotesCharacterSet
{
  result = +[NSCharacterSet(SFWPAdditions) smartDoubleQuotesCharacterSet]::sSmartDoubleQuotesCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) smartDoubleQuotesCharacterSet]::sSmartDoubleQuotesCharacterSet)
  {
    v1 = 538779676;
    result = [objc_alloc(MEMORY[0x277CCAB50]) initWithCharacters:&v1 length:2];
    +[NSCharacterSet(SFWPAdditions) smartDoubleQuotesCharacterSet]::sSmartDoubleQuotesCharacterSet = result;
  }

  return result;
}

+ (uint64_t)smartQuotesCharacterSet
{
  v1[1] = *MEMORY[0x277D85DE8];
  result = +[NSCharacterSet(SFWPAdditions) smartQuotesCharacterSet]::sSmartQuotesCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) smartQuotesCharacterSet]::sSmartQuotesCharacterSet)
  {
    v1[0] = 0x201D201C20192018;
    result = [objc_alloc(MEMORY[0x277CCAB50]) initWithCharacters:v1 length:4];
    +[NSCharacterSet(SFWPAdditions) smartQuotesCharacterSet]::sSmartQuotesCharacterSet = result;
  }

  return result;
}

+ (uint64_t)allQuotesCharacterSetExcludingLeft
{
  v1[1] = *MEMORY[0x277D85DE8];
  result = +[NSCharacterSet(SFWPAdditions) allQuotesCharacterSetExcludingLeft]::sAllQuotesCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) allQuotesCharacterSetExcludingLeft]::sAllQuotesCharacterSet)
  {
    v1[0] = 0x270022201D2019;
    result = [objc_alloc(MEMORY[0x277CCAB50]) initWithCharacters:v1 length:6];
    +[NSCharacterSet(SFWPAdditions) allQuotesCharacterSetExcludingLeft]::sAllQuotesCharacterSet = result;
  }

  return result;
}

+ (uint64_t)allQuotesCharacterSetExcludingRight
{
  v1[1] = *MEMORY[0x277D85DE8];
  result = +[NSCharacterSet(SFWPAdditions) allQuotesCharacterSetExcludingRight]::sAllQuotesCharacterSet;
  if (!+[NSCharacterSet(SFWPAdditions) allQuotesCharacterSetExcludingRight]::sAllQuotesCharacterSet)
  {
    v1[0] = 0x270022201C2018;
    result = [objc_alloc(MEMORY[0x277CCAB50]) initWithCharacters:v1 length:4];
    +[NSCharacterSet(SFWPAdditions) allQuotesCharacterSetExcludingRight]::sAllQuotesCharacterSet = result;
  }

  return result;
}

+ (void)preSmartSet
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0xEFFFC00050004;
  v5 = 6;
  v0 = [MEMORY[0x277CCACA8] stringWithCharacters:&v4 length:5];
  v1 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:v0];
  [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
  [v2 formUnionWithCharacterSet:v1];
  [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "allQuotesCharacterSetExcludingRight")}];
  return v2;
}

+ (void)postSmartSet
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0xEFFFC00050004;
  v5 = 6;
  v0 = [MEMORY[0x277CCACA8] stringWithCharacters:&v4 length:5];
  v1 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:v0];
  v2 = [MEMORY[0x277CCAB50] characterSetWithCharactersInString:{@"]., ;:?'!%*-/}"}]);
  [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
  [v2 formUnionWithCharacterSet:v1];
  [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "allQuotesCharacterSetExcludingLeft")}];
  [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "punctuationCharacterSet")}];
  return v2;
}

+ (uint64_t)lineBreakingCharacterSet
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = xmmword_26CA66A4A;
  v3 = 539492356;
  v0 = [MEMORY[0x277CCACA8] stringWithCharacters:&v2 length:10];
  return [MEMORY[0x277CCA900] characterSetWithCharactersInString:v0];
}

@end