@interface WFPostprocessor
+ (_NSRange)rangeOfFirstHTMLTag:(id)tag searchRange:(_NSRange)range;
+ (id)adultWebSiteTagging:(id)tagging;
+ (id)lightweightStripHTMLTags:(id)tags;
+ (id)lightweightStripHTMLTagsForLine:(id)line;
+ (id)normalizeStrippedHTML:(id)l;
+ (id)postprocessPlainTextWebPage:(id)page;
@end

@implementation WFPostprocessor

+ (_NSRange)rangeOfFirstHTMLTag:(id)tag searchRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [tag length];
  v8 = [tag rangeOfString:@"<" options:0 range:{location, length}];
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v8;
    v12 = [tag rangeOfString:@">" options:0 range:{v8 + v9, v7 - (v8 + v9)}];
    v14 = v12 - v11;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    v9 = v14 + v13;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v11;
    }
  }

  v15 = v10;
  result.length = v9;
  result.location = v15;
  return result;
}

+ (id)postprocessPlainTextWebPage:(id)page
{
  v3 = [WFPostprocessor normalizeStrippedHTML:[WFPostprocessor lightweightStripHTMLTags:page]];
  v4 = [v3 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "punctuationCharacterSet")}];

  return [v4 componentsJoinedByString:&stru_28826CB10];
}

+ (id)lightweightStripHTMLTagsForLine:(id)line
{
  v5 = objc_opt_new();
  v6 = [line length];
  if (v6 >= 2)
  {
    v7 = v6;
    v8 = 0;
    v9 = v6;
    while (1)
    {
      v10 = [self rangeOfFirstHTMLTag:line searchRange:{v8, v9}];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v12 = v10;
      v13 = v11;
      [v5 appendString:{objc_msgSend(line, "substringWithRange:", v8, v10 - v8)}];
      [v5 appendString:@" "];
      v8 = v12 + v13;
      v9 = v7 - (v12 + v13);
      if (v9 <= 1)
      {
        goto LABEL_7;
      }
    }

    [v5 appendString:{objc_msgSend(line, "substringWithRange:", v8, v9)}];
  }

LABEL_7:

  return v5;
}

+ (id)lightweightStripHTMLTags:(id)tags
{
  v5 = objc_opt_new();
  v6 = [tags componentsSeparatedByString:@"\n"];
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      [v5 appendString:{objc_msgSend(self, "lightweightStripHTMLTagsForLine:", objc_msgSend(v6, "objectAtIndex:", i))}];
      [v5 appendString:@"\n"];
    }
  }

  return v5;
}

+ (id)normalizeStrippedHTML:(id)l
{
  v3 = [objc_msgSend(objc_msgSend(l WF_stringByReplacingString:@"_" withString:{@" ", "WF_stringByReplacingString:withString:", @"-", @" ", "WF_stringByReplacingString:withString:", @"<", @" "}];

  return [v3 WF_stringByReplacingString:@">" withString:@" "];
}

+ (id)adultWebSiteTagging:(id)tagging
{
  v3 = [objc_msgSend(objc_msgSend(tagging WF_stringByReplacingString:@"2257" withString:{@"TwoTwoFiveSeven (2257)", "WF_stringByReplacingString:withString:", @"U.S.C", @"UnitedStatesCode(U S C)", "WF_stringByReplacingString:withString:", @"USC", @"UnitedStatesCode (U S C)"}];

  return [v3 WF_stringByReplacingString:@"18" withString:@"OneEight"];
}

@end