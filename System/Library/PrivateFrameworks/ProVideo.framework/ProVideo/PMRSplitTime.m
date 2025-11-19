@interface PMRSplitTime
- (PMRSplitTime)initWithKey:(id)a3 comment:(id)a4 level:(int64_t)a5 duration:(unint64_t)a6 userInfo:(id)a7;
- (id)_subtreeDescription;
- (id)description;
- (id)dumpTraceLog;
- (void)addSplitTimesObject:(id)a3;
- (void)dealloc;
@end

@implementation PMRSplitTime

- (PMRSplitTime)initWithKey:(id)a3 comment:(id)a4 level:(int64_t)a5 duration:(unint64_t)a6 userInfo:(id)a7
{
  v14.receiver = self;
  v14.super_class = PMRSplitTime;
  v12 = [(PMRSplitTime *)&v14 init];
  if (v12)
  {
    v12->_key = [a3 copy];
    v12->_comment = [a4 copy];
    v12->_splitTime = mach_absolute_time();
    v12->_level = a5;
    v12->_duration = a6;
    v12->_userInfo = [a7 copy];
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

  v5 = [(PMRSplitTime *)self duration];
  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v13.receiver = self;
    v13.super_class = PMRSplitTime;
    v7 = [(PMRSplitTime *)&v13 description];
    key = self->_key;
    v9 = [(PMRSplitTime *)self duration];
    return [v6 stringWithFormat:@"%@ key: %@, duration: %.3f, splitTimes=%li, comment: %@", v7, key, (v9 * (info.numer / info.denom)) / 1000000000.0, -[NSMutableArray count](self->_splitTimes, "count"), v4];
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
  v3 = [MEMORY[0x277CCAB68] string];
  while ([v2 count])
  {
    v4 = [v2 objectAtIndex:0];
    [v2 removeObjectAtIndex:0];
    if ([v4 level] >= 1)
    {
      v5 = 0;
      do
      {
        [v3 appendString:@"    "];
        ++v5;
      }

      while (v5 < [v4 level]);
    }

    [v3 appendFormat:@"%@\n", objc_msgSend(v4, "description")];
    [v2 replaceObjectsInRange:0 withObjectsFromArray:{0, objc_msgSend(v4, "splitTimes")}];
  }

  return v3;
}

- (id)dumpTraceLog
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{self, 0}];
  v3 = [MEMORY[0x277CCAB68] string];
  while ([v2 count])
  {
    v4 = [v2 objectAtIndex:0];
    [v2 removeObjectAtIndex:0];
    if ([v4 level] >= 1)
    {
      v5 = 0;
      do
      {
        [v3 appendString:@"  "];
        ++v5;
      }

      while (v5 < [v4 level]);
    }

    if ([v4 comment])
    {
      v6 = [v4 comment];
      v7 = [objc_msgSend(v6 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")), "objectAtIndex:", 0}];
    }

    else
    {
      v7 = &stru_2872E16E0;
    }

    [v3 appendFormat:@"%@\n", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@: %@", objc_msgSend(v4, "key"), v7)];
    [v2 replaceObjectsInRange:0 withObjectsFromArray:{0, objc_msgSend(v4, "splitTimes")}];
  }

  return v3;
}

- (void)addSplitTimesObject:(id)a3
{
  if (a3)
  {
    splitTimes = self->_splitTimes;
    if (!splitTimes)
    {
      splitTimes = objc_opt_new();
      self->_splitTimes = splitTimes;
    }

    [(NSMutableArray *)splitTimes addObject:a3];
  }
}

@end