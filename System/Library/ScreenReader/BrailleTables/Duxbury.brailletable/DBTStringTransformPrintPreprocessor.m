@interface DBTStringTransformPrintPreprocessor
- (DBTStringTransformPrintPreprocessor)init;
- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6;
- (void)dealloc;
@end

@implementation DBTStringTransformPrintPreprocessor

- (id)preprocessPrintString:(id)a3 withLocationMap:(id *)a4 isEightDot:(BOOL)a5 textFormattingRanges:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_40;
  }

  v39 = v10;
  v56.length = [(__CFString *)v9 length];
  v56.location = 0;
  length = v56.length;
  v11 = CFStringTokenizerCreate(0, v9, v56, 0x10000uLL, self->_locale);
  v43 = +[NSMutableString string];
  v38 = a4;
  if (a4)
  {
    v42 = [NSMutableData dataWithLength:0];
  }

  else
  {
    v42 = 0;
  }

  v44 = v9;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  tokenizer = v11;
  while (CFStringTokenizerAdvanceToNextToken(v11))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v11);
    location = CurrentTokenRange.location;
    v15 = v52[3];
    if (CurrentTokenRange.location > v15)
    {
      v16 = CurrentTokenRange.location - v15;
      v17 = v43;
      v18 = v42;
      v19 = [(__CFString *)v44 substringWithRange:v15, CurrentTokenRange.location - v15];
      [v17 appendString:v19];

      do
      {
        *&v46 = v15;
        [v18 appendBytes:&v46 length:{8, v38}];
        ++v15;
      }

      while (CurrentTokenRange.location != v15);

      v52[3] += v16;
    }

    v20 = [(__CFString *)v44 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length, v38];
    v21 = [v20 length];
    if (!v21)
    {

LABEL_19:
      if (CFEqual([(DBTStringTransformPrintPreprocessor *)self stringTransform], kCFStringTransformLatinHiragana))
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    v22 = 0;
    v23 = 1;
    do
    {
      if ((([v20 characterAtIndex:v22] + 24624) >> 4) >= 0xAE3u)
      {
        break;
      }

      v23 = ++v22 < v21;
    }

    while (v21 != v22);

    if (!v23)
    {
      goto LABEL_19;
    }

LABEL_20:
    v24 = CFStringTokenizerCopyCurrentTokenAttribute(tokenizer, 0x10000uLL);
    if ([v24 length])
    {
      v25 = [NSMutableString stringWithString:v24];
      CFStringTransform(v25, 0, [(DBTStringTransformPrintPreprocessor *)self stringTransform], 0);
      v41 = v25;
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = __109__DBTStringTransformPrintPreprocessor_preprocessPrintString_withLocationMap_isEightDot_textFormattingRanges___block_invoke;
      v47[3] = &unk_34660;
      v48 = v43;
      v50 = &v51;
      v49 = v42;
      v26 = objc_retainBlock(v47);
      v27 = [(DBTStringTransformPrintPreprocessor *)self characterLevelStringTransform];

      if (v27)
      {
        for (i = 0; [v20 length] > i; ++i)
        {
          v29 = [v20 mutableCopy];
          v46 = xmmword_2D160;
          v30 = [(DBTStringTransformPrintPreprocessor *)self characterLevelStringTransform];
          [v29 applyTransform:v30 reverse:0 range:i updatedRange:{1, &v46}];

          if (v46 == 0x7FFFFFFFFFFFFFFFLL)
          {

            break;
          }

          v31 = [v29 substringWithRange:v46];
          (v26[2])(v26, v31, location, 1);

          ++location;
        }
      }

      else
      {
        (v26[2])(v26, v41, CurrentTokenRange.location, CurrentTokenRange.length);
      }
    }

LABEL_30:
    v11 = tokenizer;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v32 = v52[3];
  if (length > v32)
  {
    v33 = v43;
    v34 = v42;
    v35 = [(__CFString *)v44 substringWithRange:v32, length - v32];
    [v33 appendString:v35];

    do
    {
      *&v46 = v32;
      [v34 appendBytes:&v46 length:{8, v38}];
      ++v32;
    }

    while (length != v32);
  }

  v12 = v43;
  if (v38)
  {
    v36 = v42;
    *v38 = v42;
  }

  _Block_object_dispose(&v51, 8);

  v9 = v44;
  v10 = v39;
LABEL_40:

  return v12;
}

void __109__DBTStringTransformPrintPreprocessor_preprocessPrintString_withLocationMap_isEightDot_textFormattingRanges___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 length];
  if (v7)
  {
    v8 = v7;
    [*(a1 + 32) appendString:v6];
    do
    {
      v9 = *(a1 + 40);
      v10 = *(*(*(a1 + 48) + 8) + 24);
      [v9 appendBytes:&v10 length:8];
      --v8;
    }

    while (v8);
    *(*(*(a1 + 48) + 8) + 24) += a4;
  }
}

- (DBTStringTransformPrintPreprocessor)init
{
  v4.receiver = self;
  v4.super_class = DBTStringTransformPrintPreprocessor;
  v2 = [(DBTStringTransformPrintPreprocessor *)&v4 init];
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
  v4.super_class = DBTStringTransformPrintPreprocessor;
  [(DBTStringTransformPrintPreprocessor *)&v4 dealloc];
}

@end