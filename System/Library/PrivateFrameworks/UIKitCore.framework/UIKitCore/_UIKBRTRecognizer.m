@interface _UIKBRTRecognizer
- (BOOL)addedToActiveTouches:(id)a3;
- (BOOL)makeTouchActive:(id)a3;
- (BOOL)notifyDelegateOfMovedTouch:(id)a3;
- (BOOL)queryDelegateOfIgnoringTouch:(id)a3 forOtherTouch:(BOOL)a4;
- (BOOL)queryDelegateToBeginTouch:(id)a3 forBeginState:(unint64_t)a4 restartIfNecessary:(BOOL)a5;
- (BOOL)removedFromActiveTouches:(id)a3;
- (CGSize)clusterRestHaloSize;
- (_UIKBRTRecognizer)init;
- (float)letRulesModifyNewTouchInfo:(id)a3;
- (void)_doBeginTouchWithTouchInfo:(id)a3;
- (void)_doCancelledTouchWithTouchInfo:(id)a3;
- (void)_doEndedTouchWithTouchInfo:(id)a3;
- (void)_doIgnoreTouchWithTouchInfo:(id)a3;
- (void)_doMarkTouchProcessedWithTouchInfo:(id)a3;
- (void)_doMovedTouchWithTouchInfo:(id)a3;
- (void)cancelTouchOnLayoutWithTouchInfo:(id)a3;
- (void)explicitlyIgnoreTouch:(id)a3 withIdentifier:(id)a4;
- (void)letRulesModifyPendingTouchInfo:(id)a3;
- (void)makeTouchIgnored:(id)a3 force:(BOOL)a4 because:(id)a5;
- (void)makeTouchIgnored:(id)a3 force:(BOOL)a4 withMessage:(id)a5;
- (void)markTouchProcessed:(id)a3 withIdentifier:(id)a4;
- (void)notifyDelegateOfCancelledTouch:(id)a3;
- (void)notifyDelegateOfIgnoringTouch:(id)a3;
- (void)notifyDelegateOfMovedIgnoredTouch:(id)a3;
- (void)notifyDelegateOfRestingTouch:(id)a3;
- (void)notifyDelegateOfSuccessfulTouch:(id)a3;
- (void)processTouchInfo:(id)a3;
- (void)reset;
- (void)setDisableHomeRowReturn:(BOOL)a3;
- (void)setStandardKeyPixelSize:(CGSize)a3;
- (void)touchCancelled:(id)a3 withIdentifier:(id)a4;
- (void)touchDown:(id)a3 withIdentifier:(id)a4 canLogTouch:(BOOL)a5;
- (void)touchDragged:(id)a3 withIdentifier:(id)a4;
- (void)touchUp:(id)a3 withIdentifier:(id)a4;
- (void)updateIgnoredTouchesForTouchInfo:(id)a3 whenTouchInfo:(id)a4 changesStateTo:(char)a5;
@end

@implementation _UIKBRTRecognizer

