@interface _UIKeyboardUsageTracking
+ (void)appAutofillCredentialFromSafariUI;
+ (void)appAutofillDetectedDecrement;
+ (void)appAutofillDetectedIncrement;
+ (void)appAutofillExtraKeyTapped;
+ (void)appAutofillFilled;
+ (void)countKeystrokeForReachableKeyboardWithBias:(int64_t)bias;
+ (void)countReachableKeyboardHandBiasChangeToBias:(int64_t)bias;
+ (void)dualStringsKeyFlickUpCount;
+ (void)inputSwitcherSetPredictionPreference:(BOOL)preference;
+ (void)keyboardExtensionCrashed;
+ (void)keyboardExtensionPrimaryLanguageChanged;
+ (void)keyboardExtensionsOnDevice;
+ (void)keyboardGestureOneFingerForcePan:(BOOL)pan;
+ (void)keyboardGestureOneFingerForcePress:(BOOL)press withPressCount:(int)count;
+ (void)keyboardGestureSelectedPredictiveInputCandidate;
+ (void)keyboardGestureSetPredictionPreference:(BOOL)preference;
+ (void)keyboardGestureTwoFingerTap:(BOOL)tap withTapCount:(int)count;
+ (void)keyboardPerformanceFromTouchRelease:(double)release until:(double)until;
+ (void)keyboardPerformanceFromTouchStart:(double)start until:(double)until;
+ (void)keyboardReachabilityDistribution:(double)distribution;
+ (void)keyboardSetToInputMode:(id)mode fromPrevious:(id)previous;
+ (void)keyboardSupportsTouch:(BOOL)touch;
+ (void)keyboardTotalOnScreenTime:(double)time orientation:(int64_t)orientation;
+ (void)letterCaseToggleIncrement;
+ (void)loginPasswordFromAutofillIncrement;
+ (void)loginPasswordFromKeyboardIncrement;
+ (void)normalPunctuationKeyCount;
+ (void)panAlternateKeyFlickDownCount;
+ (void)predictionViewState:(BOOL)state forInputMode:(id)mode;
+ (void)redoKeyCount;
+ (void)restAndTypeTriggered;
+ (void)selectedPredictiveInputCandidate:(id)candidate isAutocorrection:(BOOL)autocorrection index:(unint64_t)index;
+ (void)showCharacterPreviewPreference:(BOOL)preference;
+ (void)showLowercaseKeyplanePreference:(BOOL)preference;
+ (void)showVariantsIncrement;
+ (void)signupPasswordFromAutofillIncrement;
+ (void)signupPasswordFromKeyboardIncrement;
+ (void)singleStringKeyFlickUpCount;
+ (void)undoKeyCount;
+ (void)variantDeleteIncrement;
@end

@implementation _UIKeyboardUsageTracking

