@interface LiblouisEmojiPrintPreprocessor
- (LiblouisEmojiPrintPreprocessor)init;
- (id)preprocessPrintString:(id)string withLocationMap:(id *)map typeformData:(id)data;
- (void)_setupLocale;
- (void)dealloc;
@end

@implementation LiblouisEmojiPrintPreprocessor

- (id)preprocessPrintString:(id)string withLocationMap:(id *)map typeformData:(id)data
{
  stringCopy = string;
  dataCopy = data;
  if (stringCopy)
  {
    v24 = dataCopy;
    v10 = [stringCopy length];
    v11 = +[NSMutableString string];
    if (map)
    {
      v12 = [NSMutableData dataWithLength:0];
    }

    else
    {
      v12 = 0;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    [stringCopy length];
    locale = self->_locale;
    v15 = stringCopy;
    v16 = v11;
    v17 = v12;
    v25 = v24;
    CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
    v18 = v27[3];
    if (v10 > v18)
    {
      v19 = v16;
      v20 = v17;
      v21 = [v15 substringWithRange:{v18, v10 - v18}];
      [v19 appendString:v21];

      do
      {
        v30 = v18;
        [v20 appendBytes:&v30 length:8];
        ++v18;
      }

      while (v10 != v18);
    }

    if (map)
    {
      v22 = v17;
      *map = v17;
    }

    v13 = v16;

    _Block_object_dispose(&v26, 8);
    dataCopy = v24;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (LiblouisEmojiPrintPreprocessor)init
{
  v6.receiver = self;
  v6.super_class = LiblouisEmojiPrintPreprocessor;
  v2 = [(LiblouisEmojiPrintPreprocessor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(LiblouisEmojiPrintPreprocessor *)v2 _setupLocale];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_setupLocale" name:kCFLocaleCurrentLocaleDidChangeNotification object:0];
  }

  return v3;
}

- (void)_setupLocale
{
  v3 = CFLocaleCopyCurrent();
  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
    self->_locale = 0;
  }

  CFLocaleGetValue(v3, kCFLocaleLanguageCode);
  self->_locale = CEMCreateEmojiLocaleData();
  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)dealloc
{
  locale = self->_locale;
  if (locale)
  {
    CFRelease(locale);
  }

  v4.receiver = self;
  v4.super_class = LiblouisEmojiPrintPreprocessor;
  [(LiblouisEmojiPrintPreprocessor *)&v4 dealloc];
}

@end