- (_UIKBRTRecognizer)init
{
  v23.receiver = self;
  v23.super_class = _UIKBRTRecognizer;
  v2 = [(_UIKBRTRecognizer *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("_UIKBRTRecognizerQueue", v3);
    touchQueue = v2->_touchQueue;
    v2->_touchQueue = v4;

    v6 = dispatch_queue_create("_UIKBRTRecognizerDelegateQueue", v3);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v6;

    v8 = objc_opt_new();
    touchInfos = v2->_touchInfos;
    v2->_touchInfos = v8;

    v10 = objc_opt_new();
    activeTouches = v2->_activeTouches;
    v2->_activeTouches = v10;

    v12 = dispatch_queue_create("_UIKBRTRecogizerActiveTouchesQueue", 0);
    activeTouchesQueue = v2->_activeTouchesQueue;
    v2->_activeTouchesQueue = v12;

    v14 = objc_opt_new();
    ignoredTouches = v2->_ignoredTouches;
    v2->_ignoredTouches = v14;

    v16 = dispatch_queue_create("_UIKBRTRecognizerIgnoredTouchesQueue", 0);
    ignoredTouchesQueue = v2->_ignoredTouchesQueue;
    v2->_ignoredTouchesQueue = v16;

    v18 = objc_opt_new();
    definitiveRules = v2->_definitiveRules;
    v2->_definitiveRules = v18;

    v20 = objc_opt_new();
    averagingRules = v2->_averagingRules;
    v2->_averagingRules = v20;

    v2->_maximumNonRestMoveDistance = 0.0;
    v2->_clusterRestHaloSize.width = 0.0;
    v2->_clusterRestHaloSize.height = 0.0;
  }

  return v2;
}

- (void)reset
{
  self->_isWaiting = 0;
  touchQueue = self->_touchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26___UIKBRTRecognizer_reset__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(touchQueue, block);
}

- (void)setStandardKeyPixelSize:(CGSize)a3
{
  touchQueue = self->_touchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___UIKBRTRecognizer_setStandardKeyPixelSize___block_invoke;
  block[3] = &unk_1E70F6848;
  block[4] = self;
  v5 = a3;
  dispatch_async(touchQueue, block);
}

- (void)setDisableHomeRowReturn:(BOOL)a3
{
  touchQueue = self->_touchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45___UIKBRTRecognizer_setDisableHomeRowReturn___block_invoke;
  v4[3] = &unk_1E70F35E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(touchQueue, v4);
}

- (float)letRulesModifyNewTouchInfo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [(NSMutableSet *)self->_definitiveRules copy];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v35 + 1) + 8 * i) recognizer:self touchStateForNewTouchInfo:v4];
        if (v10 != [v4 currentTouchState])
        {
          [v4 setCurrentTouchState:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = 1.0;
  if ([(NSMutableSet *)self->_averagingRules count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [(NSMutableSet *)self->_averagingRules copy];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v32;
      v17 = 0.0;
      v18 = 0.0;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v20 = [*(*(&v31 + 1) + 8 * j) recognizer:self confidenceWhenPendingTouchInfo:v4];
          v21 = v20;
          if (v20)
          {
            [v20 touchConfidence];
            if (v22 <= 1.0)
            {
              v23 = v22;
            }

            else
            {
              v23 = 1.0;
            }

            if (v22 >= 0.0)
            {
              v24 = v23;
            }

            else
            {
              v24 = 0.0;
            }

            [v21 restConfidence];
            if (v25 <= 1.0)
            {
              v26 = v25;
            }

            else
            {
              v26 = 1.0;
            }

            if (v25 >= 0.0)
            {
              v27 = v26;
            }

            else
            {
              v27 = 0.0;
            }

            v18 = v18 + v24;
            v17 = v17 + v27;
            ++v15;
            if (v24 >= v27)
            {
              v27 = v24;
            }

            if (v27 > 0.5)
            {
              [v21 confidenceCheckTimeout];
              v11 = 1.0 - v28;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v14);

      if (v15)
      {
        if (v18 >= v17)
        {
          v29 = v18;
        }

        else
        {
          v29 = v17;
        }

        if ((v29 / v15) > 0.5)
        {
          [v4 setCurrentTouchState:v18 <= v17];
        }
      }
    }

    else
    {
    }
  }

  return v11;
}

- (void)letRulesModifyPendingTouchInfo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 currentTouchState] == 3)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [(NSMutableSet *)self->_definitiveRules copy];
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v34 + 1) + 8 * i) recognizer:self touchStateForPendingTouchInfo:v4];
          if (v10 != [v4 currentTouchState])
          {
            [v4 setCurrentTouchState:v10];
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  if ([v4 currentTouchState] == 3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [(NSMutableSet *)self->_averagingRules copy];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v31;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v19 = [*(*(&v30 + 1) + 8 * j) recognizer:self confidenceWhenSettingTouchInfo:v4];
          v20 = v19;
          if (v19)
          {
            [v19 touchConfidence];
            if (v21 <= 1.0)
            {
              v22 = v21;
            }

            else
            {
              v22 = 1.0;
            }

            if (v21 >= 0.0)
            {
              v23 = v22;
            }

            else
            {
              v23 = 0.0;
            }

            v17 = v17 + v23;
            [v20 restConfidence];
            if (v24 <= 1.0)
            {
              v25 = v24;
            }

            else
            {
              v25 = 1.0;
            }

            if (v24 >= 0.0)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0.0;
            }

            v16 = v16 + v26;
            ++v14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v13);

      if (v14)
      {
        v27 = v17 >= v16 ? v17 : v16;
        if ((v27 / v14) > 0.5)
        {
          v28 = v4;
          if (v17 <= v16)
          {
            if ([v4 preRuleTouchState] == 2)
            {
              v28 = v4;
              v29 = 2;
            }

            else
            {
              v28 = v4;
              v29 = 1;
            }
          }

          else
          {
            v29 = 0;
          }

          [v28 setCurrentTouchState:v29];
        }
      }
    }

    else
    {
    }
  }

  if ([v4 currentTouchState] == 3)
  {
    [v4 setCurrentTouchState:{objc_msgSend(v4, "preRuleTouchState")}];
    [v4 setPreRuleTouchState:0xFFFFFFFFLL];
  }
}

