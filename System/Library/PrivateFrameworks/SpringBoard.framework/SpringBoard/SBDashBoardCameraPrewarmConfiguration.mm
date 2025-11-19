@interface SBDashBoardCameraPrewarmConfiguration
- (SBDashBoardCameraPrewarmConfiguration)initWithPrewarmCameraHardware:(BOOL)a3 prewarmForCaptureLaunch:(BOOL)a4 backgroundLaunchTarget:(int64_t)a5 applicationBundleIdentifier:(id)a6 prewarmingBundleIdentifier:(id)a7;
@end

@implementation SBDashBoardCameraPrewarmConfiguration

- (SBDashBoardCameraPrewarmConfiguration)initWithPrewarmCameraHardware:(BOOL)a3 prewarmForCaptureLaunch:(BOOL)a4 backgroundLaunchTarget:(int64_t)a5 applicationBundleIdentifier:(id)a6 prewarmingBundleIdentifier:(id)a7
{
  v12 = a6;
  v13 = a7;
  v21.receiver = self;
  v21.super_class = SBDashBoardCameraPrewarmConfiguration;
  v14 = [(SBDashBoardCameraPrewarmConfiguration *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_prewarmCameraHardware = a3;
    v14->_prewarmForCaptureLaunch = a4;
    v14->_backgroundLaunchTarget = a5;
    v16 = [v12 copy];
    applicationBundleIdentifier = v15->_applicationBundleIdentifier;
    v15->_applicationBundleIdentifier = v16;

    v18 = [v13 copy];
    prewarmingBundleIdentifier = v15->_prewarmingBundleIdentifier;
    v15->_prewarmingBundleIdentifier = v18;
  }

  return v15;
}

@end