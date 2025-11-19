@interface _UISceneCarPlaySessionClientComponent
- (id)touchpadForSenderID:(unint64_t)a3;
- (void)performFeedbackOfType:(unint64_t)a3 forTouchpad:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneCarPlaySessionClientComponent

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [v7 containsProperty:sel_carPlayAvailableInteractionModels];

  v9 = [v6 settingsDiff];
  v10 = [v9 containsProperty:sel_carPlayPrimaryInteractionModel];

  v11 = [v6 settingsDiff];
  v12 = [v11 containsProperty:sel_carPlayouchLevel];

  if ((v8 & 1) != 0 || (v10 & 1) != 0 || v12)
  {
    v13 = [v6 settings];
    v14 = [v13 carPlayAvailableInteractionModels];

    v15 = [v6 settings];
    v16 = [v15 carPlayPrimaryInteractionModel];

    v17 = [v6 settings];
    v18 = [v17 carPlayTouchLevel];

    v19 = *(__UILogGetCategoryCachedImpl("UIScreen", &scene_didUpdateSettings____s_category_0) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v5 identityToken];
      v22 = [v21 stringRepresentation];
      NSStringFromUIScreenInteractionModel(v14);
      v23 = v27 = v14;
      v24 = NSStringFromUIScreenInteractionModel(v16);
      v25 = NSStringFromUIScreenTouchLevel(v18);
      *buf = 138544130;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      v39 = 2114;
      v40 = v25;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "CarPlay session settings updated for scene: %{public}@, availableInteractionModels: %{public}@, primaryInteractionModel: %{public}@, touchLevel: %{public}@", buf, 0x2Au);

      v14 = v27;
    }

    v26 = [v6 transitionContext];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __65___UISceneCarPlaySessionClientComponent_scene_didUpdateSettings___block_invoke;
    v28[3] = &unk_1E711B108;
    v29 = v5;
    v30 = v14;
    v31 = v16;
    v32 = v18;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(v26, v28, 0);
  }
}

- (id)touchpadForSenderID:(unint64_t)a3
{
  if (self)
  {
    v4 = [(FBSSceneComponent *)self scene];
    v5 = [v4 settings];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 carPlayTouchpads];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61___UISceneCarPlaySessionClientComponent_touchpadForSenderID___block_invoke;
  v9[3] = &__block_descriptor_40_e40_B16__0___UISceneCarPlaySessionTouchpad_8l;
  v9[4] = a3;
  v7 = [v6 bs_firstObjectPassingTest:v9];

  return v7;
}

- (void)performFeedbackOfType:(unint64_t)a3 forTouchpad:(id)a4
{
  v6 = a4;
  v9 = [[_UISceneCarPlaySessionTouchpadFeedbackAction alloc] initWithTouchpad:v6 feedbackType:a3];

  v7 = [(FBSSceneComponent *)self scene];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  [v7 sendPrivateActions:v8];
}

@end