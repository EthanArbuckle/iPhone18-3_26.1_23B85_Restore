@interface _UIShareableContentSceneComponent
- (UIScene)_scene;
- (_UIShareableContentSceneComponent)initWithScene:(id)a3;
- (id)_actionRespondersForScene:(id)a3;
@end

@implementation _UIShareableContentSceneComponent

- (_UIShareableContentSceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIShareableContentSceneComponent;
  v5 = [(_UIShareableContentSceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
  }

  return v6;
}

- (id)_actionRespondersForScene:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_UIShareableContentSceneActionHandler);
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end