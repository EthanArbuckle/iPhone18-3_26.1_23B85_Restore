@interface UISceneLayoutPreferencesController
@end

@implementation UISceneLayoutPreferencesController

void __63___UISceneLayoutPreferencesController_updateLayoutPreferences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___UISceneLayoutPreferencesController_updateLayoutPreferences___block_invoke_2;
  v9[3] = &unk_1E7108050;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [(_UISceneLayoutPreferenceBuilder *)v6 buildLayoutPreferences:a2 usingBlock:v9];
}

void __75___UISceneLayoutPreferencesController_didRecognizeDoubleTapInDraggableArea__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneLayoutPreferences", &qword_1ED49AC48);
    if (*CategoryCachedImpl)
    {
      v5 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = v5;
        v7 = [v2 error];
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Host rejected double tap action with error: %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v8 = __UILogGetCategoryCachedImpl("UISceneLayoutPreferences", &qword_1ED49AC50);
    if (*v8)
    {
      v9 = *(v8 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Host accepted double tap action", &v10, 2u);
      }
    }
  }
}

@end