@interface UISliderDataModel
- (BOOL)_setValue:(float)value minValue:(float)minValue maxValue:(float)maxValue minEnabledUsed:(BOOL)used minEnabledValue:(float)enabledValue maxEnabledUsed:(BOOL)enabledUsed maxEnabledValue:(float)maxEnabledValue;
- (BOOL)hasAnyThumbImage;
- (BOOL)hasAnyTrackImage;
- (BOOL)setMaximumEnabledValue:(float)value;
- (BOOL)setMaximumValue:(float)value;
- (BOOL)setMinimumEnabledValue:(float)value;
- (BOOL)setMinimumValue:(float)minEnabledValue;
- (UISliderDataModel)init;
- (float)maximumEnabledValue;
- (float)minimumEnabledValue;
- (id)_contentForState:(unint64_t)state;
- (id)maximumTrackImageForState:(unint64_t)state;
- (id)minimumTrackImageForState:(unint64_t)state;
- (id)thumbImageForState:(unint64_t)state;
- (void)_setContent:(id)content forState:(unint64_t)state;
- (void)dealloc;
- (void)setEdgeFeedbackGenerator:(id)generator;
- (void)setMaximumTrackImage:(id)image forState:(unint64_t)state;
- (void)setMaximumTrackImage:(id)image forStates:(unint64_t)states;
- (void)setMinimumTrackImage:(id)image forState:(unint64_t)state;
- (void)setMinimumTrackImage:(id)image forStates:(unint64_t)states;
- (void)setModulationFeedbackGenerator:(id)generator;
- (void)setThumbImage:(id)image forState:(unint64_t)state;
- (void)setThumbImage:(id)image forStates:(unint64_t)states;
- (void)setThumbTintColor:(id)color;
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
          minTrack = [v11 minTrack];

          if (minTrack)
          {
            break;
          }

          maxTrack = [v11 maxTrack];

          if (maxTrack)
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

