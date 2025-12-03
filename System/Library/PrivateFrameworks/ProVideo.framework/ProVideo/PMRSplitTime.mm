@interface PMRSplitTime
- (PMRSplitTime)initWithKey:(id)key comment:(id)comment level:(int64_t)level duration:(unint64_t)duration userInfo:(id)info;
- (id)_subtreeDescription;
- (id)description;
- (id)dumpTraceLog;
- (void)addSplitTimesObject:(id)object;
- (void)dealloc;
@end

@implementation PMRSplitTime

- (PMRSplitTime)initWithKey:(id)key comment:(id)comment level:(int64_t)level duration:(unint64_t)duration userInfo:(id)info
{
  v14.receiver = self;
  v14.super_class = PMRSplitTime;
  v12 = [(PMRSplitTime *)&v14 init];
  if (v12)
  {
    v12->_key = [key copy];
    v12->_comment = [comment copy];
    v12->_splitTime = mach_absolute_time();
    v12->_level = level;
    v12->_duration = duration;
    v12->_userInfo = [info copy];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PMRSplitTime;
  [(PMRSplitTime *)&v3 dealloc];
}

- (id)description
{
  info = 0;
  mach_timebase_info(&info);
  comment = self->_comment;
  if (comment)
  {
    v4 = -[NSArray objectAtIndex:](-[NSString componentsSeparatedByCharactersInSet:](comment, "componentsSeparatedByCharactersInSet:", [MEMORY[0x277CCA900] newlineCharacterSet]), "objectAtIndex:", 0);
  }

  else
  {
    v4 = &stru_2872E16E0;
  }

  duration = [(PMRSplitTime *)self duration];
  v6 = MEMORY[0x277CCACA8];
  if (duration)
  {
    v13.receiver = self;
    v13.super_class = PMRSplitTime;
    v7 = [(PMRSplitTime *)&v13 description];
    key = self->_key;
    duration2 = [(PMRSplitTime *)self duration];
    return [v6 stringWithFormat:@"%@ key: %@, duration: %.3f, splitTimes=%li, comment: %@", v7, key, (duration2 * (info.numer / info.denom)) / 1000000000.0, -[NSMutableArray count](self->_splitTimes, "count"), v4];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PMRSplitTime;
    v11 = [(PMRSplitTime *)&v12 description];
    return [v6 stringWithFormat:@"%@ key: %@, timestamp: %.3f, splitTimes=%li, comment: %@", v11, self->_key, (self->_splitTime * (info.numer / info.denom)) / 1000000000.0, -[NSMutableArray count](self->_splitTimes, "count"), v4];
  }
}

- (id)_subtreeDescription
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{self, 0}];
  string = [MEMORY[0x277CCAB68] string];
  while ([v2 count])
  {
    v4 = [v2 objectAtIndex:0];
    [v2 removeObjectAtIndex:0];
    if ([v4 level] >= 1)
    {
      v5 = 0;
      do
      {
        [string appendString:@"    "];
        ++v5;
      }

      while (v5 < [v4 level]);
    }

    [string appendFormat:@"%@\n", objc_msgSend(v4, "description")];
    [v2 replaceObjectsInRange:0 withObjectsFromArray:{0, objc_msgSend(v4, "splitTimes")}];
  }

  return string;
}

- (id)dumpTraceLog
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{self, 0}];
  string = [MEMORY[0x277CCAB68] string];
  while ([v2 count])
  {
    v4 = [v2 objectAtIndex:0];
    [v2 removeObjectAtIndex:0];
    if ([v4 level] >= 1)
    {
      v5 = 0;
      do
      {
        [string appendString:@"  "];
        ++v5;
      }

      while (v5 < [v4 level]);
    }

    if ([v4 comment])
    {
      comment = [v4 comment];
      v7 = [objc_msgSend(comment componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")), "objectAtIndex:", 0}];
    }

    else
    {
      v7 = &stru_2872E16E0;
    }

    [string appendFormat:@"%@\n", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@: %@", objc_msgSend(v4, "key"), v7)];
    [v2 replaceObjectsInRange:0 withObjectsFromArray:{0, objc_msgSend(v4, "splitTimes")}];
  }

  return string;
}

- (void)addSplitTimesObject:(id)object
{
  if (object)
  {
    splitTimes = self->_splitTimes;
    if (!splitTimes)
    {
      splitTimes = objc_opt_new();
      self->_splitTimes = splitTimes;
    }

    [(NSMutableArray *)splitTimes addObject:object];
  }
}

@end