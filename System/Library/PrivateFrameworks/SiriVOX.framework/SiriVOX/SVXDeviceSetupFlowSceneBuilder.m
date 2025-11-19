@interface SVXDeviceSetupFlowSceneBuilder
- (id)build;
@end

@implementation SVXDeviceSetupFlowSceneBuilder

- (id)build
{
  v2 = [[SVXDeviceSetupFlowScene alloc] initWithSceneID:self->_sceneID displayKeyFrames:0];

  return v2;
}

@end