- (void)_doBeginTouchWithTouchInfo:(id)a3
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 touchIdentifier];

  if (!v5)
  {
    [(_UIKBRTRecognizer *)self makeTouchIgnored:v4 force:1];
    goto LABEL_107;
  }

  [(_UIKBRTRecognizer *)self kbStatusMessage:@"Beginning touch on %@", v4];
  [v4 originalTimestamp];
  v7 = v6;
  [(_UIKBRTRecognizerTouchPointTrackingProtocol *)self->_touchTracker addTouchInfo:v4];
  [v4 currentTimestamp];
  v9 = v8;
  touchInfos = self->_touchInfos;
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __48___UIKBRTRecognizer__doBeginTouchWithTouchInfo___block_invoke;
  v102[3] = &__block_descriptor_40_e26_B16__0___UIKBRTTouchInfo_8l;
  *&v102[4] = v7;
  [(NSMutableArray *)touchInfos _uikbrtInsert:v4 beforeItemPassingTest:v102];
  [v4 currentTouchPoint];
  v12 = v11;
  v82 = objc_opt_new();
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v13 = [(NSMutableArray *)self->_touchInfos reverseObjectEnumerator];
  v14 = 0;
  v15 = [v13 countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (!v15)
  {
    v81 = 0;
    goto LABEL_42;
  }

  v81 = 0;
  v16 = *v99;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v99 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v98 + 1) + 8 * i);
      if (v18 == v4)
      {
        continue;
      }

      [*(*(&v98 + 1) + 8 * i) originalTimestamp];
      v20 = v19;
      v21 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_SetDownTapInterval, @"_UIKBRT_SetDownTapInterval");
      v22 = *&qword_1EA95E1A0;
      if (v21)
      {
        v22 = 0.04;
      }

      v23 = v7 - v20 > v22 && [v82 count] == self->_numProlongedTouches;
      for (j = [v18 currentTouchState]; ; j = objc_msgSend(v18, "preRuleTouchState"))
      {
        v25 = j;
        if (j != 3)
        {
          break;
        }
      }

      if (j > 5u)
      {
        if (j - 6 >= 2)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (j == 1)
        {
          ++v14;
          goto LABEL_36;
        }

        if (j != 2)
        {
          if (j == 5)
          {
            [v18 currentTouchPoint];
            v27 = v26;
            [v4 currentTouchPoint];
            if (vabdd_f64(v27, v28) < self->_clusterRestHaloSize.width)
            {
              [v18 currentTouchPoint];
              if (vabdd_f64(v29, v12) < self->_clusterRestHaloSize.height && ![(_UIKBRTRecognizer *)self queryDelegateOfIgnoringTouch:v4 forOtherTouch:1])
              {
                [v82 addObject:v18];
              }
            }
          }

          goto LABEL_36;
        }
      }

      if (!self->_disableHomeRowReturn)
      {
        [v18 currentTouchPoint];
        v31 = v30;
        [v4 currentTouchPoint];
        if (vabdd_f64(v31, v32) >= self->_clusterRestHaloSize.width || ([v18 currentTouchPoint], vabdd_f64(v33, v12) >= self->_clusterRestHaloSize.height))
        {
          if (v25 != 5)
          {
            [v18 originalTimestamp];
            v35 = v34;
            v36 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_SetDownTapInterval, @"_UIKBRT_SetDownTapInterval");
            v37 = *&qword_1EA95E1A0;
            if (v36)
            {
              v37 = 0.04;
            }

            if (v7 - v35 <= v37)
            {
              ++v14;
            }
          }
        }

        else
        {
          ++v81;
          if ([v82 count] == self->_numProlongedTouches)
          {
            goto LABEL_42;
          }
        }

        continue;
      }

LABEL_36:
      if (v23)
      {
        goto LABEL_42;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v98 objects:v106 count:16];
  }

  while (v15);
