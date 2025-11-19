@interface _UISceneCarPlaySessionHostComponent
- (NSArray)touchpads;
- (_UISceneCarPlaySessionTouchpadFeedbackDelegate)touchpadFeedbackDelegate;
- (id)handlePrivateActions:(id)a3;
- (int64_t)touchLevel;
- (unint64_t)availableInteractionModels;
- (unint64_t)primaryInteractionModel;
- (void)setAvailableInteractionModels:(unint64_t)a3;
- (void)setPrimaryInteractionModel:(unint64_t)a3;
- (void)setTouchLevel:(int64_t)a3;
- (void)setTouchpads:(id)a3;
@end

@implementation _UISceneCarPlaySessionHostComponent

- (void)setAvailableInteractionModels:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___UISceneCarPlaySessionHostComponent_setAvailableInteractionModels___block_invoke;
  v3[3] = &__block_descriptor_40_e65_v16__0__FBSMutableSceneSettings__UISceneCarPlaySessionSettings__8l;
  v3[4] = a3;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (unint64_t)availableInteractionModels
{
  v2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v3 = [v2 carPlayAvailableInteractionModels];

  return v3;
}

- (void)setPrimaryInteractionModel:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66___UISceneCarPlaySessionHostComponent_setPrimaryInteractionModel___block_invoke;
  v3[3] = &__block_descriptor_40_e65_v16__0__FBSMutableSceneSettings__UISceneCarPlaySessionSettings__8l;
  v3[4] = a3;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (unint64_t)primaryInteractionModel
{
  v2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v3 = [v2 carPlayPrimaryInteractionModel];

  return v3;
}

- (void)setTouchLevel:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53___UISceneCarPlaySessionHostComponent_setTouchLevel___block_invoke;
  v3[3] = &__block_descriptor_40_e65_v16__0__FBSMutableSceneSettings__UISceneCarPlaySessionSettings__8l;
  v3[4] = a3;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (int64_t)touchLevel
{
  v2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v3 = [v2 carPlayTouchLevel];

  return v3;
}

- (void)setTouchpads:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___UISceneCarPlaySessionHostComponent_setTouchpads___block_invoke;
  v6[3] = &unk_1E712AC30;
  v7 = v4;
  v5 = v4;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v6];
}

- (NSArray)touchpads
{
  v2 = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  v3 = [v2 carPlayTouchpads];

  return v3;
}

- (id)handlePrivateActions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
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
          v12 = [(_UISceneCarPlaySessionHostComponent *)self touchpadFeedbackDelegate];
          v13 = [v11 feedbackType];
          v14 = [v11 touchpad];
          [v12 carPlaySession:self performFeedbackOfType:v13 forTouchpad:v14];

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