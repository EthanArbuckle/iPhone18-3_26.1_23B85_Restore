@interface DBTSSeparatedByBunSetsuPreprocessor
- (DBTSSeparatedByBunSetsuPreprocessor)init;
- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges;
- (void)dealloc;
@end

@implementation DBTSSeparatedByBunSetsuPreprocessor

- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges
{
  stringCopy = string;
  rangesCopy = ranges;
  if (!stringCopy)
  {
    v12 = 0;
    goto LABEL_49;
  }

  v61 = rangesCopy;
  v11 = [(__CFString *)stringCopy length];
  v12 = +[NSMutableString string];
  if (map)
  {
    v13 = [NSMutableData dataWithLength:0];
  }

  else
  {
    v13 = 0;
  }

  v72.location = 0;
  v72.length = v11;
  tokenizer = CFStringTokenizerCreate(0, stringCopy, v72, 4uLL, self->_locale);
  v65 = stringCopy;
  mapCopy = map;
  if (!CFStringTokenizerAdvanceToNextToken(tokenizer))
  {
    v49 = 0;
    v30 = &stru_34B00;
    v14 = &stru_34B00;
    goto LABEL_42;
  }

  v59 = v11;
  v62 = v13;
  v63 = v12;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v14 = &stru_34B00;
  v67 = &stru_34B00;
  while (1)
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
    v16 = [(__CFString *)v65 substringFromIndex:?];
    CurrentTokenPartOfSpeech = _CFStringTokenizerGetCurrentTokenPartOfSpeech();
    v18 = [NSNumber numberWithInt:CurrentTokenPartOfSpeech];
    v19 = [&off_353F8 containsObject:v18];

    v20 = [NSNumber numberWithInt:CurrentTokenPartOfSpeech];
    v21 = [&off_35410 containsObject:v20];

    v22 = [NSNumber numberWithInt:CurrentTokenPartOfSpeech];
    v23 = [&off_35428 containsObject:v22];

    v24 = [(__CFString *)v65 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
    v25 = [v24 isEqualToString:@"。"];
    v26 = v19 | v21;
    if (v69)
    {
      v26 = v25 | v23;
    }

    if (v26)
    {
      v27 = [(__CFString *)v14 stringByAppendingString:v24];

      v69 |= v21;
      v14 = v27;
      v28 = v16;
      v30 = v67;
      v29 = v68;
    }

    else
    {
      if ([(__CFString *)v14 hasSuffix:@"。"])
      {
        v31 = [(__CFString *)v14 stringByAppendingString:@" "];

        v14 = v31;
      }

      v28 = v16;
      v32 = v67;
      v29 = v68;
      if ([(__CFString *)v67 length])
      {
        v33 = [(__CFString *)v67 stringByAppendingString:@" "];

        v32 = v33;
      }

      if ([(__CFString *)v14 length])
      {
        v64 = 1;
      }

      else
      {
        v34 = [(__CFString *)v65 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];

        v14 = v34;
      }

      v35 = [v32 stringByAppendingString:v14];

      v69 = 0;
      v30 = v35;
      v14 = &stru_34B00;
    }

    if ([(__CFString *)v30 length])
    {
      v36 = [(__CFString *)v30 length];
      v37 = v63;
      v38 = v62;
      v39 = [(__CFString *)v30 substringWithRange:0, v36];
      [v37 appendString:v39];

      if (v36)
      {
        v40 = v29;
        do
        {
          v70 = v40;
          [v38 appendBytes:&v70 length:8];
          ++v40;
          --v36;
        }

        while (v36);
      }

      if ([v28 length])
      {
        v41 = [v28 substringToIndex:1];
        v42 = [v41 isEqualToString:@" "];

        if ((v42 & 1) == 0)
        {
          [v37 appendString:@" "];
          v70 = &v29[[(__CFString *)v30 length]];
          [v38 appendBytes:&v70 length:8];
        }
      }

      v29 = &v29[[(__CFString *)v30 length]];

      if (v64)
      {
        v64 = 0;
        v30 = &stru_34B00;
        goto LABEL_31;
      }

      v30 = &stru_34B00;
    }

    if (!CFStringTokenizerAdvanceToNextToken(tokenizer))
    {
      break;
    }

LABEL_31:
    v67 = v30;
    v68 = v29;
  }

  if ([(__CFString *)v14 length])
  {
    v43 = [(__CFString *)v14 length];
    v44 = v63;
    v45 = v62;
    v46 = [(__CFString *)v14 substringWithRange:0, v43];
    [v44 appendString:v46];

    for (; v43; --v43)
    {
      v70 = v29;
      [v45 appendBytes:&v70 length:8];
      ++v29;
    }

    if ([v28 length] && (objc_msgSend(v28, "substringToIndex:", 1), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "isEqualToString:", @" "), v47, (v48 & 1) == 0))
    {
      [v44 appendString:@" "];
      v49 = CurrentTokenRange.location + CurrentTokenRange.length;
      v70 = (CurrentTokenRange.location + CurrentTokenRange.length);
      [v45 appendBytes:&v70 length:8];
    }

    else
    {
      v49 = CurrentTokenRange.location + CurrentTokenRange.length;
    }
  }

  else
  {
    v49 = v29;
  }

  v13 = v62;
  v12 = v63;
  v11 = v59;
LABEL_42:
  v50 = &v11[-v49];
  if (v11 > v49)
  {
    v51 = v12;
    v52 = v11;
    v53 = v13;
    [(__CFString *)v65 substringWithRange:v49, v50];
    v55 = v54 = v49;
    [v51 appendString:v55];

    v56 = v54;
    do
    {
      v70 = v56;
      [v53 appendBytes:&v70 length:8];
      ++v56;
    }

    while (v52 != v56);
  }

  CFRelease(tokenizer);
  if (mapCopy)
  {
    v57 = v13;
    *mapCopy = v13;
  }

  stringCopy = v65;
  rangesCopy = v61;
LABEL_49:

  return v12;
}

- (DBTSSeparatedByBunSetsuPreprocessor)init
{
  v4.receiver = self;
  v4.super_class = DBTSSeparatedByBunSetsuPreprocessor;
  v2 = [(DBTSSeparatedByBunSetsuPreprocessor *)&v4 init];
  if (v2)
  {
    v2->_locale = CFLocaleCopyCurrent();
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
  v4.super_class = DBTSSeparatedByBunSetsuPreprocessor;
  [(DBTSSeparatedByBunSetsuPreprocessor *)&v4 dealloc];
}

@end