LABEL_42:

  if ([v82 count])
  {
    [v82 count];
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v38 = v82;
    v39 = [v38 countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (v39)
    {
      v40 = *v95;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v95 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v94 + 1) + 8 * k);
          [(_UIKBRTRecognizer *)self makeTouchIgnored:v42 force:1];
          [v42 setCurrentTouchState:7];
        }

        v39 = [v38 countByEnumeratingWithState:&v94 objects:v105 count:16];
      }

      while (v39);
    }

    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_403);
    [(_UIKBRTRecognizer *)self makeTouchIgnored:v4 force:1];
    goto LABEL_106;
  }

  if (v14 >= 2)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v43 = [(NSMutableArray *)self->_touchInfos reverseObjectEnumerator];
    v44 = [v43 countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (!v44)
    {
LABEL_73:

      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_31_2);
      goto LABEL_106;
    }

    v45 = 0;
    v46 = *v91;
    while (2)
    {
      v47 = 0;
LABEL_55:
      if (*v91 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v48 = *(*(&v90 + 1) + 8 * v47);
      [v48 originalTimestamp];
      v50 = v49;
      v51 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_SetDownTapInterval, @"_UIKBRT_SetDownTapInterval");
      v52 = *&qword_1EA95E1A0;
      if (v51)
      {
        v52 = 0.04;
      }

      if (((v7 - v50 > v52) & v45) != 0)
      {
        goto LABEL_73;
      }

      v53 = v48 == v4;
      v54 = [v48 currentTouchState];
      v45 |= v53;
      if (v54 >= 4)
      {
        if (v54 == 7)
        {
          v55 = v45;
        }

        else
        {
          if (v54 == 5)
          {
            goto LABEL_61;
          }

          v55 = 0;
        }
      }

      else
      {
LABEL_61:
        v55 = 0;
        v53 = 1;
      }

      if ((v55 & 1) != 0 || !v53)
      {
        if (v55)
        {
          goto LABEL_73;
        }
      }

      else
      {
        [(_UIKBRTRecognizer *)self makeTouchIgnored:v48 force:1];
        [v48 setCurrentTouchState:7];
      }

      if (v44 == ++v47)
      {
        v56 = [v43 countByEnumeratingWithState:&v90 objects:v104 count:16];
        v44 = v56;
        if (v56)
        {
          continue;
        }

        goto LABEL_73;
      }

      goto LABEL_55;
    }
  }

  if (v81 && ![v4 currentTouchState])
  {
    [v4 setCurrentTouchState:2];
  }

  if (_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_SetDownTapInterval, @"_UIKBRT_SetDownTapInterval"))
  {
    v57 = 0.04;
  }

  else
  {
    v57 = *&qword_1EA95E1A0;
  }

  [v4 setPreRuleTouchState:{objc_msgSend(v4, "currentTouchState")}];
  [(_UIKBRTRecognizer *)self letRulesModifyNewTouchInfo:v4];
  v59 = v58;
  v60 = [MEMORY[0x1E695DFD8] set];
  v61 = [v4 currentTouchState];
  v62 = [v4 previousTouch];

  if (v62)
  {
    v63 = [v4 previousTouch];
    v64 = [v63 setOfTouchesToIgnoreWhenSettingTouchInfo:v4 toState:{objc_msgSend(v4, "currentTouchState")}];
    v65 = [v60 setByAddingObjectsFromSet:v64];

    v60 = v65;
  }

  v66 = [v4 nextTouch];

  if (v66)
  {
    v67 = [v4 nextTouch];
    v68 = [v67 setOfTouchesToIgnoreWhenSettingTouchInfo:v4 toState:{objc_msgSend(v4, "currentTouchState")}];
    v69 = [v60 setByAddingObjectsFromSet:v68];

    v60 = v69;
  }

  if ([v4 currentTouchState] != v61)
  {
    v70 = [v4 previousTouch];

    if (v70)
    {
      v71 = [v4 previousTouch];
      v72 = [v71 setOfTouchesToIgnoreWhenSettingTouchInfo:v4 toState:{objc_msgSend(v4, "currentTouchState")}];
      v73 = [v60 setByAddingObjectsFromSet:v72];

      v60 = v73;
    }

    [(_UIKBRTRecognizer *)self letRulesModifyNewTouchInfo:v4];
    if (v59 >= v74)
    {
      v59 = v74;
    }
  }

  if ([v4 currentTouchState] == 6)
  {
    v75 = [v60 setByAddingObject:v4];

    v60 = v75;
  }

  else if ([(NSMutableSet *)self->_definitiveRules count]|| [(NSMutableSet *)self->_averagingRules count])
  {
    [v4 setPreRuleTouchState:{objc_msgSend(v4, "currentTouchState")}];
    [v4 setCurrentTouchState:3];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v76 = v60;
  v77 = [v76 countByEnumeratingWithState:&v86 objects:v103 count:16];
  if (v77)
  {
    v78 = *v87;
    do
    {
      for (m = 0; m != v77; ++m)
      {
        if (*v87 != v78)
        {
          objc_enumerationMutation(v76);
        }

        [(_UIKBRTRecognizer *)self makeTouchIgnored:*(*(&v86 + 1) + 8 * m) force:1];
      }

      v77 = [v76 countByEnumeratingWithState:&v86 objects:v103 count:16];
    }

    while (v77);
  }

  if ([v4 currentTouchState] <= 3)
  {
    if (v59 < 1.0)
    {
      v57 = v57 * 0.25 + v57 * 0.25 * v59 * 3.0 * 0.25;
    }

    objc_initWeak(&location, self);
    touchQueue = self->_touchQueue;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __48___UIKBRTRecognizer__doBeginTouchWithTouchInfo___block_invoke_4;
    v83[3] = &unk_1E71181A0;
    objc_copyWeak(&v84, &location);
    [v4 setTimerWithTimeInterval:touchQueue onQueue:v83 do:v7 + v57 - v9];
    objc_destroyWeak(&v84);
    objc_destroyWeak(&location);
  }

LABEL_106:
LABEL_107:
}

- (void)touchDown:(id)a3 withIdentifier:(id)a4 canLogTouch:(BOOL)a5
{
  v6 = [_UIKBRTTouchInfo createTouchInfoForTouch:a3 withIdentifier:a4 canLogTouch:a5];
  [(_UIKBRTRecognizerTouchLoggingProtocol *)self->_touchLogger logTouchInfo:v6 withPhase:0];
  touchQueue = self->_touchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___UIKBRTRecognizer_touchDown_withIdentifier_canLogTouch___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(touchQueue, v9);
}

- (void)_doMovedTouchWithTouchInfo:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_ignoredTouches containsObject:?]& 1) != 0)
  {
    [(_UIKBRTRecognizer *)self notifyDelegateOfMovedIgnoredTouch:v4];
    [(_UIKBRTRecognizerTouchPointTrackingProtocol *)self->_touchTracker moveTouchInfo:v4];
  }

  else
  {
    [(_UIKBRTRecognizer *)self kbStatusMessage:@"Moving touch on %@", v4];
    [(_UIKBRTRecognizerTouchPointTrackingProtocol *)self->_touchTracker moveTouchInfo:v4];
    if (![(_UIKBRTRecognizer *)self notifyDelegateOfMovedTouch:v4])
    {
      [(_UIKBRTRecognizer *)self makeTouchIgnored:v4 force:1];
    }
  }
}

- (void)touchDragged:(id)a3 withIdentifier:(id)a4
{
  v5 = [_UIKBRTTouchInfo touchInfoForTouch:a3 withIdentifier:a4];
  if (v5)
  {
    [(_UIKBRTRecognizerTouchLoggingProtocol *)self->_touchLogger logTouchInfo:v5 withPhase:1];
    touchQueue = self->_touchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49___UIKBRTRecognizer_touchDragged_withIdentifier___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = v5;
    dispatch_async(touchQueue, v7);
  }
}

