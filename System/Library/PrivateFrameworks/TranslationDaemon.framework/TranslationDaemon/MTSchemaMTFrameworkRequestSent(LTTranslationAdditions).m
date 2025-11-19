@interface MTSchemaMTFrameworkRequestSent(LTTranslationAdditions)
+ (id)lt_initWithFrameworkRequestId:()LTTranslationAdditions qssSessionId:requestType:requestRoute:requestSize:;
@end

@implementation MTSchemaMTFrameworkRequestSent(LTTranslationAdditions)

+ (id)lt_initWithFrameworkRequestId:()LTTranslationAdditions qssSessionId:requestType:requestRoute:requestSize:
{
  v11 = MEMORY[0x277D58AD8];
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v11);
  [v14 setFrameworkRequestId:v13];

  [v14 setQssSessionId:v12];
  if (a5 <= 4)
  {
    [v14 setRequestType:a5];
  }

  if (a6 <= 2)
  {
    [v14 setRequestRoute:a6];
  }

  [v14 setRequestSize:a7];

  return v14;
}

@end