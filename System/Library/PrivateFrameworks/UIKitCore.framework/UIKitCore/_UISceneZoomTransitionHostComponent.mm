@interface _UISceneZoomTransitionHostComponent
- (NSString)debugDescription;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)succinctDescription;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)appendDescriptionToStream:(id)stream;
- (void)setViewController:(uint64_t)controller;
- (void)updateAncestorZoomTransitionController;
@end

@implementation _UISceneZoomTransitionHostComponent

- (void)updateAncestorZoomTransitionController
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 32));
    view = [WeakRetained view];
    _window = [view _window];

    if (_window)
    {
      v5 = objc_loadWeakRetained((self + 32));
      if (v5)
      {
        do
        {
          preferredTransition = [v5 preferredTransition];

          if (preferredTransition)
          {
            break;
          }

          parentViewController = [v5 parentViewController];

          v5 = parentViewController;
        }

        while (parentViewController);
      }

      _zoomTransitionController = [v5 _zoomTransitionController];
      v9 = objc_opt_new();
      [_zoomTransitionController setDismissInteraction:v9];
    }

    else
    {
      _zoomTransitionController = 0;
    }

    v10 = *(self + 24);
    *(self + 24) = _zoomTransitionController;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66___UISceneZoomTransitionHostComponent_setWantsDismissInteraction___block_invoke;
    v13[3] = &__block_descriptor_33_e65_v16__0__FBSMutableSceneSettings__UISceneZoomTransitionSettings__8l;
    v14 = _zoomTransitionController != 0;
    v11 = v13;
    hostScene = [self hostScene];
    [hostScene updateSettings:v11];
  }
}

- (void)setViewController:(uint64_t)controller
{
  obj = a2;
  if (controller)
  {
    WeakRetained = objc_loadWeakRetained((controller + 32));

    if (WeakRetained != obj)
    {
      v4 = objc_loadWeakRetained((controller + 32));
      view = [v4 view];
      [(UIView *)view _removeGeometryChangeObserver:controller];

      objc_storeWeak((controller + 32), obj);
      v6 = objc_loadWeakRetained((controller + 32));
      view2 = [v6 view];
      [(UIView *)view2 _addGeometryChangeObserver:controller];

      v8 = *(controller + 24);
      *(controller + 24) = 0;

      [(_UISceneZoomTransitionHostComponent *)controller updateAncestorZoomTransitionController];
    }
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v25 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  actionsCopy = actions;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [actionsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(actionsCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = v12;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          dismissInteraction = [(_UIZoomTransitionController *)self->_ancestorZoomTransitionController dismissInteraction];
          [(_UISceneZoomTransitionDismissInteractionActionToHost *)v16 executeActionForProxyDismissInteraction:dismissInteraction];

          [v9 addObject:v16];
        }
      }

      v8 = [actionsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if ((changed->var0 & 0x100) != 0)
  {
    [(_UISceneZoomTransitionHostComponent *)self updateAncestorZoomTransitionController];
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end