@interface UISceneMainMenuHostComponent
@end

@implementation UISceneMainMenuHostComponent

void __72___UISceneMainMenuHostComponent_performBaseMenuRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = v10;
    v5 = [v4 menu];

    if (v5)
    {
      v6 = [(_UISceneMainMenuHostComponent *)WeakRetained _currentOverrideClientName];
      if (v6)
      {
        v7 = [v4 menu];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __79___UISceneMainMenuHostComponent__performHostSideProcessingForBaseMenuResponse___block_invoke;
        v11[3] = &unk_1E7106258;
        v8 = v6;
        v12 = v8;
        v13 = 0;
        _UIMainMenuElementEnumerateElementTypesHelper(v7, 0, &v13, v11, 0, 0);

        [v4 setClientName:v8];
      }

      v9 = [v4 sessionResponse];
      [(_UISceneMainMenuHostComponent *)WeakRetained _performHostSideProcessingForSessionResponse:v9];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __49___UISceneMainMenuHostComponent_getBaseMainMenu___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 menu];
  (*(v2 + 16))(v2, v3);
}

void __63___UISceneMainMenuHostComponent_performSessionRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if (WeakRetained)
    {
      [(_UISceneMainMenuHostComponent *)WeakRetained _performHostSideProcessingForSessionResponse:v6];
      v5 = v6;
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, v5);
  }
}

void __77___UISceneMainMenuHostComponent_performMainMenuStateRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(_UISceneMainMenuHostComponent *)WeakRetained _performHostSideProcessingForStateResponse:v5];
  }

  (*(*(a1 + 32) + 16))();
}

void __87___UISceneMainMenuHostComponent_performMainMenuDeferredElementRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = v7;
    v5 = [(_UISceneMainMenuHostComponent *)WeakRetained _currentOverrideClientName];
    if (v5)
    {
      v6 = [v4 deferredElementState];
      [(_UISceneMainMenuHostComponent *)WeakRetained _populateElementGroupState:v6 withOverrideClientName:v5];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __89___UISceneMainMenuHostComponent_performMainMenuCommandInvocationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v7;
    if (WeakRetained)
    {
      v6 = [v7 sessionResponse];
      [(_UISceneMainMenuHostComponent *)WeakRetained _performHostSideProcessingForSessionResponse:v6];

      v5 = v7;
      v4 = *(a1 + 32);
    }

    (*(v4 + 16))(v4, v5);
  }
}

void __79___UISceneMainMenuHostComponent__performHostSideProcessingForBaseMenuResponse___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = [v9 identifier];
  v7 = [v6 isEquivalentToUIMenuIdentifier:@"com.apple.menu.application"];

  if (v7)
  {
    v8 = [v9 uiMenu];
    [v8 _setTitle:*(a1 + 32)];

    *a4 = 1;
  }
}

void __83___UISceneMainMenuHostComponent__populateElementGroupState_withOverrideClientName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  v4 = [v15 _validatedMenuLeaf];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v15;
  if (isKindOfClass)
  {
    v8 = [v15 _validatedMenuLeaf];
    if ([v8 action] == sel_orderFrontPreferencesPanel_)
    {
      v14 = _UILocalizedFormat(@"KEYSHORTCUTHUD_APP_SETTINGS_ELLIPSIS", @"Key Shortcut HUD: App menu Settings item title. This string is parameterized to contain the provided app name app name, so it is expected to look like Mail Settings… or Messages Settings…. This string is displayed in the iOS Key Shortcut HUD. It should have an ellipsis at the end, indicating that it opens a separate panel.", @"%@ Settings…", v9, v10, v11, v12, v13, *(a1 + 32));
      [v8 setTitle:v14];
    }

    v7 = v15;
  }
}

@end