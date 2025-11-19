@interface SASUIProximityCloudPlayerItem
+ (id)configuredPlayerForLightMode:(BOOL)a3;
@end

@implementation SASUIProximityCloudPlayerItem

+ (id)configuredPlayerForLightMode:(BOOL)a3
{
  v3 = @"ProximityPairingLoopDark";
  if (a3)
  {
    v3 = @"ProximityPairingLoop";
  }

  v4 = MEMORY[0x277CCA8D8];
  v5 = v3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:v5 withExtension:@"mov" subdirectory:0];

  v8 = [[SASUIProximityCloudPlayerItem alloc] initWithURL:v7];

  return v8;
}

@end