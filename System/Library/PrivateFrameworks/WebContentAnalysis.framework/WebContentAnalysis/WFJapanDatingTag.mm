@interface WFJapanDatingTag
- (WFJapanDatingTag)tagWithWebpage:(id)webpage;
@end

@implementation WFJapanDatingTag

- (WFJapanDatingTag)tagWithWebpage:(id)webpage
{
  pageContent = [webpage pageContent];
  v4 = @"18歳以上";
  v5 = off_279E7DC30;
  while (![pageContent WF_containsWord:v4])
  {
    v6 = *v5++;
    v4 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  string = [MEMORY[0x277CCAB68] string];
  -[WFJapanDatingTag appendString:](string, "appendString:", [objc_opt_class() japanDatingTag]);
  [(WFJapanDatingTag *)string appendString:@" "];
  return string;
}

@end