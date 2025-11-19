@interface MTSchemaMTInvocationCancelled(LTTranslationAdditions)
+ (id)lt_initWithExists:()LTTranslationAdditions reason:qssSessionId:;
@end

@implementation MTSchemaMTInvocationCancelled(LTTranslationAdditions)

+ (id)lt_initWithExists:()LTTranslationAdditions reason:qssSessionId:
{
  v6 = MEMORY[0x277D58AE0];
  v7 = a5;
  v8 = objc_alloc_init(v6);
  [v8 setExists:a3];
  [v8 setQssSessionId:v7];

  return v8;
}

@end