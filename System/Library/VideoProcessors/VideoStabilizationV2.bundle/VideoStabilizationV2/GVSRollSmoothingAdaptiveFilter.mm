@interface GVSRollSmoothingAdaptiveFilter
- (BOOL)shouldRampUp;
- (GVSRollSmoothingAdaptiveFilter)initWithMaxTimescale:(float)timescale minTimescale:(float)minTimescale transitionTime:(float)time analyzer:(id)analyzer rampingSettings:(GVSRollSmoothingAdaptiveFilterRampingSettings *)settings;
- (void)reset;
- (void)updateRoll:(float)prevRoll pitch:(float)pitch atTime:(double)time;
@end

@implementation GVSRollSmoothingAdaptiveFilter

- (GVSRollSmoothingAdaptiveFilter)initWithMaxTimescale:(float)timescale minTimescale:(float)minTimescale transitionTime:(float)time analyzer:(id)analyzer rampingSettings:(GVSRollSmoothingAdaptiveFilterRampingSettings *)settings
{
  analyzerCopy = analyzer;
  v19.receiver = self;
  v19.super_class = GVSRollSmoothingAdaptiveFilter;
  v14 = [(GVSRollSmoothingAdaptiveFilter *)&v19 init];
  if (!v14)
  {
LABEL_8:
    v17 = v14;
    goto LABEL_10;
  }

  v15 = objc_alloc_init(GVSIIR2FilterFloat);
  filter = v14->_filter;
  v14->_filter = v15;

  objc_storeStrong(&v14->_analyzer, analyzer);
  if (!v14->_filter)
  {
    v17 = 0;
    goto LABEL_10;
  }

  v17 = 0;
  if (minTimescale > 0.0 && v14->_analyzer)
  {
    v14->_maxTimescale = timescale;
    v14->_minTimescale = minTimescale;
    if (timescale < minTimescale)
    {
      v14->_maxTimescale = minTimescale;
      timescale = minTimescale;
    }

    v14->_rampFactorPerSecond = powf(timescale / minTimescale, 1.0 / time);
    v14->_diffSqThreshHigh = settings->var0 * settings->var0;
    v14->_diffSqThreshLow = settings->var1 * settings->var1;
    v14->_slopeSqThreshHigh = settings->var2 * settings->var2;
    v14->_slopeSqThreshLow = settings->var3 * settings->var3;
    v14->_baselineVariance = settings->var4 * settings->var4;
    [(GVSRollSmoothingAdaptiveFilter *)v14 reset];
    goto LABEL_8;
  }

LABEL_10:

  return v17;
}

- (void)reset
{
  [(GVSIIR2FilterFloat *)self->_filter reset];
  [(GVSRollAnalyzer *)self->_analyzer reset];
  self->_filteredRoll = 0.0;
  self->_prevRoll = 0.0;
  self->_currentTimescale = self->_maxTimescale;
  self->_prevTime = 0.0;
  self->_forcedRampDownTime = 0.0;
  self->_isRampingUp = 1;
}

- (void)updateRoll:(float)prevRoll pitch:(float)pitch atTime:(double)time
{
  v6 = prevRoll;
  if (pitch < 1.0472 && (prevTime = self->_prevTime, prevTime <= time))
  {
    prevRoll = self->_prevRoll;
    if (vabds_f32(v6, prevRoll) > 3.14159265)
    {
      v10 = v6 + 3.14159265;
      v11 = self->_prevRoll;
      if (prevRoll > v10)
      {
        v11 = self->_prevRoll;
        do
        {
          v11 = v11 + -6.2832;
        }

        while (v11 > v10);
      }

        ;
      }

      *&v13 = v11 - prevRoll;
      [(GVSIIR2FilterFloat *)self->_filter applyOffset:v13];
      [(GVSIIR2FilterFloat *)self->_filter filteredValue];
      self->_filteredRoll = v14;
      prevTime = self->_prevTime;
    }

    v15 = time - prevTime;
    v16 = -v15;
    if (self->_isRampingUp)
    {
      v16 = v15;
    }

    v17 = fminf(fmaxf(self->_currentTimescale * powf(self->_rampFactorPerSecond, v16), self->_minTimescale), self->_maxTimescale);
    self->_currentTimescale = v17;
    *&v18 = (v17 * 0.5) / ((v17 * 0.5) + v15);
    *&v19 = v6;
    [(GVSIIR2FilterFloat *)self->_filter updateValue:v19 withPole:v18];
    self->_filteredRoll = v20;
    *&v21 = v6;
    [(GVSRollAnalyzer *)self->_analyzer updateWithRoll:v21 atTime:time];
    if (self->_forcedRampDownTime >= time)
    {
      shouldRampUp = 0;
    }

    else
    {
      shouldRampUp = [(GVSRollSmoothingAdaptiveFilter *)self shouldRampUp];
    }

    self->_isRampingUp = shouldRampUp;
  }

  else
  {
    [(GVSIIR2FilterFloat *)self->_filter reset];
    [(GVSRollAnalyzer *)self->_analyzer reset];
    [(GVSRollAnalyzer *)self->_analyzer timeConstant];
    self->_forcedRampDownTime = v9 + time;
    self->_isRampingUp = 0;
    self->_currentTimescale = self->_minTimescale;
  }

  self->_prevRoll = v6;
  self->_prevTime = time;
}

- (BOOL)shouldRampUp
{
  filteredRoll = self->_filteredRoll;
  [(GVSRollAnalyzer *)self->_analyzer rollEstimate];
  v5 = (filteredRoll - v4) * (filteredRoll - v4);
  [(GVSRollAnalyzer *)self->_analyzer rollRate];
  v7 = v6;
  [(GVSRollAnalyzer *)self->_analyzer rollRate];
  v9 = v8;
  [(GVSRollAnalyzer *)self->_analyzer timeVariance];
  v11 = v10;
  [(GVSRollAnalyzer *)self->_analyzer rollVariance];
  v13 = v12 + self->_baselineVariance;
  if (self->_isRampingUp)
  {
    if (v5 < (v13 * self->_diffSqThreshHigh))
    {
      v14 = 28;
      return ((v7 * v9) * v11) < (v13 * *(&self->super.isa + v14));
    }
  }

  else if (v5 < (v13 * self->_diffSqThreshLow))
  {
    v14 = 32;
    return ((v7 * v9) * v11) < (v13 * *(&self->super.isa + v14));
  }

  return 0;
}

@end