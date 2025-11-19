@interface UIPreviewInteractionForceLevelClassifier
@end

@implementation UIPreviewInteractionForceLevelClassifier

id __126___UIPreviewInteractionForceLevelClassifier_transformerFromTouchForceMessageToProgressToForceLevel_minimumRequiredForceLevel___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__104;
  v14 = __Block_byref_object_dispose__104;
  v15 = 0;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __126___UIPreviewInteractionForceLevelClassifier_transformerFromTouchForceMessageToProgressToForceLevel_minimumRequiredForceLevel___block_invoke_4;
    v9[3] = &unk_1E710BA48;
    v9[4] = WeakRetained;
    v9[5] = &v10;
    v9[6] = *(a1 + 40);
    [a2 ifObservation:v9 ifReset:0];
    v6 = v11[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __126___UIPreviewInteractionForceLevelClassifier_transformerFromTouchForceMessageToProgressToForceLevel_minimumRequiredForceLevel___block_invoke_4(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v3 = MEMORY[0x1E696AD98];
    if ((a1[6] - 1) >= 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = a1[6];
    }

    [v2 currentProgressToState:v4];
    v5 = [v3 numberWithDouble:?];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

@end