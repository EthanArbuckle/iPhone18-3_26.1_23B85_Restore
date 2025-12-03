@interface TSAudioTimeErrorValue
- (TSAudioTimeErrorValue)initWithSampleTimestamp:(double)timestamp andTimeError:(double)error;
- (id)description;
@end

@implementation TSAudioTimeErrorValue

- (TSAudioTimeErrorValue)initWithSampleTimestamp:(double)timestamp andTimeError:(double)error
{
  v7.receiver = self;
  v7.super_class = TSAudioTimeErrorValue;
  result = [(TSAudioTimeErrorValue *)&v7 init];
  if (result)
  {
    result->_sampleTimestamp = timestamp;
    result->_timeError = error;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSAudioTimeErrorValue *)self sampleTimestamp];
  v7 = v6;
  [(TSAudioTimeErrorValue *)self timeError];
  v9 = [v3 stringWithFormat:@"<%@: %p: {%.9f, %.9f}>", v5, self, v7, v8];

  return v9;
}

@end