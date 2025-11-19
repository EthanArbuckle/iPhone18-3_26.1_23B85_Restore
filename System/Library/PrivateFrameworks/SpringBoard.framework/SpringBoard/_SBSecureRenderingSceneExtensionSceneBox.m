@interface _SBSecureRenderingSceneExtensionSceneBox
+ (id)boxForFBScene:(id)a3;
- (FBScene)fbScene;
- (_SBSecureRenderingSceneExtensionSceneBox)initWithFBScene:(id)a3;
@end

@implementation _SBSecureRenderingSceneExtensionSceneBox

- (_SBSecureRenderingSceneExtensionSceneBox)initWithFBScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _SBSecureRenderingSceneExtensionSceneBox;
  v5 = [(_SBSecureRenderingSceneExtensionSceneBox *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_fbScene, v4);
  }

  return v6;
}

+ (id)boxForFBScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBScene:v4];

  return v5;
}

- (FBScene)fbScene
{
  WeakRetained = objc_loadWeakRetained(&self->_fbScene);

  return WeakRetained;
}

@end