@interface FBSDisplayLayoutMonitorConfiguration(SBSExternalDisplayLayout)
+ (id)configurationForExternalDisplay:()SBSExternalDisplayLayout;
@end

@implementation FBSDisplayLayoutMonitorConfiguration(SBSExternalDisplayLayout)

+ (id)configurationForExternalDisplay:()SBSExternalDisplayLayout
{
  v3 = SBSCreateLayoutServiceEndpointForExternalDisplay(a3);
  v4 = [MEMORY[0x1E699FAF8] configurationWithEndpoint:v3];

  return v4;
}

@end