@interface WFUSC2257Tag
- (WFUSC2257Tag)tagWithWebpage:(id)webpage;
@end

@implementation WFUSC2257Tag

- (WFUSC2257Tag)tagWithWebpage:(id)webpage
{
  pageContent = [webpage pageContent];
  v4 = [pageContent WF_containsWord:@"2257"];
  if ([pageContent WF_containsWord:@"U.S.C"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [pageContent WF_containsWord:@"USC"];
    if (((v5 | v4) & 1) == 0)
    {
      return 0;
    }
  }

  string = [MEMORY[0x277CCAB68] string];
  if (v4)
  {
    -[WFUSC2257Tag appendString:](string, "appendString:", [objc_opt_class() twoTwoFiveSevenTag]);
    [(WFUSC2257Tag *)string appendString:@" "];
  }

  if (v5)
  {
    -[WFUSC2257Tag appendString:](string, "appendString:", [objc_opt_class() unitedStatesCodeTag]);
    [(WFUSC2257Tag *)string appendString:@" "];
  }

  return string;
}

@end