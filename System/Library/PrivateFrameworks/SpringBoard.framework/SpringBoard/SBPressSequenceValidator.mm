@interface SBPressSequenceValidator
- (BOOL)pressEventIsValidInSequence:(id)a3 endingDownEvent:(BOOL)a4 duration:(double)a5;
- (SBPressSequenceValidator)init;
- (SBPressSequenceValidator)initWithSettings:(id)a3;
- (_SBPressSequenceValidatorBounds)_pressDownBoundsForDesiredIndex:(unint64_t)a3 sequence:(id)a4;
- (_SBPressSequenceValidatorBounds)_pressUpBoundsForDesiredIndex:(unint64_t)a3 sequence:(id)a4;
- (double)timeUntilNextPressEventIsInValidInSequence:(id)a3 lastPressEventInSequenceIsDown:(BOOL)a4;
- (int64_t)_modeForDesiredIndex:(unint64_t)a3 isDownEvent:(BOOL)a4;
@end

@implementation SBPressSequenceValidator

- (SBPressSequenceValidator)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBPressSequenceValidator.m" lineNumber:53 description:@"Use initWithSettings:"];

  return [(SBPressSequenceValidator *)self initWithSettings:0];
}

- (SBPressSequenceValidator)initWithSettings:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBPressSequenceValidator *)a2 initWithSettings:?];
  }

  v10.receiver = self;
  v10.super_class = SBPressSequenceValidator;
  v7 = [(SBPressSequenceValidator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_settings, a3);
  }

  return v8;
}

- (BOOL)pressEventIsValidInSequence:(id)a3 endingDownEvent:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [v9 count];
  v11 = v10;
  if (v6)
  {
    [(SBPressSequenceValidator *)self _pressDownBoundsForDesiredIndex:v10 sequence:v9];
    if (v12 <= a5 && v13 >= a5)
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
      v27 = a5;
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

    -[SBPressSequenceValidator _pressUpBoundsForDesiredIndex:sequence:](self, "_pressUpBoundsForDesiredIndex:sequence:", [v9 count] - 1, v9);
    if (v19 <= a5 && v20 >= a5)
    {
      goto LABEL_18;
    }

    v22 = v19;
    v23 = v20;
    v17 = SBLogButtonsCombo();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v26 = 134218496;
      v27 = a5;
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

- (double)timeUntilNextPressEventIsInValidInSequence:(id)a3 lastPressEventInSequenceIsDown:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 count];
  if (v4)
  {
    [(SBPressSequenceValidator *)self _pressUpBoundsForDesiredIndex:v7 - 1 sequence:v6];
  }

  else
  {
    [(SBPressSequenceValidator *)self _pressDownBoundsForDesiredIndex:v7 sequence:v6];
  }

  v9 = v8;

  return v9;
}

- (_SBPressSequenceValidatorBounds)_pressDownBoundsForDesiredIndex:(unint64_t)a3 sequence:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SBPressSequenceValidator *)self _modeForDesiredIndex:a3 isDownEvent:1];
  if ([(SBPressSequenceSettings *)self->_settings indexOfPressDownToUseForVarianceAndGrowth]>= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndex:{-[SBPressSequenceSettings indexOfPressDownToUseForVarianceAndGrowth](self->_settings, "indexOfPressDownToUseForVarianceAndGrowth")}];
  }

  if (v7 == 2)
  {
    [v8 durationDown];
    v16 = v17;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v6;
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

- (_SBPressSequenceValidatorBounds)_pressUpBoundsForDesiredIndex:(unint64_t)a3 sequence:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SBPressSequenceValidator *)self _modeForDesiredIndex:a3 isDownEvent:0];
  if ([(SBPressSequenceSettings *)self->_settings indexOfPressUpToUseForVarianceAndGrowth]>= a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndex:{-[SBPressSequenceSettings indexOfPressUpToUseForVarianceAndGrowth](self->_settings, "indexOfPressUpToUseForVarianceAndGrowth")}];
  }

  if (v7 == 2)
  {
    [v8 durationUp];
    v21 = v22;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = v6;
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
          v30 = [v23 lastObject];

          if (v29 != v30)
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
      if ([v6 count] > a3)
      {
        v13 = [v6 objectAtIndex:a3];
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

- (int64_t)_modeForDesiredIndex:(unint64_t)a3 isDownEvent:(BOOL)a4
{
  v4 = a4;
  settings = self->_settings;
  if (a4)
  {
    v9 = [(SBPressSequenceSettings *)settings indexOfPressDownToUseForVarianceAndGrowth];
    v10 = [(SBPressSequenceSettings *)self->_settings numberOfPressDownGrowthTerms];
  }

  else
  {
    v9 = [(SBPressSequenceSettings *)settings indexOfPressUpToUseForVarianceAndGrowth];
    v10 = [(SBPressSequenceSettings *)self->_settings numberOfPressUpGrowthTerms];
  }

  v11 = v4 - 1;
  if (v9 < a3)
  {
    v13 = v11 - v10;
    v12 = v11 - v10 + [(SBPressSequenceSettings *)self->_settings numberOfPresses]> a3;
    v14 = 1;
  }

  else
  {
    v12 = 0;
    v13 = v11 - v10;
    v14 = 2;
  }

  v15 = v9 >= a3;
  v16 = v13 + [(SBPressSequenceSettings *)self->_settings numberOfPresses];
  if (v12)
  {
    v17 = v14;
  }

  else
  {
    v17 = v15;
  }

  if (!(v17 | (v16 <= a3)))
  {
    [SBPressSequenceValidator _modeForDesiredIndex:a2 isDownEvent:self];
  }

  if (v16 > a3)
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