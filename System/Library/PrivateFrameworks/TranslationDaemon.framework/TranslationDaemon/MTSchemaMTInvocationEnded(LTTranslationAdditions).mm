@interface MTSchemaMTInvocationEnded(LTTranslationAdditions)
+ (id)lt_initWithExists:()LTTranslationAdditions localePair:qssSessionId:;
@end

@implementation MTSchemaMTInvocationEnded(LTTranslationAdditions)

+ (id)lt_initWithExists:()LTTranslationAdditions localePair:qssSessionId:
{
  v7 = MEMORY[0x277D58AF0];
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(v7);
  [v10 setExists:a3];
  v11 = [MEMORY[0x277D58B30] lt_initWithLocalePair:v9];

  [v10 setLocalePair:v11];
  [v10 setQssSessionId:v8];

  return v10;
}

@end