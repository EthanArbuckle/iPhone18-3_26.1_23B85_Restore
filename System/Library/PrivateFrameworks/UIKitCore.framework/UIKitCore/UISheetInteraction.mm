@interface UISheetInteraction
@end

@implementation UISheetInteraction

void __27___UISheetInteraction_init__block_invoke_8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *a2 = 0;
  v3 = [WeakRetained detentGetter];
  v4 = [WeakRetained indexOfCurrentDetentGetter];
  v5 = v4[2]();
  *(a2 + 8) = v3[2](v3, v5);
}

id __27___UISheetInteraction_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained numberOfDetentsGetter];
  v3 = v2[2]();

  v4 = [WeakRetained detentPoints];
  v5 = [WeakRetained interactor];
  v6 = [v5 _dimensions];

  while ([v4 count] < v3)
  {
    v7 = [[_UIHyperpoint alloc] initWithDimensions:v6];
    [v4 addObject:v7];
  }

  if (v3 < [v4 count])
  {
    [v4 removeObjectsInRange:{v3, objc_msgSend(v4, "count") - v3}];
  }

  if (v3)
  {
    v8 = 0;
    v9 = 2.22507386e-308;
    v10 = 1.79769313e308;
    do
    {
      v11 = [WeakRetained detentGetter];
      v12 = v11[2](v11, v8);

      v13 = [v4 objectAtIndexedSubscript:v8];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __27___UISheetInteraction_init__block_invoke_2;
      v21[3] = &__block_descriptor_40_e9_v16__0_d8l;
      *&v21[4] = v12;
      [v13 _mutateValue:v21];

      if (v10 >= v12)
      {
        v10 = v12;
      }

      if (v9 < v12)
      {
        v9 = v12;
      }

      ++v8;
    }

    while (v3 != v8);
  }

  else
  {
    v10 = 1.79769313e308;
    v9 = 2.22507386e-308;
  }

  v14 = [WeakRetained detentUnion];
  [v14 _setRegions:v4];

  v15 = [WeakRetained detentContinuum];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __27___UISheetInteraction_init__block_invoke_3;
  v20[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v20[4] = v10;
  [v15 _mutateMinimumPoint:v20];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __27___UISheetInteraction_init__block_invoke_4;
  v19[3] = &__block_descriptor_40_e9_v16__0_d8l;
  *&v19[4] = v9;
  [v15 _mutateMaximumPoint:v19];
  if ([WeakRetained isDragging])
  {
    v16 = v15;
  }

  else
  {
    v16 = [WeakRetained detentUnion];
  }

  v17 = v16;

  return v17;
}

double __27___UISheetInteraction_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  result = *(a1 + 32);
  *(a2 + 8) = result;
  return result;
}

double __27___UISheetInteraction_init__block_invoke_3(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  result = *(a1 + 32);
  *(a2 + 8) = result;
  return result;
}

double __27___UISheetInteraction_init__block_invoke_4(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  result = *(a1 + 32);
  *(a2 + 8) = result;
  return result;
}

id __27___UISheetInteraction_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained extender];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27___UISheetInteraction_init__block_invoke_6;
  v8[3] = &unk_1E70F4AC0;
  v3 = WeakRetained;
  v9 = v3;
  [v2 _mutateExtentBeyondMinimum:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27___UISheetInteraction_init__block_invoke_7;
  v6[3] = &unk_1E70F4AC0;
  v7 = v3;
  v4 = v3;
  [v2 _mutateExtentBeyondMaximum:v6];

  return v2;
}

void __27___UISheetInteraction_init__block_invoke_6(uint64_t a1, uint64_t a2)
{
  *a2 = 0x4059000000000000;
  v3 = [*(a1 + 32) rubberBandExtentBeyondMinimumOffsetGetter];
  *(a2 + 8) = v3[2]();
}

void __27___UISheetInteraction_init__block_invoke_7(uint64_t a1, uint64_t a2)
{
  *a2 = 0x4059000000000000;
  v3 = [*(a1 + 32) rubberBandExtentBeyondMaximumOffsetGetter];
  *(a2 + 8) = v3[2]();
}

void __86___UISheetInteraction_draggingChangedInSource_withTranslation_velocity_animateChange___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v10[5] = v4;
    v10[6] = v3;
    v10[11] = v1;
    v10[12] = v2;
    v6 = [UIViewPropertyAnimator alloc];
    v7 = _UISheetTransitionDuration();
    v8 = _UISheetTransitionTimingCurve();
    v9 = [(UIViewPropertyAnimator *)v6 initWithDuration:v8 timingParameters:v7];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __86___UISheetInteraction_draggingChangedInSource_withTranslation_velocity_animateChange___block_invoke_2;
    v10[3] = &unk_1E70F3590;
    v10[4] = *(a1 + 32);
    [(UIViewPropertyAnimator *)v9 addAnimations:v10];
    [(UIViewPropertyAnimator *)v9 startAnimation];
  }
}

uint64_t __86___UISheetInteraction_draggingChangedInSource_withTranslation_velocity_animateChange___block_invoke_2(uint64_t a1)
{
  v4 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86___UISheetInteraction_draggingChangedInSource_withTranslation_velocity_animateChange___block_invoke_3;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048612 updateReason:v3 animations:*&v4.minimum, *&v4.maximum, *&v4.preferred];
}

void __45___UISheetInteraction_draggingEndedInSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interactor];
  v3 = [*(a1 + 32) detentPoints];
  v4 = [*(a1 + 32) detentUnion];
  v5 = [v2 _translatedUnconstrainedPoint];
  v24 = 0;
  v25 = 0.0;
  v6 = [v4 _regionIndexForClosestPoint:&v24 toPoint:v5];
  v7 = *(v5 + 8);
  v8 = v25;
  v9 = [v4 _regionIndexForClosestPoint:0 toPoint:{objc_msgSend(v2, "_projectedPoint")}];
  v10 = *([v2 _velocity] + 8);
  v11 = fabs(v10);
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_SheetSpeedThreshold, @"SheetSpeedThreshold", _UIInternalPreferenceUpdateDouble))
  {
    v12 = 1000.0;
  }

  else
  {
    v12 = *&qword_1EA95E108;
  }

  v13 = *&v10;
  if ([v3 count] < 2)
  {
    v17 = 1;
  }

  else
  {
    v14 = [v3 objectAtIndexedSubscript:0];
    v15 = *([v14 _value] + 8);
    v16 = [v3 objectAtIndexedSubscript:1];
    if (v15 <= *([v16 _value] + 8))
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }
  }

  v18 = v11 >= v12 && v6 == v9;
  if (v18 && v7 < v8 == v13 < 0)
  {
    if (v13 >= 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = -v17;
    }

    v9 = (v19 + v6) & ~((v19 + v6) >> 63);
    v20 = [v4 _regions];
    v21 = [v20 count] - 1;

    if (v9 >= v21)
    {
      v9 = v21;
    }
  }

  [*(a1 + 32) setIndexOfCurrentDetent:v9];
  v22 = _UISheetTransitionSpringParametersHighSpeed(v11 >= v12);
  v23 = [*(a1 + 32) animator];
  [v23 _setInteractionEndedSpringParameters:v22];

  [*(a1 + 32) setDragSource:0];
}

@end