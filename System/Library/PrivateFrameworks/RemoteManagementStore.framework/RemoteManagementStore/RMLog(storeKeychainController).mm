@interface RMLog(storeKeychainController)
+ (id)storeKeychainController;
@end

@implementation RMLog(storeKeychainController)

+ (id)storeKeychainController
{
  if (storeKeychainController_onceToken != -1)
  {
    +[RMLog(storeKeychainController) storeKeychainController];
  }

  v1 = storeKeychainController_result;

  return v1;
}

@end