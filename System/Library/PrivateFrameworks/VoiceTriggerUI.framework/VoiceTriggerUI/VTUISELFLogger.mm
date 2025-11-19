@interface VTUISELFLogger
+ (id)SISchemaLocaleToSISchemaISOLocale:(int)a3;
+ (int)getSiriSetupUIEnrollmentMode:(int64_t)a3;
@end

@implementation VTUISELFLogger

+ (id)SISchemaLocaleToSISchemaISOLocale:(int)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D5A900]);
  v5 = v4;
  if (a3 <= 0x3E)
  {
    v6 = dword_272933E00[a3];
    v7 = dword_272933EFC[a3];
    [v4 setCountryCode:v6];
    [v5 setLanguageCode:v7];
  }

  return v5;
}

+ (int)getSiriSetupUIEnrollmentMode:(int64_t)a3
{
  if (a3 < 7)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

@end