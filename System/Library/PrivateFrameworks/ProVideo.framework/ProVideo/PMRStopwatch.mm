@interface PMRStopwatch
+ (void)benchmarkBlockWithTitle:(id)title iterations:(unint64_t)iterations usingBlock:(id)block onCompletion:(id)completion;
- (PMRStopwatch)initWithDomain:(id)domain;
- (id)_subtreeDescription;
- (id)description;
- (id)descriptionWithFormat:(int)format key:(id)key comment:(id)comment;
- (id)formattedUserInfoForSplitTime:(id)time;
- (void)_purgeOldestSplitTimeIfNeeded;
- (void)addSplit:(id)split;
- (void)beginTimingGroupForMethod:(SEL)method inClass:(Class)class comment:(id)comment;
- (void)dealloc;
- (void)logEvent:(id)event comment:(id)comment userInfo:(id)info;
- (void)logToLocation:(id)location key:(id)key;
- (void)logWithFormat:(int)format;
- (void)reset;
- (void)writeToFile:(id)file key:(id)key comment:(id)comment fileFormat:(int)format;
@end

@implementation PMRStopwatch

- (PMRStopwatch)initWithDomain:(id)domain
{
  v6.receiver = self;
  v6.super_class = PMRStopwatch;
  v4 = [(PMRStopwatch *)&v6 init];
  if (v4)
  {
    v4->_splitTimes = objc_opt_new();
    v4->_startTime = mach_absolute_time();
    v4->_domain = [domain copy];
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
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
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

          v8 = [objc_msgSend(*(*(&v20 + 1) + 8 * i) performSelector:{sel__subtreeDescription), "componentsSeparatedByCharactersInSet:", newlineCharacterSet}];
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

- (void)beginTimingGroupForMethod:(SEL)method inClass:(Class)class comment:(id)comment
{
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = NSStringFromClass(class);
  v13 = [v9 initWithFormat:@"%@.%@", v10, NSStringFromSelector(method)];
  v11 = [[PMRSplitTime alloc] initWithKey:v13 comment:comment level:[(NSMutableArray *)self->_splitTimeStack count]];
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

+ (void)benchmarkBlockWithTitle:(id)title iterations:(unint64_t)iterations usingBlock:(id)block onCompletion:(id)completion
{
  v10 = objc_opt_new();

  [v10 benchmarkBlockWithTitle:title iterations:iterations currentIteration:0 usingBlock:block onCompletion:completion];
}

- (void)logToLocation:(id)location key:(id)key
{
  if (location)
  {

    [PMRStopwatch writeToFile:"writeToFile:key:comment:fileFormat:" key:? comment:? fileFormat:?];
  }

  else
  {
    NSLog(&stru_2872E15A0.isa, [(PMRStopwatch *)self descriptionWithFormat:1 key:key comment:0]);
  }
}

- (void)addSplit:(id)split
{
  if ([(NSMutableArray *)self->_splitTimeStack count])
  {
    lastObject = [(NSMutableArray *)self->_splitTimeStack lastObject];

    [lastObject addSplitTimesObject:split];
  }

  else
  {
    [(PMRStopwatch *)self _purgeOldestSplitTimeIfNeeded];
    splitTimes = self->_splitTimes;

    [(NSMutableArray *)splitTimes addObject:split];
  }
}

- (void)logEvent:(id)event comment:(id)comment userInfo:(id)info
{
  v6 = [[PMRSplitTime alloc] initWithKey:event comment:comment level:[(NSMutableArray *)self->_splitTimeStack count] duration:0 userInfo:info];
  [(PMRStopwatch *)self addSplit:v6];
}

- (id)descriptionWithFormat:(int)format key:(id)key comment:(id)comment
{
  v45 = *MEMORY[0x277D85DE8];
  info = 0;
  mach_timebase_info(&info);
  if ([(NSMutableArray *)self->_splitTimes count])
  {
    commentCopy = comment;
    keyCopy = key;
    string = [MEMORY[0x277CCAB68] string];
    domain = [(PMRStopwatch *)self domain];
    v10 = @"undefined";
    if (domain)
    {
      v10 = domain;
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
          duration = [v19 duration];
          v21 = info.numer / info.denom;
          v22 = (duration * v21) / 1000000.0;
          if (v22 == 0.0)
          {
            v22 = ((startTime - v18) * v21) / 1000000.0;
          }

          comment = [v19 comment];
          v24 = [(PMRStopwatch *)self formattedUserInfoForSplitTime:v19];
          if (format == 1)
          {
            v25 = v24;
            if (!comment)
            {
              comment = &stru_2872E16E0;
            }

            v30 = [v19 key];
            [string appendFormat:@"\t<Measurement key=%@ value=%.3f comment=%@ domain=%@ %@ timestamp=%.3f/>\n", v30, *&v22, comment, v37, v25, (startTime * (info.numer / info.denom)) / 1000000000.0];
          }

          else if (format == 2)
          {
            [string appendFormat:@"%@\t%.3f\n", objc_msgSend(v19, "key"), *&v22, v31, v32, v33, v34];
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

    if (format == 1)
    {
      key = keyCopy;
      v26 = [keyCopy stringByAppendingString:@"sum"];
      [string appendFormat:@"\t<Measurement key=%@ value=%.3f comment=%@ domain=%@ timestamp=%.3f/>\n", v26, *&v16, commentCopy, v37, (mach_absolute_time() * (info.numer / info.denom)) / 1000000000.0];
    }

    else
    {
      key = keyCopy;
      if (format == 2)
      {
        [string appendFormat:@"%@\t%.3f\n", objc_msgSend(keyCopy, "stringByAppendingString:", @"sum", *&v16, v31, v32, v33];
      }
    }
  }

  else
  {
    string = 0;
  }

  if ([(PMRStopwatch *)self coreAnimationTotalTime])
  {
    if (!format)
    {
      v27 = @"{ key :%@coreAnimationSum(ms), value : %.3f,\n";
      goto LABEL_31;
    }

    if (format == 1)
    {
      v27 = @"\t<Measurement key=%@coreAnimationSum(ms) value=%.3f />\n";
LABEL_31:
      coreAnimationTotalTime = [(PMRStopwatch *)self coreAnimationTotalTime];
      [string appendFormat:v27, key, (coreAnimationTotalTime * (info.numer / info.denom)) / 1000000.0];
    }
  }

  return string;
}

- (id)formattedUserInfoForSplitTime:(id)time
{
  v15 = *MEMORY[0x277D85DE8];
  userInfo = [time userInfo];
  string = [MEMORY[0x277CCAB68] string];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [userInfo countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(userInfo);
        }

        [string appendFormat:@"%@=%@ ", *(*(&v10 + 1) + 8 * v8), objc_msgSend(userInfo, "objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * v8))];
        ++v8;
      }

      while (v6 != v8);
      v6 = [userInfo countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return string;
}

- (void)logWithFormat:(int)format
{
  v3 = [-[PMRStopwatch descriptionWithFormat:key:comment:](self descriptionWithFormat:*&format key:0 comment:0), "UTF8String"];

  puts(v3);
}

- (void)writeToFile:(id)file key:(id)key comment:(id)comment fileFormat:(int)format
{
  v16 = 0;
  v8 = [(PMRStopwatch *)self descriptionWithFormat:*&format key:key comment:comment];
  if (v8)
  {
    v9 = v8;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([file hasPrefix:@"/"])
    {
      stringByExpandingTildeInPath = [file stringByExpandingTildeInPath];
    }

    else
    {
      v12 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      v13 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"~/Library/Logs/%@/", v12), "stringByExpandingTildeInPath"];
      [defaultManager createDirectoryAtPath:v13 withIntermediateDirectories:0 attributes:0 error:0];
      stringByExpandingTildeInPath = [v13 stringByAppendingPathComponent:file];
    }

    v14 = stringByExpandingTildeInPath;
    if ([defaultManager fileExistsAtPath:stringByExpandingTildeInPath])
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