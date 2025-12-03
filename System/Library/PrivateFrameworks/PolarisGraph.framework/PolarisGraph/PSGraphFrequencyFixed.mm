@interface PSGraphFrequencyFixed
+ (id)fixedFrequency:(unint64_t)frequency;
+ (id)fixedInterval:(id *)interval;
+ (id)fixedSystemPulseStride:(unint64_t)stride;
- (PSGraphFrequencyFixed)initWithFrequency:(unint64_t)frequency;
- (PSGraphFrequencyFixed)initWithInterval:(id *)interval;
- (PSGraphFrequencyFixed)initWithStride:(unint64_t)stride;
- (unint64_t)frequency;
- (void)convertToStrideRepresentation;
- (void)setInterval:(id *)interval;
@end

@implementation PSGraphFrequencyFixed

- (PSGraphFrequencyFixed)initWithFrequency:(unint64_t)frequency
{
  v10.receiver = self;
  v10.super_class = PSGraphFrequencyFixed;
  v4 = [(PSGraphFrequencyFixed *)&v10 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = 0;
    if (frequency)
    {
      CMTimeMake(&v9, 1, frequency);
      *(v5 + 24) = *&v9.value;
      epoch = v9.epoch;
    }

    else
    {
      v7 = MEMORY[0x277CC0898];
      *(v4 + 24) = *MEMORY[0x277CC0898];
      epoch = *(v7 + 16);
    }

    *(v5 + 5) = epoch;
    [v5 convertToStrideRepresentation];
  }

  return v5;
}

- (PSGraphFrequencyFixed)initWithInterval:(id *)interval
{
  v8.receiver = self;
  v8.super_class = PSGraphFrequencyFixed;
  v4 = [(PSGraphFrequencyFixed *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = 0;
    v6 = *&interval->var0;
    *(v4 + 5) = interval->var3;
    *(v4 + 24) = v6;
    [v4 convertToStrideRepresentation];
  }

  return v5;
}

- (PSGraphFrequencyFixed)initWithStride:(unint64_t)stride
{
  v9.receiver = self;
  v9.super_class = PSGraphFrequencyFixed;
  v4 = [(PSGraphFrequencyFixed *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = 0;
    v4->_systemPulseStride = stride;
    CMTimeMake(&v8, stride, 90);
    v5->_interval = v8;
    v6 = v5;
  }

  return v5;
}

- (void)convertToStrideRepresentation
{
  frequency = [(PSGraphFrequencyFixed *)self frequency];
  if (frequency)
  {
    v4 = 0x5A / frequency;
  }

  else
  {
    v4 = 0;
  }

  self->_systemPulseStride = v4;
}

+ (id)fixedFrequency:(unint64_t)frequency
{
  v3 = [[self alloc] initWithFrequency:frequency];

  return v3;
}

+ (id)fixedInterval:(id *)interval
{
  v4 = [self alloc];
  v7 = *interval;
  v5 = [v4 initWithInterval:&v7];

  return v5;
}

+ (id)fixedSystemPulseStride:(unint64_t)stride
{
  v3 = [[self alloc] initWithStride:stride];

  return v3;
}

- (unint64_t)frequency
{
  if ((self->_interval.flags & 0x1D) == 1)
  {
    return vcvtmd_u64_f64(self->_interval.timescale / self->_interval.value);
  }

  else
  {
    return 0;
  }
}

- (void)setInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_interval.epoch = interval->var3;
  *&self->_interval.value = v3;
}

@end