@interface DBTSSepratedBySpacesPreprocessor
- (DBTSSepratedBySpacesPreprocessor)init;
- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges;
- (void)dealloc;
@end

@implementation DBTSSepratedBySpacesPreprocessor

- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges
{
  stringCopy = string;
  v9 = stringCopy;
  if (stringCopy)
  {
    v10 = [(__CFString *)stringCopy length];
    v11 = +[NSMutableString string];
    if (map)
    {
      v12 = [NSMutableData dataWithLength:0];
    }

    else
    {
      v12 = 0;
    }

    mapCopy = map;
    v34 = v12;
    tokenizerUnit = [(DBTSSepratedBySpacesPreprocessor *)self tokenizerUnit];
    v37.location = 0;
    v32 = v10;
    v37.length = v10;
    v14 = CFStringTokenizerCreate(0, v9, v37, tokenizerUnit, self->_locale);
    if (CFStringTokenizerAdvanceToNextToken(v14))
    {
      do
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v14);
        location = CurrentTokenRange.location;
        length = CurrentTokenRange.length;
        v18 = CurrentTokenRange.location + CurrentTokenRange.length;
        v19 = [(__CFString *)v9 substringFromIndex:CurrentTokenRange.location + CurrentTokenRange.length];
        v20 = v11;
        v21 = v11;
        v22 = v34;
        v23 = [(__CFString *)v9 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
        [v21 appendString:v23];

        if (CurrentTokenRange.length)
        {
          do
          {
            v35 = location;
            [v22 appendBytes:&v35 length:{8, v32}];
            ++location;
            --length;
          }

          while (length);
        }

        if ([v19 length])
        {
          v24 = [v19 substringToIndex:1];
          v25 = [v24 isEqualToString:@" "];

          if ((v25 & 1) == 0)
          {
            [v21 appendString:@" "];
            v35 = CurrentTokenRange.location + CurrentTokenRange.length;
            [v22 appendBytes:&v35 length:8];
          }
        }

        v11 = v20;
      }

      while (CFStringTokenizerAdvanceToNextToken(v14));
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v14);
    v26 = v32;
    if (v32 > v18)
    {
      v27 = v11;
      v28 = v34;
      v29 = [(__CFString *)v9 substringWithRange:v18, &v32[-v18]];
      [v27 appendString:v29];

      do
      {
        v35 = v18;
        [v28 appendBytes:&v35 length:{8, v32}];
        ++v18;
      }

      while (v26 != v18);
    }

    if (mapCopy)
    {
      v30 = v34;
      *mapCopy = v34;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (DBTSSepratedBySpacesPreprocessor)init
{
  v4.receiver = self;
  v4.super_class = DBTSSepratedBySpacesPreprocessor;
  v2 = [(DBTSSepratedBySpacesPreprocessor *)&v4 init];
  if (v2)
  {
    v2->_locale = CFLocaleCopyCurrent();
    v2->_tokenizerUnit = 1;
  }

  return v2;
}

- (void)dealloc
{
  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
  }

  v4.receiver = self;
  v4.super_class = DBTSSepratedBySpacesPreprocessor;
  [(DBTSSepratedBySpacesPreprocessor *)&v4 dealloc];
}

@end