+ (void)keyboardSetToInputMode:(id)mode fromPrevious:(id)previous
{
  modeCopy = mode;
  previousCopy = previous;
  if (modeCopy)
  {
    if ([modeCopy isExtensionInputMode])
    {
      identifier = [modeCopy identifier];
      TIStatisticScalarIncrement3PKSummoned();

      if (!previousCopy || [previousCopy isExtensionInputMode])
      {
        if ([modeCopy isEqual:previousCopy])
        {
          goto LABEL_10;
        }

        containingBundleDisplayName = [modeCopy containingBundleDisplayName];
        containingBundleDisplayName2 = [previousCopy containingBundleDisplayName];
        v9 = [containingBundleDisplayName isEqualToString:containingBundleDisplayName2];

        if ((v9 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      identifierWithLayouts = [modeCopy identifierWithLayouts];
      TIStatisticScalarIncrementSystemKeyboardSummoned();

      if (![previousCopy isExtensionInputMode])
      {
LABEL_10:
        v12 = objc_opt_class();
        v13 = +[UIKeyboardImpl activeInstance];
        [v12 predictionViewState:objc_msgSend(v13 forInputMode:{"isPredictionViewControllerVisible"), modeCopy}];

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
  extensionInputModes = [v2 extensionInputModes];

  v4 = [extensionInputModes countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(extensionInputModes);
        }

        identifier = [*(*(&v24 + 1) + 8 * i) identifier];
        v9 = TIStatisticGetKeyForInputMode();
        TIStatisticScalarSetValue();
      }

      v5 = [extensionInputModes countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  activeInputModes = [v10 activeInputModes];

  v12 = [activeInputModes countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(activeInputModes);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        if ([v16 isExtensionInputMode])
        {
          identifier2 = [v16 identifier];
          v18 = TIStatisticGetKeyForInputMode();
          TIStatisticScalarSetValue();

          [v16 defaultLayoutIsASCIICapable];
        }
      }

      v13 = [activeInputModes countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v19 = TIStatisticGetKey();
  TIStatisticScalarSetValue();
}

+ (void)predictionViewState:(BOOL)state forInputMode:(id)mode
{
  v10[1] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  if (([modeCopy isExtensionInputMode] & 1) == 0)
  {
    identifier = [modeCopy identifier];
    v10[0] = identifier;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = UIKeyboardPredictionEnabledForInputModes(v6);

    if (v7)
    {
      identifierWithLayouts = [modeCopy identifierWithLayouts];
      v9 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }
  }
}

+ (void)inputSwitcherSetPredictionPreference:(BOOL)preference
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardGestureSetPredictionPreference:(BOOL)preference
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardGestureSelectedPredictiveInputCandidate
{
  v2 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)selectedPredictiveInputCandidate:(id)candidate isAutocorrection:(BOOL)autocorrection index:(unint64_t)index
{
  autocorrectionCopy = autocorrection;
  candidateCopy = candidate;
  v6 = UIKeyboardGetCurrentInputMode();
  v7 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v6);

  if (v7)
  {
    if (!autocorrectionCopy && ([candidateCopy input], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9) && (objc_msgSend(candidateCopy, "input"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(candidateCopy, "candidate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v12))
    {
      v13 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    else
    {
      v14 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();

      v13 = TIStatisticGetKeyForInputMode();
      candidate = [candidateCopy candidate];
      [candidate length];
      TIStatisticDistributionPushValue();
    }

    v16 = TIStatisticGetKeyForInputMode();
    TIStatisticDistributionPushValue();
  }
}

+ (void)showCharacterPreviewPreference:(BOOL)preference
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarSetBoolean();
}

+ (void)showLowercaseKeyplanePreference:(BOOL)preference
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarSetBoolean();
}

+ (void)keyboardGestureTwoFingerTap:(BOOL)tap withTapCount:(int)count
{
  if ((count - 1) <= 2)
  {
    v5 = TIStatisticsGetKeyForGesture();
    TIStatisticScalarIncrement();
  }
}

+ (void)keyboardGestureOneFingerForcePan:(BOOL)pan
{
  v3 = TIStatisticGetKey();
  TIStatisticScalarIncrement();
}

+ (void)keyboardGestureOneFingerForcePress:(BOOL)press withPressCount:(int)count
{
  if ((count - 1) <= 2)
  {
    v5 = TIStatisticsGetKeyForGesture();
    TIStatisticScalarIncrement();
  }
}

+ (void)keyboardPerformanceFromTouchStart:(double)start until:(double)until
{
  if (start != 0.0)
  {
    v5 = TIStatisticGetKey();
    TIStatisticScalarIncrement();
  }
}

+ (void)keyboardPerformanceFromTouchRelease:(double)release until:(double)until
{
  if (release != 0.0)
  {
    v5 = TIStatisticGetKey();
    TIStatisticDistributionPushValue();
  }
}

+ (void)keyboardTotalOnScreenTime:(double)time orientation:(int64_t)orientation
{
  if ((orientation - 1) <= 1)
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

+ (void)keyboardReachabilityDistribution:(double)distribution
{
  v4 = UIKeyboardGetCurrentInputMode();
  v7 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v4);

  v5 = v7;
  if (v7 && (distribution > 0.0 || distribution < 0.0))
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

+ (void)countKeystrokeForReachableKeyboardWithBias:(int64_t)bias
{
  if (bias)
  {
    v3 = TIStatisticGetKey();
    TIStatisticScalarIncrement();
  }
}

+ (void)countReachableKeyboardHandBiasChangeToBias:(int64_t)bias
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

+ (void)keyboardSupportsTouch:(BOOL)touch
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