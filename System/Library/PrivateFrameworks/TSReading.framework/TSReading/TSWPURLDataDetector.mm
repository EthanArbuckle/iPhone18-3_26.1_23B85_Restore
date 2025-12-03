@interface TSWPURLDataDetector
+ (_NSRange)calculateScanRangeForString:(id)string changedRange:(_NSRange)range;
+ (_NSRange)expandValidRange:(_NSRange)range inString:(id)string;
+ (id)newArrayByScanningString:(id)string scanRange:(_NSRange)range;
+ (id)newURLFromString:(id)string;
+ (id)scanString:(id)string scanRange:(_NSRange)range;
+ (void)initURLCharacterSets;
@end

@implementation TSWPURLDataDetector

+ (void)initURLCharacterSets
{
  if (!sValidURLCharacters)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
    [v2 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x277CCA900], "alphanumericCharacterSet")}];
    [v2 addCharactersInString:@";/?:@=&"];
    [v2 addCharactersInString:{@"$-_.+!*'(), "}];
    [v2 addCharactersInString:@"%~"];
    [v2 addCharactersInString:@"#"];
    sValidURLCharacters = [v2 copy];
    sInvalidURLCharacters = [sValidURLCharacters invertedSet];
  }
}

+ (_NSRange)expandValidRange:(_NSRange)range inString:(id)string
{
  length = range.length;
  location = range.location;
  [objc_opt_class() initURLCharacterSets];
  v7.location = [string rangeOfCharacterFromSet:sInvalidURLCharacters options:6 range:{0, location}];
  if (v7.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7.location = 0;
    v7.length = location;
  }

  v8.location = location;
  v8.length = length;

  v11 = NSUnionRange(v7, v8);
  v10 = v11.length;
  v9 = v11.location;
  result.length = v10;
  result.location = v9;
  return result;
}

+ (_NSRange)calculateScanRangeForString:(id)string changedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([string length] >= 3)
  {
    location = [objc_opt_class() expandValidRange:location inString:{length, string}];
    length = v7;
  }

  for (; length; --length)
  {
    v8 = [string characterAtIndex:location];
    if (([objc_msgSend(MEMORY[0x277CCA900] "whitespaceAndNewlineCharacterSet")] & 1) == 0 && (IsParagraphBreakingCharacter(v8) & 1) == 0 && !IsSpecialCharacter(v8))
    {
      break;
    }

    ++location;
  }

  v9 = location;
  v10 = length;
  result.length = v10;
  result.location = v9;
  return result;
}

+ (id)scanString:(id)string scanRange:(_NSRange)range
{
  v4 = [self newArrayByScanningString:string scanRange:{range.location, range.length}];

  return v4;
}

+ (id)newArrayByScanningString:(id)string scanRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v43 = *MEMORY[0x277D85DE8];
  v7 = [string length];
  v8 = 0;
  if (v7 >= 3 && length >= 3)
  {
    v44.length = v7;
    v44.location = 0;
    v46.location = location;
    v46.length = length;
    v39 = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [objc_msgSend(MEMORY[0x277CCA948] dataDetectorWithTypes:32 error:{&v39), "matchesInString:options:range:", string, 0, NSIntersectionRange(v44, v46).location, v44.length}];
    v9 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v8 = 0;
      v13 = *v36;
      v32 = *v36;
      while (1)
      {
        v14 = 0;
        v33 = v10;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          range = [v15 range];
          v18 = v17;
          v19 = [v15 URL];
          if (v19)
          {
            if (v12 > range || v12 + v11 < range + v18)
            {
              v21 = v19;
              v22 = [v8 count];
              if (v22)
              {
                v23 = v22;
                v24 = 0;
                v25 = 1;
                while (1)
                {
                  v26 = [v8 objectAtIndexedSubscript:v24];
                  v45.location = [objc_msgSend(v26 objectForKeyedSubscript:{kTSWPDataDetectorRangeKey), "rangeValue"}];
                  v27 = v45.length;
                  v47.location = range;
                  v47.length = v18;
                  if (NSIntersectionRange(v45, v47).length)
                  {
                    break;
                  }

                  v24 = v25;
                  if (v23 <= v25++)
                  {
                    goto LABEL_20;
                  }
                }

                if (v27 >= v18)
                {
LABEL_26:
                  v11 = v18;
                  v12 = range;
                  v13 = v32;
                  v10 = v33;
                  goto LABEL_27;
                }

                [v8 removeObjectAtIndex:v24];
              }

LABEL_20:
              v29 = [objc_msgSend(v21 "scheme")];
              if (!v29)
              {
                goto LABEL_26;
              }

              v13 = v32;
              v10 = v33;
              if (![gInvalidSchemes member:v29])
              {
                v30 = [objc_opt_class() newURLFromString:{objc_msgSend(v21, "absoluteString")}];
                if (!v8)
                {
                  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
                }

                v40[0] = kTSWPDataDetectorRangeKey;
                v41[0] = [MEMORY[0x277CCAE60] valueWithRange:{range, v18}];
                v41[1] = v30;
                v40[1] = kTSWPDataDetectorValueKey;
                v40[2] = kTSWPDataDetectorTypeKey;
                v41[2] = kURLDataDetectorType;
                [v8 addObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v41, v40, 3)}];
              }

              v11 = v18;
              v12 = range;
            }
          }

LABEL_27:
          ++v14;
        }

        while (v14 != v10);
        v10 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
        if (!v10)
        {
          goto LABEL_31;
        }
      }
    }

    v8 = 0;
  }

LABEL_31:
  [v8 sortUsingFunction:compareHyperlinkRangeValues context:0];
  return v8;
}

+ (id)newURLFromString:(id)string
{
  if (!string)
  {
    return 0;
  }

  if (![string compare:@"file://" options:1 range:{0, objc_msgSend(@"file://", "length")}])
  {
    v12 = [string substringFromIndex:{objc_msgSend(@"file://", "length")}];
    if (v12)
    {
      v13 = v12;
      if ([(__CFString *)v12 length])
      {
        v14 = CFURLCreateStringByReplacingPercentEscapes(0, v13, &stru_287D36338);
        if (v14)
        {
          v15 = v14;
          stringByExpandingTildeInPath = [(__CFString *)v14 stringByExpandingTildeInPath];
          CFRelease(v15);
          if (!stringByExpandingTildeInPath)
          {
            goto LABEL_21;
          }
        }

        else
        {
          stringByExpandingTildeInPath = [(__CFString *)v13 stringByExpandingTildeInPath];
          if (!stringByExpandingTildeInPath)
          {
            goto LABEL_21;
          }
        }

        [stringByExpandingTildeInPath length];
      }
    }

LABEL_21:

    JUMPOUT(0x26D6A7D20);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:string];
  v5 = v4;
  if (v4)
  {
    scheme = [v4 scheme];
    if (scheme)
    {
      v7 = scheme;
      lowercaseString = [scheme lowercaseString];
      if ([v7 isEqual:lowercaseString])
      {
        v9 = 0;
      }

      else
      {
        v9 = lowercaseString;
      }

      if ([(__CFString *)lowercaseString isEqualToString:@"feed"])
      {
        v9 = @"http";
      }

      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v9, objc_msgSend(string, "substringFromIndex:", objc_msgSend(v7, "length"))];

        v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
      }
    }
  }

  return v5;
}

@end