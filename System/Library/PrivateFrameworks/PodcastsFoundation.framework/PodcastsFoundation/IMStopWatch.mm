@interface IMStopWatch
+ (id)stopwatch;
+ (id)stopwatchWithDescription:(id)a3;
+ (void)initialize;
- (IMStopWatch)init;
- (double)time;
- (id)description;
- (void)report;
- (void)reportWithMarker:(id)a3;
- (void)setDescription:(id)a3;
- (void)start;
@end

@implementation IMStopWatch

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    mach_timebase_info(&timeBase);
  }
}

- (IMStopWatch)init
{
  v6.receiver = self;
  v6.super_class = IMStopWatch;
  v2 = [(IMStopWatch *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)stopwatchWithDescription:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDescription:v3];

  [v4 start];

  return v4;
}

+ (id)stopwatch
{
  v2 = objc_opt_new();
  [v2 start];

  return v2;
}

- (void)start
{
  self->_startTime = mach_absolute_time();
  descriptionString = self->_descriptionString;
  if (!descriptionString)
  {
    descriptionString = &stru_1F548B930;
  }

  NSLog(&cfstr_PStart.isa, self, descriptionString);
}

- (double)time
{
  v3 = mach_absolute_time();
  LODWORD(v4) = timeBase;
  LODWORD(v5) = *algn_1ECACC884;
  return (v3 - self->_startTime) * v4 / v5 / 1000000000.0;
}

- (void)setDescription:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:@" %@", v5];

  descriptionString = self->_descriptionString;
  self->_descriptionString = v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_descriptionString)
  {
    descriptionString = self->_descriptionString;
  }

  else
  {
    descriptionString = &stru_1F548B930;
  }

  [(IMStopWatch *)self time];
  return [v3 stringWithFormat:@"<%p>%@: elapsed time: %0.5f", self, descriptionString, v5];
}

- (void)report
{
  v2 = [(IMStopWatch *)self description];
  NSLog(&stru_1F5490430.isa, v2);
}

- (void)reportWithMarker:(id)a3
{
  v6 = a3;
  [(IMStopWatch *)self time];
  descriptionString = &stru_1F548B930;
  if (self->_descriptionString)
  {
    descriptionString = self->_descriptionString;
  }

  NSLog(&cfstr_PElapsedTime05_0.isa, self, v6, descriptionString, *&v4, v4 * 1000.0);
}

@end