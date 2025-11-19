@interface NSTextPhraseAttributesProvider_RippleFade
- (NSTextPhraseAttributesProvider_RippleFade)initWithController:(id)a3;
- (double)opacityFactorForGlyphIndex:(int64_t)a3 phraseIndex:(int64_t)a4 atTimeIndex:(int64_t)a5;
- (double)scaleFactorForGlyphIndex:(int64_t)a3 phraseIndex:(int64_t)a4 atTimeIndex:(int64_t)a5;
- (double)totalElapsedTime;
- (id)attributedStringForPhraseIndex:(unint64_t)a3 atPhraseTimeIndex:(int64_t)a4;
- (int64_t)animationElapsedTimeIndex;
- (int64_t)cycleCount;
- (int64_t)cycleTimeIndex;
- (int64_t)phraseCount;
- (int64_t)primaryPhraseIndex;
- (int64_t)secondaryPhraseIndex;
- (int64_t)totalElapsedTimeIndex;
- (void)generateDelayValues;
- (void)generateFactorArrayValues;
- (void)renderFrameForTime:(double)a3 usingHandler:(id)a4;
@end

@implementation NSTextPhraseAttributesProvider_RippleFade

- (NSTextPhraseAttributesProvider_RippleFade)initWithController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NSTextPhraseAttributesProvider_RippleFade;
  v5 = [(NSTextPhraseAttributesProvider_RippleFade *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_controller, v4);
    v8 = [v4 animatingAttributedStringPhrases];
    objc_storeWeak(&v6->_animatingAttributedStringPhrases, v8);

    [(NSTextPhraseAttributesProvider_RippleFade *)v6 generateFactorArrayValues];
    [(NSTextPhraseAttributesProvider_RippleFade *)v6 generateDelayValues];
  }

  return v6;
}

