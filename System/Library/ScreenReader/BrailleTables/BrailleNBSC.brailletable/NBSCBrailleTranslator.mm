@interface NBSCBrailleTranslator
+ (id)sharedInstance;
- (NBSCBrailleTranslator)init;
- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges;
- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations;
@end

@implementation NBSCBrailleTranslator

+ (id)sharedInstance
{
  v2 = _sharedInstance;
  if (!_sharedInstance)
  {
    v3 = objc_alloc_init(NBSCBrailleTranslator);
    v4 = _sharedInstance;
    _sharedInstance = v3;

    v2 = _sharedInstance;
  }

  return v2;
}

- (NBSCBrailleTranslator)init
{
  v19.receiver = self;
  v19.super_class = NBSCBrailleTranslator;
  v2 = [(NBSCBrailleTranslator *)&v19 init];
  _initialized = 0;
  if (v2)
  {
    _initialized = 1;
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    resourcePath = [v3 resourcePath];
    v5 = [resourcePath stringByAppendingString:@"/"];
    uTF8String = [v5 UTF8String];

    if (Init(uTF8String))
    {
      _initialized = 0;
      v7 = NBSCLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_23478();
      }
    }

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 pathForResource:@"HanKataToZenHira" ofType:@"plist"];

    v10 = [NSDictionary dictionaryWithContentsOfFile:v9];
    hanKataToZenHira = v2->_hanKataToZenHira;
    v2->_hanKataToZenHira = v10;

    if (!v2->_hanKataToZenHira)
    {
      _initialized = 0;
      v12 = NBSCLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_234E8();
      }
    }

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 pathForResource:@"kan" ofType:@"dat"];
    uTF8String2 = [v14 UTF8String];

    if (CToText::Init(&v2->_brlToText, uTF8String2))
    {
      _initialized = 0;
      v16 = NBSCLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_2355C();
      }
    }

    if (CToText::SetConvertMode(&v2->_brlToText, 0))
    {
      _initialized = 0;
      v17 = NBSCLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_235CC();
      }
    }
  }

  return v2;
}

- (id)printBrailleForText:(id)text mode:(unint64_t)mode locations:(id *)locations textPositionsRange:(_NSRange)range textFormattingRanges:(id)ranges
{
  textCopy = text;
  rangesCopy = ranges;
  if (_initialized)
  {
    v8 = [[NSMutableData alloc] initWithCapacity:{8 * objc_msgSend(textCopy, "length")}];
    for (i = 0; i < [textCopy length]; ++i)
    {
      v32[0] = i;
      [v8 appendBytes:v32 length:8];
    }

    v22 = [[BRLTEmojiPrintPreprocessor alloc] initWithPrimaryLanguageCode:@"ja-JP"];
    v23 = objc_opt_new();
    v10 = [[NSArray alloc] initWithObjects:{v22, v23, 0, v8}];
    v25 = v8;
    v11 = textCopy;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v13)
    {
      v14 = *v29;
      v15 = v25;
      do
      {
        v16 = 0;
        v17 = v11;
        v18 = v15;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v28 + 1) + 8 * v16);
          v27 = 0;
          v11 = [v19 preprocessPrintString:v17 withLocationMap:&v27 isEightDot:1 textFormattingRanges:0];
          v20 = v27;

          v15 = [BRLTPreprocessorHelper mergeLocationMap:v18 withLocationMap:v20];

          v16 = v16 + 1;
          v17 = v11;
          v18 = v15;
        }

        while (v13 != v16);
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = v25;
    }

    if ([v11 length])
    {
      operator new[]();
    }
  }

  else
  {
    v25 = NBSCLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2363C();
    }
  }

  return &stru_2C358;
}

- (id)textForPrintBraille:(id)braille mode:(unint64_t)mode locations:(id *)locations
{
  brailleCopy = braille;
  v29 = objc_opt_new();
  for (i = 0; i < [brailleCopy length]; ++i)
  {
    LOWORD(v35[0]) = [brailleCopy characterAtIndex:i];
    v8 = [NSString stringWithCharacters:v35 length:1];
    [v29 appendString:v8];
    if (i == [brailleCopy length] - 1)
    {
      if ([&off_2C480 containsObject:v8])
      {
        [v29 appendString:@"⠀"];
      }
    }
  }

  v28 = v29;

  v32[0] = 0;
  v32[1] = v35;
  v33 = &v34;
  CToText::SetConvertMode(&self->_brlToText, 0);
  v31 = 0;
  v30 = objc_alloc_init(NSMutableString);
  v9 = [[NSMutableData alloc] initWithCapacity:{8 * objc_msgSend(v30, "length")}];
  for (j = 0; j < [v28 length]; j = ++v31)
  {
    v11 = [v28 characterAtIndex:v31];
    if (v11 == 13)
    {
      break;
    }

    if (v11 >> 8 == 40)
    {
      LOBYTE(v32[0]) = v11;
      if (!CToText::BrlToText(&self->_brlToText, v32))
      {
        if (v35[0])
        {
          v12 = 0;
          v13 = v35;
          do
          {
            v14 = &v35[v12];
            v16 = v14[1];
            v15 = v14 + 1;
            if (!v16)
            {
              goto LABEL_18;
            }

            v17 = [NSString stringWithCharacters:v13 length:1];
            v18 = [NSString stringWithCharacters:v15 length:1];
            v19 = [v17 stringByAppendingString:v18];
            v20 = [(NSDictionary *)self->_hanKataToZenHira objectForKey:v19];
            if (v20)
            {
              [v30 appendString:v20];
              [v9 appendBytes:&v31 length:8];
              v12 += 2;
            }

            if (!v20)
            {
LABEL_18:
              v21 = [NSString stringWithCharacters:&v35[v12] length:1];
              v22 = [(NSDictionary *)self->_hanKataToZenHira objectForKey:v21];
              v23 = v22;
              if (v22)
              {
                v24 = v22;

                v21 = v24;
              }

              [v30 appendString:v21];
              [v9 appendBytes:&v31 length:8];

              ++v12;
            }

            v13 = &v35[v12];
          }

          while (*v13);
        }
      }
    }
  }

  if (locations)
  {
    v25 = v9;
    *locations = v9;
  }

  return v30;
}

@end