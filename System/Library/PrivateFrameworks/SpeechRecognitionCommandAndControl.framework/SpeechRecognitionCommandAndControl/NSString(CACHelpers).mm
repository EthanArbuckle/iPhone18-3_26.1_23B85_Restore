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

  v2 = [self componentsSeparatedByCharactersInSet:cac_stringByFilteringPunctuation___punctuationSet];
  v3 = [v2 componentsJoinedByString:&stru_287BD8610];

  if ([v3 length])
  {
    self = v3;
  }

  selfCopy = self;

  return self;
}

- (id)cac_stringByCollapsingWhitespace
{
  if (cac_stringByCollapsingWhitespace_onceToken != -1)
  {
    [NSString(CACHelpers) cac_stringByCollapsingWhitespace];
  }

  v2 = [cac_stringByCollapsingWhitespace___regex stringByReplacingMatchesInString:self options:0 range:0 withTemplate:{objc_msgSend(self, "length"), @" "}];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v4;
}

- (id)cac_stringByPreparingForAX
{
  v2 = [self stringByReplacingOccurrencesOfString:@"feat." withString:@"featuring"];
  v3 = [self stringByReplacingOccurrencesOfString:@"" withString:@"Apple"];

  cac_stringByCollapsingWhitespace = [v3 cac_stringByCollapsingWhitespace];

  cac_stringByFilteringPunctuation = [cac_stringByCollapsingWhitespace cac_stringByFilteringPunctuation];

  cac_stringByCollapsingWhitespace2 = [cac_stringByFilteringPunctuation cac_stringByCollapsingWhitespace];

  if ([cac_stringByCollapsingWhitespace2 length])
  {
    v7 = [cac_stringByCollapsingWhitespace2 substringWithRange:{0, 1}];
    uppercaseString = [v7 uppercaseString];
    v9 = [cac_stringByCollapsingWhitespace2 stringByReplacingCharactersInRange:0 withString:{1, uppercaseString}];

    cac_stringByCollapsingWhitespace2 = v9;
  }

  return cac_stringByCollapsingWhitespace2;
}

@end