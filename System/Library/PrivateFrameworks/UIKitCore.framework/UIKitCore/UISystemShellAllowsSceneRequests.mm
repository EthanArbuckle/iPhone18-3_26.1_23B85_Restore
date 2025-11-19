@interface UISystemShellAllowsSceneRequests
@end

@implementation UISystemShellAllowsSceneRequests

void ___UISystemShellAllowsSceneRequests_block_invoke()
{
  v0 = +[_UIApplicationConfigurationLoader sharedLoader];
  v1 = [v0 applicationInitializationContext];

  byte_1EA992DCF = [v1 supportAppSceneRequests];
}

@end