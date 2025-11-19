@interface MTSchemaMTClientEventMetadata(LTTranslationAdditions)
+ (id)lt_initWithMtId:()LTTranslationAdditions sessionId:;
@end

@implementation MTSchemaMTClientEventMetadata(LTTranslationAdditions)

+ (id)lt_initWithMtId:()LTTranslationAdditions sessionId:
{
  v5 = MEMORY[0x277D58AB8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setMtId:v7];

  [v8 setSessionId:v6];

  return v8;
}

@end