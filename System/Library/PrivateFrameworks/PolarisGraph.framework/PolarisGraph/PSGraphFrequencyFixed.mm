@interface PSGraphFrequencyFixed
+ (id)fixedFrequency:(unint64_t)a3;
+ (id)fixedInterval:(id *)a3;
+ (id)fixedSystemPulseStride:(unint64_t)a3;
- (PSGraphFrequencyFixed)initWithFrequency:(unint64_t)a3;
- (PSGraphFrequencyFixed)initWithInterval:(id *)a3;
- (PSGraphFrequencyFixed)initWithStride:(unint64_t)a3;
- (unint64_t)frequency;
- (void)convertToStrideRepresentation;
- (void)setInterval:(id *)a3;
@end

@implementation PSGraphFrequencyFixed

- (PSGraphFrequencyFixed)initWithFrequency:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = PSGraphFrequencyFixed;
  v4 = [(PSGraphFrequencyFixed *)&v10 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = 0;
    if (a3)
    {
      CMTimeMake(&v9, 1, a3);
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

- (PSGraphFrequencyFixed)initWithInterval:(id *)a3
{
  v8.receiver = self;
  v8.super_class = PSGraphFrequencyFixed;
  v4 = [(PSGraphFrequencyFixed *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = 0;
    v6 = *&a3->var0;
    *(v4 + 5) = a3->var3;
    *(v4 + 24) = v6;
    [v4 convertToStrideRepresentation];
  }

  return v5;
}

- (PSGraphFrequencyFixed)initWithStride:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = PSGraphFrequencyFixed;
  v4 = [(PSGraphFrequencyFixed *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = 0;
    v4->_systemPulseStride = a3;
    CMTimeMake(&v8, a3, 90);
    v5->_interval = v8;
    v6 = v5;
  }

  return v5;
}

- (void)convertToStrideRepresentation
{
  v3 = [(PSGraphFrequencyFixed *)self frequency];
  if (v3)
  {
    v4 = 0x5A / v3;
  }

  else
  {
    v4 = 0;
  }

  self->_systemPulseStride = v4;
}

+ (id)fixedFrequency:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithFrequency:a3];

  return v3;
}

+ (id)fixedInterval:(id *)a3
{
  v4 = [a1 alloc];
  v7 = *a3;
  v5 = [v4 initWithInterval:&v7];

  return v5;
}

+ (id)fixedSystemPulseStride:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithStride:a3];

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

- (void)setInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_interval.epoch = a3->var3;
  *&self->_interval.value = v3;
}

@end