- (void)_doEndedTouchWithTouchInfo:(id)a3
{
  v4 = a3;
  [(_UIKBRTRecognizer *)self letRulesModifyPendingTouchInfo:v4];
  if (![(NSMutableArray *)self->_ignoredTouches containsObject:v4])
  {
    v9 = &stru_1EFB14550;
    v27 = [v4 touchIdentifier];

    if (!v27 || [v4 currentTouchState] || -[_UIKBRTRecognizer makeTouchActive:](self, "makeTouchActive:", v4))
    {
      v26 = 0;
    }

    else
    {
      v26 = 1;
      [(_UIKBRTRecognizer *)self makeTouchIgnored:v4 force:1];
      v9 = @"initially-active ";
    }

    goto LABEL_29;
  }

  ignoredTouchesQueue = self->_ignoredTouchesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48___UIKBRTRecognizer__doEndedTouchWithTouchInfo___block_invoke;
  block[3] = &unk_1E70F35B8;
  block[4] = self;
  v6 = v4;
  v34 = v6;
  dispatch_sync(ignoredTouchesQueue, block);

  [v6 currentTimestamp];
  v8 = v7;
  v9 = @"ignored ";
  v10 = [v6 touchIdentifier];

  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_MinimumRestHoldInterval, @"_UIKBRT_MinimumRestHoldInterval") ? 0.0 : *&qword_1EA95E1C0;
  v12 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_MaximumRestHoldInterval, @"_UIKBRT_MaximumRestHoldInterval") ? 0.25 : *&qword_1EA95E1D0;
  v13 = [v6 currentTouchState];
  if (v13 != 1 && v13 != 6)
  {
    goto LABEL_28;
  }

  [v6 currentTouchPoint];
  v15 = v14;
  [v6 originalTouchPoint];
  v17 = v16;
  [v6 currentTouchPoint];
  v19 = v18;
  [v6 originalTouchPoint];
  v21 = v20;
  [v6 originalTimestamp];
  v22 = (v15 - v17) * (v15 - v17) + (v19 - v21) * (v19 - v21);
  v23 = sqrtf(v22);
  v25 = v8 - v24;
  if (self->_maximumNonRestMoveDistance <= v23)
  {
    [v6 maximumRadius];
    if (v28 <= v23 || v11 > v25 || v25 > v12)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v26 = 1;
  if (v11 <= v25 && v25 <= v12)
  {
LABEL_26:
    if ([(_UIKBRTRecognizer *)self queryDelegateToBeginTouch:v6 forBeginState:1 restartIfNecessary:1])
    {
      [v6 setCurrentTouchState:1];
      v26 = 0;
      v9 = @"initially-ignored ";
      goto LABEL_29;
    }

LABEL_28:
    v26 = 1;
  }

LABEL_29:
  [(_UIKBRTRecognizer *)self queryDelegateToBeginTouch:v4 forBeginState:2 restartIfNecessary:0];
  if ((v26 & 1) != 0 || ([v4 touchIdentifier], v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
  {
    v32 = [v4 touchIdentifier];

    if (v32)
    {
      [(_UIKBRTRecognizer *)self notifyDelegateOfCancelledTouch:v4];
    }
  }

  else
  {
    [(_UIKBRTRecognizer *)self processTouchInfo:v4];
  }

  [v4 cleanup];
  [(_UIKBRTRecognizer *)self kbStatusMessage:@"Ended %@touch on %@", v9, v4];
}

- (void)touchUp:(id)a3 withIdentifier:(id)a4
{
  v5 = [_UIKBRTTouchInfo touchInfoForTouch:a3 withIdentifier:a4];
  if (v5)
  {
    [(_UIKBRTRecognizerTouchLoggingProtocol *)self->_touchLogger logTouchInfo:v5 withPhase:3];
    [v5 invalidateTimer];
    touchQueue = self->_touchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44___UIKBRTRecognizer_touchUp_withIdentifier___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = v5;
    dispatch_async(touchQueue, v7);
  }
}

- (void)_doCancelledTouchWithTouchInfo:(id)a3
{
  v4 = a3;
  [(_UIKBRTRecognizer *)self kbStatusMessage:@"Cancelling touch on %@", v4];
  ignoredTouchesQueue = self->_ignoredTouchesQueue;
  block = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52___UIKBRTRecognizer__doCancelledTouchWithTouchInfo___block_invoke;
  v11 = &unk_1E70F35B8;
  v12 = self;
  v6 = v4;
  v13 = v6;
  dispatch_sync(ignoredTouchesQueue, &block);
  v7 = [v6 touchIdentifier];

  if (v7)
  {
    [(_UIKBRTRecognizer *)self cancelTouchOnLayoutWithTouchInfo:v6];
  }

  [v4 cleanup];
  [(_UIKBRTRecognizer *)self kbStatusMessage:@"Cancelled %@touch on %@", &stru_1EFB14550, v4, block, v9, v10, v11, v12];
}

- (void)touchCancelled:(id)a3 withIdentifier:(id)a4
{
  v5 = [_UIKBRTTouchInfo touchInfoForTouch:a3 withIdentifier:a4];
  if (v5)
  {
    [(_UIKBRTRecognizerTouchLoggingProtocol *)self->_touchLogger logTouchInfo:v5 withPhase:4];
    [v5 invalidateTimer];
    touchQueue = self->_touchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51___UIKBRTRecognizer_touchCancelled_withIdentifier___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = v5;
    dispatch_async(touchQueue, v7);
  }
}

- (void)_doMarkTouchProcessedWithTouchInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 invalidateTimer];
    ignoredTouchesQueue = self->_ignoredTouchesQueue;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __56___UIKBRTRecognizer__doMarkTouchProcessedWithTouchInfo___block_invoke;
    v11 = &unk_1E70F35B8;
    v12 = self;
    v7 = v5;
    v13 = v7;
    dispatch_sync(ignoredTouchesQueue, &v8);
    if ([(_UIKBRTRecognizer *)self removedFromActiveTouches:v7, v8, v9, v10, v11, v12])
    {
      [(_UIKBRTRecognizerTouchLoggingProtocol *)self->_touchLogger closeTouchInfo:v7];
    }

    [v7 cleanup];
  }
}

