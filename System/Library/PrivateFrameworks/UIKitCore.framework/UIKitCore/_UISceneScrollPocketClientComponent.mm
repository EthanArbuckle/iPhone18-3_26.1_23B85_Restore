@interface _UISceneScrollPocketClientComponent
- (NSString)debugDescription;
- (id)succinctDescription;
- (void)_scrollPocketLumaObserverDidUpdate:(id)update;
- (void)appendDescriptionToStream:(id)stream;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneScrollPocketClientComponent

- (void)_scrollPocketLumaObserverDidUpdate:(id)update
{
  updateCopy = update;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UISceneScrollPocketClientComponent__scrollPocketLumaObserverDidUpdate___block_invoke;
  v9[3] = &unk_1E712C938;
  v10 = updateCopy;
  v5 = updateCopy;
  v6 = v5;
  if (self)
  {
    v7 = v9;
    clientScene = [(FBSSceneComponent *)self clientScene];
    [clientScene updateClientSettings:v7];

    v6 = v10;
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v59 = *MEMORY[0x1E69E9840];
  settingsDiff = [settings settingsDiff];
  v6 = [settingsDiff containsProperty:sel_scrollPocketElements];

  if (v6 && self)
  {
    if ((*&self->_flags & 1) == 0)
    {
      *&self->_flags |= 1u;
      clientScene = [(FBSSceneComponent *)self clientScene];
      v8 = [UIScene _sceneForFBSScene:clientScene];

      delegate = [v8 delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegate2 = [v8 delegate];
        window = [delegate2 window];

        if ([window _isSceneSized])
        {
          objc_storeWeak(&self->_window, window);
          v13 = [_UIScrollPocketLumaObserverInteraction alloc];
          if (window)
          {
            v14 = window[102];
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
      scene = [(FBSSceneComponent *)self scene];
      settings = [scene settings];

      scrollPocketElements = [settings scrollPocketElements];

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
      obj = scrollPocketElements;
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
            identifier = [v31 identifier];
            v33 = [*(&self->super.super.isa + v23[611]) valueForKey:identifier];
            if (!v33)
            {
              v33 = -[_UIScrollPocketInteraction initWithStyle:]([_UIScrollPocketInteraction alloc], "initWithStyle:", [v31 style]);
              v34 = v26;
              v35 = v29;
              selfCopy = self;
              v37 = v23;
              v38 = v19;
              v39 = v19[102];
              [(_UIScrollPocketInteraction *)v33 _setCollectorInteraction:v39];

              v19 = v38;
              v23 = v37;
              self = selfCopy;
              v29 = v35;
              v26 = v34;
              v28 = v47;
              [v19 addInteraction:v33];
              [*(&self->super.super.isa + v23[611]) setObject:v33 forKey:identifier];
            }

            [v31 updateInteraction:v33];
            [v26 addObject:identifier];

            ++v30;
          }

          while (v28 != v30);
          v28 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v28);
      }

      allKeys = [*(&self->super.super.isa + v23[611]) allKeys];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v41 = [allKeys countByEnumeratingWithState:&v49 objects:v57 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v45 = *(*(&v49 + 1) + 8 * i);
            if (([v26 containsObject:v45] & 1) == 0)
            {
              v46 = [*(&self->super.super.isa + v23[611]) objectForKey:v45];
              [v19 removeInteraction:v46];
              [*(&self->super.super.isa + v23[611]) removeObjectForKey:v45];
            }
          }

          v42 = [allKeys countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v42);
      }
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65___UISceneScrollPocketClientComponent_appendDescriptionToStream___block_invoke;
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
    v8[2] = __65___UISceneScrollPocketClientComponent_appendDescriptionToStream___block_invoke_2;
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