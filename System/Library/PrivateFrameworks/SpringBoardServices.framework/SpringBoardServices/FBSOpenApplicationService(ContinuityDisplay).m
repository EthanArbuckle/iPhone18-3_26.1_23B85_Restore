@interface FBSOpenApplicationService(ContinuityDisplay)
+ (id)continuityDisplayEndpoint;
+ (id)continuityDisplayService;
@end

@implementation FBSOpenApplicationService(ContinuityDisplay)

+ (id)continuityDisplayEndpoint
{
  v0 = MEMORY[0x1E698F498];
  v1 = [MEMORY[0x1E699FB78] serviceName];
  v2 = [v0 endpointForMachName:@"com.apple.frontboard.systemappservices" service:v1 instance:@"com.apple.SpringBoard.continuity-display"];

  return v2;
}

+ (id)continuityDisplayService
{
  v0 = [MEMORY[0x1E699FB78] continuityDisplayEndpoint];
  if (v0)
  {
    v1 = [MEMORY[0x1E699FB78] serviceWithEndpoint:v0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end