- (void)generateFactorArrayValues
{
  [0 appendString:@"TPT_RF: _opacityFactorArray: ["];
  v22 = [(NSTextPhraseAnimationTimingFunction *)1.0 cubicBezierTimingFunctionWithSamplingFrequency:1.0 duration:0.15 initialValue:0.0 finalValue:0.33 point1:1.0 point2:NSTextPhraseAnimationTimingFunction, 60];
  v21 = [(NSTextPhraseAnimationTimingFunction *)2.0 cubicBezierTimingFunctionWithSamplingFrequency:0.0 duration:0.33 initialValue:0.0 finalValue:0.67 point1:1.0 point2:NSTextPhraseAnimationTimingFunction, 60];
  v23 = 0;
  v3 = 0;
  scaleFactorArray = self->_scaleFactorArray;
  do
  {
    self->_scaleFactorArray[0] = 1.0;
    if (v3 <= 0x3B)
    {
      v5 = v22;
      v6 = v3;
LABEL_4:
      v7 = [(NSTextPhraseAnimationTimingFunction *)v5 sampleAtIndex:v6];
      goto LABEL_8;
    }

    v7 = 1.0;
    v6 = v3 - 120;
    if (v3 >= 0x78)
    {
      v7 = 0.0;
      if (v3 <= 0xEF)
      {
        v5 = v21;
        goto LABEL_4;
      }
    }

LABEL_8:
    self->_opacityFactorArray[0] = v7;
    HIDWORD(v8) = -858993459 * v3;
    LODWORD(v8) = HIDWORD(v8);
    if ((v8 >> 1) <= 0x19999999)
    {
      v9 = [MEMORY[0x1E696AD60] string];

      [v9 appendString:@"TPT_RF: "];
      v7 = self->_opacityFactorArray[0];
      v23 = v9;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f ", *&v7];
    [v23 appendString:v10];

    ++v3;
    self = (self + 8);
  }

  while (v3 != 255);
  v11 = [(NSTextPhraseAnimationTimingFunction *)0.5 cubicBezierTimingFunctionWithSamplingFrequency:1.02 duration:0.15 initialValue:0.5 finalValue:0.45 point1:1.0 point2:NSTextPhraseAnimationTimingFunction, 60];
  v12 = [(NSTextPhraseAnimationTimingFunction *)0.5 cubicBezierTimingFunctionWithSamplingFrequency:1.0 duration:0.5 initialValue:0.0 finalValue:0.25 point1:1.0 point2:NSTextPhraseAnimationTimingFunction, 60];
  v20 = [(NSTextPhraseAnimationTimingFunction *)0.417 cubicBezierTimingFunctionWithSamplingFrequency:1.02 duration:0.5 initialValue:0.0 finalValue:0.75 point1:1.0 point2:NSTextPhraseAnimationTimingFunction, 60];
  v19 = [(NSTextPhraseAnimationTimingFunction *)0.417 cubicBezierTimingFunctionWithSamplingFrequency:1.0 duration:0.25 initialValue:0.0 finalValue:0.75 point1:0.5 point2:NSTextPhraseAnimationTimingFunction, 60];
  for (i = 0; i != 255; ++i)
  {
    v14 = v11;
    if (i < 0x1E || (v14 = v12, i < 0x3C) || (v15 = 1.0, i >= 0x8B) && ((v14 = v20, i < 0xA4) || (v14 = v19, i <= 0xC6)))
    {
      v15 = [(NSTextPhraseAnimationTimingFunction *)v14 sampleAtIndex:?];
    }

    scaleFactorArray[i] = v15;
    HIDWORD(v16) = -858993459 * i;
    LODWORD(v16) = HIDWORD(v16);
    if ((v16 >> 1) <= 0x19999999)
    {
      v17 = [MEMORY[0x1E696AD60] string];

      [v17 appendString:@"TPT_RF: "];
      v15 = scaleFactorArray[i];
      v23 = v17;
    }

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f ", *&v15];
    [v23 appendString:v18];
  }

  [v23 appendString:@"\n]"];
}

- (void)generateDelayValues
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_animatingAttributedStringPhrases);
  v5 = [v3 initWithCapacity:{objc_msgSend(WeakRetained, "count")}];

  v6 = objc_loadWeakRetained(&self->_animatingAttributedStringPhrases);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__NSTextPhraseAttributesProvider_RippleFade_generateDelayValues__block_invoke;
  v10[3] = &unk_1E7266BF0;
  v11 = 0;
  v7 = v5;
  v12 = v7;
  [v6 enumerateObjectsUsingBlock:v10];

  delayArrays = self->_delayArrays;
  self->_delayArrays = v7;
  v9 = v7;
}

- (void)renderFrameForTime:(double)a3 usingHandler:(id)a4
{
  v13 = a4;
  self->_currentTime = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  if (WeakRetained)
  {
    v7 = [(NSTextPhraseAttributesProvider_RippleFade *)self cycleTimeIndex];
    v8 = [(NSTextPhraseAttributesProvider_RippleFade *)self cycleTimeIndex];
    v9 = [(NSTextPhraseAttributesProvider_RippleFade *)self attributedStringForPhraseIndex:[(NSTextPhraseAttributesProvider_RippleFade *)self primaryPhraseIndex] atPhraseTimeIndex:v7];
    if ([(NSTextPhraseAttributesProvider_RippleFade *)self isSecondaryPhraseAvailable])
    {
      v10 = [(NSTextPhraseAttributesProvider_RippleFade *)self attributedStringForPhraseIndex:[(NSTextPhraseAttributesProvider_RippleFade *)self secondaryPhraseIndex] atPhraseTimeIndex:v8 + 240];
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_loadWeakRetained(&self->_controller);
    v12 = [v11 animationState];
    v13[2](v13, v12, v9, v10, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  }
}

- (id)attributedStringForPhraseIndex:(unint64_t)a3 atPhraseTimeIndex:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_animatingAttributedStringPhrases);
  v8 = [WeakRetained objectAtIndex:a3];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TPT_RF: phrase%02d cycleIndex:%03d ", a3, a4];
  [0 appendString:v10];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"opacity: ["];
  [0 appendString:v11];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scale: ["];
  [0 appendString:v12];

  if ([v9 length])
  {
    v13 = 0;
    v14 = 0;
    do
    {
      [(NSTextPhraseAttributesProvider_RippleFade *)self opacityFactorForGlyphIndex:v14 phraseIndex:a3 atTimeIndex:a4];
      if (v15 <= 0.99)
      {
        v17 = v15;
        v18 = [v9 attribute:@"NSColor" atIndex:v14 effectiveRange:0];
        v21 = 0.0;
        [v18 getRed:0 green:0 blue:0 alpha:&v21];
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f ", *&v17];
        [0 appendString:v19];

        v16 = [v18 colorWithAlphaComponent:v17 * v21];

        if (v16)
        {
          [v9 addAttribute:@"NSColor" value:v16 range:{v14, 1}];
        }

        v13 = v16;
      }

      else
      {
        v16 = v13;
      }

      ++v14;
    }

    while (v14 < [v9 length]);
  }

  else
  {
    v16 = 0;
  }

  [0 appendString:@"]"];
  [0 appendString:@"]"];

  return v9;
}

