@interface MTSchemaMTInvocationStarted(LTTranslationAdditions)
+ (id)lt_initWithTask:()LTTranslationAdditions inputMode:invocationType:explicitLanguageFilterEnabled:onDevice:translateAppContext:;
@end

@implementation MTSchemaMTInvocationStarted(LTTranslationAdditions)

+ (id)lt_initWithTask:()LTTranslationAdditions inputMode:invocationType:explicitLanguageFilterEnabled:onDevice:translateAppContext:
{
  v13 = a8;
  v14 = objc_alloc_init(MEMORY[0x277D58B00]);
  [v14 setIsExplicitLanguageFilterEnabled:a6];
  [v14 setIsOnDeviceTranslation:a7];
  if (a3 <= 3)
  {
    [v14 setTask:a3];
  }

  if (a4 <= 4)
  {
    [v14 setInputSource:a4];
  }

  if (a5 <= 0x13 && ((0xF7FFFu >> a5) & 1) != 0)
  {
    [v14 setInvocationType:dword_233005BF8[a5]];
  }

  if (v13)
  {
    v15 = [MEMORY[0x277D58A70] lt_initWithTranslateAppContext:v13];
    [v14 setAppInvocationMetadata:v15];

    [v14 setIsLanguageIdentificationEnabled:{objc_msgSend(v13, "languageIdentificationEnabled")}];
  }

  return v14;
}

@end