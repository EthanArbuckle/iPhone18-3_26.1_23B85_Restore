@interface UIApplicationPackedMinimumDeploymentVersion
@end

@implementation UIApplicationPackedMinimumDeploymentVersion

void ___UIApplicationPackedMinimumDeploymentVersion_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKey:@"MinimumOSVersion"];

  _MergedGlobals_1389 = _UIApplicationPackedDeploymentVersionFromString(v2);
}

@end