@interface _SBDefaultSceneEntityFrameProvider
- (CGRect)sceneEntityFrameForWorkspaceEntity:(id)entity inLayoutState:(id)state;
- (SBWindowScene)windowScene;
- (_SBDefaultSceneEntityFrameProvider)initWithWindowScene:(id)scene;
@end

@implementation _SBDefaultSceneEntityFrameProvider

- (_SBDefaultSceneEntityFrameProvider)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _SBDefaultSceneEntityFrameProvider;
  v5 = [(_SBDefaultSceneEntityFrameProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
  }

  return v6;
}

- (CGRect)sceneEntityFrameForWorkspaceEntity:(id)entity inLayoutState:(id)state
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  _fbsDisplayConfiguration = [WeakRetained _fbsDisplayConfiguration];
  [_fbsDisplayConfiguration bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end