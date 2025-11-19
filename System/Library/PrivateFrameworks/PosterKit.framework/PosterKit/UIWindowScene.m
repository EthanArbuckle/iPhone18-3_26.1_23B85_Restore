@interface UIWindowScene
@end

@implementation UIWindowScene

void __84__UIWindowScene_PRScene__pr_updatePreferences_withTransition_configuredSalientRect___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = [a1[4] settings];
  v7 = [v6 pr_posterConfiguredProperties];
  v8 = [v7 titleStyleConfiguration];
  v9 = [v8 isAdaptiveTimeHeightUserConfigured];

  [v24 pui_setAdaptiveTimeHeightUserConfigured:v9];
  v10 = [a1[4] settings];
  if ([v10 pui_isComplicationRowConfigured])
  {
    v11 = [a1[4] settings];
    v12 = [v11 pui_isComplicationRowAtBottom];
  }

  else
  {
    v12 = 1;
  }

  if ([a1[5] adaptiveTimeMode] == 2 && !v12)
  {
    v13 = MEMORY[0x1E695F058];
    v14 = (MEMORY[0x1E695F058] + 16);
    v15 = (MEMORY[0x1E695F058] + 8);
    v16 = (MEMORY[0x1E695F058] + 24);
LABEL_7:
    v17 = *v14;
    v18 = *v15;
    v19 = *v13;
    v20 = *v16;
    goto LABEL_11;
  }

  v19 = *MEMORY[0x1E695F050];
  v18 = *(MEMORY[0x1E695F050] + 8);
  v17 = *(MEMORY[0x1E695F050] + 16);
  v20 = *(MEMORY[0x1E695F050] + 24);
  if ([a1[5] adaptiveTimeMode] == 4 && v9)
  {
    v13 = (a1 + 8);
    v15 = (a1 + 9);
    v14 = (a1 + 10);
    v16 = (a1 + 11);
    goto LABEL_7;
  }

LABEL_11:
  [a1[5] applyToClientSettings:v24 overridePreferredSalientRect:{v19, v18, v17, v20}];
  v21 = [a1[6] animationSettings];
  [v5 setAnimationSettings:v21];

  v22 = [a1[6] animationSettings];

  if (v22)
  {
    [a1[7] _synchronizeDrawing];
    v23 = [a1[7] _synchronizedDrawingFence];
    [v5 setAnimationFence:v23];
  }

  [v5 pr_setUpdateSnapshot:{objc_msgSend(a1[6], "contentSignificantlyChanged")}];
}

@end