- (void)markTouchProcessed:(id)a3 withIdentifier:(id)a4
{
  v5 = [_UIKBRTTouchInfo touchInfoForTouch:a3 withIdentifier:a4];
  touchQueue = self->_touchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___UIKBRTRecognizer_markTouchProcessed_withIdentifier___block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(touchQueue, v8);
}

- (void)_doIgnoreTouchWithTouchInfo:(id)a3
{
  if (a3)
  {
    touchLogger = self->_touchLogger;
    v5 = a3;
    [(_UIKBRTRecognizerTouchLoggingProtocol *)touchLogger logTouchInfo:v5 withPhase:4];
    [v5 invalidateTimer];
    [(_UIKBRTRecognizer *)self makeTouchIgnored:v5 force:1];
  }
}

- (void)explicitlyIgnoreTouch:(id)a3 withIdentifier:(id)a4
{
  v5 = [_UIKBRTTouchInfo touchInfoForTouch:a3 withIdentifier:a4];
  touchQueue = self->_touchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___UIKBRTRecognizer_explicitlyIgnoreTouch_withIdentifier___block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(touchQueue, v8);
}

- (void)updateIgnoredTouchesForTouchInfo:(id)a3 whenTouchInfo:(id)a4 changesStateTo:(char)a5
{
  v5 = a5;
  v8 = a3;
  if ([v8 willChangeTouchInfo:a4 toState:v5])
  {
    ignoredTouchesQueue = self->_ignoredTouchesQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83___UIKBRTRecognizer_updateIgnoredTouchesForTouchInfo_whenTouchInfo_changesStateTo___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v8;
    dispatch_sync(ignoredTouchesQueue, v10);
  }
}

- (void)processTouchInfo:(id)a3
{
  v10 = a3;
  [v10 invalidateTimer];
  v4 = [v10 currentTouchState];
  if (v4 == 3 || v4 == 6)
  {
    v6 = 0;
    v5 = 6;
  }

  else
  {
    if (v4 == 5)
    {
      --self->_numProlongedTouches;
    }

    v5 = 8;
    v6 = 1;
  }

  if ([v10 currentTouchState] != v5)
  {
    v7 = [v10 previousTouch];
    [(_UIKBRTRecognizer *)self updateIgnoredTouchesForTouchInfo:v7 whenTouchInfo:v10 changesStateTo:v5];

    v8 = [v10 nextTouch];
    [(_UIKBRTRecognizer *)self updateIgnoredTouchesForTouchInfo:v8 whenTouchInfo:v10 changesStateTo:v5];

    [v10 setCurrentTouchState:v5];
    if (v6)
    {
      [(_UIKBRTRecognizer *)self notifyDelegateOfSuccessfulTouch:v10];
    }

    else
    {
      v9 = [v10 touchIdentifier];

      if (v9)
      {
        [(_UIKBRTRecognizer *)self notifyDelegateOfCancelledTouch:v10];
      }
    }
  }
}

- (BOOL)addedToActiveTouches:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  activeTouchesQueue = self->_activeTouchesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UIKBRTRecognizer_addedToActiveTouches___block_invoke;
  block[3] = &unk_1E70FB728;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(activeTouchesQueue, block);
  LOBYTE(activeTouchesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return activeTouchesQueue;
}

- (BOOL)removedFromActiveTouches:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  activeTouchesQueue = self->_activeTouchesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___UIKBRTRecognizer_removedFromActiveTouches___block_invoke;
  block[3] = &unk_1E70FB728;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(activeTouchesQueue, block);
  LOBYTE(activeTouchesQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return activeTouchesQueue;
}

- (BOOL)queryDelegateToBeginTouch:(id)a3 forBeginState:(unint64_t)a4 restartIfNecessary:(BOOL)a5
{
  v8 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (self->_delegate)
  {
    v9 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80___UIKBRTRecognizer_queryDelegateToBeginTouch_forBeginState_restartIfNecessary___block_invoke;
    v15[3] = &unk_1E71181F0;
    v15[4] = self;
    v18 = &v21;
    v19 = a4;
    v16 = v8;
    v11 = v9;
    v17 = v11;
    v20 = a5;
    dispatch_async(delegateQueue, v15);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v12 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v11, v12));
    self->_isWaiting = 0;

    v13 = *(v22 + 24);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v13 & 1;
}

