@interface NSString(CACHelpers)
- (id)cac_stringByCollapsingWhitespace;
- (id)cac_stringByPreparingForAX;
- (void)cac_stringByFilteringPunctuation;
@end

@implementation NSString(CACHelpers)

- (void)cac_stringByFilteringPunctuation
{
  if (cac_stringByFilteringPunctuation_onceToken != -1)
  {
    [NSString(CACHelpers) cac_stringByFilteringPunctuation];
  }

  v2 = [a1 componentsSeparatedByCharactersInSet:cac_stringByFilteringPunctuation___punctuationSet];
  v3 = [v2 componentsJoinedByString:&stru_287BD8610];

  if ([v3 length])
  {
    a1 = v3;
  }

  v4 = a1;

  return a1;
}

- (id)cac_stringByCollapsingWhitespace
{
  if (cac_stringByCollapsingWhitespace_onceToken != -1)
  {
    [NSString(CACHelpers) cac_stringByCollapsingWhitespace];
  }

  v2 = [cac_stringByCollapsingWhitespace___regex stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{objc_msgSend(a1, "length"), @" "}];
  v3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

- (id)cac_stringByPreparingForAX
{
  v2 = [a1 stringByReplacingOccurrencesOfString:@"feat." withString:@"featuring"];
  v3 = [a1 stringByReplacingOccurrencesOfString:@"" withString:@"Apple"];

  v4 = [v3 cac_stringByCollapsingWhitespace];

  v5 = [v4 cac_stringByFilteringPunctuation];

  v6 = [v5 cac_stringByCollapsingWhitespace];

  if ([v6 length])
  {
    v7 = [v6 substringWithRange:{0, 1}];
    v8 = [v7 uppercaseString];
    v9 = [v6 stringByReplacingCharactersInRange:0 withString:{1, v8}];

    v6 = v9;
  }

  return v6;
}

@end