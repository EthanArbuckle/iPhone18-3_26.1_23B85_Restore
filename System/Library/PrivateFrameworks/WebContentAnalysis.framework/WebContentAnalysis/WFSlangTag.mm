@interface WFSlangTag
- (WFSlangTag)tagWithWebpage:(id)a3;
@end

@implementation WFSlangTag

- (WFSlangTag)tagWithWebpage:(id)a3
{
  v3 = [objc_msgSend(a3 "pageContent")];
  if (([v3 WF_containsWord:@"69"] & 1) == 0 && (objc_msgSend(v3, "WF_containsWord:", @"sixty nine") & 1) == 0 && !objc_msgSend(v3, "WF_containsWord:", @"sixty-nine"))
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCAB68] string];
  -[WFSlangTag appendString:](v4, "appendString:", [objc_opt_class() sixtyNineTag]);
  [(WFSlangTag *)v4 appendString:@" "];
  return v4;
}

@end