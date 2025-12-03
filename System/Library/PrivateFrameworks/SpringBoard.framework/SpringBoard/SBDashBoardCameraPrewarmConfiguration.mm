@interface SBDashBoardCameraPrewarmConfiguration
- (SBDashBoardCameraPrewarmConfiguration)initWithPrewarmCameraHardware:(BOOL)hardware prewarmForCaptureLaunch:(BOOL)launch backgroundLaunchTarget:(int64_t)target applicationBundleIdentifier:(id)identifier prewarmingBundleIdentifier:(id)bundleIdentifier;
@end

@implementation SBDashBoardCameraPrewarmConfiguration

- (SBDashBoardCameraPrewarmConfiguration)initWithPrewarmCameraHardware:(BOOL)hardware prewarmForCaptureLaunch:(BOOL)launch backgroundLaunchTarget:(int64_t)target applicationBundleIdentifier:(id)identifier prewarmingBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v21.receiver = self;
  v21.super_class = SBDashBoardCameraPrewarmConfiguration;
  v14 = [(SBDashBoardCameraPrewarmConfiguration *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_prewarmCameraHardware = hardware;
    v14->_prewarmForCaptureLaunch = launch;
    v14->_backgroundLaunchTarget = target;
    v16 = [identifierCopy copy];
    applicationBundleIdentifier = v15->_applicationBundleIdentifier;
    v15->_applicationBundleIdentifier = v16;

    v18 = [bundleIdentifierCopy copy];
    prewarmingBundleIdentifier = v15->_prewarmingBundleIdentifier;
    v15->_prewarmingBundleIdentifier = v18;
  }

  return v15;
}

@end