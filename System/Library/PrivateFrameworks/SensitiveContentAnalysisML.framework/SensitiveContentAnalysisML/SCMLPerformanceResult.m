@interface SCMLPerformanceResult
- (SCMLPerformanceResult)initWithName:(id)a3;
- (id)description;
- (id)dict;
@end

@implementation SCMLPerformanceResult

- (SCMLPerformanceResult)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SCMLPerformanceResult;
  v6 = [(SCMLPerformanceResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SCMLPerformanceResult *)self name];
  cpuTime = self->cpuTime;
  v6 = [v3 stringWithFormat:@"[%@: Peak-Delta: %lf, CPU-Time: %lf, Interval: %lf]", v4, *&self->peakdelta, *&cpuTime, *&self->timeInterval];

  return v6;
}

- (id)dict
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"maxpeak";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->maxpeak];
  v12[0] = v3;
  v11[1] = @"peakdelta";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->peakdelta];
  v12[1] = v4;
  v11[2] = @"recentpeak";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->recentpeak];
  v12[2] = v5;
  v11[3] = @"current";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->current];
  v12[3] = v6;
  v11[4] = @"timeInterval";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->timeInterval];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end