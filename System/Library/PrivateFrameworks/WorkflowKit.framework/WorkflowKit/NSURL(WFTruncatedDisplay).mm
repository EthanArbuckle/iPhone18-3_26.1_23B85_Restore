@interface NSURL(WFTruncatedDisplay)
- (id)wf_displayStringWithCharacterLimit:()WFTruncatedDisplay;
@end

@implementation NSURL(WFTruncatedDisplay)

- (id)wf_displayStringWithCharacterLimit:()WFTruncatedDisplay
{
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v6 = [v5 host];
  v7 = [v5 scheme];
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    v11 = [a1 absoluteString];
  }

  else
  {
    if ([v6 hasPrefix:@"www."])
    {
      v12 = [v6 substringFromIndex:{objc_msgSend(@"www.", "length")}];
      [v5 setHost:v12];
    }

    v13 = [v5 string];
    v14 = [v13 substringFromIndex:{objc_msgSend(v8, "length") + 1}];

    if ([v14 hasPrefix:@"//"])
    {
      v15 = [v14 substringFromIndex:2];

      v14 = v15;
    }

    if ([v14 length] > a3)
    {
      v16 = [v14 substringToIndex:a3 - 2];
      v17 = [v16 stringByAppendingString:@"…"];

      v14 = v17;
    }

    if (v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = [a1 absoluteString];
    }

    v11 = v18;
  }

  return v11;
}

@end