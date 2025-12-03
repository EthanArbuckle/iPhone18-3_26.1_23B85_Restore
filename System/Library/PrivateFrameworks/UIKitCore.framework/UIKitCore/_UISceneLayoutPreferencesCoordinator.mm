@interface _UISceneLayoutPreferencesCoordinator
- ($821BAD5B88DA18872EDDEA81553BCF52)systemLayoutSizeFittingSize3D:(id)d;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (_UISceneLayoutPreferencesCoordinatorDelegate)delegate;
- (id)clientSettings;
- (id)handlePrivateActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setDelegate:(id)delegate;
@end

@implementation _UISceneLayoutPreferencesCoordinator

- (_UISceneLayoutPreferencesCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else if ((*&self->_delegateConformance & 3) != 0)
  {
    [(_UISceneLayoutPreferencesCoordinator *)self setDelegate:0];
  }

  return v4;
}

- (id)clientSettings
{
  if (self)
  {
    scene = [self scene];
    clientSettings = [scene clientSettings];
  }

  else
  {
    clientSettings = 0;
  }

  return clientSettings;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  width = size.width;
  clientSettings = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
  v5 = _UISceneLayoutPreferencesEvaluateSize(clientSettings, width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)systemLayoutSizeFittingSize3D:(id)d
{
  v5 = v3;
  v6 = v4;
  clientSettings = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
  v7 = v5[1];
  v13[0] = *v5;
  v13[1] = v7;
  _UISceneLayoutPreferencesEvaluateSize3D(clientSettings, v13, v6);

  result.var0.var3 = v11;
  result.var0.var2 = v10;
  result.var0.var1 = v9;
  result.var0.var0 = v8;
  return result;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (delegateCopy)
  {
    *&self->_delegateConformance = *&self->_delegateConformance & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateConformance = *&self->_delegateConformance & 0xFD | v5;
  }

  else
  {
    *&self->_delegateConformance &= 0xFCu;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52___UISceneLayoutPreferencesCoordinator_setDelegate___block_invoke;
  v8[3] = &unk_1E712A5E8;
  v8[4] = self;
  v6 = v8;
  hostScene = [(FBSSceneComponent *)self hostScene];
  [hostScene updateSettings:v6];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  ui_containsSettingsAffectingSceneLayoutPreferences = [settingsDiff ui_containsSettingsAffectingSceneLayoutPreferences];

  if (ui_containsSettingsAffectingSceneLayoutPreferences)
  {
    delegate = [(_UISceneLayoutPreferencesCoordinator *)self delegate];
    if (delegate && (*&self->_delegateConformance & 1) != 0)
    {
      transitionContext = [settingsCopy transitionContext];
      [delegate layoutPreferencesCoordinator:self didUpdatePreferencesForScene:sceneCopy transitionContext:transitionContext];
    }
  }
}

- (id)handlePrivateActions:(id)actions
{
  v29 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = [actionsCopy bs_filter:&__block_literal_global_699];
  if ([v5 count])
  {
    v6 = actionsCopy;
    if (!self)
    {
LABEL_21:

      goto LABEL_22;
    }

    delegate = [(_UISceneLayoutPreferencesCoordinator *)self delegate];
    if (delegate && (*&self->_delegateConformance & 2) != 0)
    {
      hostScene = [(FBSSceneComponent *)self hostScene];
      uiSceneHostingController = [hostScene uiSceneHostingController];

      if (!uiSceneHostingController)
      {
        if ((*&self->_delegateConformance & 2) != 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea:self];
        }

        response = [MEMORY[0x1E698E600] response];
        goto LABEL_11;
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneLayoutPreferences", &qword_1ED49A850);
      if ((*CategoryCachedImpl & 1) == 0 || (v9 = *(CategoryCachedImpl + 8), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
      {
LABEL_10:
        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFBA7390 code:0 userInfo:0];
        response = [MEMORY[0x1E698E600] responseForError:v14];

LABEL_11:
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v16 = v6;
        v17 = [v16 countByEnumeratingWithState:&v24 objects:buf count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v25;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v24 + 1) + 8 * i);
              if ([v21 canSendResponse])
              {
                [v21 sendResponse:response];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v24 objects:buf count:16];
          }

          while (v18);
        }

        goto LABEL_21;
      }

      *buf = 0;
      v10 = "Rejecting double tap action because host should not handle it and is not forwarding it upwards.";
    }

    else
    {
      v8 = __UILogGetCategoryCachedImpl("UISceneLayoutPreferences", &_MergedGlobals_5_21);
      if ((*v8 & 1) == 0)
      {
        goto LABEL_10;
      }

      v9 = *(v8 + 8);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v10 = "Rejecting double tap action because nothing is registered to handle it.";
    }

    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_10;
  }

LABEL_22:

  return v5;
}

@end