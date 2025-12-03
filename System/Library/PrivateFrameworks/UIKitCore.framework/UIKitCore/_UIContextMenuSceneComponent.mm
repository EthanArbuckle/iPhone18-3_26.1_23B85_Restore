@interface _UIContextMenuSceneComponent
+ (id)sceneComponentForView:(id)view;
- (UIScene)_scene;
- (_UIContextMenuSceneComponent)initWithScene:(id)scene;
- (void)dismissActiveMenus;
- (void)registerPresentation:(id)presentation;
- (void)removePresentation:(id)presentation;
@end

@implementation _UIContextMenuSceneComponent

- (_UIContextMenuSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuSceneComponent.m" lineNumber:37 description:{@"Only UIWindowScene is supported by %@.", v13}];
  }

  v14.receiver = self;
  v14.super_class = _UIContextMenuSceneComponent;
  v6 = [(_UIContextMenuSceneComponent *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_scene, sceneCopy);
    v8 = [MEMORY[0x1E695DFA8] set];
    activePresentations = v7->_activePresentations;
    v7->_activePresentations = v8;
  }

  return v7;
}

- (void)registerPresentation:(id)presentation
{
  presentationCopy = presentation;
  activePresentations = [(_UIContextMenuSceneComponent *)self activePresentations];
  [activePresentations addObject:presentationCopy];
}

- (void)removePresentation:(id)presentation
{
  presentationCopy = presentation;
  activePresentations = [(_UIContextMenuSceneComponent *)self activePresentations];
  [activePresentations removeObject:presentationCopy];
}

- (void)dismissActiveMenus
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  activePresentations = [(_UIContextMenuSceneComponent *)self activePresentations];
  v3 = [activePresentations countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(activePresentations);
        }

        [*(*(&v7 + 1) + 8 * v6++) requestMenuDismissal];
      }

      while (v4 != v6);
      v4 = [activePresentations countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)sceneComponentForView:(id)view
{
  _window = [view _window];
  windowScene = [_window windowScene];
  _contextMenuSceneComponent = [windowScene _contextMenuSceneComponent];

  return _contextMenuSceneComponent;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end