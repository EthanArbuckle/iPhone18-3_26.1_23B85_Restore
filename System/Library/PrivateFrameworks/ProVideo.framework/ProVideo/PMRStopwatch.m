@interface PMRStopwatch
+ (void)benchmarkBlockWithTitle:(id)a3 iterations:(unint64_t)a4 usingBlock:(id)a5 onCompletion:(id)a6;
- (PMRStopwatch)initWithDomain:(id)a3;
- (id)_subtreeDescription;
- (id)description;
- (id)descriptionWithFormat:(int)a3 key:(id)a4 comment:(id)a5;
- (id)formattedUserInfoForSplitTime:(id)a3;
- (void)_purgeOldestSplitTimeIfNeeded;
- (void)addSplit:(id)a3;
- (void)beginTimingGroupForMethod:(SEL)a3 inClass:(Class)a4 comment:(id)a5;
- (void)dealloc;
- (void)logEvent:(id)a3 comment:(id)a4 userInfo:(id)a5;
- (void)logToLocation:(id)a3 key:(id)a4;
- (void)logWithFormat:(int)a3;
- (void)reset;
- (void)writeToFile:(id)a3 key:(id)a4 comment:(id)a5 fileFormat:(int)a6;
@end

@implementation PMRStopwatch

- (PMRStopwatch)initWithDomain:(id)a3
{
  v6.receiver = self;
  v6.super_class = PMRStopwatch;
  v4 = [(PMRStopwatch *)&v6 init];
  if (v4)
  {
    v4->_splitTimes = objc_opt_new();
    v4->_startTime = mach_absolute_time();
    v4->_domain = [a3 copy];
    v4->_maxSplitTimes = 1000;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PMRStopwatch;
  [(PMRStopwatch *)&v3 dealloc];
}

- (id)description
{
  info = 0;
  mach_timebase_info(&info);
  v3 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = PMRStopwatch;
  v4 = [(PMRStopwatch *)&v6 description];
  return [v3 stringWithFormat:@"%@ (startTime=%.3f, splitTimes=%lu, maxSplitTimes=%lu)", v4, (self->_startTime * (info.numer / info.denom)) / 1000000000.0, -[NSMutableArray count](self->_splitTimes, "count"), self->_maxSplitTimes];
}

- (id)_subtreeDescription
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [-[PMRStopwatch description](self "description")];
  v15 = [MEMORY[0x277CCA900] newlineCharacterSet];
  if ([(NSMutableArray *)self->_splitTimes count])
  {
    [v3 appendString:@"\n"];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = self->_splitTimes;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [objc_msgSend(*(*(&v20 + 1) + 8 * i) performSelector:{sel__subtreeDescription), "componentsSeparatedByCharactersInSet:", v15}];
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v17;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v17 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [v3 appendFormat:@"    %@\n", *(*(&v16 + 1) + 8 * j)];
              }

              v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v10);
          }
        }

        v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

- (void)reset
{
  v3 = self->_splitTimes;
  self->_splitTimes = objc_opt_new();
  self->_startTime = mach_absolute_time();
}

- (void)_purgeOldestSplitTimeIfNeeded
{
  if (self->_maxSplitTimes && [(NSMutableArray *)self->_splitTimes count]>= self->_maxSplitTimes)
  {
    splitTimes = self->_splitTimes;

    [(NSMutableArray *)splitTimes removeObjectAtIndex:0];
  }
}

- (void)beginTimingGroupForMethod:(SEL)a3 inClass:(Class)a4 comment:(id)a5
{
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = NSStringFromClass(a4);
  v13 = [v9 initWithFormat:@"%@.%@", v10, NSStringFromSelector(a3)];
  v11 = [[PMRSplitTime alloc] initWithKey:v13 comment:a5 level:[(NSMutableArray *)self->_splitTimeStack count]];
  if ([(NSMutableArray *)self->_splitTimeStack count])
  {
    [-[NSMutableArray lastObject](self->_splitTimeStack "lastObject")];
  }

  else
  {
    [(PMRStopwatch *)self _purgeOldestSplitTimeIfNeeded];
    [(NSMutableArray *)self->_splitTimes addObject:v11];
  }

  splitTimeStack = self->_splitTimeStack;
  if (!splitTimeStack)
  {
    splitTimeStack = objc_opt_new();
    self->_splitTimeStack = splitTimeStack;
  }

  [(NSMutableArray *)splitTimeStack addObject:v11];
}

+ (void)benchmarkBlockWithTitle:(id)a3 iterations:(unint64_t)a4 usingBlock:(id)a5 onCompletion:(id)a6
{
  v10 = objc_opt_new();

  [v10 benchmarkBlockWithTitle:a3 iterations:a4 currentIteration:0 usingBlock:a5 onCompletion:a6];
}

- (void)logToLocation:(id)a3 key:(id)a4
{
  if (a3)
  {

    [PMRStopwatch writeToFile:"writeToFile:key:comment:fileFormat:" key:? comment:? fileFormat:?];
  }

  else
  {
    NSLog(&stru_2872E15A0.isa, [(PMRStopwatch *)self descriptionWithFormat:1 key:a4 comment:0]);
  }
}

