@interface MTSchemaMTAppNextButtonTappedTier1(LTTranslationAdditions)
+ (id)lt_initWithPayload:()LTTranslationAdditions localePair:;
@end

@implementation MTSchemaMTAppNextButtonTappedTier1(LTTranslationAdditions)

+ (id)lt_initWithPayload:()LTTranslationAdditions localePair:
{
  v5 = MEMORY[0x277D58A78];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setTranslationPayload:v7];

  v9 = [MEMORY[0x277D58B30] lt_initWithLocalePair:v6];

  [v8 setLocalePair:v9];

  return v8;
}

@end