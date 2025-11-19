@interface UISliderDataModel
- (BOOL)_setValue:(float)a3 minValue:(float)a4 maxValue:(float)a5 minEnabledUsed:(BOOL)a6 minEnabledValue:(float)a7 maxEnabledUsed:(BOOL)a8 maxEnabledValue:(float)a9;
- (BOOL)hasAnyThumbImage;
- (BOOL)hasAnyTrackImage;
- (BOOL)setMaximumEnabledValue:(float)a3;
- (BOOL)setMaximumValue:(float)a3;
- (BOOL)setMinimumEnabledValue:(float)a3;
- (BOOL)setMinimumValue:(float)minEnabledValue;
- (UISliderDataModel)init;
- (float)maximumEnabledValue;
- (float)minimumEnabledValue;
- (id)_contentForState:(unint64_t)a3;
- (id)maximumTrackImageForState:(unint64_t)a3;
- (id)minimumTrackImageForState:(unint64_t)a3;
- (id)thumbImageForState:(unint64_t)a3;
- (void)_setContent:(id)a3 forState:(unint64_t)a4;
- (void)dealloc;
- (void)setEdgeFeedbackGenerator:(id)a3;
- (void)setMaximumTrackImage:(id)a3 forState:(unint64_t)a4;
- (void)setMaximumTrackImage:(id)a3 forStates:(unint64_t)a4;
- (void)setMinimumTrackImage:(id)a3 forState:(unint64_t)a4;
- (void)setMinimumTrackImage:(id)a3 forStates:(unint64_t)a4;
- (void)setModulationFeedbackGenerator:(id)a3;
- (void)setThumbImage:(id)a3 forState:(unint64_t)a4;
- (void)setThumbImage:(id)a3 forStates:(unint64_t)a4;
- (void)setThumbTintColor:(id)a3;
@end

@implementation UISliderDataModel

- (UISliderDataModel)init
{
  v3.receiver = self;
  v3.super_class = UISliderDataModel;
  result = [(UISliderDataModel *)&v3 init];
  if (result)
  {
    result->_continuous = 1;
    *&result->_thumbEnabled = 1;
    result->_minimumTrackVisible = 1;
    *&result->_userInteractionEnabled = 257;
    *&result->_value = xmmword_18A683EE0;
    *&result->_overrideMinimumEnabledValue = 0;
    *&result->_maxEnabledValue = 0x3F8000007F800000;
  }

  return result;
}

