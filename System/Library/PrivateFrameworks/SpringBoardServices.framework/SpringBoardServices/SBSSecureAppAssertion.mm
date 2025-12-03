@interface SBSSecureAppAssertion
+ (id)acquireSecureAppAssertionWithType:(unint64_t)type errorHandler:(id)handler;
+ (id)acquireSecureAppAssertionWithType:(unint64_t)type supportedOrientations:(unint64_t)orientations errorHandler:(id)handler;
@end

@implementation SBSSecureAppAssertion

+ (id)acquireSecureAppAssertionWithType:(unint64_t)type errorHandler:(id)handler
{
  handlerCopy = handler;
  v7 = SBSIdentifierForSecureAppType(type);
  v8 = [self acquireContentProviderAssertionForType:2 slot:@"App" identifier:v7 configurationObject:0 errorHandler:handlerCopy];

  return v8;
}

+ (id)acquireSecureAppAssertionWithType:(unint64_t)type supportedOrientations:(unint64_t)orientations errorHandler:(id)handler
{
  v8 = MEMORY[0x1E695DF20];
  v9 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  v11 = [v9 numberWithUnsignedInteger:orientations];
  v12 = [v8 dictionaryWithObject:v11 forKey:@"SBSLockScreenContentActionConfigurationKeySupportedOrientations"];

  v13 = SBSIdentifierForSecureAppType(type);
  v14 = [self acquireContentProviderAssertionForType:2 slot:@"App" identifier:v13 configurationObject:v12 errorHandler:handlerCopy];

  return v14;
}

@end