@interface TAInterVisitMetricPerDeviceSettings
- (BOOL)isEqual:(id)a3;
- (TAInterVisitMetricPerDeviceSettings)initWithCoder:(id)a3;
- (TAInterVisitMetricPerDeviceSettings)initWithSampledObservationLocationsInterval:(double)a3 sampledObservationLocationsBufferSize:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAInterVisitMetricPerDeviceSettings

- (TAInterVisitMetricPerDeviceSettings)initWithSampledObservationLocationsInterval:(double)a3 sampledObservationLocationsBufferSize:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = TAInterVisitMetricPerDeviceSettings;
  result = [(TAInterVisitMetricPerDeviceSettings *)&v7 init];
  if (result)
  {
    result->_sampledObservationLocationsInterval = a3;
    result->_sampledObservationLocationsBufferSize = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(TAInterVisitMetricPerDeviceSettings *)self sampledObservationLocationsInterval];
      v7 = v6;
      [(TAInterVisitMetricPerDeviceSettings *)v5 sampledObservationLocationsInterval];
      if (v7 == v8)
      {
        v9 = [(TAInterVisitMetricPerDeviceSettings *)self sampledObservationLocationsBufferSize];
        v10 = v9 == [(TAInterVisitMetricPerDeviceSettings *)v5 sampledObservationLocationsBufferSize];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (TAInterVisitMetricPerDeviceSettings)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"SampleInterval"];
  v6 = v5;
  v7 = [v4 decodeIntegerForKey:@"BufferSize"];

  return [(TAInterVisitMetricPerDeviceSettings *)self initWithSampledObservationLocationsInterval:v7 sampledObservationLocationsBufferSize:v6];
}

- (void)encodeWithCoder:(id)a3
{
  sampledObservationLocationsInterval = self->_sampledObservationLocationsInterval;
  v5 = a3;
  [v5 encodeDouble:@"SampleInterval" forKey:sampledObservationLocationsInterval];
  [v5 encodeInteger:self->_sampledObservationLocationsBufferSize forKey:@"BufferSize"];
}

@end