- (BOOL)hasAnyTrackImage
{
  v15[1] = *MEMORY[0x1E69E9840];
  contentLookup = self->_contentLookup;
  if (contentLookup)
  {
    Count = CFDictionaryGetCount(contentLookup);
    v5 = Count;
    v6 = (v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((8 * Count) >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = 8 * Count;
    }

    bzero(v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    CFDictionaryGetKeysAndValues(self->_contentLookup, 0, v6);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      v8 = 1;
      v9 = v5;
      v10 = 1;
      while (1)
      {
        v11 = *v6;
        if (([v11 isEmpty] & 1) == 0)
        {
          v12 = [v11 minTrack];

          if (v12)
          {
            break;
          }

          v13 = [v11 maxTrack];

          if (v13)
          {
            break;
          }
        }

        v10 = v8++ < v5;
        ++v6;
        if (!--v9)
        {
          return v10;
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

- (float)maximumEnabledValue
{
  v2 = 56;
  if (self->_overrideMaximumEnabledValue)
  {
    v2 = 64;
  }

  return *(&self->super.isa + v2);
}

- (float)minimumEnabledValue
{
  v2 = 52;
  if (self->_overrideMinimumEnabledValue)
  {
    v2 = 60;
  }

  return *(&self->super.isa + v2);
}

- (void)dealloc
{
  contentLookup = self->_contentLookup;
  if (contentLookup)
  {
    CFRelease(contentLookup);
  }

  v4.receiver = self;
  v4.super_class = UISliderDataModel;
  [(UISliderDataModel *)&v4 dealloc];
}

- (BOOL)_setValue:(float)a3 minValue:(float)a4 maxValue:(float)a5 minEnabledUsed:(BOOL)a6 minEnabledValue:(float)a7 maxEnabledUsed:(BOOL)a8 maxEnabledValue:(float)a9
{
  v10 = a8;
  v12 = a6;
  if (a4 > a5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:83 description:{@"Attempting to set a slider's minimumValue (%f) to be larger than the maximumValue (%f)", a4, a5}];
  }

  if (a7 > a9 && v10 && v12)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:86 description:{@"Attempting to set a slider's minimumEnabledValue (%f) to be larger than the maximumEnabledValue (%f)", a4, a5}];
  }

  if (v10)
  {
    v20 = a9;
  }

  else
  {
    v20 = a5;
  }

  if (v12)
  {
    v21 = a7;
  }

  else
  {
    v21 = a4;
  }

  if (v21 < a3)
  {
    v21 = a3;
  }

  if (v20 > v21)
  {
    v20 = v21;
  }

  if (v20 == self->_value && self->_minValue == a4 && self->_maxValue == a5)
  {
    if (v12 && self->_minEnabledValue != a7)
    {
      self->_value = v20;
      self->_minValue = a4;
      self->_maxValue = a5;
      goto LABEL_25;
    }

    if (!v10 || self->_maxEnabledValue == a9)
    {
      return 0;
    }
  }

  self->_value = v20;
  self->_minValue = a4;
  self->_maxValue = a5;
  if (v12)
  {
LABEL_25:
    self->_minEnabledValue = a7;
  }

  if (v10)
  {
    self->_maxEnabledValue = a9;
  }

  return 1;
}

- (BOOL)setMinimumValue:(float)minEnabledValue
{
  *&v3 = minEnabledValue;
  if (self->_minValue == minEnabledValue)
  {
    return 0;
  }

  *&v5 = self->_minEnabledValue;
  if (self->_maxValue >= minEnabledValue)
  {
    *&v4 = self->_maxValue;
  }

  else
  {
    *&v4 = minEnabledValue;
  }

  if (*&v5 > minEnabledValue)
  {
    minEnabledValue = self->_minEnabledValue;
  }

  if (*&v4 <= minEnabledValue)
  {
    minEnabledValue = *&v4;
  }

  if (self->_overrideMinimumEnabledValue)
  {
    *&v5 = minEnabledValue;
  }

  if (self->_maxEnabledValue <= *&v3)
  {
    *&v6 = *&v3;
  }

  else
  {
    *&v6 = self->_maxEnabledValue;
  }

  if (*&v4 <= *&v6)
  {
    *&v6 = *&v4;
  }

  if (!self->_overrideMaximumEnabledValue)
  {
    *&v6 = self->_maxEnabledValue;
  }

  *&v7 = self->_value;
  return [UISliderDataModel _setValue:"_setValue:minValue:maxValue:minEnabledUsed:minEnabledValue:maxEnabledUsed:maxEnabledValue:" minValue:v7 maxValue:v3 minEnabledUsed:v4 minEnabledValue:v5 maxEnabledUsed:v6 maxEnabledValue:?];
}

- (BOOL)setMaximumValue:(float)a3
{
  if (self->_maxValue == a3)
  {
    return 0;
  }

  *&v3 = self->_value;
  return [UISliderDataModel _setValue:"_setValue:minValue:maxValue:minEnabledUsed:minEnabledValue:maxEnabledUsed:maxEnabledValue:" minValue:v3 maxValue:? minEnabledUsed:? minEnabledValue:? maxEnabledUsed:? maxEnabledValue:?];
}

- (BOOL)setMinimumEnabledValue:(float)a3
{
  minValue = self->_minValue;
  if (minValue == a3 && !self->_overrideMinimumEnabledValue)
  {
    if (minValue <= a3 && self->_maxValue >= a3)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v4 = minValue <= a3 && self->_minEnabledValue == a3;
  if (!v4 || self->_maxValue < a3)
  {
    return 0;
  }

  if (minValue == a3)
  {
LABEL_14:
    v5 = 0;
    self->_minEnabledValue = INFINITY;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:
  self->_overrideMinimumEnabledValue = v5;
  *&v7 = self->_value;
  return [UISliderDataModel _setValue:"_setValue:minValue:maxValue:minEnabledUsed:minEnabledValue:maxEnabledUsed:maxEnabledValue:" minValue:v7 maxValue:? minEnabledUsed:? minEnabledValue:? maxEnabledUsed:? maxEnabledValue:?];
}

- (BOOL)setMaximumEnabledValue:(float)a3
{
  maxValue = self->_maxValue;
  if (maxValue == a3 && !self->_overrideMaximumEnabledValue)
  {
    return 0;
  }

  if (self->_maxEnabledValue == a3)
  {
    return 0;
  }

  *&v3 = self->_minValue;
  if (maxValue < a3 || *&v3 > a3)
  {
    return 0;
  }

  if (maxValue == a3)
  {
    v7 = 0;
    self->_maxEnabledValue = INFINITY;
    overrideMinimumEnabledValue = self->_overrideMinimumEnabledValue;
  }

  else
  {
    overrideMinimumEnabledValue = self->_overrideMinimumEnabledValue;
    v7 = 1;
  }

  self->_overrideMaximumEnabledValue = v7;
  *&v9 = self->_value;
  return [UISliderDataModel _setValue:"_setValue:minValue:maxValue:minEnabledUsed:minEnabledValue:maxEnabledUsed:maxEnabledValue:" minValue:overrideMinimumEnabledValue maxValue:v9 minEnabledUsed:v3 minEnabledValue:? maxEnabledUsed:? maxEnabledValue:?];
}

- (void)_setContent:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  contentLookup = self->_contentLookup;
  value = v6;
  if (!contentLookup)
  {
    contentLookup = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v6 = value;
    self->_contentLookup = contentLookup;
  }

  if (v6)
  {
    CFDictionarySetValue(contentLookup, a4, v6);
  }

  else
  {
    CFDictionaryRemoveValue(contentLookup, a4);
  }
}

- (id)_contentForState:(unint64_t)a3
{
  contentLookup = self->_contentLookup;
  if (contentLookup)
  {
    contentLookup = CFDictionaryGetValue(contentLookup, a3);
    v3 = vars8;
  }

  return contentLookup;
}

- (void)setThumbImage:(id)a3 forState:(unint64_t)a4
{
  v7 = a3;
  v6 = [(UISliderDataModel *)self _contentForState:a4];
  if (!v6)
  {
    v6 = objc_alloc_init(_UISliderControlStateContent);
    [(UISliderDataModel *)self _setContent:v6 forState:a4];
  }

  [(_UISliderControlStateContent *)v6 setThumb:v7];
  if (!v7 && [(_UISliderControlStateContent *)v6 isEmpty])
  {
    [(UISliderDataModel *)self _setContent:0 forState:a4];
  }
}

- (void)setThumbImage:(id)a3 forStates:(unint64_t)a4
{
  v9 = a3;
  v6 = objc_autoreleasePoolPush();
  do
  {
    v7 = -a4;
    v8 = [(UISliderDataModel *)self _contentForState:a4 & -a4];
    if (!v8)
    {
      v8 = objc_alloc_init(_UISliderControlStateContent);
      [(UISliderDataModel *)self _setContent:v8 forState:a4 & v7];
    }

    [(_UISliderControlStateContent *)v8 setThumb:v9];
    if (!v9 && [(_UISliderControlStateContent *)v8 isEmpty])
    {
      [(UISliderDataModel *)self _setContent:0 forState:a4 & v7];
    }

    a4 &= a4 - 1;
  }

  while (a4);
  objc_autoreleasePoolPop(v6);
}

- (void)setThumbTintColor:(id)a3
{
  v6 = a3;
  v5 = [(UISliderDataModel *)self thumbTintColor];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_thumbTintColor, a3);
  }
}

- (void)setMinimumTrackImage:(id)a3 forState:(unint64_t)a4
{
  v7 = a3;
  v6 = [(UISliderDataModel *)self _contentForState:a4];
  if (!v6)
  {
    v6 = objc_alloc_init(_UISliderControlStateContent);
    [(UISliderDataModel *)self _setContent:v6 forState:a4];
  }

  [(_UISliderControlStateContent *)v6 setMinTrack:v7];
  if (!v7 && [(_UISliderControlStateContent *)v6 isEmpty])
  {
    [(UISliderDataModel *)self _setContent:0 forState:a4];
  }
}

- (void)setMinimumTrackImage:(id)a3 forStates:(unint64_t)a4
{
  v9 = a3;
  v6 = objc_autoreleasePoolPush();
  do
  {
    v7 = -a4;
    v8 = [(UISliderDataModel *)self _contentForState:a4 & -a4];
    if (!v8)
    {
      v8 = objc_alloc_init(_UISliderControlStateContent);
      [(UISliderDataModel *)self _setContent:v8 forState:a4 & v7];
    }

    [(_UISliderControlStateContent *)v8 setMinTrack:v9];
    if (!v9 && [(_UISliderControlStateContent *)v8 isEmpty])
    {
      [(UISliderDataModel *)self _setContent:0 forState:a4 & v7];
    }

    a4 &= a4 - 1;
  }

  while (a4);
  objc_autoreleasePoolPop(v6);
}

- (void)setMaximumTrackImage:(id)a3 forState:(unint64_t)a4
{
  v7 = a3;
  v6 = [(UISliderDataModel *)self _contentForState:a4];
  if (!v6)
  {
    v6 = objc_alloc_init(_UISliderControlStateContent);
    [(UISliderDataModel *)self _setContent:v6 forState:a4];
  }

  [(_UISliderControlStateContent *)v6 setMaxTrack:v7];
  if (!v7 && [(_UISliderControlStateContent *)v6 isEmpty])
  {
    [(UISliderDataModel *)self _setContent:0 forState:a4];
  }
}

- (void)setMaximumTrackImage:(id)a3 forStates:(unint64_t)a4
{
  v9 = a3;
  v6 = objc_autoreleasePoolPush();
  do
  {
    v7 = -a4;
    v8 = [(UISliderDataModel *)self _contentForState:a4 & -a4];
    if (!v8)
    {
      v8 = objc_alloc_init(_UISliderControlStateContent);
      [(UISliderDataModel *)self _setContent:v8 forState:a4 & v7];
    }

    [(_UISliderControlStateContent *)v8 setMaxTrack:v9];
    if (!v9 && [(_UISliderControlStateContent *)v8 isEmpty])
    {
      [(UISliderDataModel *)self _setContent:0 forState:a4 & v7];
    }

    a4 &= a4 - 1;
  }

  while (a4);
  objc_autoreleasePoolPop(v6);
}

- (id)thumbImageForState:(unint64_t)a3
{
  v4 = [(UISliderDataModel *)self _contentForState:a3];
  v5 = [v4 thumb];

  if (!v5)
  {
    v6 = [(UISliderDataModel *)self _contentForState:0];
    v5 = [v6 thumb];
  }

  return v5;
}

- (id)minimumTrackImageForState:(unint64_t)a3
{
  v4 = [(UISliderDataModel *)self _contentForState:a3];
  v5 = [v4 minTrack];

  if (!v5)
  {
    v6 = [(UISliderDataModel *)self _contentForState:0];
    v5 = [v6 minTrack];
  }

  return v5;
}

- (id)maximumTrackImageForState:(unint64_t)a3
{
  v4 = [(UISliderDataModel *)self _contentForState:a3];
  v5 = [v4 maxTrack];

  if (!v5)
  {
    v6 = [(UISliderDataModel *)self _contentForState:0];
    v5 = [v6 maxTrack];
  }

  return v5;
}

- (BOOL)hasAnyThumbImage
{
  v14[1] = *MEMORY[0x1E69E9840];
  contentLookup = self->_contentLookup;
  if (contentLookup)
  {
    Count = CFDictionaryGetCount(contentLookup);
    v5 = Count;
    v6 = (v14 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((8 * Count) >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = 8 * Count;
    }

    bzero(v14 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    CFDictionaryGetKeysAndValues(self->_contentLookup, 0, v6);
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      v8 = 1;
      v9 = v5;
      v10 = 1;
      while (1)
      {
        v11 = *v6;
        if (([v11 isEmpty] & 1) == 0)
        {
          v12 = [v11 thumb];

          if (v12)
          {
            break;
          }
        }

        v10 = v8++ < v5;
        ++v6;
        if (!--v9)
        {
          return v10;
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

- (void)setEdgeFeedbackGenerator:(id)a3
{
  v5 = a3;
  if ([(UIFeedbackGenerator *)self->_edgeFeedbackGenerator isActive])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:417 description:@"Edge feedback behavior should not be changed while active."];
  }

  edgeFeedbackGenerator = self->_edgeFeedbackGenerator;
  self->_edgeFeedbackGenerator = v5;
}

- (void)setModulationFeedbackGenerator:(id)a3
{
  v5 = a3;
  if ([(UIFeedbackGenerator *)self->_modulationFeedbackGenerator isActive])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:428 description:@"Modulation feedback behavior should not be changed while active."];
  }

  modulationFeedbackGenerator = self->_modulationFeedbackGenerator;
  self->_modulationFeedbackGenerator = v5;
}

@end