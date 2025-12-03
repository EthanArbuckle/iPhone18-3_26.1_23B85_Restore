@interface NSURL(WFTruncatedDisplay)
- (id)wf_displayStringWithCharacterLimit:()WFTruncatedDisplay;
@end

@implementation NSURL(WFTruncatedDisplay)

- (id)wf_displayStringWithCharacterLimit:()WFTruncatedDisplay
{
  v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:0];
  host = [v5 host];
  scheme = [v5 scheme];
  v8 = scheme;
  if (v5)
  {
    v9 = host == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || scheme == 0)
  {
    absoluteString = [self absoluteString];
  }

  else
  {
    if ([host hasPrefix:@"www."])
    {
      v12 = [host substringFromIndex:{objc_msgSend(@"www.", "length")}];
      [v5 setHost:v12];
    }

    string = [v5 string];
    v14 = [string substringFromIndex:{objc_msgSend(v8, "length") + 1}];

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
      absoluteString2 = v14;
    }

    else
    {
      absoluteString2 = [self absoluteString];
    }

    absoluteString = absoluteString2;
  }

  return absoluteString;
}

@end