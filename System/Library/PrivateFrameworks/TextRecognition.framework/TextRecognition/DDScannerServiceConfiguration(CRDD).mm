@interface DDScannerServiceConfiguration(CRDD)
+ (id)_crConfigForLocale:()CRDD;
@end

@implementation DDScannerServiceConfiguration(CRDD)

+ (id)_crConfigForLocale:()CRDD
{
  v3 = a3;
  v4 = v3;
  if (_MergedGlobals_12 == -1)
  {
    if (!v3)
    {
LABEL_4:
      languageCode = &stru_1F2BB4348;
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global_4);
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  v5 = [qword_1ED95FDD0 indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_4;
  }

  v7 = MEMORY[0x1E695DF58];
  v8 = [qword_1ED95FDD0 objectAtIndexedSubscript:v5];
  v9 = [v7 localeWithLocaleIdentifier:v8];
  languageCode = [v9 languageCode];

LABEL_6:
  v10 = qword_1ED95FDC8;
  objc_sync_enter(v10);
  v11 = [qword_1ED95FDC8 objectForKeyedSubscript:languageCode];
  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:0 passiveIntent:1];
    if ([(__CFString *)languageCode length])
    {
      [v11 setValue:languageCode forKey:@"language"];
    }

    [qword_1ED95FDC8 setObject:v11 forKeyedSubscript:languageCode];
  }

  objc_sync_exit(v10);

  return v11;
}

@end