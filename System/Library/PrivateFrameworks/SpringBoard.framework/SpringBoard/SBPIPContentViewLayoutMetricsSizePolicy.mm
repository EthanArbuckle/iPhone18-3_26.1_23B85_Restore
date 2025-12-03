@interface SBPIPContentViewLayoutMetricsSizePolicy
- (SBPIPContentViewLayoutMetricsSizePolicy)initWithSizePreferencesForLandscape:(id)landscape portrait:(id)portrait square:(id)square;
- (id)sizePreferencesForAspectRatio:(double)ratio;
@end

@implementation SBPIPContentViewLayoutMetricsSizePolicy

- (SBPIPContentViewLayoutMetricsSizePolicy)initWithSizePreferencesForLandscape:(id)landscape portrait:(id)portrait square:(id)square
{
  landscapeCopy = landscape;
  portraitCopy = portrait;
  squareCopy = square;
  v13 = squareCopy;
  if (!landscapeCopy && !portraitCopy && !squareCopy)
  {
    [SBPIPContentViewLayoutMetricsSizePolicy initWithSizePreferencesForLandscape:a2 portrait:self square:?];
  }

  v24.receiver = self;
  v24.super_class = SBPIPContentViewLayoutMetricsSizePolicy;
  v14 = [(SBPIPContentViewLayoutMetricsSizePolicy *)&v24 init];
  if (v14)
  {
    v15 = +[SBPIPSettingsDomain rootSettings];
    sizingSettings = [v15 sizingSettings];

    [sizingSettings landcapeAspectRatioClosedIntervalLowerBound];
    v14->_landscapeAspectRatioInterval.minimum = v17;
    [sizingSettings landcapeAspectRatioClosedIntervalUpperBound];
    v14->_landscapeAspectRatioInterval.maximum = v18;
    [sizingSettings squareAspectRatioClosedIntervalLowerBound];
    v14->_squareAspectRatioInterval.minimum = v19;
    [sizingSettings squareAspectRatioClosedIntervalUpperBound];
    v14->_squareAspectRatioInterval.maximum = v20;
    [sizingSettings portraitAspectRatioClosedIntervalLowerBound];
    v14->_portraitAspectRatioInterval.minimum = v21;
    [sizingSettings portraitAspectRatioClosedIntervalUpperBound];
    v14->_portraitAspectRatioInterval.maximum = v22;
    objc_storeStrong(&v14->_landscapeSizePref, landscape);
    objc_storeStrong(&v14->_portraitSizePref, portrait);
    objc_storeStrong(&v14->_squareSizePref, square);
  }

  return v14;
}

- (id)sizePreferencesForAspectRatio:(double)ratio
{
  p_landscapeSizePref = &self->_landscapeSizePref;
  if (self->_landscapeSizePref && BSFloatGreaterThanOrEqualToFloat() && (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    goto LABEL_25;
  }

  p_portraitSizePref = &self->_portraitSizePref;
  if (self->_portraitSizePref && BSFloatGreaterThanOrEqualToFloat() && (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    p_landscapeSizePref = &self->_portraitSizePref;
LABEL_25:
    v7 = *p_landscapeSizePref;
    goto LABEL_26;
  }

  p_squareSizePref = &self->_squareSizePref;
  if (self->_squareSizePref && BSFloatGreaterThanOrEqualToFloat() && (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    p_landscapeSizePref = &self->_squareSizePref;
    goto LABEL_25;
  }

  v7 = *p_landscapeSizePref;
  if (*p_landscapeSizePref)
  {
    if (self->_portraitSizePref)
    {
      if (!BSFloatLessThanOrEqualToFloat())
      {
        p_landscapeSizePref = &self->_portraitSizePref;
      }
    }

    else
    {
      if (!*p_squareSizePref)
      {
        goto LABEL_26;
      }

      if (!BSFloatLessThanOrEqualToFloat())
      {
        p_landscapeSizePref = &self->_squareSizePref;
      }
    }

    goto LABEL_25;
  }

  v7 = *p_squareSizePref;
  if (!*p_portraitSizePref)
  {
    goto LABEL_26;
  }

  if (v7)
  {
    [*p_portraitSizePref shortSideMinimumSize];
    if (BSFloatLessThanOrEqualToFloat())
    {
      p_landscapeSizePref = &self->_portraitSizePref;
    }

    else
    {
      p_landscapeSizePref = &self->_squareSizePref;
    }

    goto LABEL_25;
  }

  v7 = *p_portraitSizePref;
LABEL_26:
  v8 = v7;

  return v8;
}

- (void)initWithSizePreferencesForLandscape:(uint64_t)a1 portrait:(uint64_t)a2 square:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPContentViewLayoutMetrics.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"landscapeSizePref != nil || portraitSizePref != nil || squareSizePref != nil"}];
}

@end