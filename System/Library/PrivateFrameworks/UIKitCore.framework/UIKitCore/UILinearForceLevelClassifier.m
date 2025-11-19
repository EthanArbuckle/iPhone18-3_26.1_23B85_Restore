@interface UILinearForceLevelClassifier
@end

@implementation UILinearForceLevelClassifier

id __114___UILinearForceLevelClassifier_transformerFromTouchForceMessageToProgressToForceLevel_minimumRequiredForceLevel___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__103;
  v15 = __Block_byref_object_dispose__103;
  v16 = 0;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __114___UILinearForceLevelClassifier_transformerFromTouchForceMessageToProgressToForceLevel_minimumRequiredForceLevel___block_invoke_13;
    v9[3] = &unk_1E710B9E0;
    v9[4] = WeakRetained;
    v9[5] = &v11;
    v10 = *(a1 + 40);
    [a2 ifObservation:v9 ifReset:0];
    v6 = v12[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __114___UILinearForceLevelClassifier_transformerFromTouchForceMessageToProgressToForceLevel_minimumRequiredForceLevel___block_invoke_13(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1[4];
  [a2 touchForce];
  [v4 _calculateProgressOfTouchForceValue:a1[6] toForceLevel:a1[7] minimumRequiredForceLevel:?];
  v5 = [v3 numberWithDouble:?];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end