- (void)notifyDelegateOfSuccessfulTouch:(id)a3
{
  v5 = a3;
  v6 = [v5 touchIdentifier];

  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIKBRTRecognizer.m" lineNumber:983 description:@"Can't succeed on a touch that we're supposed to be ignoring!"];
  }

  if (([(NSMutableSet *)self->_activeTouches containsObject:v5]& 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIKBRTRecognizer.m" lineNumber:984 description:@"Can't succeed on a touch that isn't already active!"];
  }

  if ([(NSMutableArray *)self->_ignoredTouches containsObject:v5])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIKBRTRecognizer.m" lineNumber:985 description:@"Can't succeed on a touch that we're supposed to be ignoring!"];
  }

  if (self->_delegate)
  {
    v7 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___UIKBRTRecognizer_notifyDelegateOfSuccessfulTouch___block_invoke;
    block[3] = &unk_1E70F6228;
    block[4] = self;
    v15 = v5;
    v9 = v7;
    v16 = v9;
    dispatch_async(delegateQueue, block);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v10 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v9, v10));
    self->_isWaiting = 0;
  }
}

- (void)notifyDelegateOfCancelledTouch:(id)a3
{
  v5 = a3;
  v6 = [v5 touchIdentifier];

  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIKBRTRecognizer.m" lineNumber:1006 description:@"Can't succeed on a touch that we're supposed to be ignoring!"];
  }

  if ([(NSMutableSet *)self->_activeTouches containsObject:v5]&& self->_delegate)
  {
    v7 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52___UIKBRTRecognizer_notifyDelegateOfCancelledTouch___block_invoke;
    block[3] = &unk_1E70F6228;
    block[4] = self;
    v13 = v5;
    v9 = v7;
    v14 = v9;
    dispatch_async(delegateQueue, block);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v10 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v9, v10));
    self->_isWaiting = 0;
  }
}

- (BOOL)notifyDelegateOfMovedTouch:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  [(_UIKBRTRecognizer *)self queryDelegateToBeginTouch:v4 forBeginState:1 restartIfNecessary:0];
  if (self->_delegate)
  {
    v5 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48___UIKBRTRecognizer_notifyDelegateOfMovedTouch___block_invoke;
    v11[3] = &unk_1E70FF0C8;
    v11[4] = self;
    v12 = v4;
    v14 = &v15;
    v7 = v5;
    v13 = v7;
    dispatch_async(delegateQueue, v11);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v8 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v7, v8));
    self->_isWaiting = 0;
  }

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)notifyDelegateOfMovedIgnoredTouch:(id)a3
{
  v4 = a3;
  [(_UIKBRTRecognizer *)self queryDelegateToBeginTouch:v4 forBeginState:0 restartIfNecessary:0];
  if (self->_delegate)
  {
    v5 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55___UIKBRTRecognizer_notifyDelegateOfMovedIgnoredTouch___block_invoke;
    block[3] = &unk_1E70F6228;
    block[4] = self;
    v10 = v4;
    v7 = v5;
    v11 = v7;
    dispatch_async(delegateQueue, block);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v8 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v7, v8));
    self->_isWaiting = 0;
  }
}

- (BOOL)queryDelegateOfIgnoringTouch:(id)a3 forOtherTouch:(BOOL)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  [(_UIKBRTRecognizer *)self queryDelegateToBeginTouch:v6 forBeginState:0 restartIfNecessary:0];
  if (self->_delegate)
  {
    v7 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___UIKBRTRecognizer_queryDelegateOfIgnoringTouch_forOtherTouch___block_invoke;
    block[3] = &unk_1E7118268;
    block[4] = self;
    v17 = a4;
    v14 = v6;
    v16 = &v18;
    v9 = v7;
    v15 = v9;
    dispatch_async(delegateQueue, block);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v10 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v9, v10));
    self->_isWaiting = 0;
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)notifyDelegateOfIgnoringTouch:(id)a3
{
  v4 = a3;
  [(_UIKBRTRecognizer *)self queryDelegateToBeginTouch:v4 forBeginState:0 restartIfNecessary:0];
  if (self->_delegate)
  {
    v5 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51___UIKBRTRecognizer_notifyDelegateOfIgnoringTouch___block_invoke;
    block[3] = &unk_1E70F6228;
    block[4] = self;
    v10 = v4;
    v7 = v5;
    v11 = v7;
    dispatch_async(delegateQueue, block);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v8 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v7, v8));
    self->_isWaiting = 0;
  }
}

- (void)notifyDelegateOfRestingTouch:(id)a3
{
  v7 = a3;
  v5 = [v7 touchIdentifier];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIKBRTRecognizer.m" lineNumber:1132 description:@"Can't rest on a touch that we're supposed to be ignoring!"];
  }

  [(_UIKBRTRecognizer *)self makeTouchIgnored:v7 force:1];
}

