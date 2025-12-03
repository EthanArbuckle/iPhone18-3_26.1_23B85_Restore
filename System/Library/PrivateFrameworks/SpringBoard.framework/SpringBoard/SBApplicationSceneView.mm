@interface SBApplicationSceneView
- (SBApplication)application;
- (SBApplicationSceneView)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester;
@end

@implementation SBApplicationSceneView

- (SBApplicationSceneView)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester
{
  height = size.height;
  width = size.width;
  handleCopy = handle;
  v17.receiver = self;
  v17.super_class = SBApplicationSceneView;
  height = [(SBSceneView *)&v17 initWithSceneHandle:handleCopy referenceSize:orientation contentOrientation:containerOrientation containerOrientation:requester hostRequester:width, height];
  if (height)
  {
    v15 = [handleCopy newScenePlaceholderContentContextWithActivationSettings:0];
    [(SBSceneView *)height setPlaceholderContentContext:v15];
  }

  return height;
}

- (SBApplication)application
{
  sceneHandle = [(SBSceneView *)self sceneHandle];
  application = [sceneHandle application];

  return application;
}

@end