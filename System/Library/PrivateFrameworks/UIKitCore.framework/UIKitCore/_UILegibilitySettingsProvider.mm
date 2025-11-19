@interface _UILegibilitySettingsProvider
+ (int64_t)styleForContentColor:(id)a3 contrast:(double)a4;
- (BOOL)accumulateChangesToContentColor:(id)a3 contrast:(double)a4;
- (id)settings;
- (void)clearContentColorAccumulator;
- (void)dealloc;
@end

@implementation _UILegibilitySettingsProvider

- (id)settings
{
  v2 = [[_UILegibilitySettings alloc] initWithStyle:[(_UILegibilitySettingsProvider *)self currentStyle] contentColor:[(_UILegibilitySettingsProvider *)self contentColor]];

  return v2;
}

- (void)clearContentColorAccumulator
{
  [(_UILegibilitySettingsProvider *)self setAccumulatorIsPrimed:0];
  [(_UILegibilitySettingsProvider *)self setAccumulatedBrightness:0.0];
  [(_UILegibilitySettingsProvider *)self setAccumulatedLuminance:0.0];
  [(_UILegibilitySettingsProvider *)self setAccumulatedSaturation:0.0];
  [(_UILegibilitySettingsProvider *)self setAccumulatedContrast:0.0];
  [(_UILegibilitySettingsProvider *)self setHasContrast:0];
  [(_UILegibilitySettingsProvider *)self setContentColor:0];

  [(_UILegibilitySettingsProvider *)self setNextChangeBarrier:0.0];
}