- (void)cancelTouchOnLayoutWithTouchInfo:(id)a3
{
  v4 = a3;
  if (self->_delegate)
  {
    v5 = dispatch_semaphore_create(0);
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___UIKBRTRecognizer_cancelTouchOnLayoutWithTouchInfo___block_invoke;
    block[3] = &unk_1E70F6228;
    block[4] = self;
    v10 = v4;
    v7 = v5;
    v11 = v7;
    dispatch_async(delegateQueue, block);
    self->_isWaiting = 1;
    do
    {
      if (!self->_isWaiting)
      {
        break;
      }

      v8 = dispatch_time(0, 1000000000);
    }

    while (dispatch_semaphore_wait(v7, v8));
    self->_isWaiting = 0;
  }
}

- (BOOL)makeTouchActive:(id)a3
{
  v5 = a3;
  v6 = [v5 touchIdentifier];

  if (!v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIKBRTRecognizer.m" lineNumber:1165 description:@"Can't rest on a touch that we're supposed to be ignoring!"];
  }

  if ([(NSMutableArray *)self->_ignoredTouches containsObject:v5])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UIKBRTRecognizer.m" lineNumber:1166 description:@"Can't rest on a touch that we're supposed to be ignoring!"];
  }

  [v5 invalidateTimer];
  v7 = [(NSMutableSet *)self->_activeTouches containsObject:v5];
  if ([(_UIKBRTRecognizer *)self queryDelegateToBeginTouch:v5 forBeginState:1 restartIfNecessary:0])
  {
    [v5 setCurrentTouchState:4];
    [v5 originalTimestamp];
    v9 = v8;
    objc_initWeak(&location, self);
    if (_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_KeyHoldCancelInterval, @"_UIKBRT_KeyHoldCancelInterval"))
    {
      v10 = 0.5;
    }

    else
    {
      v10 = *&qword_1EA95E1B0;
    }

    v11 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference__UIKBRT_SetDownTapInterval, @"_UIKBRT_SetDownTapInterval");
    v12 = qword_1EA95E1A0;
    v13 = CFAbsoluteTimeGetCurrent() + *&sSystemUptimeFromAbsoluteTimeDiff;
    v14 = 0.04;
    if (!v11)
    {
      v14 = *&v12;
    }

    v15 = v10 + v14 + v13 - v9;
    touchQueue = self->_touchQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37___UIKBRTRecognizer_makeTouchActive___block_invoke;
    v21[3] = &unk_1E7118290;
    objc_copyWeak(&v22, &location);
    v21[4] = self;
    [v5 setTimerWithTimeInterval:touchQueue onQueue:v21 do:v15];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    if (!v7)
    {
      v17 = 0;
      goto LABEL_16;
    }

    [v5 setCurrentTouchState:4];
  }

  v17 = 1;
LABEL_16:

  return v17;
}

- (void)makeTouchIgnored:(id)a3 force:(BOOL)a4 because:(id)a5
{
  v5 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = a5;
  v10 = a3;
  v11 = [[v8 alloc] initWithFormat:v9 arguments:&v12];

  [(_UIKBRTRecognizer *)self makeTouchIgnored:v10 force:v5 withMessage:v11];
}

- (void)makeTouchIgnored:(id)a3 force:(BOOL)a4 withMessage:(id)a5
{
  v5 = a4;
  v7 = a3;
  v8 = [(NSMutableArray *)self->_ignoredTouches containsObject:v7];
  [v7 invalidateTimer];
  v9 = [v7 currentTouchState];
  if (v9 > 5)
  {
    goto LABEL_11;
  }

  if (((1 << v9) & 0x31) == 0)
  {
    v11 = [v7 touchIdentifier];

    if (v11)
    {
      [(_UIKBRTRecognizer *)self notifyDelegateOfIgnoringTouch:v7];
    }

    goto LABEL_11;
  }

  v10 = [v7 touchIdentifier];

  if (!v10)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    [(_UIKBRTRecognizer *)self notifyDelegateOfIgnoringTouch:v7];
    goto LABEL_9;
  }

  if ([(_UIKBRTRecognizer *)self queryDelegateOfIgnoringTouch:v7 forOtherTouch:0])
  {
LABEL_9:
    if ([v7 currentTouchState] == 5)
    {
      v12 = 0;
      --self->_numProlongedTouches;
LABEL_12:
      v13 = 6;
      goto LABEL_13;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v13 = [v7 currentTouchState];
  v12 = 1;
LABEL_13:
  [v7 setCurrentTouchState:v13];
  if (v13 == 6)
  {
    v14 = v8;
  }

  else
  {
    v14 = 1;
  }

  if ((v12 & 1) == 0 && (v14 & 1) == 0)
  {
    ignoredTouchesQueue = self->_ignoredTouchesQueue;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __56___UIKBRTRecognizer_makeTouchIgnored_force_withMessage___block_invoke;
    v20 = &unk_1E70F35B8;
    v21 = self;
    v16 = v7;
    v22 = v16;
    dispatch_sync(ignoredTouchesQueue, &v17);
    [(_UIKBRTRecognizerTouchPointTrackingProtocol *)self->_touchTracker ignoreTouchInfo:v16, v17, v18, v19, v20, v21];
  }
}

- (CGSize)clusterRestHaloSize
{
  width = self->_clusterRestHaloSize.width;
  height = self->_clusterRestHaloSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end