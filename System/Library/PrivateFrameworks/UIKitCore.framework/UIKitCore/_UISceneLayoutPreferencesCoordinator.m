@interface _UISceneLayoutPreferencesCoordinator
- ($821BAD5B88DA18872EDDEA81553BCF52)systemLayoutSizeFittingSize3D:(id)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (_UISceneLayoutPreferencesCoordinatorDelegate)delegate;
- (id)clientSettings;
- (id)handlePrivateActions:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setDelegate:(id)a3;
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
  if (a1)
  {
    v1 = [a1 scene];
    v2 = [v1 clientSettings];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = a3.width;
  v4 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
  v5 = _UISceneLayoutPreferencesEvaluateSize(v4, width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)systemLayoutSizeFittingSize3D:(id)a3
{
  v5 = v3;
  v6 = v4;
  v12 = [(_UISceneLayoutPreferencesCoordinator *)self clientSettings];
  v7 = v5[1];
  v13[0] = *v5;
  v13[1] = v7;
  _UISceneLayoutPreferencesEvaluateSize3D(v12, v13, v6);

  result.var0.var3 = v11;
  result.var0.var2 = v10;
  result.var0.var1 = v9;
  result.var0.var0 = v8;
  return result;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  if (v4)
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
  v7 = [(FBSSceneComponent *)self hostScene];
  [v7 updateSettings:v6];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [v7 ui_containsSettingsAffectingSceneLayoutPreferences];

  if (v8)
  {
    v9 = [(_UISceneLayoutPreferencesCoordinator *)self delegate];
    if (v9 && (*&self->_delegateConformance & 1) != 0)
    {
      v10 = [v6 transitionContext];
      [v9 layoutPreferencesCoordinator:self didUpdatePreferencesForScene:v11 transitionContext:v10];
    }
  }
}

- (id)handlePrivateActions:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bs_filter:&__block_literal_global_699];
  if ([v5 count])
  {
    v6 = v4;
    if (!self)
    {
LABEL_21:

      goto LABEL_22;
    }

    v7 = [(_UISceneLayoutPreferencesCoordinator *)self delegate];
    if (v7 && (*&self->_delegateConformance & 2) != 0)
    {
      v11 = [(FBSSceneComponent *)self hostScene];
      v12 = [v11 uiSceneHostingController];

      if (!v12)
      {
        if ((*&self->_delegateConformance & 2) != 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea:self];
        }

        v15 = [MEMORY[0x1E698E600] response];
        goto LABEL_11;
      }

      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneLayoutPreferences", &qword_1ED49A850);
      if ((*CategoryCachedImpl & 1) == 0 || (v9 = *(CategoryCachedImpl + 8), !os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
      {
LABEL_10:
        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFBA7390 code:0 userInfo:0];
        v15 = [MEMORY[0x1E698E600] responseForError:v14];

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
                [v21 sendResponse:v15];
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