@interface WFJapanDatingTag
- (WFJapanDatingTag)tagWithWebpage:(id)a3;
@end

@implementation WFJapanDatingTag

- (WFJapanDatingTag)tagWithWebpage:(id)a3
{
  v3 = [a3 pageContent];
  v4 = @"18歳以上";
  v5 = off_279E7DC30;
  while (![v3 WF_containsWord:v4])
  {
    v6 = *v5++;
    v4 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  v7 = [MEMORY[0x277CCAB68] string];
  -[WFJapanDatingTag appendString:](v7, "appendString:", [objc_opt_class() japanDatingTag]);
  [(WFJapanDatingTag *)v7 appendString:@" "];
  return v7;
}

@end