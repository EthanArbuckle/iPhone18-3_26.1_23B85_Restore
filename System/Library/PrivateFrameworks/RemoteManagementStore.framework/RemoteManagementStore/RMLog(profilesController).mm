@interface RMLog(profilesController)
+ (id)profilesController;
@end

@implementation RMLog(profilesController)

+ (id)profilesController
{
  if (profilesController_onceToken != -1)
  {
    +[RMLog(profilesController) profilesController];
  }

  v1 = profilesController_result;

  return v1;
}

@end