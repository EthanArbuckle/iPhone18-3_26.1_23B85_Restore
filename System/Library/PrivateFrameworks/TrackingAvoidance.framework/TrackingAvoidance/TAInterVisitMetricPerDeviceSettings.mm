@interface TAInterVisitMetricPerDeviceSettings
- (BOOL)isEqual:(id)equal;
- (TAInterVisitMetricPerDeviceSettings)initWithCoder:(id)coder;
- (TAInterVisitMetricPerDeviceSettings)initWithSampledObservationLocationsInterval:(double)interval sampledObservationLocationsBufferSize:(unint64_t)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAInterVisitMetricPerDeviceSettings

- (TAInterVisitMetricPerDeviceSettings)initWithSampledObservationLocationsInterval:(double)interval sampledObservationLocationsBufferSize:(unint64_t)size
{
  v7.receiver = self;
  v7.super_class = TAInterVisitMetricPerDeviceSettings;
  result = [(TAInterVisitMetricPerDeviceSettings *)&v7 init];
  if (result)
  {
    result->_sampledObservationLocationsInterval = interval;
    result->_sampledObservationLocationsBufferSize = size;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(TAInterVisitMetricPerDeviceSettings *)self sampledObservationLocationsInterval];
      v7 = v6;
      [(TAInterVisitMetricPerDeviceSettings *)v5 sampledObservationLocationsInterval];
      if (v7 == v8)
      {
        sampledObservationLocationsBufferSize = [(TAInterVisitMetricPerDeviceSettings *)self sampledObservationLocationsBufferSize];
        v10 = sampledObservationLocationsBufferSize == [(TAInterVisitMetricPerDeviceSettings *)v5 sampledObservationLocationsBufferSize];
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

- (TAInterVisitMetricPerDeviceSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"SampleInterval"];
  v6 = v5;
  v7 = [coderCopy decodeIntegerForKey:@"BufferSize"];

  return [(TAInterVisitMetricPerDeviceSettings *)self initWithSampledObservationLocationsInterval:v7 sampledObservationLocationsBufferSize:v6];
}

- (void)encodeWithCoder:(id)coder
{
  sampledObservationLocationsInterval = self->_sampledObservationLocationsInterval;
  coderCopy = coder;
  [coderCopy encodeDouble:@"SampleInterval" forKey:sampledObservationLocationsInterval];
  [coderCopy encodeInteger:self->_sampledObservationLocationsBufferSize forKey:@"BufferSize"];
}

@end