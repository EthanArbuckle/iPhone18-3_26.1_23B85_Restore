@interface DBTComposedCharactersPreprocessor
- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges;
@end

@implementation DBTComposedCharactersPreprocessor

- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges
{
  stringCopy = string;
  v8 = stringCopy;
  if (!stringCopy)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v9 = [(__CFString *)stringCopy length];
  v10 = +[NSMutableString string];
  if (map)
  {
    v11 = [NSMutableData dataWithLength:0];
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_7:
    v12 = 0;
    do
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v8, v12);
      if (RangeOfComposedCharactersAtIndex.length > 1)
      {
        v15 = [(__CFString *)v8 substringWithRange:RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length];
        v16 = [v15 mutableCopyWithZone:0];
        CFStringNormalize(v16, kCFStringNormalizationFormC);
        if ([(__CFString *)v16 length]== &dword_0 + 1)
        {
          [v10 appendString:v16];
          v20 = v12;
          [v11 appendBytes:&v20 length:8];
        }

        else
        {
          [v10 appendString:v15];
          if ([v15 length])
          {
            v17 = 0;
            do
            {
              v20 = v12 + v17;
              [v11 appendBytes:&v20 length:8];
              ++v17;
            }

            while (v17 < [v15 length]);
          }
        }

        v12 += RangeOfComposedCharactersAtIndex.length;
      }

      else
      {
        v14 = [(__CFString *)v8 substringWithRange:v12, 1];
        [v10 appendString:v14];

        v20 = v12;
        [v11 appendBytes:&v20 length:8];
        ++v12;
      }
    }

    while (v12 < v9);
    goto LABEL_17;
  }

  v11 = 0;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_17:
  if (map)
  {
    v18 = v11;
    *map = v11;
  }

LABEL_20:

  return v10;
}

@end