@interface LLMDefaults
+ (void)setupDefaultBackendWithRemoveUserOverwrite:(BOOL)a3 enableLogging:(BOOL)a4;
@end

@implementation LLMDefaults

+ (void)setupDefaultBackendWithRemoveUserOverwrite:(BOOL)a3 enableLogging:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  swift_getObjCClassMetadata();
  static LLMDefaults.setupDefaultBackend(removeUserOverwrite:enableLogging:)(v5, v4);
}

@end