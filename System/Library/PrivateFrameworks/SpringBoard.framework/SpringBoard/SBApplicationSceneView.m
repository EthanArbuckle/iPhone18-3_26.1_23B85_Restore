@interface SBApplicationSceneView
- (SBApplication)application;
- (SBApplicationSceneView)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 hostRequester:(id)a7;
@end

@implementation SBApplicationSceneView

- (SBApplicationSceneView)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 hostRequester:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v17.receiver = self;
  v17.super_class = SBApplicationSceneView;
  v14 = [(SBSceneView *)&v17 initWithSceneHandle:v13 referenceSize:a5 contentOrientation:a6 containerOrientation:a7 hostRequester:width, height];
  if (v14)
  {
    v15 = [v13 newScenePlaceholderContentContextWithActivationSettings:0];
    [(SBSceneView *)v14 setPlaceholderContentContext:v15];
  }

  return v14;
}

- (SBApplication)application
{
  v2 = [(SBSceneView *)self sceneHandle];
  v3 = [v2 application];

  return v3;
}

@end