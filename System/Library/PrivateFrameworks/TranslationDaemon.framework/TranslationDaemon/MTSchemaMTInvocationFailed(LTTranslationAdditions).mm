@interface MTSchemaMTInvocationFailed(LTTranslationAdditions)
+ (id)lt_initWithWithError:()LTTranslationAdditions localePair:qssSessionId:;
@end

@implementation MTSchemaMTInvocationFailed(LTTranslationAdditions)

+ (id)lt_initWithWithError:()LTTranslationAdditions localePair:qssSessionId:
{
  v7 = MEMORY[0x277D58AC8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  v12 = [v10 domain];
  [v11 setErrorDomain:v12];

  v13 = [v10 code];
  [v11 setErrorCode:v13];
  v14 = objc_alloc_init(MEMORY[0x277D58AF8]);
  [v14 setError:v11];
  [v14 setQssSessionId:v8];

  v15 = [MEMORY[0x277D58B30] lt_initWithLocalePair:v9];

  [v14 setLocalePair:v15];

  return v14;
}

@end