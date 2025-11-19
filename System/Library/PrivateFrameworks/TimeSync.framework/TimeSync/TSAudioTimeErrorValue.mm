@interface TSAudioTimeErrorValue
- (TSAudioTimeErrorValue)initWithSampleTimestamp:(double)a3 andTimeError:(double)a4;
- (id)description;
@end

@implementation TSAudioTimeErrorValue

- (TSAudioTimeErrorValue)initWithSampleTimestamp:(double)a3 andTimeError:(double)a4
{
  v7.receiver = self;
  v7.super_class = TSAudioTimeErrorValue;
  result = [(TSAudioTimeErrorValue *)&v7 init];
  if (result)
  {
    result->_sampleTimestamp = a3;
    result->_timeError = a4;
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