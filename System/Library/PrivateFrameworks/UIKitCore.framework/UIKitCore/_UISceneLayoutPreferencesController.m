@interface _UISceneLayoutPreferencesController
- ($821BAD5B88DA18872EDDEA81553BCF52)systemLayoutSizeFittingSize3D:(id)a3;
- (BOOL)hostObservesLayoutPreferenceChanges;
- (BOOL)hostSupportsSceneDoubleTap;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (id)clientSettings;
- (id)settings;
- (void)didRecognizeDoubleTapInDraggableArea;
- (void)registerObserver:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)updateClientSettings:(id)a3;
- (void)updateLayoutPreferences:(id)a3;
@end

@implementation _UISceneLayoutPreferencesController

- (BOOL)hostObservesLayoutPreferenceChanges
{
  v2 = [(_UISceneLayoutPreferencesController *)self settings];
  v3 = [v2 _hostObservesLayoutPreferenceChanges];

  return v3;
}

- (id)settings
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 settings];

  return v3;
}

- (id)clientSettings
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 clientSettings];

  return v3;
}

- (void)updateClientSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self clientScene];
  [v5 updateClientSettings:v4];
}

- (BOOL)hostSupportsSceneDoubleTap
{
  v2 = [(_UISceneLayoutPreferencesController *)self settings];
  v3 = [v2 _hostSupportsSceneDoubleTap];

  return v3;
}

- (void)updateLayoutPreferences:(id)a3
{
  v4 = a3;
  if (!self->_builder)
  {
    v5 = objc_alloc_init(_UISceneLayoutPreferenceBuilder);
    builder = self->_builder;
    self->_builder = v5;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___UISceneLayoutPreferencesController_updateLayoutPreferences___block_invoke;
  v8[3] = &unk_1E7108078;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(_UISceneLayoutPreferencesController *)self updateClientSettings:v8];
}

- (void)didRecognizeDoubleTapInDraggableArea
{
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneLayoutPreferences", &_MergedGlobals_7_0);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Scene draggable area was double tapped. Sending action to host.", v9, 2u);
    }
  }

  if (*__UILogGetCategoryCachedImpl("UISceneLayoutPreferences", &qword_1ED49AC40))
  {
    v4 = [MEMORY[0x1E698E5F8] responderWithHandler:&__block_literal_global_217];
  }

  else
  {
    v4 = 0;
  }

  v5 = [[_UISceneLayoutGestureAction alloc] initWithInfo:0 responder:v4];
  v6 = [(FBSSceneComponent *)self scene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [v6 sendPrivateActions:v7];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 settingsDiff];
  v7 = [v6 containsPropertyFromExtension:objc_opt_class()];

  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_observers;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = [v5 transitionContext];
          [v13 layoutPreferencesControllerDidUpdate:self transitionContext:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = a3.width;
  v4 = [(_UISceneLayoutPreferencesController *)self clientSettings];
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
  v12 = [(_UISceneLayoutPreferencesController *)self clientSettings:a3.var0.var0];
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

@end