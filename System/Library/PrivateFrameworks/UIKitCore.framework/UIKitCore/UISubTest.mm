@interface UISubTest
- (UISubTest)initWithName:(id)name metrics:(id)metrics;
- (id)outputData;
- (void)startWithFrameCount:(id)count;
- (void)stopWithFrameCount:(id)count;
@end

@implementation UISubTest

- (UISubTest)initWithName:(id)name metrics:(id)metrics
{
  nameCopy = name;
  metricsCopy = metrics;
  v18.receiver = self;
  v18.super_class = UISubTest;
  v9 = [(UISubTest *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testName, name);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    time = v10->_time;
    v10->_time = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fps = v10->_fps;
    v10->_fps = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    data = v10->_data;
    v10->_data = v15;

    if ([metricsCopy count])
    {
      v10->_showTime = [metricsCopy containsObject:@"time"];
      v10->_showFps = [metricsCopy containsObject:@"fps"];
    }

    else
    {
      NSLog(&cfstr_NoMetricsNoRes.isa);
    }
  }

  return v10;
}

- (void)startWithFrameCount:(id)count
{
  countCopy = count;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  startTime = self->_startTime;
  self->_startTime = v5;

  if (countCopy)
  {
    objc_storeStrong(&self->_startFrame, count);
  }
}

- (void)stopWithFrameCount:(id)count
{
  countCopy = count;
  if (self->_startTime)
  {
    v15 = countCopy;
    Current = CFAbsoluteTimeGetCurrent();
    [(NSNumber *)self->_startTime doubleValue];
    v7 = Current - v6;
    time = self->_time;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    [(NSMutableArray *)time addObject:v9];

    countCopy = v15;
    if (v7 != 0.0 && self->_startFrame != 0)
    {
      unsignedIntValue = [v15 unsignedIntValue];
      unsignedIntValue2 = [(NSNumber *)self->_startFrame unsignedIntValue];
      fps = self->_fps;
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:(unsignedIntValue - unsignedIntValue2) / v7];
      [(NSMutableArray *)fps addObject:v14];

      countCopy = v15;
    }
  }
}

- (id)outputData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_showTime)
  {
    v4 = [(NSMutableArray *)self->_time count];
    time = self->_time;
    if (v4 < 2)
    {
      if ([(NSMutableArray *)time count])
      {
        v14 = [(NSMutableArray *)self->_time objectAtIndex:0];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:time", self->_testName];
        [v3 setValue:v14 forKey:v15];
      }

      else
      {
        NSLog(&cfstr_NoTimeDataFor.isa, self->_testName);
      }
    }

    else
    {
      v6 = [(NSMutableArray *)time valueForKeyPath:@"@avg.doubleValue"];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"time:mean"];
      [v3 setValue:v6 forKey:v7];

      v8 = [(NSMutableArray *)self->_time valueForKeyPath:@"@max.doubleValue"];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"time:max"];
      [v3 setValue:v8 forKey:v9];

      v10 = [(NSMutableArray *)self->_time valueForKeyPath:@"@min.doubleValue"];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"time:min"];
      [v3 setValue:v10 forKey:v11];

      v12 = [(NSMutableArray *)self->_time objectAtIndex:0];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"time:first"];
      [v3 setValue:v12 forKey:v13];
    }
  }

  if (self->_showFps)
  {
    if ([(NSMutableArray *)self->_fps count]>= 2)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"fps:mean"];
      v17 = [v16 stringByAppendingString:@"Units"];
      [v3 setObject:@"fps" forKey:v17];

      v18 = [(NSMutableArray *)self->_fps valueForKeyPath:@"@avg.doubleValue"];
      [v3 setValue:v18 forKey:v16];

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"fps:max"];
      v20 = [v19 stringByAppendingString:@"Units"];
      [v3 setObject:@"fps" forKey:v20];

      v21 = [(NSMutableArray *)self->_fps valueForKeyPath:@"@max.doubleValue"];
      [v3 setValue:v21 forKey:v19];

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"fps:min"];
      v23 = [v22 stringByAppendingString:@"Units"];
      [v3 setObject:@"fps" forKey:v23];

      v24 = [(NSMutableArray *)self->_fps valueForKeyPath:@"@min.doubleValue"];
      [v3 setValue:v24 forKey:v22];

      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:%@", self->_testName, @"fps:first"];
      v26 = [v25 stringByAppendingString:@"Units"];
      [v3 setObject:@"fps" forKey:v26];

      v27 = [(NSMutableArray *)self->_fps objectAtIndex:0];
      [v3 setValue:v27 forKey:v25];

LABEL_12:
      goto LABEL_13;
    }

    if ([(NSMutableArray *)self->_fps count])
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:fps%@", self->_testName, @"Units"];
      [v3 setObject:@"fps" forKey:v28];

      v16 = [(NSMutableArray *)self->_fps objectAtIndex:0];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sub:%@:fps", self->_testName];
      [v3 setValue:v16 forKey:v29];

      goto LABEL_12;
    }

    NSLog(&cfstr_NoFpsDataFor.isa, self->_testName);
  }

LABEL_13:

  return v3;
}

@end