@interface _UISceneZoomTransitionHostComponent
- (NSString)debugDescription;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)succinctDescription;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)setViewController:(uint64_t)a1;
- (void)updateAncestorZoomTransitionController;
@end

@implementation _UISceneZoomTransitionHostComponent

- (void)updateAncestorZoomTransitionController
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = [WeakRetained view];
    v4 = [v3 _window];

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      if (v5)
      {
        do
        {
          v6 = [v5 preferredTransition];

          if (v6)
          {
            break;
          }

          v7 = [v5 parentViewController];

          v5 = v7;
        }

        while (v7);
      }

      v8 = [v5 _zoomTransitionController];
      v9 = objc_opt_new();
      [v8 setDismissInteraction:v9];
    }

    else
    {
      v8 = 0;
    }

    v10 = *(a1 + 24);
    *(a1 + 24) = v8;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66___UISceneZoomTransitionHostComponent_setWantsDismissInteraction___block_invoke;
    v13[3] = &__block_descriptor_33_e65_v16__0__FBSMutableSceneSettings__UISceneZoomTransitionSettings__8l;
    v14 = v8 != 0;
    v11 = v13;
    v12 = [a1 hostScene];
    [v12 updateSettings:v11];
  }
}

- (void)setViewController:(uint64_t)a1
{
  obj = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained != obj)
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v5 = [v4 view];
      [(UIView *)v5 _removeGeometryChangeObserver:a1];

      objc_storeWeak((a1 + 32), obj);
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [v6 view];
      [(UIView *)v7 _addGeometryChangeObserver:a1];

      v8 = *(a1 + 24);
      *(a1 + 24) = 0;

      [(_UISceneZoomTransitionHostComponent *)a1 updateAncestorZoomTransitionController];
    }
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
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

          v17 = [(_UIZoomTransitionController *)self->_ancestorZoomTransitionController dismissInteraction];
          [(_UISceneZoomTransitionDismissInteractionActionToHost *)v16 executeActionForProxyDismissInteraction:v17];

          [v9 addObject:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if ((a3->var0 & 0x100) != 0)
  {
    [(_UISceneZoomTransitionHostComponent *)self updateAncestorZoomTransitionController];
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = v4;
  v12 = v5;
  v13 = self;
  [v5 appendProem:self block:v11];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = self;
    [v9 appendBodySectionWithName:0 block:v8];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end