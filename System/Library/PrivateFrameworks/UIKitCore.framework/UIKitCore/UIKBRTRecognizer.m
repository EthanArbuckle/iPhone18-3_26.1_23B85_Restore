@interface UIKBRTRecognizer
@end

@implementation UIKBRTRecognizer

uint64_t __26___UIKBRTRecognizer_reset__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        [*(*(a1 + 32) + 24) logTouchInfo:v7 withPhase:4];
        [v7 invalidateTimer];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 80) removeAllObjects];
  [*(*(a1 + 32) + 88) removeAllObjects];
  [*(*(a1 + 32) + 104) removeAllObjects];
  v8 = *(a1 + 32);
  if (_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_HorizontalRestScaleValue, @"_UIKBRT_HorizontalRestScaleValue"))
  {
    v9 = 2.0;
  }

  else
  {
    v9 = *&qword_1EA95E1F0;
  }

  v10 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_VerticalRestScaleValue, @"_UIKBRT_VerticalRestScaleValue");
  v11 = *&qword_1EA95E1E0;
  if (v10)
  {
    v11 = 0.666666667;
  }

  *(v8 + 136) = v9;
  *(v8 + 144) = v11;
  result = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_MaximumNonRestMovePercent, @"_UIKBRT_MaximumNonRestMovePercent");
  v13 = *&qword_1EA95E200;
  if (result)
  {
    v13 = 0.333333333;
  }

  *(*(a1 + 32) + 56) = v13;
  *(*(a1 + 32) + 9) = 0;
  return result;
}

double __45___UIKBRTRecognizer_setStandardKeyPixelSize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_HorizontalRestScaleValue, @"_UIKBRT_HorizontalRestScaleValue");
  v5 = *&qword_1EA95E1F0;
  if (v4)
  {
    v5 = 2.0;
  }

  v6 = v3 * v5;
  v7 = *(a1 + 48);
  v8 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_VerticalRestScaleValue, @"_UIKBRT_VerticalRestScaleValue");
  v9 = *&qword_1EA95E1E0;
  if (v8)
  {
    v9 = 0.666666667;
  }

  *(v2 + 136) = v6;
  *(v2 + 144) = v7 * v9;
  v10 = *(a1 + 48);
  v11 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_MaximumNonRestMovePercent, @"_UIKBRT_MaximumNonRestMovePercent");
  v12 = *&qword_1EA95E200;
  if (v11)
  {
    v12 = 0.333333333;
  }

  result = v10 * v12;
  *(*(a1 + 32) + 56) = result;
  return result;
}

BOOL __48___UIKBRTRecognizer__doBeginTouchWithTouchInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 originalTimestamp];
  return v2 < v3;
}

void __48___UIKBRTRecognizer__doBeginTouchWithTouchInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained letRulesModifyPendingTouchInfo:v6];
    v5 = [v6 currentTouchState];
    if ((v5 - 1) < 3)
    {
      [v4 kbStatusMessage:{@"Resting touch on %@", v6}];
    }

    else
    {
      if ((v5 - 6) < 2)
      {
        [v4 kbStatusMessage:{@"Rested touch on %@", v6}];
        goto LABEL_11;
      }

      if (v5)
      {
        goto LABEL_11;
      }

      if ([v4 makeTouchActive:v6])
      {
        [v4 kbStatusMessage:{@"Activating touch on %@", v6}];
        goto LABEL_11;
      }

      [v4 kbStatusMessage:{@"Deactiving beginning touch on %@", v6}];
    }

    [v4 makeTouchIgnored:v6 force:1];
  }

LABEL_11:
}

uint64_t __83___UIKBRTRecognizer_updateIgnoredTouchesForTouchInfo_whenTouchInfo_changesStateTo___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) containsObject:*(a1 + 40)];
  if (result)
  {
      ;
    }

    if (result <= 5u)
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 104);

      return [v4 removeObject:v3];
    }
  }

  return result;
}

uint64_t __42___UIKBRTRecognizer_addedToActiveTouches___block_invoke(void *a1)
{
  result = [*(a1[4] + 88) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result ^ 1;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 88);

    return [v4 addObject:v3];
  }

  return result;
}

uint64_t __46___UIKBRTRecognizer_removedFromActiveTouches___block_invoke(void *a1)
{
  result = [*(a1[4] + 88) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 88);

    return [v4 removeObject:v3];
  }

  return result;
}

