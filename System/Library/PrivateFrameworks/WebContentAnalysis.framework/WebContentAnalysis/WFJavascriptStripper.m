@interface WFJavascriptStripper
+ (id)getJavascriptLines:(id)a3;
+ (id)getStringsFromLine:(id)a3 withTokenCharacter:(id)a4;
+ (id)javascriptStripLine:(id)a3;
+ (id)stripJavascript:(id)a3;
@end

@implementation WFJavascriptStripper

+ (id)getStringsFromLine:(id)a3 withTokenCharacter:(id)a4
{
  v6 = objc_opt_new();
  v7 = [a3 length];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = v7;
    do
    {
      v11 = [a3 rangeOfString:a4 options:0 range:{v9, v10}];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v13 = v11;
      v14 = v11 + v12;
      v15 = [a3 rangeOfString:a4 options:0 range:{v11 + v12, v8 - (v11 + v12)}];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      [v6 appendFormat:@"%@, ", objc_msgSend(a3, "substringWithRange:", v14, v15 - (v16 + v13))];
      v9 = v17 + v18;
      v10 = v8 - (v17 + v18);
    }

    while (v8 != v17 + v18);
  }

  return v6;
}

+ (id)javascriptStripLine:(id)a3
{
  v5 = [a1 getStringsFromLine:a3 withTokenCharacter:@""];
  v6 = [a1 getStringsFromLine:a3 withTokenCharacter:@"'"];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, v6];
}

+ (id)getJavascriptLines:(id)a3
{
  v4 = objc_opt_new();
  v5 = [a3 componentsSeparatedByString:@";"];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      [v4 addObjectsFromArray:{objc_msgSend(objc_msgSend(v5, "objectAtIndex:", i), "componentsSeparatedByString:", @"\n"}];
    }
  }

  return v4;
}

+ (id)stripJavascript:(id)a3
{
  v5 = objc_opt_new();
  v6 = [a1 getJavascriptLines:{+[WFPostprocessor lightweightStripHTMLTags:](WFPostprocessor, "lightweightStripHTMLTags:", a3)}];
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [a1 javascriptStripLine:{objc_msgSend(v6, "objectAtIndex:", v7)}];
      if ([v8 length])
      {
        [v5 appendString:v8];
        [v5 appendString:@"\n"];
      }

      ++v7;
    }

    while ([v6 count] > v7);
  }

  return v5;
}

@end