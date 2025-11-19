@interface RMLog(assetResolverController)
+ (id)assetResolverController;
@end

@implementation RMLog(assetResolverController)

+ (id)assetResolverController
{
  if (assetResolverController_onceToken != -1)
  {
    +[RMLog(assetResolverController) assetResolverController];
  }

  v1 = assetResolverController_result;

  return v1;
}

@end