void __80___UIKBRTRecognizer_queryDelegateToBeginTouch_forBeginState_restartIfNecessary___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) addedToActiveTouches:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    v4 = [*(a1 + 40) touchIdentifier];
    [*(a1 + 40) originalTouchPoint];
    v6 = v5;
    v8 = v7;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __80___UIKBRTRecognizer_queryDelegateToBeginTouch_forBeginState_restartIfNecessary___block_invoke_2;
    v29[3] = &unk_1E71181C8;
    v9 = *(a1 + 64);
    v32 = *(a1 + 56);
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    [v3 recognizer:v2 beginTouchDownForTouchWithId:v4 atPoint:v9 forBeginState:v29 whenStateReady:{v6, v8}];

    v10 = v30;
LABEL_5:

    return;
  }

  if (*(a1 + 72) == 1)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 16);
    v13 = [*(a1 + 40) touchIdentifier];
    [*(a1 + 40) originalTimestamp];
    v15 = v14;
    [*(a1 + 40) originalTouchPoint];
    v17 = v16;
    v19 = v18;
    [*(a1 + 40) currentTouchPoint];
    v21 = v20;
    v23 = v22;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __80___UIKBRTRecognizer_queryDelegateToBeginTouch_forBeginState_restartIfNecessary___block_invoke_3;
    v25[3] = &unk_1E71181C8;
    v28 = *(a1 + 56);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    [v12 recognizer:v11 restartTouchDownForTouchWithId:v13 startingAt:v25 atPoint:v15 currentPoint:v17 whenStateReady:{v19, v21, v23}];

    v10 = v26;
    goto LABEL_5;
  }

  if (*(a1 + 64) == 2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v24 = *(a1 + 48);

  dispatch_semaphore_signal(v24);
}

void __80___UIKBRTRecognizer_queryDelegateToBeginTouch_forBeginState_restartIfNecessary___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = *(a1 + 32);
  v8 = a2;
  v6 = [v5 touchIdentifier];
  if (v6 == v8)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __80___UIKBRTRecognizer_queryDelegateToBeginTouch_forBeginState_restartIfNecessary___block_invoke_3(uint64_t a1, void *a2, char a3)
{
  v5 = *(a1 + 32);
  v8 = a2;
  v6 = [v5 touchIdentifier];
  if (v6 == v8)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __53___UIKBRTRecognizer_notifyDelegateOfSuccessfulTouch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(a1 + 40) touchIdentifier];
  [*(a1 + 40) originalTouchPoint];
  v6 = v5;
  v8 = v7;
  [*(a1 + 40) currentTouchPoint];
  v10 = v9;
  v12 = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___UIKBRTRecognizer_notifyDelegateOfSuccessfulTouch___block_invoke_2;
  v14[3] = &unk_1E7118218;
  v13 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v13;
  v16 = *(a1 + 48);
  [v3 recognizer:v2 releaseTouchToLayoutWithId:v4 startPoint:v14 endPoint:v6 whenReady:{v8, v10, v12}];
}

intptr_t __53___UIKBRTRecognizer_notifyDelegateOfSuccessfulTouch___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removedFromActiveTouches:*(a1 + 40)];
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

void __52___UIKBRTRecognizer_notifyDelegateOfCancelledTouch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(a1 + 40) touchIdentifier];
  [*(a1 + 40) originalTouchPoint];
  v6 = v5;
  v8 = v7;
  [*(a1 + 40) currentTouchPoint];
  v10 = v9;
  v12 = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52___UIKBRTRecognizer_notifyDelegateOfCancelledTouch___block_invoke_2;
  v14[3] = &unk_1E7118218;
  v13 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v13;
  v16 = *(a1 + 48);
  [v3 recognizer:v2 cancelTouchOnLayoutWithId:v4 startPoint:v14 endPoint:v6 whenReady:{v8, v10, v12}];
}

intptr_t __52___UIKBRTRecognizer_notifyDelegateOfCancelledTouch___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removedFromActiveTouches:*(a1 + 40)];
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