- (void)addSplit:(id)a3
{
  if ([(NSMutableArray *)self->_splitTimeStack count])
  {
    v5 = [(NSMutableArray *)self->_splitTimeStack lastObject];

    [v5 addSplitTimesObject:a3];
  }

  else
  {
    [(PMRStopwatch *)self _purgeOldestSplitTimeIfNeeded];
    splitTimes = self->_splitTimes;

    [(NSMutableArray *)splitTimes addObject:a3];
  }
}

- (void)logEvent:(id)a3 comment:(id)a4 userInfo:(id)a5
{
  v6 = [[PMRSplitTime alloc] initWithKey:a3 comment:a4 level:[(NSMutableArray *)self->_splitTimeStack count] duration:0 userInfo:a5];
  [(PMRStopwatch *)self addSplit:v6];
}

- (id)descriptionWithFormat:(int)a3 key:(id)a4 comment:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  info = 0;
  mach_timebase_info(&info);
  if ([(NSMutableArray *)self->_splitTimes count])
  {
    v35 = a5;
    v36 = a4;
    v38 = [MEMORY[0x277CCAB68] string];
    v9 = [(PMRStopwatch *)self domain];
    v10 = @"undefined";
    if (v9)
    {
      v10 = v9;
    }

    v37 = v10;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    startTime = self->_startTime;
    splitTimes = self->_splitTimes;
    v13 = [(NSMutableArray *)splitTimes countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v40;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          v18 = startTime;
          if (*v40 != v15)
          {
            objc_enumerationMutation(splitTimes);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          startTime = [v19 splitTime];
          v20 = [v19 duration];
          v21 = info.numer / info.denom;
          v22 = (v20 * v21) / 1000000.0;
          if (v22 == 0.0)
          {
            v22 = ((startTime - v18) * v21) / 1000000.0;
          }

          v23 = [v19 comment];
          v24 = [(PMRStopwatch *)self formattedUserInfoForSplitTime:v19];
          if (a3 == 1)
          {
            v25 = v24;
            if (!v23)
            {
              v23 = &stru_2872E16E0;
            }

            v30 = [v19 key];
            [v38 appendFormat:@"\t<Measurement key=%@ value=%.3f comment=%@ domain=%@ %@ timestamp=%.3f/>\n", v30, *&v22, v23, v37, v25, (startTime * (info.numer / info.denom)) / 1000000000.0];
          }

          else if (a3 == 2)
          {
            [v38 appendFormat:@"%@\t%.3f\n", objc_msgSend(v19, "key"), *&v22, v31, v32, v33, v34];
          }

          v16 = v16 + v22;
        }

        v14 = [(NSMutableArray *)splitTimes countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
    }

    if (a3 == 1)
    {
      a4 = v36;
      v26 = [v36 stringByAppendingString:@"sum"];
      [v38 appendFormat:@"\t<Measurement key=%@ value=%.3f comment=%@ domain=%@ timestamp=%.3f/>\n", v26, *&v16, v35, v37, (mach_absolute_time() * (info.numer / info.denom)) / 1000000000.0];
    }

    else
    {
      a4 = v36;
      if (a3 == 2)
      {
        [v38 appendFormat:@"%@\t%.3f\n", objc_msgSend(v36, "stringByAppendingString:", @"sum", *&v16, v31, v32, v33];
      }
    }
  }

  else
  {
    v38 = 0;
  }

  if ([(PMRStopwatch *)self coreAnimationTotalTime])
  {
    if (!a3)
    {
      v27 = @"{ key :%@coreAnimationSum(ms), value : %.3f,\n";
      goto LABEL_31;
    }

    if (a3 == 1)
    {
      v27 = @"\t<Measurement key=%@coreAnimationSum(ms) value=%.3f />\n";
LABEL_31:
      v28 = [(PMRStopwatch *)self coreAnimationTotalTime];
      [v38 appendFormat:v27, a4, (v28 * (info.numer / info.denom)) / 1000000.0];
    }
  }

  return v38;
}

- (id)formattedUserInfoForSplitTime:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a3 userInfo];
  v4 = [MEMORY[0x277CCAB68] string];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [v4 appendFormat:@"%@=%@ ", *(*(&v10 + 1) + 8 * v8), objc_msgSend(v3, "objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * v8))];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)logWithFormat:(int)a3
{
  v3 = [-[PMRStopwatch descriptionWithFormat:key:comment:](self descriptionWithFormat:*&a3 key:0 comment:0), "UTF8String"];

  puts(v3);
}

- (void)writeToFile:(id)a3 key:(id)a4 comment:(id)a5 fileFormat:(int)a6
{
  v16 = 0;
  v8 = [(PMRStopwatch *)self descriptionWithFormat:*&a6 key:a4 comment:a5];
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    if ([a3 hasPrefix:@"/"])
    {
      v11 = [a3 stringByExpandingTildeInPath];
    }

    else
    {
      v12 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      v13 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"~/Library/Logs/%@/", v12), "stringByExpandingTildeInPath"];
      [v10 createDirectoryAtPath:v13 withIntermediateDirectories:0 attributes:0 error:0];
      v11 = [v13 stringByAppendingPathComponent:a3];
    }

    v14 = v11;
    if ([v10 fileExistsAtPath:v11])
    {
      v15 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v14];
      [v15 seekToEndOfFile];
      [v15 writeData:{objc_msgSend(v9, "dataUsingEncoding:", 4)}];
    }

    else
    {
      [v9 writeToFile:v14 atomically:1 encoding:4 error:&v16];
    }
  }

  [(NSMutableArray *)self->_splitTimes removeAllObjects];
}

@end