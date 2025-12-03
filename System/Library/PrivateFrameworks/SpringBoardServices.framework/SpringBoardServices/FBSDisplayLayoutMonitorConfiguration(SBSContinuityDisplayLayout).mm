@interface FBSDisplayLayoutMonitorConfiguration(SBSContinuityDisplayLayout)
+ (id)configurationForContinuityDisplay;
@end

@implementation FBSDisplayLayoutMonitorConfiguration(SBSContinuityDisplayLayout)

+ (id)configurationForContinuityDisplay
{
  v0 = MEMORY[0x1E698F498];
  defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
  serviceIdentifier = [MEMORY[0x1E699FAE0] serviceIdentifier];
  v3 = [v0 endpointForMachName:defaultShellMachName service:serviceIdentifier instance:@"com.apple.SpringBoard.continuity-display"];

  if (!v3)
  {
    v4 = MEMORY[0x1E698F498];
    serviceIdentifier2 = [MEMORY[0x1E699FAE0] serviceIdentifier];
    v3 = [v4 nullEndpointForService:serviceIdentifier2 instance:@"com.apple.SpringBoard.continuity-display"];
  }

  v6 = [MEMORY[0x1E699FAF8] configurationWithEndpoint:v3];

  return v6;
}

@end