- (BOOL)_setValue:(float)value minValue:(float)minValue maxValue:(float)maxValue minEnabledUsed:(BOOL)used minEnabledValue:(float)enabledValue maxEnabledUsed:(BOOL)enabledUsed maxEnabledValue:(float)maxEnabledValue
{
  enabledUsedCopy = enabledUsed;
  usedCopy = used;
  if (minValue > maxValue)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:83 description:{@"Attempting to set a slider's minimumValue (%f) to be larger than the maximumValue (%f)", minValue, maxValue}];
  }

  if (enabledValue > maxEnabledValue && enabledUsedCopy && usedCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:86 description:{@"Attempting to set a slider's minimumEnabledValue (%f) to be larger than the maximumEnabledValue (%f)", minValue, maxValue}];
  }

  if (enabledUsedCopy)
  {
    maxValueCopy = maxEnabledValue;
  }

  else
  {
    maxValueCopy = maxValue;
  }

  if (usedCopy)
  {
    valueCopy = enabledValue;
  }

  else
  {
    valueCopy = minValue;
  }

  if (valueCopy < value)
  {
    valueCopy = value;
  }

  if (maxValueCopy > valueCopy)
  {
    maxValueCopy = valueCopy;
  }

  if (maxValueCopy == self->_value && self->_minValue == minValue && self->_maxValue == maxValue)
  {
    if (usedCopy && self->_minEnabledValue != enabledValue)
    {
      self->_value = maxValueCopy;
      self->_minValue = minValue;
      self->_maxValue = maxValue;
      goto LABEL_25;
    }

    if (!enabledUsedCopy || self->_maxEnabledValue == maxEnabledValue)
    {
      return 0;
    }
  }

  self->_value = maxValueCopy;
  self->_minValue = minValue;
  self->_maxValue = maxValue;
  if (usedCopy)
  {
LABEL_25:
    self->_minEnabledValue = enabledValue;
  }

  if (enabledUsedCopy)
  {
    self->_maxEnabledValue = maxEnabledValue;
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

- (BOOL)setMaximumValue:(float)value
{
  if (self->_maxValue == value)
  {
    return 0;
  }

  *&v3 = self->_value;
  return [UISliderDataModel _setValue:"_setValue:minValue:maxValue:minEnabledUsed:minEnabledValue:maxEnabledUsed:maxEnabledValue:" minValue:v3 maxValue:? minEnabledUsed:? minEnabledValue:? maxEnabledUsed:? maxEnabledValue:?];
}

- (BOOL)setMinimumEnabledValue:(float)value
{
  minValue = self->_minValue;
  if (minValue == value && !self->_overrideMinimumEnabledValue)
  {
    if (minValue <= value && self->_maxValue >= value)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v4 = minValue <= value && self->_minEnabledValue == value;
  if (!v4 || self->_maxValue < value)
  {
    return 0;
  }

  if (minValue == value)
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

- (BOOL)setMaximumEnabledValue:(float)value
{
  maxValue = self->_maxValue;
  if (maxValue == value && !self->_overrideMaximumEnabledValue)
  {
    return 0;
  }

  if (self->_maxEnabledValue == value)
  {
    return 0;
  }

  *&v3 = self->_minValue;
  if (maxValue < value || *&v3 > value)
  {
    return 0;
  }

  if (maxValue == value)
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

- (void)_setContent:(id)content forState:(unint64_t)state
{
  contentCopy = content;
  contentLookup = self->_contentLookup;
  value = contentCopy;
  if (!contentLookup)
  {
    contentLookup = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    contentCopy = value;
    self->_contentLookup = contentLookup;
  }

  if (contentCopy)
  {
    CFDictionarySetValue(contentLookup, state, contentCopy);
  }

  else
  {
    CFDictionaryRemoveValue(contentLookup, state);
  }
}

- (id)_contentForState:(unint64_t)state
{
  contentLookup = self->_contentLookup;
  if (contentLookup)
  {
    contentLookup = CFDictionaryGetValue(contentLookup, state);
    v3 = vars8;
  }

  return contentLookup;
}

- (void)setThumbImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  v6 = [(UISliderDataModel *)self _contentForState:state];
  if (!v6)
  {
    v6 = objc_alloc_init(_UISliderControlStateContent);
    [(UISliderDataModel *)self _setContent:v6 forState:state];
  }

  [(_UISliderControlStateContent *)v6 setThumb:imageCopy];
  if (!imageCopy && [(_UISliderControlStateContent *)v6 isEmpty])
  {
    [(UISliderDataModel *)self _setContent:0 forState:state];
  }
}

- (void)setThumbImage:(id)image forStates:(unint64_t)states
{
  imageCopy = image;
  v6 = objc_autoreleasePoolPush();
  do
  {
    v7 = -states;
    v8 = [(UISliderDataModel *)self _contentForState:states & -states];
    if (!v8)
    {
      v8 = objc_alloc_init(_UISliderControlStateContent);
      [(UISliderDataModel *)self _setContent:v8 forState:states & v7];
    }

    [(_UISliderControlStateContent *)v8 setThumb:imageCopy];
    if (!imageCopy && [(_UISliderControlStateContent *)v8 isEmpty])
    {
      [(UISliderDataModel *)self _setContent:0 forState:states & v7];
    }

    states &= states - 1;
  }

  while (states);
  objc_autoreleasePoolPop(v6);
}

- (void)setThumbTintColor:(id)color
{
  colorCopy = color;
  thumbTintColor = [(UISliderDataModel *)self thumbTintColor];

  if (thumbTintColor != colorCopy)
  {
    objc_storeStrong(&self->_thumbTintColor, color);
  }
}

- (void)setMinimumTrackImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  v6 = [(UISliderDataModel *)self _contentForState:state];
  if (!v6)
  {
    v6 = objc_alloc_init(_UISliderControlStateContent);
    [(UISliderDataModel *)self _setContent:v6 forState:state];
  }

  [(_UISliderControlStateContent *)v6 setMinTrack:imageCopy];
  if (!imageCopy && [(_UISliderControlStateContent *)v6 isEmpty])
  {
    [(UISliderDataModel *)self _setContent:0 forState:state];
  }
}

- (void)setMinimumTrackImage:(id)image forStates:(unint64_t)states
{
  imageCopy = image;
  v6 = objc_autoreleasePoolPush();
  do
  {
    v7 = -states;
    v8 = [(UISliderDataModel *)self _contentForState:states & -states];
    if (!v8)
    {
      v8 = objc_alloc_init(_UISliderControlStateContent);
      [(UISliderDataModel *)self _setContent:v8 forState:states & v7];
    }

    [(_UISliderControlStateContent *)v8 setMinTrack:imageCopy];
    if (!imageCopy && [(_UISliderControlStateContent *)v8 isEmpty])
    {
      [(UISliderDataModel *)self _setContent:0 forState:states & v7];
    }

    states &= states - 1;
  }

  while (states);
  objc_autoreleasePoolPop(v6);
}

- (void)setMaximumTrackImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  v6 = [(UISliderDataModel *)self _contentForState:state];
  if (!v6)
  {
    v6 = objc_alloc_init(_UISliderControlStateContent);
    [(UISliderDataModel *)self _setContent:v6 forState:state];
  }

  [(_UISliderControlStateContent *)v6 setMaxTrack:imageCopy];
  if (!imageCopy && [(_UISliderControlStateContent *)v6 isEmpty])
  {
    [(UISliderDataModel *)self _setContent:0 forState:state];
  }
}

- (void)setMaximumTrackImage:(id)image forStates:(unint64_t)states
{
  imageCopy = image;
  v6 = objc_autoreleasePoolPush();
  do
  {
    v7 = -states;
    v8 = [(UISliderDataModel *)self _contentForState:states & -states];
    if (!v8)
    {
      v8 = objc_alloc_init(_UISliderControlStateContent);
      [(UISliderDataModel *)self _setContent:v8 forState:states & v7];
    }

    [(_UISliderControlStateContent *)v8 setMaxTrack:imageCopy];
    if (!imageCopy && [(_UISliderControlStateContent *)v8 isEmpty])
    {
      [(UISliderDataModel *)self _setContent:0 forState:states & v7];
    }

    states &= states - 1;
  }

  while (states);
  objc_autoreleasePoolPop(v6);
}

- (id)thumbImageForState:(unint64_t)state
{
  v4 = [(UISliderDataModel *)self _contentForState:state];
  thumb = [v4 thumb];

  if (!thumb)
  {
    v6 = [(UISliderDataModel *)self _contentForState:0];
    thumb = [v6 thumb];
  }

  return thumb;
}

- (id)minimumTrackImageForState:(unint64_t)state
{
  v4 = [(UISliderDataModel *)self _contentForState:state];
  minTrack = [v4 minTrack];

  if (!minTrack)
  {
    v6 = [(UISliderDataModel *)self _contentForState:0];
    minTrack = [v6 minTrack];
  }

  return minTrack;
}

- (id)maximumTrackImageForState:(unint64_t)state
{
  v4 = [(UISliderDataModel *)self _contentForState:state];
  maxTrack = [v4 maxTrack];

  if (!maxTrack)
  {
    v6 = [(UISliderDataModel *)self _contentForState:0];
    maxTrack = [v6 maxTrack];
  }

  return maxTrack;
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
          thumb = [v11 thumb];

          if (thumb)
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

- (void)setEdgeFeedbackGenerator:(id)generator
{
  generatorCopy = generator;
  if ([(UIFeedbackGenerator *)self->_edgeFeedbackGenerator isActive])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:417 description:@"Edge feedback behavior should not be changed while active."];
  }

  edgeFeedbackGenerator = self->_edgeFeedbackGenerator;
  self->_edgeFeedbackGenerator = generatorCopy;
}

- (void)setModulationFeedbackGenerator:(id)generator
{
  generatorCopy = generator;
  if ([(UIFeedbackGenerator *)self->_modulationFeedbackGenerator isActive])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISliderDataModel.m" lineNumber:428 description:@"Modulation feedback behavior should not be changed while active."];
  }

  modulationFeedbackGenerator = self->_modulationFeedbackGenerator;
  self->_modulationFeedbackGenerator = generatorCopy;
}

@end