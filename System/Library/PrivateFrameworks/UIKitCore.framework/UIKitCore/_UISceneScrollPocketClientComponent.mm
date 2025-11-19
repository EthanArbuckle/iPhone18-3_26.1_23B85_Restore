@interface _UISceneScrollPocketClientComponent
- (NSString)debugDescription;
- (id)succinctDescription;
- (void)_scrollPocketLumaObserverDidUpdate:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneScrollPocketClientComponent

- (void)_scrollPocketLumaObserverDidUpdate:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UISceneScrollPocketClientComponent__scrollPocketLumaObserverDidUpdate___block_invoke;
  v9[3] = &unk_1E712C938;
  v10 = v4;
  v5 = v4;
  v6 = v5;
  if (self)
  {
    v7 = v9;
    v8 = [(FBSSceneComponent *)self clientScene];
    [v8 updateClientSettings:v7];

    v6 = v10;
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = [a4 settingsDiff];
  v6 = [v5 containsProperty:sel_scrollPocketElements];

  if (v6 && self)
  {
    if ((*&self->_flags & 1) == 0)
    {
      *&self->_flags |= 1u;
      v7 = [(FBSSceneComponent *)self clientScene];
      v8 = [UIScene _sceneForFBSScene:v7];

      v9 = [v8 delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [v8 delegate];
        v12 = [v11 window];

        if ([v12 _isSceneSized])
        {
          objc_storeWeak(&self->_window, v12);
          v13 = [_UIScrollPocketLumaObserverInteraction alloc];
          if (v12)
          {
            v14 = v12[102];
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [(_UIScrollPocketLumaObserverInteraction *)v13 initWithCollectorInteraction:v15];
          lumaObserverInteraction = self->_lumaObserverInteraction;
          self->_lumaObserverInteraction = v16;

          [(_UIScrollPocketLumaObserverInteraction *)self->_lumaObserverInteraction setObserver:self];
          WeakRetained = objc_loadWeakRetained(&self->_window);
          [WeakRetained addInteraction:self->_lumaObserverInteraction];
        }
      }
    }

    v19 = objc_loadWeakRetained(&self->_window);
    if (v19)
    {
      v20 = [(FBSSceneComponent *)self scene];
      v21 = [v20 settings];

      v22 = [v21 scrollPocketElements];

      v23 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
      if (!self->_pocketInteractions)
      {
        v24 = objc_opt_new();
        pocketInteractions = self->_pocketInteractions;
        self->_pocketInteractions = v24;
      }

      v26 = objc_opt_new();
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v22;
      v27 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v54;
        do
        {
          v30 = 0;
          v47 = v28;
          do
          {
            if (*v54 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v53 + 1) + 8 * v30);
            v32 = [v31 identifier];
            v33 = [*(&self->super.super.isa + v23[611]) valueForKey:v32];
            if (!v33)
            {
              v33 = -[_UIScrollPocketInteraction initWithStyle:]([_UIScrollPocketInteraction alloc], "initWithStyle:", [v31 style]);
              v34 = v26;
              v35 = v29;
              v36 = self;
              v37 = v23;
              v38 = v19;
              v39 = v19[102];
              [(_UIScrollPocketInteraction *)v33 _setCollectorInteraction:v39];

              v19 = v38;
              v23 = v37;
              self = v36;
              v29 = v35;
              v26 = v34;
              v28 = v47;
              [v19 addInteraction:v33];
              [*(&self->super.super.isa + v23[611]) setObject:v33 forKey:v32];
            }

            [v31 updateInteraction:v33];
            [v26 addObject:v32];

            ++v30;
          }

          while (v28 != v30);
          v28 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v28);
      }

      v40 = [*(&self->super.super.isa + v23[611]) allKeys];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v50;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v50 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v49 + 1) + 8 * i);
            if (([v26 containsObject:v45] & 1) == 0)
            {
              v46 = [*(&self->super.super.isa + v23[611]) objectForKey:v45];
              [v19 removeInteraction:v46];
              [*(&self->super.super.isa + v23[611]) removeObjectForKey:v45];
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v42);
      }
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65___UISceneScrollPocketClientComponent_appendDescriptionToStream___block_invoke;
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
    v8[2] = __65___UISceneScrollPocketClientComponent_appendDescriptionToStream___block_invoke_2;
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