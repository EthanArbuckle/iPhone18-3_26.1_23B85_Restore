@interface _UISceneCarPlaySessionClientComponent
- (id)touchpadForSenderID:(unint64_t)d;
- (void)performFeedbackOfType:(unint64_t)type forTouchpad:(id)touchpad;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneCarPlaySessionClientComponent

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v41 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v8 = [settingsDiff containsProperty:sel_carPlayAvailableInteractionModels];

  settingsDiff2 = [settingsCopy settingsDiff];
  v10 = [settingsDiff2 containsProperty:sel_carPlayPrimaryInteractionModel];

  settingsDiff3 = [settingsCopy settingsDiff];
  v12 = [settingsDiff3 containsProperty:sel_carPlayouchLevel];

  if ((v8 & 1) != 0 || (v10 & 1) != 0 || v12)
  {
    settings = [settingsCopy settings];
    carPlayAvailableInteractionModels = [settings carPlayAvailableInteractionModels];

    settings2 = [settingsCopy settings];
    carPlayPrimaryInteractionModel = [settings2 carPlayPrimaryInteractionModel];

    settings3 = [settingsCopy settings];
    carPlayTouchLevel = [settings3 carPlayTouchLevel];

    v19 = *(__UILogGetCategoryCachedImpl("UIScreen", &scene_didUpdateSettings____s_category_0) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      identityToken = [sceneCopy identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      NSStringFromUIScreenInteractionModel(carPlayAvailableInteractionModels);
      v23 = v27 = carPlayAvailableInteractionModels;
      v24 = NSStringFromUIScreenInteractionModel(carPlayPrimaryInteractionModel);
      v25 = NSStringFromUIScreenTouchLevel(carPlayTouchLevel);
      *buf = 138544130;
      v34 = stringRepresentation;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      v39 = 2114;
      v40 = v25;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "CarPlay session settings updated for scene: %{public}@, availableInteractionModels: %{public}@, primaryInteractionModel: %{public}@, touchLevel: %{public}@", buf, 0x2Au);

      carPlayAvailableInteractionModels = v27;
    }

    transitionContext = [settingsCopy transitionContext];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __65___UISceneCarPlaySessionClientComponent_scene_didUpdateSettings___block_invoke;
    v28[3] = &unk_1E711B108;
    v29 = sceneCopy;
    v30 = carPlayAvailableInteractionModels;
    v31 = carPlayPrimaryInteractionModel;
    v32 = carPlayTouchLevel;
    _UISceneSettingsDiffActionPerformChangesWithTransitionContextAndCompletion(transitionContext, v28, 0);
  }
}

- (id)touchpadForSenderID:(unint64_t)d
{
  if (self)
  {
    scene = [(FBSSceneComponent *)self scene];
    settings = [scene settings];
  }

  else
  {
    settings = 0;
  }

  carPlayTouchpads = [settings carPlayTouchpads];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61___UISceneCarPlaySessionClientComponent_touchpadForSenderID___block_invoke;
  v9[3] = &__block_descriptor_40_e40_B16__0___UISceneCarPlaySessionTouchpad_8l;
  v9[4] = d;
  v7 = [carPlayTouchpads bs_firstObjectPassingTest:v9];

  return v7;
}

- (void)performFeedbackOfType:(unint64_t)type forTouchpad:(id)touchpad
{
  touchpadCopy = touchpad;
  v9 = [[_UISceneCarPlaySessionTouchpadFeedbackAction alloc] initWithTouchpad:touchpadCopy feedbackType:type];

  scene = [(FBSSceneComponent *)self scene];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  [scene sendPrivateActions:v8];
}

@end