+ (int64_t)styleForContentColor:(id)a3 contrast:(double)a4
{
  if (_MergedGlobals_12_0 != -1)
  {
    dispatch_once(&_MergedGlobals_12_0, &__block_literal_global_313);
  }

  [qword_1EA963BE8 clearContentColorAccumulator];
  [qword_1EA963BE8 accumulateChangesToContentColor:a3 contrast:a4];
  [qword_1EA963BE8 accumulatedBrightness];
  v7 = v6;
  [qword_1EA963BE8 accumulatedLuminance];
  v9 = v8;
  [qword_1EA963BE8 accumulatedSaturation];
  v12 = v7 <= 0.8 || a4 >= 0.09 || a4 == -1.0;
  result = 2;
  if (v12 && v9 <= 0.86)
  {
    if (v10 >= 0.1 || v7 + 0.1 - v10 + 0.1 - v10 <= 0.92)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)dealloc
{
  self->_contentColor = 0;
  v3.receiver = self;
  v3.super_class = _UILegibilitySettingsProvider;
  [(_UILegibilitySettingsProvider *)&v3 dealloc];
}

- (BOOL)accumulateChangesToContentColor:(id)a3 contrast:(double)a4
{
  [(_UILegibilitySettingsProvider *)self setContentColor:?];
  if (CGColorGetNumberOfComponents([a3 CGColor]) == 2)
  {
    v44 = 0.0;
    v7 = [a3 getWhite:&v44 alpha:0];
    v8 = v7;
    v9 = 0.0;
    if (v7)
    {
      v10 = v44;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = v10;
  }

  else
  {
    v43 = 0.0;
    v44 = 0.0;
    v42 = 0.0;
    v10 = 0.0;
    if ([a3 getHue:&v44 saturation:&v43 brightness:&v42 alpha:0])
    {
      v11 = v42;
      v9 = v43;
      v8 = fmax(fmax(v44, v43), v42) > 0.00000011920929;
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
      v11 = 0.0;
    }

    v40 = 0.0;
    v41 = 0.0;
    v39 = 0.0;
    if ([a3 getRed:&v41 green:&v40 blue:&v39 alpha:0])
    {
      v10 = v41 * 0.2126 + v40 * 0.7152 + v39 * 0.0722;
      v8 |= fmax(fmax(v41, v40), v39) > 0.00000011920929;
    }
  }

  [(_UILegibilitySettingsProvider *)self setMostRecentBrightness:v11];
  [(_UILegibilitySettingsProvider *)self setMostRecentContrast:a4];
  [(_UILegibilitySettingsProvider *)self setMostRecentLuminance:v10];
  [(_UILegibilitySettingsProvider *)self setMostRecentSaturation:v9];
  v12 = CACurrentMediaTime();
  v13 = -1.0;
  if (a4 == -1.0 || (v14 = [(_UILegibilitySettingsProvider *)self hasContrast], v13 = a4, !v14))
  {
    [(_UILegibilitySettingsProvider *)self setAccumulatedContrast:v13];
  }

  v15 = -1.0;
  [(_UILegibilitySettingsProvider *)self setHasContrast:a4 != -1.0, v13];
  if ([(_UILegibilitySettingsProvider *)self accumulatorIsPrimed])
  {
    [(_UILegibilitySettingsProvider *)self accumulatedBrightness];
    [(_UILegibilitySettingsProvider *)self setAccumulatedBrightness:v11 * 0.4 + v16 * 0.6];
    if ([(_UILegibilitySettingsProvider *)self hasContrast])
    {
      [(_UILegibilitySettingsProvider *)self accumulatedContrast];
      v15 = a4 * 0.4 + v17 * 0.6;
    }

    [(_UILegibilitySettingsProvider *)self setAccumulatedContrast:v15];
    [(_UILegibilitySettingsProvider *)self accumulatedLuminance];
    [(_UILegibilitySettingsProvider *)self setAccumulatedLuminance:v10 * 0.4 + v18 * 0.6];
    [(_UILegibilitySettingsProvider *)self accumulatedSaturation];
    [(_UILegibilitySettingsProvider *)self setAccumulatedSaturation:v9 * 0.4 + v19 * 0.6];
    [(_UILegibilitySettingsProvider *)self accumulatedBrightness];
    v21 = v20;
    [(_UILegibilitySettingsProvider *)self accumulatedContrast];
    v23 = v22;
    [(_UILegibilitySettingsProvider *)self accumulatedLuminance];
    v25 = v24;
    [(_UILegibilitySettingsProvider *)self accumulatedSaturation];
    v27 = v23 != -1.0;
    if (v23 >= 0.09)
    {
      v27 = 0;
    }

    if (v21 <= 0.8)
    {
      v27 = 0;
    }

    v28 = 2;
    if (v25 <= 0.86 && !v27)
    {
      if (v26 >= 0.1 || v21 + 0.1 - v26 + 0.1 - v26 <= 0.92)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }
    }

    if ([(_UILegibilitySettingsProvider *)self currentStyle]== v28)
    {
      return 0;
    }

    [(_UILegibilitySettingsProvider *)self nextChangeBarrier];
    if (v12 <= v37)
    {
      return 0;
    }
  }

  else
  {
    [(_UILegibilitySettingsProvider *)self setAccumulatedBrightness:v11];
    [(_UILegibilitySettingsProvider *)self setAccumulatedLuminance:v10];
    [(_UILegibilitySettingsProvider *)self setAccumulatedSaturation:v9];
    if (v8)
    {
      [(_UILegibilitySettingsProvider *)self setAccumulatorIsPrimed:1];
    }

    [(_UILegibilitySettingsProvider *)self accumulatedBrightness];
    v30 = v29;
    [(_UILegibilitySettingsProvider *)self accumulatedContrast];
    v32 = v31;
    [(_UILegibilitySettingsProvider *)self accumulatedLuminance];
    v34 = v33;
    [(_UILegibilitySettingsProvider *)self accumulatedSaturation];
    v36 = v32 != -1.0;
    if (v32 >= 0.09)
    {
      v36 = 0;
    }

    if (v30 <= 0.8)
    {
      v36 = 0;
    }

    v28 = 2;
    if (v34 <= 0.86 && !v36)
    {
      if (v35 >= 0.1 || v30 + 0.1 - v35 + 0.1 - v35 <= 0.92)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }
    }
  }

  [(_UILegibilitySettingsProvider *)self setCurrentStyle:v28];
  [(_UILegibilitySettingsProvider *)self setNextChangeBarrier:v12 + 0.75];
  return 1;
}

@end