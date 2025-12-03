@interface VTUISELFLogger
+ (id)SISchemaLocaleToSISchemaISOLocale:(int)locale;
+ (int)getSiriSetupUIEnrollmentMode:(int64_t)mode;
@end

@implementation VTUISELFLogger

+ (id)SISchemaLocaleToSISchemaISOLocale:(int)locale
{
  v4 = objc_alloc_init(MEMORY[0x277D5A900]);
  v5 = v4;
  if (locale <= 0x3E)
  {
    v6 = dword_272933E00[locale];
    v7 = dword_272933EFC[locale];
    [v4 setCountryCode:v6];
    [v5 setLanguageCode:v7];
  }

  return v5;
}

+ (int)getSiriSetupUIEnrollmentMode:(int64_t)mode
{
  if (mode < 7)
  {
    return mode + 1;
  }

  else
  {
    return 0;
  }
}

@end