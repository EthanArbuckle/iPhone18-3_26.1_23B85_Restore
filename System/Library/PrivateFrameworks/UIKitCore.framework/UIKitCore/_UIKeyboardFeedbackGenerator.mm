@interface _UIKeyboardFeedbackGenerator
- (float)scaleVolumeSlow:(float)a3 fast:(float)a4 timeSpan:(double)a5;
- (id)_feedbackWithUpdatedVolume:(id)a3;
- (void)_playFeedbackForActionType:(int64_t)a3 withCustomization:(id)a4;
@end

@implementation _UIKeyboardFeedbackGenerator

- (float)scaleVolumeSlow:(float)a3 fast:(float)a4 timeSpan:(double)a5
{
  v9 = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  [v9 slowTypingTime];
  v11 = v10;

  v12 = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  [v12 fastTypingTime];
  v14 = v13;

  result = (a5 - v14) / (v11 - v14) * (a3 - a4) + a4;
  if (a3 >= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = a3;
  }

  if (a3 >= a4)
  {
    v17 = a3;
  }

  else
  {
    v17 = a4;
  }

  if (v16 >= result)
  {
    result = v16;
  }

  if (v17 <= result)
  {
    return v17;
  }

  return result;
}

- (id)_feedbackWithUpdatedVolume:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  [v5 fastTypingVolumeMultiplier];
  v7 = v6;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  lastTypedKeyTimestamp = self->_lastTypedKeyTimestamp;
  if (lastTypedKeyTimestamp > 0.0)
  {
    v11 = v9 - lastTypedKeyTimestamp;
    v12 = [v4 audioParameters];
    [v12 volume];
    v14 = v13;

    v15 = [v4 hapticParameters];
    [v15 volume];
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
      v27 = [v4 copy];

      v28 = [v27 audioParameters];
      *&v29 = v21;
      [v28 setVolume:v29];

      v30 = [v27 hapticParameters];
      *&v31 = v26;
      [v30 setVolume:v31];

      v4 = v27;
    }
  }

  self->_lastTypedKeyTimestamp = v9;

  return v4;
}

- (void)_playFeedbackForActionType:(int64_t)a3 withCustomization:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v8 = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
  v9 = [v8 feedbacks];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [v11 _individualFeedbacks];
    v13 = [v12 count];

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
        v16 = [v11 _individualFeedbacks];
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v26 + 1) + 8 * i);
              if ([v21 _effectivePlayableFeedbackTypes] == v15)
              {
                v22 = v21;

                v11 = v22;
                goto LABEL_14;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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

    if (v7)
    {
      v23 = [v11 copy];

      v7[2](v7, v23);
    }

    else
    {
      v24 = [(_UIKeyboardFeedbackGenerator *)self _keyboardConfiguration];
      v25 = [v24 scalingForSpeedEnabled];

      if (!v25)
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