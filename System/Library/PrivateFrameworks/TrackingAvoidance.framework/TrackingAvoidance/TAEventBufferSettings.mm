@interface TAEventBufferSettings
- (TAEventBufferSettings)initWithBufferCapacity:(unint64_t)capacity bufferTimeIntervalOfRetention:(double)retention;
- (TAEventBufferSettings)initWithBufferCapacityOrDefault:(id)default bufferTimeIntervalOfRetentionOrDefault:(id)orDefault;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TAEventBufferSettings

- (TAEventBufferSettings)initWithBufferCapacity:(unint64_t)capacity bufferTimeIntervalOfRetention:(double)retention
{
  v7.receiver = self;
  v7.super_class = TAEventBufferSettings;
  result = [(TAEventBufferSettings *)&v7 init];
  if (result)
  {
    result->_bufferCapacity = capacity;
    result->_bufferTimeIntervalOfRetention = retention;
  }

  return result;
}

- (TAEventBufferSettings)initWithBufferCapacityOrDefault:(id)default bufferTimeIntervalOfRetentionOrDefault:(id)orDefault
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  v8 = orDefaultCopy;
  if (!defaultCopy)
  {
    unsignedIntegerValue = 10000;
    if (orDefaultCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 1800.0;
    goto LABEL_6;
  }

  unsignedIntegerValue = [defaultCopy unsignedIntegerValue];
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v8 doubleValue];
LABEL_6:
  v11 = [(TAEventBufferSettings *)self initWithBufferCapacity:unsignedIntegerValue bufferTimeIntervalOfRetention:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TAEventBufferSettings allocWithZone:zone];
  bufferCapacity = self->_bufferCapacity;
  bufferTimeIntervalOfRetention = self->_bufferTimeIntervalOfRetention;

  return [(TAEventBufferSettings *)v4 initWithBufferCapacity:bufferCapacity bufferTimeIntervalOfRetention:bufferTimeIntervalOfRetention];
}

@end