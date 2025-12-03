@interface LLMDefaults
+ (void)setupDefaultBackendWithRemoveUserOverwrite:(BOOL)overwrite enableLogging:(BOOL)logging;
@end

@implementation LLMDefaults

+ (void)setupDefaultBackendWithRemoveUserOverwrite:(BOOL)overwrite enableLogging:(BOOL)logging
{
  loggingCopy = logging;
  overwriteCopy = overwrite;
  swift_getObjCClassMetadata();
  static LLMDefaults.setupDefaultBackend(removeUserOverwrite:enableLogging:)(overwriteCopy, loggingCopy);
}

@end