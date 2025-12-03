@interface WFJavascriptStripper
+ (id)getJavascriptLines:(id)lines;
+ (id)getStringsFromLine:(id)line withTokenCharacter:(id)character;
+ (id)javascriptStripLine:(id)line;
+ (id)stripJavascript:(id)javascript;
@end

@implementation WFJavascriptStripper

+ (id)getStringsFromLine:(id)line withTokenCharacter:(id)character
{
  v6 = objc_opt_new();
  v7 = [line length];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = v7;
    do
    {
      v11 = [line rangeOfString:character options:0 range:{v9, v10}];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v13 = v11;
      v14 = v11 + v12;
      v15 = [line rangeOfString:character options:0 range:{v11 + v12, v8 - (v11 + v12)}];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      [v6 appendFormat:@"%@, ", objc_msgSend(line, "substringWithRange:", v14, v15 - (v16 + v13))];
      v9 = v17 + v18;
      v10 = v8 - (v17 + v18);
    }

    while (v8 != v17 + v18);
  }

  return v6;
}

+ (id)javascriptStripLine:(id)line
{
  v5 = [self getStringsFromLine:line withTokenCharacter:@""];
  v6 = [self getStringsFromLine:line withTokenCharacter:@"'"];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, v6];
}

+ (id)getJavascriptLines:(id)lines
{
  v4 = objc_opt_new();
  v5 = [lines componentsSeparatedByString:@";"];
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

+ (id)stripJavascript:(id)javascript
{
  v5 = objc_opt_new();
  v6 = [self getJavascriptLines:{+[WFPostprocessor lightweightStripHTMLTags:](WFPostprocessor, "lightweightStripHTMLTags:", javascript)}];
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [self javascriptStripLine:{objc_msgSend(v6, "objectAtIndex:", v7)}];
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