void __48___UIKBRTRecognizer_notifyDelegateOfMovedTouch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(a1 + 40) touchIdentifier];
  [*(a1 + 40) originalTimestamp];
  v6 = v5;
  [*(a1 + 40) originalTouchPoint];
  v8 = v7;
  v10 = v9;
  [*(a1 + 40) currentTouchPoint];
  v12 = v11;
  v14 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48___UIKBRTRecognizer_notifyDelegateOfMovedTouch___block_invoke_2;
  v15[3] = &unk_1E71181C8;
  v18 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  [v3 recognizer:v2 shouldContinueTrackingTouchWithId:v4 startingAt:0 atPoint:v15 currentPoint:v6 forContinueState:v8 whenStateReady:{v10, v12, v14}];
}

void __48___UIKBRTRecognizer_notifyDelegateOfMovedTouch___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = *(a1 + 32);
  v8 = a2;
  v6 = [v5 touchIdentifier];
  if (v6 == v8)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __55___UIKBRTRecognizer_notifyDelegateOfMovedIgnoredTouch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(a1 + 40) touchIdentifier];
  [*(a1 + 40) currentTouchPoint];
  v6 = v5;
  v8 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55___UIKBRTRecognizer_notifyDelegateOfMovedIgnoredTouch___block_invoke_2;
  v9[3] = &unk_1E7118240;
  v10 = *(a1 + 48);
  [v3 recognizer:v2 continueTrackingIgnoredTouchWithId:v4 currentPoint:v9 whenReady:{v6, v8}];
}

void __64___UIKBRTRecognizer_queryDelegateOfIgnoringTouch_forOtherTouch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(a1 + 40) touchIdentifier];
  [*(a1 + 40) originalTimestamp];
  v6 = v5;
  [*(a1 + 40) originalTouchPoint];
  v8 = v7;
  v10 = v9;
  [*(a1 + 40) currentTouchPoint];
  v12 = v11;
  v14 = v13;
  if (*(a1 + 64))
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64___UIKBRTRecognizer_queryDelegateOfIgnoringTouch_forOtherTouch___block_invoke_2;
  v16[3] = &unk_1E71181C8;
  v19 = *(a1 + 56);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  [v3 recognizer:v2 shouldContinueTrackingTouchWithId:v4 startingAt:v15 atPoint:v16 currentPoint:v6 forContinueState:v8 whenStateReady:{v10, v12, v14}];
}

void __64___UIKBRTRecognizer_queryDelegateOfIgnoringTouch_forOtherTouch___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = *(a1 + 32);
  v8 = a2;
  v6 = [v5 touchIdentifier];
  v7 = a3 ^ 1;
  if (v6 != v8)
  {
    v7 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __51___UIKBRTRecognizer_notifyDelegateOfIgnoringTouch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(a1 + 40) touchIdentifier];
  [*(a1 + 40) originalTimestamp];
  v6 = v5;
  [*(a1 + 40) originalTouchPoint];
  v8 = v7;
  v10 = v9;
  [*(a1 + 40) currentTouchPoint];
  v12 = v11;
  v14 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51___UIKBRTRecognizer_notifyDelegateOfIgnoringTouch___block_invoke_2;
  v15[3] = &unk_1E7118240;
  v16 = *(a1 + 48);
  [v3 recognizer:v2 willIgnoreTouchWithId:v4 startingAt:v15 atPoint:v6 currentPoint:v8 whenReady:{v10, v12, v14}];
}

void __54___UIKBRTRecognizer_cancelTouchOnLayoutWithTouchInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = [*(a1 + 40) touchIdentifier];
  [*(a1 + 40) originalTouchPoint];
  v6 = v5;
  v8 = v7;
  [*(a1 + 40) currentTouchPoint];
  v10 = v9;
  v12 = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54___UIKBRTRecognizer_cancelTouchOnLayoutWithTouchInfo___block_invoke_2;
  v13[3] = &unk_1E7118240;
  v14 = *(a1 + 48);
  [v3 recognizer:v2 cancelTouchOnLayoutWithId:v4 startPoint:v13 endPoint:v6 whenReady:{v8, v10, v12}];
}

void __37___UIKBRTRecognizer_makeTouchActive___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained queryDelegateOfRestingTouch:v5])
    {
      [v4 notifyDelegateOfRestingTouch:v5];
    }

    else if ([v5 currentTouchState] != 5)
    {
      ++*(*(a1 + 32) + 120);
      [v5 setCurrentTouchState:5];
    }
  }
}

uint64_t __56___UIKBRTRecognizer_makeTouchIgnored_force_withMessage___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 104);

    return [v4 addObject:v3];
  }

  return result;
}

@end