@interface TISKRateMetricSample
+ (id)makeMetric;
- (BOOL)isEqual:(id)a3;
- (TISKRateMetricSample)init;
- (TISKRateMetricSample)initWithCoder:(id)a3;
- (id)rate;
- (void)encodeWithCoder:(id)a3;
- (void)merge:(id)a3;
@end

@implementation TISKRateMetricSample

- (TISKRateMetricSample)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TISKRateMetricSample;
  v5 = [(TISKRateMetricSample *)&v8 init];
  if (v5)
  {
    v5->_countFactor = [v4 decodeIntForKey:@"RateMetricSampleCounter"];
    [v4 decodeDoubleForKey:@"RateMetricSampleDuration"];
    v5->_durationFactor = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[TISKRateMetricSample countFactor](self forKey:{"countFactor"), @"RateMetricSampleCounter"}];
  [(TISKRateMetricSample *)self durationFactor];
  [v4 encodeDouble:@"RateMetricSampleDuration" forKey:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    countFactor = self->_countFactor;
    if (countFactor == [(TISKRateMetricSample *)v4 countFactor])
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

- (void)merge:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = IXADefaultLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] [rateMetricSample merge: other doesn't respond to countFactor selector %d : %d", "-[TISKRateMetricSample merge:]", self->_countFactor, objc_msgSend(v4, "countFactor")];
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&dword_22CA55000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  -[TISKRateMetricSample setCountFactor:](self, "setCountFactor:", [v4 countFactor] + -[TISKRateMetricSample countFactor](self, "countFactor"));
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = IXADefaultLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x277CCACA8];
      durationFactor = self->_durationFactor;
      [v4 durationFactor];
      v15 = [v12 stringWithFormat:@"%s [SensorKit] [rateMetricSample merge: other doesn't respond to durationFactor selector %f : %f", "-[TISKRateMetricSample merge:]", *&durationFactor, v14];
      *buf = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_22CA55000, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  [(TISKRateMetricSample *)self durationFactor];
  v8 = v7;
  [v4 durationFactor];
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