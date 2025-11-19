@interface MTSchemaMTInvocationStartedTier1(LTTranslationAdditions)
+ (id)lt_initWithLinkId:()LTTranslationAdditions appBundleId:;
@end

@implementation MTSchemaMTInvocationStartedTier1(LTTranslationAdditions)

+ (id)lt_initWithLinkId:()LTTranslationAdditions appBundleId:
{
  v5 = MEMORY[0x277D58B08];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setLinkId:v7];

  [v8 setAppBundleId:v6];

  return v8;
}

@end