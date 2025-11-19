@interface _UIKeyboardUsageTracking
+ (void)appAutofillCredentialFromSafariUI;
+ (void)appAutofillDetectedDecrement;
+ (void)appAutofillDetectedIncrement;
+ (void)appAutofillExtraKeyTapped;
+ (void)appAutofillFilled;
+ (void)countKeystrokeForReachableKeyboardWithBias:(int64_t)a3;
+ (void)countReachableKeyboardHandBiasChangeToBias:(int64_t)a3;
+ (void)dualStringsKeyFlickUpCount;
+ (void)inputSwitcherSetPredictionPreference:(BOOL)a3;
+ (void)keyboardExtensionCrashed;
+ (void)keyboardExtensionPrimaryLanguageChanged;
+ (void)keyboardExtensionsOnDevice;
+ (void)keyboardGestureOneFingerForcePan:(BOOL)a3;
+ (void)keyboardGestureOneFingerForcePress:(BOOL)a3 withPressCount:(int)a4;
+ (void)keyboardGestureSelectedPredictiveInputCandidate;
+ (void)keyboardGestureSetPredictionPreference:(BOOL)a3;
+ (void)keyboardGestureTwoFingerTap:(BOOL)a3 withTapCount:(int)a4;
+ (void)keyboardPerformanceFromTouchRelease:(double)a3 until:(double)a4;
+ (void)keyboardPerformanceFromTouchStart:(double)a3 until:(double)a4;
+ (void)keyboardReachabilityDistribution:(double)a3;
+ (void)keyboardSetToInputMode:(id)a3 fromPrevious:(id)a4;
+ (void)keyboardSupportsTouch:(BOOL)a3;
+ (void)keyboardTotalOnScreenTime:(double)a3 orientation:(int64_t)a4;
+ (void)letterCaseToggleIncrement;
+ (void)loginPasswordFromAutofillIncrement;
+ (void)loginPasswordFromKeyboardIncrement;
+ (void)normalPunctuationKeyCount;
+ (void)panAlternateKeyFlickDownCount;
+ (void)predictionViewState:(BOOL)a3 forInputMode:(id)a4;
+ (void)redoKeyCount;
+ (void)restAndTypeTriggered;
+ (void)selectedPredictiveInputCandidate:(id)a3 isAutocorrection:(BOOL)a4 index:(unint64_t)a5;
+ (void)showCharacterPreviewPreference:(BOOL)a3;
+ (void)showLowercaseKeyplanePreference:(BOOL)a3;
+ (void)showVariantsIncrement;
+ (void)signupPasswordFromAutofillIncrement;
+ (void)signupPasswordFromKeyboardIncrement;
+ (void)singleStringKeyFlickUpCount;
+ (void)undoKeyCount;
+ (void)variantDeleteIncrement;
@end

@implementation _UIKeyboardUsageTracking

+ (void)keyboardSetToInputMode:(id)a3 fromPrevious:(id)a4
{
  v14 = a3;
  v5 = a4;
  if (v14)
  {
    if ([v14 isExtensionInputMode])
    {
      v6 = [v14 identifier];
      TIStatisticScalarIncrement3PKSummoned();

      if (!v5 || [v5 isExtensionInputMode])
      {
        if ([v14 isEqual:v5])
        {
          goto LABEL_10;
        }

        v7 = [v14 containingBundleDisplayName];
        v8 = [v5 containingBundleDisplayName];
        v9 = [v7 isEqualToString:v8];

        if ((v9 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v10 = [v14 identifierWithLayouts];
      TIStatisticScalarIncrementSystemKeyboardSummoned();

      if (![v5 isExtensionInputMode])
      {
LABEL_10:
        v12 = objc_opt_class();
        v13 = +[UIKeyboardImpl activeInstance];
        [v12 predictionViewState:objc_msgSend(v13 forInputMode:{"isPredictionViewControllerVisible"), v14}];

        goto LABEL_11;
      }
    }

    v11 = TIStatisticGetKey();
    TIStatisticScalarIncrement();

    goto LABEL_10;
  }

LABEL_11:
}

+ (void)keyboardExtensionPrimaryLanguageChanged
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardExtensionCrashed
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardExtensionsOnDevice
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 extensionInputModes];

  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v24 + 1) + 8 * i) identifier];
        v9 = TIStatisticGetKeyForInputMode();
        TIStatisticScalarSetValue();
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  v11 = [v10 activeInputModes];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        if ([v16 isExtensionInputMode])
        {
          v17 = [v16 identifier];
          v18 = TIStatisticGetKeyForInputMode();
          TIStatisticScalarSetValue();

          [v16 defaultLayoutIsASCIICapable];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = TIStatisticGetKey();
  TIStatisticScalarSetValue();
}

+ (void)predictionViewState:(BOOL)a3 forInputMode:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a4;
  if (([v4 isExtensionInputMode] & 1) == 0)
  {
    v5 = [v4 identifier];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = UIKeyboardPredictionEnabledForInputModes(v6);

    if (v7)
    {
      v8 = [v4 identifierWithLayouts];
      v9 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }
  }
}

