@interface UIKBHandwritingInputSpeedModel
- (CGRect)handwritingFrame;
- (UIKBHandwritingInputSpeedModel)init;
- (double)smoothValueFromArray:(id)a3;
- (double)speedForCurrentStroke;
- (double)timeoutForNextPage;
- (void)addPoint:(CGPoint)a3 timestamp:(double)a4;
- (void)beginStroke;
- (void)endCharacter;
- (void)updatePreferences;
@end

@implementation UIKBHandwritingInputSpeedModel

- (UIKBHandwritingInputSpeedModel)init
{
  v8.receiver = self;
  v8.super_class = UIKBHandwritingInputSpeedModel;
  v2 = [(UIKBHandwritingInputSpeedModel *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    recordedIntervals = v2->_recordedIntervals;
    v2->_recordedIntervals = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    recordedSpeeds = v2->_recordedSpeeds;
    v2->_recordedSpeeds = v5;

    [(UIKBHandwritingInputSpeedModel *)v2 updatePreferences];
  }

  return v2;
}

- (void)beginStroke
{
  v3 = [MEMORY[0x1E695DF70] array];
  pointsCurrentStroke = self->_pointsCurrentStroke;
  self->_pointsCurrentStroke = v3;

  if (self->_lastStrokeTimeStamp != 0.0)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSinceReferenceDate];
    v6 = v5 - self->_lastStrokeTimeStamp;

    recordedIntervals = self->_recordedIntervals;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:{fmin(v6, 1.0)}];
    [NSMutableArray insertObject:"insertObject:atIndex:" atIndex:?];
  }
}

- (void)addPoint:(CGPoint)a3 timestamp:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = objc_alloc_init(_UIKBHandwritingInputSpeedModelPoint);
  [(_UIKBHandwritingInputSpeedModelPoint *)v8 setLocation:x, y];
  [(_UIKBHandwritingInputSpeedModelPoint *)v8 setTimestamp:a4];
  [(NSMutableArray *)self->_pointsCurrentStroke addObject:v8];
}

- (void)endCharacter
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_lastStrokeTimeStamp = v3;
  if ([(NSMutableArray *)self->_recordedIntervals count]>= 0x81)
  {
    v8 = [(NSMutableArray *)self->_recordedIntervals subarrayWithRange:0, 64];
    v4 = [v8 mutableCopy];
    recordedIntervals = self->_recordedIntervals;
    self->_recordedIntervals = v4;
  }

  if ([(NSMutableArray *)self->_recordedSpeeds count]>= 0x81)
  {
    v9 = [(NSMutableArray *)self->_recordedSpeeds subarrayWithRange:0, 64];
    v6 = [v9 mutableCopy];
    recordedSpeeds = self->_recordedSpeeds;
    self->_recordedSpeeds = v6;
  }
}

- (double)speedForCurrentStroke
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  if ([(NSMutableArray *)self->_pointsCurrentStroke count]>= 2)
  {
    v4 = [(NSMutableArray *)self->_pointsCurrentStroke lastObject];
    [v4 timestamp];
    v6 = v5;
    v7 = [(NSMutableArray *)self->_pointsCurrentStroke firstObject];
    [v7 timestamp];
    v9 = v6 - v8;

    if (v9 > 0.0)
    {
      v10 = [(NSMutableArray *)self->_pointsCurrentStroke firstObject];
      [v10 location];
      v12 = v11;
      v14 = v13;

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = self->_pointsCurrentStroke;
      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = *v26;
        v18 = 0.0;
        do
        {
          v19 = 0;
          v20 = v12;
          v21 = v14;
          do
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v25 + 1) + 8 * v19) location];
            v12 = v22;
            v14 = v23;
            v18 = v18 + hypot(v20 - v22, v21 - v23);
            ++v19;
            v20 = v12;
            v21 = v14;
          }

          while (v16 != v19);
          v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      else
      {
        v18 = 0.0;
      }

      return v18 / v9;
    }
  }

  return v3;
}

- (double)smoothValueFromArray:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 >= 0x14)
  {
    v5 = 20;
  }

  else
  {
    v5 = v4;
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v4)
  {
    v9 = 0;
    do
    {
      v10 = [UIKBHandwritingInputSpeedModel smoothValueFromArray:]::gaussian[v9];
      v11 = [v3 objectAtIndex:v9];
      [v11 doubleValue];
      v8 = v8 + v10;
      v7 = v7 + v10 * v12;

      ++v9;
    }

    while (v5 != v9);
  }

  if (v8 > 0.0)
  {
    v6 = v7 / v8;
  }

  return v6;
}

- (double)timeoutForNextPage
{
  [(UIKBHandwritingInputSpeedModel *)self maxTimeout];
  v4 = v3;
  if ([(NSMutableArray *)self->_recordedIntervals count])
  {
    [(UIKBHandwritingInputSpeedModel *)self smoothValueFromArray:self->_recordedIntervals];
    if (v5 > 0.0)
    {
      v6 = v5;
      [(UIKBHandwritingInputSpeedModel *)self handwritingFrame];
      v8 = v7;
      [(UIKBHandwritingInputSpeedModel *)self handwritingFrame];
      if (v8 >= v9)
      {
        v8 = v9;
      }

      if (v8 > 0.0)
      {
        [(UIKBHandwritingInputSpeedModel *)self speedForCurrentStroke];
        recordedSpeeds = self->_recordedSpeeds;
        v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11 / v8];
        [(NSMutableArray *)recordedSpeeds insertObject:v12 atIndex:0];

        [(UIKBHandwritingInputSpeedModel *)self smoothValueFromArray:self->_recordedSpeeds];
        v14 = v6 * ((1.0 - 1.0 / (exp(-(v13 + -2.0)) + 1.0)) * 4.6 + 0.9);
        [(UIKBHandwritingInputSpeedModel *)self maxTimeout];
        v16 = v15;
        [(UIKBHandwritingInputSpeedModel *)self minTimeout];
        if (v14 >= v17)
        {
          v17 = v14;
        }

        if (v16 >= v17)
        {
          return v17;
        }

        else
        {
          return v16;
        }
      }
    }
  }

  return v4;
}

- (void)updatePreferences
{
  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v10 preferencesActions];
  self->_autoConfirmationEnabled = [v3 BOOLForPreferenceKey:@"HandwritingAutoConfirmationEnabled"];

  v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v11 preferencesActions];
  v5 = [v4 valueForPreferenceKey:@"HandwritingAutoConfirmationMinTimeout"];
  [v5 doubleValue];
  self->_minTimeout = v6;

  v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v7 = [v12 preferencesActions];
  v8 = [v7 valueForPreferenceKey:@"HandwritingAutoConfirmationMaxTimeout"];
  [v8 doubleValue];
  self->_maxTimeout = v9;
}

- (CGRect)handwritingFrame
{
  x = self->_handwritingFrame.origin.x;
  y = self->_handwritingFrame.origin.y;
  width = self->_handwritingFrame.size.width;
  height = self->_handwritingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end