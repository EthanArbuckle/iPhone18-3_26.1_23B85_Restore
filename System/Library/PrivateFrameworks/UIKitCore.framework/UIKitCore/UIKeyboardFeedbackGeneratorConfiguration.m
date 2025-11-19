@interface UIKeyboardFeedbackGeneratorConfiguration
@end

@implementation UIKeyboardFeedbackGeneratorConfiguration

void __65___UIKeyboardFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1104];
  [v2 setObject:v3 forKeyedSubscript:&unk_1EFE304F0];

  v4 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1104];
  [v2 setObject:v4 forKeyedSubscript:&unk_1EFE30508];

  v5 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1156];
  [v2 setObject:v5 forKeyedSubscript:&unk_1EFE30520];

  v6 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1155];
  [v2 setObject:v6 forKeyedSubscript:&unk_1EFE30538];

  v7 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1155];
  [v2 setObject:v7 forKeyedSubscript:&unk_1EFE30550];

  v8 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1155];
  [v2 setObject:v8 forKeyedSubscript:&unk_1EFE30568];

  v9 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1156];
  [v2 setObject:v9 forKeyedSubscript:&unk_1EFE30580];

  v10 = [_UICustomDiscreteFeedback customDiscreteFeedbackWithEventType:0 systemSoundID:1156];
  [v2 setObject:v10 forKeyedSubscript:&unk_1EFE30598];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = v2;
  obj = [v2 allValues];
  v11 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = [v15 _individualFeedbacks];
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * j);
              if ([v21 _effectivePlayableFeedbackTypes] == 1)
              {
                v22 = 0x1EFB48430;
              }

              else
              {
                v22 = 0x1EFB4A9F0;
              }

              [v21 _setCategory:v22];
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v18);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v12);
  }

  [v24 setFeedbacks:v23];
  [v24 setScalingForSpeedEnabled:0];
  [v24 setSlowTypingTime:0.5];
  [v24 setFastTypingTime:0.1];
  [v24 setFastTypingVolumeMultiplier:0.35];
}

@end