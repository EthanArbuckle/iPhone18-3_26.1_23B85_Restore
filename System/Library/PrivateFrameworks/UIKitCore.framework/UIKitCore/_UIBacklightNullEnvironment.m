@interface _UIBacklightNullEnvironment
- (UIScene)_scene;
- (_UIBacklightNullEnvironment)initWithScene:(id)a3;
@end

@implementation _UIBacklightNullEnvironment

- (_UIBacklightNullEnvironment)initWithScene:(id)a3
{
  v5 = a3;
  v6 = [v5 _FBSScene];

  if (v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"BLSBacklightFBSSceneEnvironment+UIKit.m" lineNumber:144 description:{@"BLSNullEnvironment should only be used for scenes with nil fbsScene:%@", v5}];
  }

  v10.receiver = self;
  v10.super_class = _UIBacklightNullEnvironment;
  v7 = [(_UIBacklightNullEnvironment *)&v10 init];

  return v7;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end