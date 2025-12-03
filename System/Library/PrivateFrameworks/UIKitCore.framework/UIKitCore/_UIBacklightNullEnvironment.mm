@interface _UIBacklightNullEnvironment
- (UIScene)_scene;
- (_UIBacklightNullEnvironment)initWithScene:(id)scene;
@end

@implementation _UIBacklightNullEnvironment

- (_UIBacklightNullEnvironment)initWithScene:(id)scene
{
  sceneCopy = scene;
  _FBSScene = [sceneCopy _FBSScene];

  if (_FBSScene)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BLSBacklightFBSSceneEnvironment+UIKit.m" lineNumber:144 description:{@"BLSNullEnvironment should only be used for scenes with nil fbsScene:%@", sceneCopy}];
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