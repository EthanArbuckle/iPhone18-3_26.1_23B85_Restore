@interface WFUSC2257Tag
- (WFUSC2257Tag)tagWithWebpage:(id)a3;
@end

@implementation WFUSC2257Tag

- (WFUSC2257Tag)tagWithWebpage:(id)a3
{
  v3 = [a3 pageContent];
  v4 = [v3 WF_containsWord:@"2257"];
  if ([v3 WF_containsWord:@"U.S.C"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v3 WF_containsWord:@"USC"];
    if (((v5 | v4) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = [MEMORY[0x277CCAB68] string];
  if (v4)
  {
    -[WFUSC2257Tag appendString:](v6, "appendString:", [objc_opt_class() twoTwoFiveSevenTag]);
    [(WFUSC2257Tag *)v6 appendString:@" "];
  }

  if (v5)
  {
    -[WFUSC2257Tag appendString:](v6, "appendString:", [objc_opt_class() unitedStatesCodeTag]);
    [(WFUSC2257Tag *)v6 appendString:@" "];
  }

  return v6;
}

@end