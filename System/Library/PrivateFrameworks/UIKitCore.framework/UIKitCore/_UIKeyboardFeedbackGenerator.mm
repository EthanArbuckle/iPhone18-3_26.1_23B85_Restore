@interface _UIKeyboardFeedbackGenerator
- (float)scaleVolumeSlow:(float)slow fast:(float)fast timeSpan:(double)span;
- (id)_feedbackWithUpdatedVolume:(id)volume;
- (void)_playFeedbackForActionType:(int64_t)type withCustomization:(id)customization;
@end

@implementation _UIKeyboardFeedbackGenerator

- (float)scaleVolumeSlow:(float)slow fast:(float)fast timeSpan:(double)span
{
  _keyboardConfiguration = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  [_keyboardConfiguration slowTypingTime];
  v11 = v10;

  _keyboardConfiguration2 = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  [_keyboardConfiguration2 fastTypingTime];
  v14 = v13;

  result = (span - v14) / (v11 - v14) * (slow - fast) + fast;
  if (slow >= fast)
  {
    slowCopy = fast;
  }

  else
  {
    slowCopy = slow;
  }

  if (slow >= fast)
  {
    fastCopy2 = slow;
  }

  else
  {
    fastCopy2 = fast;
  }

  if (slowCopy >= result)
  {
    result = slowCopy;
  }

  if (fastCopy2 <= result)
  {
    return fastCopy2;
  }

  return result;
}

- (id)_feedbackWithUpdatedVolume:(id)volume
{
  volumeCopy = volume;
  _keyboardConfiguration = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  [_keyboardConfiguration fastTypingVolumeMultiplier];
  v7 = v6;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  lastTypedKeyTimestamp = self->_lastTypedKeyTimestamp;
  if (lastTypedKeyTimestamp > 0.0)
  {
    v11 = v9 - lastTypedKeyTimestamp;
    audioParameters = [volumeCopy audioParameters];
    [audioParameters volume];
    v14 = v13;

    hapticParameters = [volumeCopy hapticParameters];
    [hapticParameters volume];
    v17 = v16;

    v18 = v7 * v14;
    *&v19 = v18;
    *&v18 = v14;
    [(_UIKeyboardFeedbackGenerator *)self scaleVolumeSlow:v18 fast:v19 timeSpan:v11];
    v21 = v20;
    v22 = v7 * v17;
    *&v23 = v22;
    *&v22 = v17;
    [(_UIKeyboardFeedbackGenerator *)self scaleVolumeSlow:v22 fast:v23 timeSpan:v11];
    if (v21 != v14 || v24 != v17)
    {
      v26 = v24;
      v27 = [volumeCopy copy];

      audioParameters2 = [v27 audioParameters];
      *&v29 = v21;
      [audioParameters2 setVolume:v29];

      hapticParameters2 = [v27 hapticParameters];
      *&v31 = v26;
      [hapticParameters2 setVolume:v31];

      volumeCopy = v27;
    }
  }

  self->_lastTypedKeyTimestamp = v9;

  return volumeCopy;
}

- (void)_playFeedbackForActionType:(int64_t)type withCustomization:(id)customization
{
  v31 = *MEMORY[0x1E69E9840];
  customizationCopy = customization;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _keyboardConfiguration = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  feedbacks = [_keyboardConfiguration feedbacks];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v11 = [feedbacks objectForKeyedSubscript:v10];

  if (v11)
  {
    _individualFeedbacks = [v11 _individualFeedbacks];
    v13 = [_individualFeedbacks count];

    if (v13 >= 2)
    {
      v14 = +[_UIFeedbackPreferences sharedPreferences];
      v15 = [v14 enabledFeedbackTypesForCategory:0x1EFB48430];

      if ((v15 - 1) <= 1)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        _individualFeedbacks2 = [v11 _individualFeedbacks];
        v17 = [_individualFeedbacks2 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v27;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(_individualFeedbacks2);
              }

              v21 = *(*(&v26 + 1) + 8 * i);
              if ([v21 _effectivePlayableFeedbackTypes] == v15)
              {
                v22 = v21;

                v11 = v22;
                goto LABEL_14;
              }
            }

            v18 = [_individualFeedbacks2 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_14:
      }
    }

    if (customizationCopy)
    {
      v23 = [v11 copy];

      customizationCopy[2](customizationCopy, v23);
    }

    else
    {
      _keyboardConfiguration2 = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
      scalingForSpeedEnabled = [_keyboardConfiguration2 scalingForSpeedEnabled];

      if (!scalingForSpeedEnabled)
      {
LABEL_20:
        [(UIFeedbackGenerator *)self _playFeedback:v11 atLocation:1.79769313e308, 1.79769313e308];

        goto LABEL_21;
      }

      v23 = [(_UIKeyboardFeedbackGenerator *)self _feedbackWithUpdatedVolume:v11];
    }

    v11 = v23;
    goto LABEL_20;
  }

LABEL_21:
}

@end