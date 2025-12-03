@interface WFSlangTag
- (WFSlangTag)tagWithWebpage:(id)webpage;
@end

@implementation WFSlangTag

- (WFSlangTag)tagWithWebpage:(id)webpage
{
  v3 = [objc_msgSend(webpage "pageContent")];
  if (([v3 WF_containsWord:@"69"] & 1) == 0 && (objc_msgSend(v3, "WF_containsWord:", @"sixty nine") & 1) == 0 && !objc_msgSend(v3, "WF_containsWord:", @"sixty-nine"))
  {
    return 0;
  }

  string = [MEMORY[0x277CCAB68] string];
  -[WFSlangTag appendString:](string, "appendString:", [objc_opt_class() sixtyNineTag]);
  [(WFSlangTag *)string appendString:@" "];
  return string;
}

@end