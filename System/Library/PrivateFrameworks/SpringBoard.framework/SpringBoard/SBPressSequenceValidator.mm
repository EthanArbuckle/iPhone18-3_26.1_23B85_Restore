@interface SBPressSequenceValidator
- (BOOL)pressEventIsValidInSequence:(id)sequence endingDownEvent:(BOOL)event duration:(double)duration;
- (SBPressSequenceValidator)init;
- (SBPressSequenceValidator)initWithSettings:(id)settings;
- (_SBPressSequenceValidatorBounds)_pressDownBoundsForDesiredIndex:(unint64_t)index sequence:(id)sequence;
- (_SBPressSequenceValidatorBounds)_pressUpBoundsForDesiredIndex:(unint64_t)index sequence:(id)sequence;
- (double)timeUntilNextPressEventIsInValidInSequence:(id)sequence lastPressEventInSequenceIsDown:(BOOL)down;
- (int64_t)_modeForDesiredIndex:(unint64_t)index isDownEvent:(BOOL)event;
@end

@implementation SBPressSequenceValidator

- (SBPressSequenceValidator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBPressSequenceValidator.m" lineNumber:53 description:@"Use initWithSettings:"];

  return [(SBPressSequenceValidator *)self initWithSettings:0];
}

- (SBPressSequenceValidator)initWithSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    [(SBPressSequenceValidator *)a2 initWithSettings:?];
  }

  v10.receiver = self;
  v10.super_class = SBPressSequenceValidator;
  v7 = [(SBPressSequenceValidator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_settings, settings);
  }

  return v8;
}

- (BOOL)pressEventIsValidInSequence:(id)sequence endingDownEvent:(BOOL)event duration:(double)duration
{
  eventCopy = event;
  v32 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  v10 = [sequenceCopy count];
  v11 = v10;
  if (eventCopy)
  {
    [(SBPressSequenceValidator *)self _pressDownBoundsForDesiredIndex:v10 sequence:sequenceCopy];
    if (v12 <= duration && v13 >= duration)
    {
LABEL_18:
      v24 = 1;
      goto LABEL_19;
    }

    v15 = v12;
    v16 = v13;
    v17 = SBLogButtonsCombo();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v26 = 134218496;
      durationCopy2 = duration;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = v16;
      v18 = "down press duration:%g out of bounds (%g - %g)";
LABEL_21:
      _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, v18, &v26, 0x20u);
    }
  }

  else
  {
    if (!v10)
    {
      [SBPressSequenceValidator pressEventIsValidInSequence:a2 endingDownEvent:self duration:?];
    }

    -[SBPressSequenceValidator _pressUpBoundsForDesiredIndex:sequence:](self, "_pressUpBoundsForDesiredIndex:sequence:", [sequenceCopy count] - 1, sequenceCopy);
    if (v19 <= duration && v20 >= duration)
    {
      goto LABEL_18;
    }

    v22 = v19;
    v23 = v20;
    v17 = SBLogButtonsCombo();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v26 = 134218496;
      durationCopy2 = duration;
      v28 = 2048;
      v29 = v22;
      v30 = 2048;
      v31 = v23;
      v18 = "up press duration:%g out of bounds (%g - %g)";
      goto LABEL_21;
    }
  }

  v24 = 0;
LABEL_19:

  return v24;
}

- (double)timeUntilNextPressEventIsInValidInSequence:(id)sequence lastPressEventInSequenceIsDown:(BOOL)down
{
  downCopy = down;
  sequenceCopy = sequence;
  v7 = [sequenceCopy count];
  if (downCopy)
  {
    [(SBPressSequenceValidator *)self _pressUpBoundsForDesiredIndex:v7 - 1 sequence:sequenceCopy];
  }

  else
  {
    [(SBPressSequenceValidator *)self _pressDownBoundsForDesiredIndex:v7 sequence:sequenceCopy];
  }

  v9 = v8;

  return v9;
}

- (_SBPressSequenceValidatorBounds)_pressDownBoundsForDesiredIndex:(unint64_t)index sequence:(id)sequence
{
  v34 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  v7 = [(SBPressSequenceValidator *)self _modeForDesiredIndex:index isDownEvent:1];
  if ([(SBPressSequenceSettings *)self->_settings indexOfPressDownToUseForVarianceAndGrowth]>= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [sequenceCopy objectAtIndex:{-[SBPressSequenceSettings indexOfPressDownToUseForVarianceAndGrowth](self->_settings, "indexOfPressDownToUseForVarianceAndGrowth")}];
  }

  if (v7 == 2)
  {
    [v8 durationDown];
    v16 = v17;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = sequenceCopy;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      v22 = v16;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v29 + 1) + 8 * i) durationDown];
          if (v22 >= v24)
          {
            v22 = v24;
          }

          if (v16 < v24)
          {
            v16 = v24;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v20);
    }

    else
    {
      v22 = v16;
    }

    [(SBPressSequenceSettings *)self->_settings pressDownVariance];
    v9 = v22 - v25;
    goto LABEL_24;
  }

  if (v7 == 1)
  {
    [v8 durationDown];
    v13 = v12;
    [(SBPressSequenceSettings *)self->_settings pressDownVariance];
    v9 = v13 - v14;
    [v8 durationDown];
    v16 = v15;
LABEL_24:
    [(SBPressSequenceSettings *)self->_settings pressDownVariance];
    v11 = v16 + v26;
    goto LABEL_25;
  }

  v9 = 0.0;
  if (v7)
  {
    v11 = 0.0;
  }

  else
  {
    [(SBPressSequenceSettings *)self->_settings maxDefaultPressDownDuration];
    v11 = v10;
  }

