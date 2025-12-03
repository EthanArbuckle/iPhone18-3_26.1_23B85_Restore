@interface MTSchemaMTLocalePair(LTTranslationAdditions)
+ (id)lt_initWithLocalePair:()LTTranslationAdditions;
@end

@implementation MTSchemaMTLocalePair(LTTranslationAdditions)

+ (id)lt_initWithLocalePair:()LTTranslationAdditions
{
  v3 = MEMORY[0x277D58B30];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  sourceLocale = [v4 sourceLocale];
  [v5 setSourceLocale:convertFromNSLocale(sourceLocale)];

  targetLocale = [v4 targetLocale];

  [v5 setTargetLocale:convertFromNSLocale(targetLocale)];

  return v5;
}

@end