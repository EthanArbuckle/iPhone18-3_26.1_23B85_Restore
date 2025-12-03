@interface TISKRateMetricSample
+ (id)makeMetric;
- (BOOL)isEqual:(id)equal;
- (TISKRateMetricSample)init;
- (TISKRateMetricSample)initWithCoder:(id)coder;
- (id)rate;
- (void)encodeWithCoder:(id)coder;
- (void)merge:(id)merge;
@end

@implementation TISKRateMetricSample

- (TISKRateMetricSample)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = TISKRateMetricSample;
  v5 = [(TISKRateMetricSample *)&v8 init];
  if (v5)
  {
    v5->_countFactor = [coderCopy decodeIntForKey:@"RateMetricSampleCounter"];
    [coderCopy decodeDoubleForKey:@"RateMetricSampleDuration"];
    v5->_durationFactor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[TISKRateMetricSample countFactor](self forKey:{"countFactor"), @"RateMetricSampleCounter"}];
  [(TISKRateMetricSample *)self durationFactor];
  [coderCopy encodeDouble:@"RateMetricSampleDuration" forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    countFactor = self->_countFactor;
    if (countFactor == [(TISKRateMetricSample *)equalCopy countFactor])
    {
      durationFactor = self->_durationFactor;
      [(TISKRateMetricSample *)v5 durationFactor];
      v9 = durationFactor == v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)merge:(id)merge
{
  v18 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] [rateMetricSample merge: other doesn't respond to countFactor selector %d : %d", "-[TISKRateMetricSample merge:]", self->_countFactor, objc_msgSend(mergeCopy, "countFactor")];
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  -[TISKRateMetricSample setCountFactor:](self, "setCountFactor:", [mergeCopy countFactor] + -[TISKRateMetricSample countFactor](self, "countFactor"));
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = IXADefaultLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x277CCACA8];
      durationFactor = self->_durationFactor;
      [mergeCopy durationFactor];
      v15 = [v12 stringWithFormat:@"%s [SensorKit] [rateMetricSample merge: other doesn't respond to durationFactor selector %f : %f", "-[TISKRateMetricSample merge:]", *&durationFactor, v14];
      *buf = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_22CA55000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  [(TISKRateMetricSample *)self durationFactor];
  v8 = v7;
  [mergeCopy durationFactor];
  [(TISKRateMetricSample *)self setDurationFactor:v8 + v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)rate
{
  durationFactor = self->_durationFactor;
  if (durationFactor <= 0.0 || (countFactor = self->_countFactor, countFactor < 1))
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:{countFactor / durationFactor, v2}];
  }

  return v6;
}

- (TISKRateMetricSample)init
{
  v3.receiver = self;
  v3.super_class = TISKRateMetricSample;
  result = [(TISKRateMetricSample *)&v3 init];
  if (result)
  {
    result->_durationFactor = 0.0;
    result->_countFactor = 0;
  }

  return result;
}

+ (id)makeMetric
{
  v2 = objc_alloc_init(TISKRateMetricSample);

  return v2;
}

@end