LABEL_25:

  v27 = v9;
  v28 = v11;
  result.var1 = v28;
  result.var0 = v27;
  return result;
}

- (_SBPressSequenceValidatorBounds)_pressUpBoundsForDesiredIndex:(unint64_t)index sequence:(id)sequence
{
  v41 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  v7 = [(SBPressSequenceValidator *)self _modeForDesiredIndex:index isDownEvent:0];
  if ([(SBPressSequenceSettings *)self->_settings indexOfPressUpToUseForVarianceAndGrowth]>= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [sequenceCopy objectAtIndex:{-[SBPressSequenceSettings indexOfPressUpToUseForVarianceAndGrowth](self->_settings, "indexOfPressUpToUseForVarianceAndGrowth")}];
  }

  if (v7 == 2)
  {
    [v8 durationUp];
    v21 = v22;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = sequenceCopy;
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v37;
      v27 = v21;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v36 + 1) + 8 * i);
          lastObject = [v23 lastObject];

          if (v29 != lastObject)
          {
            [v29 durationUp];
            if (v27 >= v31)
            {
              v27 = v31;
            }

            if (v21 < v31)
            {
              v21 = v31;
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v25);
    }

    else
    {
      v27 = v21;
    }

    [(SBPressSequenceSettings *)self->_settings pressUpVariance];
    v9 = v27 - v32;
    goto LABEL_30;
  }

  if (v7 == 1)
  {
    [v8 durationUp];
    v18 = v17;
    [(SBPressSequenceSettings *)self->_settings pressUpVariance];
    v9 = v18 - v19;
    [v8 durationUp];
    v21 = v20;
LABEL_30:
    [(SBPressSequenceSettings *)self->_settings pressUpVariance];
    v11 = v21 + v33;
    goto LABEL_31;
  }

  v9 = 0.0;
  if (v7)
  {
    v11 = 0.0;
  }

  else
  {
    [(SBPressSequenceSettings *)self->_settings maxDefaultPressUpDuration];
    v11 = v10;
    [(SBPressSequenceSettings *)self->_settings maxDownToDownDuration];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      v12 = 0.0;
      if ([sequenceCopy count] > index)
      {
        v13 = [sequenceCopy objectAtIndex:index];
        [v13 durationDown];
        v12 = v14;
      }

      [(SBPressSequenceSettings *)self->_settings maxDownToDownDuration];
      v16 = v15 - v12;
      if (v11 >= v16)
      {
        v11 = v16;
      }
    }
  }

LABEL_31:

  v34 = v9;
  v35 = v11;
  result.var1 = v35;
  result.var0 = v34;
  return result;
}

- (int64_t)_modeForDesiredIndex:(unint64_t)index isDownEvent:(BOOL)event
{
  eventCopy = event;
  settings = self->_settings;
  if (event)
  {
    indexOfPressDownToUseForVarianceAndGrowth = [(SBPressSequenceSettings *)settings indexOfPressDownToUseForVarianceAndGrowth];
    numberOfPressDownGrowthTerms = [(SBPressSequenceSettings *)self->_settings numberOfPressDownGrowthTerms];
  }

  else
  {
    indexOfPressDownToUseForVarianceAndGrowth = [(SBPressSequenceSettings *)settings indexOfPressUpToUseForVarianceAndGrowth];
    numberOfPressDownGrowthTerms = [(SBPressSequenceSettings *)self->_settings numberOfPressUpGrowthTerms];
  }

  v11 = eventCopy - 1;
  if (indexOfPressDownToUseForVarianceAndGrowth < index)
  {
    v13 = v11 - numberOfPressDownGrowthTerms;
    v12 = v11 - numberOfPressDownGrowthTerms + [(SBPressSequenceSettings *)self->_settings numberOfPresses]> index;
    v14 = 1;
  }

  else
  {
    v12 = 0;
    v13 = v11 - numberOfPressDownGrowthTerms;
    v14 = 2;
  }

  v15 = indexOfPressDownToUseForVarianceAndGrowth >= index;
  v16 = v13 + [(SBPressSequenceSettings *)self->_settings numberOfPresses];
  if (v12)
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  if (!(v17 | (v16 <= index)))
  {
    [SBPressSequenceValidator _modeForDesiredIndex:a2 isDownEvent:self];
  }

  if (v16 > index)
  {
    return v12;
  }

  else
  {
    return 2;
  }
}

- (void)initWithSettings:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPressSequenceValidator.m" lineNumber:58 description:@"SBPressSequenceValidator must be given non nil settings"];
}

- (void)pressEventIsValidInSequence:(uint64_t)a1 endingDownEvent:(uint64_t)a2 duration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPressSequenceValidator.m" lineNumber:79 description:@"SBPressSequence asked to evaluate an up event with no down event present in the sequence"];
}

- (void)_modeForDesiredIndex:(uint64_t)a1 isDownEvent:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPressSequenceValidator.m" lineNumber:215 description:{@"SBPressSequenceValidator found 0 validations when it should have found at least 1", 0}];
}

@end