- (double)opacityFactorForGlyphIndex:(int64_t)a3 phraseIndex:(int64_t)a4 atTimeIndex:(int64_t)a5
{
  v8 = [(NSArray *)self->_delayArrays objectAtIndex:a4];
  v9 = [v8 objectAtIndex:a3];
  v10 = [v9 unsignedIntegerValue];

  return self->_opacityFactorArray[(a5 - v10) & ~((a5 - v10) >> 63)];
}

- (double)scaleFactorForGlyphIndex:(int64_t)a3 phraseIndex:(int64_t)a4 atTimeIndex:(int64_t)a5
{
  v8 = [(NSArray *)self->_delayArrays objectAtIndex:a4];
  v9 = [v8 objectAtIndex:a3];
  v10 = [v9 unsignedIntegerValue];

  return self->_scaleFactorArray[(a5 - v10) & ~((a5 - v10) >> 63)];
}

- (int64_t)phraseCount
{
  WeakRetained = objc_loadWeakRetained(&self->_animatingAttributedStringPhrases);
  v3 = [WeakRetained count];

  return v3;
}

- (int64_t)primaryPhraseIndex
{
  v3 = [(NSTextPhraseAttributesProvider_RippleFade *)self cycleCount];
  result = v3 % [(NSTextPhraseAttributesProvider_RippleFade *)self phraseCount];
  self->_primaryPhraseIndex = result;
  return result;
}

- (int64_t)secondaryPhraseIndex
{
  v3 = [(NSTextPhraseAttributesProvider_RippleFade *)self primaryPhraseIndex];
  v4 = v3 + [(NSTextPhraseAttributesProvider_RippleFade *)self phraseCount]- 1;
  result = v4 % [(NSTextPhraseAttributesProvider_RippleFade *)self phraseCount];
  self->_secondaryPhraseIndex = result;
  return result;
}

- (int64_t)totalElapsedTimeIndex
{
  [(NSTextPhraseAttributesProvider_RippleFade *)self totalElapsedTime];
  result = (v3 * 60.0);
  self->_totalElapsedTimeIndex = result;
  return result;
}

- (int64_t)animationElapsedTimeIndex
{
  v3 = [(NSTextPhraseAttributesProvider_RippleFade *)self totalElapsedTimeIndex];
  v4 = -60;
  if (v3 > -60)
  {
    v4 = v3;
  }

  result = v4 + 60;
  self->_animationElapsedTimeIndex = v4 + 60;
  return result;
}

- (int64_t)cycleCount
{
  result = [(NSTextPhraseAttributesProvider_RippleFade *)self animationElapsedTimeIndex]/ 240;
  self->_cycleCount = result;
  return result;
}

- (int64_t)cycleTimeIndex
{
  result = [(NSTextPhraseAttributesProvider_RippleFade *)self animationElapsedTimeIndex]% 240;
  self->_cycleTimeIndex = result;
  return result;
}

- (double)totalElapsedTime
{
  result = self->_currentTime - self->_startTime;
  self->_totalElapsedTime = result;
  return result;
}

@end