+ (void)inputSwitcherSetPredictionPreference:(BOOL)a3
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardGestureSetPredictionPreference:(BOOL)a3
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardGestureSelectedPredictiveInputCandidate
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)selectedPredictiveInputCandidate:(id)a3 isAutocorrection:(BOOL)a4 index:(unint64_t)a5
{
  v5 = a4;
  v17 = a3;
  v6 = UIKeyboardGetCurrentInputMode();
  v7 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v6);

  if (v7)
  {
    if (!v5 && ([v17 input], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9) && (objc_msgSend(v17, "input"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "candidate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v12))
    {
      v13 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    else
    {
      v14 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();

      v13 = TIStatisticGetKeyForInputMode();
      v15 = [v17 candidate];
      [v15 length];
      TIStatisticDistributionPushValue();
    }

    v16 = TIStatisticGetKeyForInputMode();
    TIStatisticDistributionPushValue();
  }
}

+ (void)showCharacterPreviewPreference:(BOOL)a3
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarSetBoolean();
}

+ (void)showLowercaseKeyplanePreference:(BOOL)a3
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarSetBoolean();
}

+ (void)keyboardGestureTwoFingerTap:(BOOL)a3 withTapCount:(int)a4
{
  if ((a4 - 1) <= 2)
  {
    v5 = TIStatisticsGetKeyForGesture();
    TIStatisticScalarIncrement();
  }
}

+ (void)keyboardGestureOneFingerForcePan:(BOOL)a3
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardGestureOneFingerForcePress:(BOOL)a3 withPressCount:(int)a4
{
  if ((a4 - 1) <= 2)
  {
    v5 = TIStatisticsGetKeyForGesture();
    TIStatisticScalarIncrement();
  }
}

+ (void)keyboardPerformanceFromTouchStart:(double)a3 until:(double)a4
{
  if (a3 != 0.0)
  {
    v5 = TIStatisticGetKey();
    TIStatisticScalarIncrement();
  }
}

+ (void)keyboardPerformanceFromTouchRelease:(double)a3 until:(double)a4
{
  if (a3 != 0.0)
  {
    v5 = TIStatisticGetKey();
    TIStatisticDistributionPushValue();
  }
}

+ (void)keyboardTotalOnScreenTime:(double)a3 orientation:(int64_t)a4
{
  if ((a4 - 1) <= 1)
  {
    v4 = TIStatisticGetKey();
    TIStatisticDistributionPushValue();

    v5 = TIStatisticGetKey();
    TIStatisticScalarIncrement();
  }

  v6 = TIStatisticGetKey();
  TIStatisticDistributionPushValue();

  v7 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardReachabilityDistribution:(double)a3
{
  v4 = UIKeyboardGetCurrentInputMode();
  v7 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v4);

  v5 = v7;
  if (v7 && (a3 > 0.0 || a3 < 0.0))
  {
    v6 = TIStatisticGetKeyForInputMode();
    TIStatisticDistributionPushValue();

    v5 = v7;
  }
}

+ (void)dualStringsKeyFlickUpCount
{
  v3 = UIKeyboardGetCurrentInputMode();
  v2 = TIStatisticGetKeyForInputMode();
  TIStatisticScalarIncrement();
}

+ (void)singleStringKeyFlickUpCount
{
  v3 = UIKeyboardGetCurrentInputMode();
  v2 = TIStatisticGetKeyForInputMode();
  TIStatisticScalarIncrement();
}

+ (void)panAlternateKeyFlickDownCount
{
  v3 = UIKeyboardGetCurrentInputMode();
  v2 = TIStatisticGetKeyForInputMode();
  TIStatisticScalarIncrement();
}

+ (void)redoKeyCount
{
  v3 = UIKeyboardGetCurrentInputMode();
  v2 = TIStatisticGetKeyForInputMode();
  TIStatisticScalarIncrement();
}

+ (void)undoKeyCount
{
  v3 = UIKeyboardGetCurrentInputMode();
  v2 = TIStatisticGetKeyForInputMode();
  TIStatisticScalarIncrement();
}

+ (void)normalPunctuationKeyCount
{
  v3 = UIKeyboardGetCurrentInputMode();
  v2 = TIStatisticGetKeyForInputMode();
  TIStatisticScalarIncrement();
}

+ (void)restAndTypeTriggered
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)countKeystrokeForReachableKeyboardWithBias:(int64_t)a3
{
  if (a3)
  {
    v3 = TIStatisticGetKey();
    TIStatisticScalarIncrement();
  }
}

+ (void)countReachableKeyboardHandBiasChangeToBias:(int64_t)a3
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)appAutofillDetectedIncrement
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 isRTIClient];
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)appAutofillDetectedDecrement
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 isRTIClient];
  v2 = TIStatisticGetKey();
  TIStatisticScalarDecrement();
}

+ (void)appAutofillFilled
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 isRTIClient];
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)appAutofillExtraKeyTapped
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)appAutofillCredentialFromSafariUI
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)loginPasswordFromAutofillIncrement
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 isRTIClient];
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)loginPasswordFromKeyboardIncrement
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 isRTIClient];
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)signupPasswordFromAutofillIncrement
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)signupPasswordFromKeyboardIncrement
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardSupportsTouch:(BOOL)a3
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarSetBoolean();
}

+ (void)letterCaseToggleIncrement
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)showVariantsIncrement
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)variantDeleteIncrement
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

@end