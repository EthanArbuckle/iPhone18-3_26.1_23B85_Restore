@interface _SBSecureRenderingSceneExtensionSceneBox
+ (id)boxForFBScene:(id)scene;
- (FBScene)fbScene;
- (_SBSecureRenderingSceneExtensionSceneBox)initWithFBScene:(id)scene;
@end

@implementation _SBSecureRenderingSceneExtensionSceneBox

- (_SBSecureRenderingSceneExtensionSceneBox)initWithFBScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _SBSecureRenderingSceneExtensionSceneBox;
  v5 = [(_SBSecureRenderingSceneExtensionSceneBox *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_fbScene, sceneCopy);
  }

  return v6;
}

+ (id)boxForFBScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[self alloc] initWithFBScene:sceneCopy];

  return v5;
}

- (FBScene)fbScene
{
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);

  return WeakRetained;
}

@end