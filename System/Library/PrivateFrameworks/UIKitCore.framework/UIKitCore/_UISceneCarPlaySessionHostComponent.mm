@interface _UISceneCarPlaySessionHostComponent
- (NSArray)touchpads;
- (_UISceneCarPlaySessionTouchpadFeedbackDelegate)touchpadFeedbackDelegate;
- (id)handlePrivateActions:(id)actions;
- (int64_t)touchLevel;
- (unint64_t)availableInteractionModels;
- (unint64_t)primaryInteractionModel;
- (void)setAvailableInteractionModels:(unint64_t)models;
- (void)setPrimaryInteractionModel:(unint64_t)model;
- (void)setTouchLevel:(int64_t)level;
- (void)setTouchpads:(id)touchpads;
@end

@implementation _UISceneCarPlaySessionHostComponent

- (void)setAvailableInteractionModels:(unint64_t)models
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___UISceneCarPlaySessionHostComponent_setAvailableInteractionModels___block_invoke;
  v3[3] = &__block_descriptor_40_e65_v16__0__FBSMutableSceneSettings__UISceneCarPlaySessionSettings__8l;
  v3[4] = models;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (unint64_t)availableInteractionModels
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  carPlayAvailableInteractionModels = [settings carPlayAvailableInteractionModels];

  return carPlayAvailableInteractionModels;
}

- (void)setPrimaryInteractionModel:(unint64_t)model
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66___UISceneCarPlaySessionHostComponent_setPrimaryInteractionModel___block_invoke;
  v3[3] = &__block_descriptor_40_e65_v16__0__FBSMutableSceneSettings__UISceneCarPlaySessionSettings__8l;
  v3[4] = model;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (unint64_t)primaryInteractionModel
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  carPlayPrimaryInteractionModel = [settings carPlayPrimaryInteractionModel];

  return carPlayPrimaryInteractionModel;
}

- (void)setTouchLevel:(int64_t)level
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___UISceneCarPlaySessionHostComponent_setTouchLevel___block_invoke;
  v3[3] = &__block_descriptor_40_e65_v16__0__FBSMutableSceneSettings__UISceneCarPlaySessionSettings__8l;
  v3[4] = level;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (int64_t)touchLevel
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  carPlayTouchLevel = [settings carPlayTouchLevel];

  return carPlayTouchLevel;
}

- (void)setTouchpads:(id)touchpads
{
  touchpadsCopy = touchpads;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___UISceneCarPlaySessionHostComponent_setTouchpads___block_invoke;
  v6[3] = &unk_1E712AC30;
  v7 = touchpadsCopy;
  v5 = touchpadsCopy;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v6];
}

- (NSArray)touchpads
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  carPlayTouchpads = [settings carPlayTouchpads];

  return carPlayTouchpads;
}

- (id)handlePrivateActions:(id)actions
{
  v22 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v16 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = actionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          touchpadFeedbackDelegate = [(_UISceneCarPlaySessionHostComponent *)self touchpadFeedbackDelegate];
          feedbackType = [v11 feedbackType];
          touchpad = [v11 touchpad];
          [touchpadFeedbackDelegate carPlaySession:self performFeedbackOfType:feedbackType forTouchpad:touchpad];

          [v16 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v16;
}

- (_UISceneCarPlaySessionTouchpadFeedbackDelegate)touchpadFeedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->touchpadFeedbackDelegate);

  return WeakRetained;
}

@end