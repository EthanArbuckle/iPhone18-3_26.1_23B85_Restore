@interface BKMRUEventStatistics
+ (id)statisticsWithLabel:(id)label capacity:(int64_t)capacity;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)pushStatistics:(id)statistics;
- (void)reset;
@end

@implementation BKMRUEventStatistics

+ (id)statisticsWithLabel:(id)label capacity:(int64_t)capacity
{
  labelCopy = label;
  if (capacity <= 0)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BKEventStatisticsLoggingController.m" lineNumber:262 description:{@"Invalid parameter not satisfying: %@", @"capacity > 0"}];
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___BKMRUEventStatistics;
  v8 = objc_msgSendSuper2(&v11, "statisticWithLabel:", labelCopy);
  v8[5] = capacity;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = BKMRUEventStatistics;
  v4 = [(BKEventStatistic *)&v8 copyWithZone:zone];
  v5 = [(NSMutableOrderedSet *)self->_statistics copy];
  v6 = v4[4];
  v4[4] = v5;

  v4[5] = self->_capacity;
  return v4;
}

- (void)reset
{
  [(NSMutableOrderedSet *)self->_statistics removeAllObjects];
  v3.receiver = self;
  v3.super_class = BKMRUEventStatistics;
  [(BKEventStatistic *)&v3 reset];
}

- (void)pushStatistics:(id)statistics
{
  statisticsCopy = statistics;
  [(BKEventStatistic *)self setNeedsLogging:1];
  statistics = self->_statistics;
  if (!statistics)
  {
    v5 = objc_alloc_init(NSMutableOrderedSet);
    v6 = self->_statistics;
    self->_statistics = v5;

    statistics = self->_statistics;
  }

  if ([(NSMutableOrderedSet *)statistics containsObject:statisticsCopy])
  {
    [(NSMutableOrderedSet *)self->_statistics removeObject:statisticsCopy];
  }

  v7 = self->_statistics;
  v8 = [statisticsCopy bs_map:&stru_1000FC200];
  [(NSMutableOrderedSet *)v7 addObject:v8];

  if ([(NSMutableOrderedSet *)self->_statistics count]> self->_capacity)
  {
    [(NSMutableOrderedSet *)self->_statistics removeObjectAtIndex:0];
  }
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = [(NSMutableOrderedSet *)self->_statistics bs_compactMap:&stru_1000FC158];
  if ([v5 count])
  {
    v6 = objc_opt_class();
    v7 = formatterCopy;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    label = [(BKEventStatistic *)self label];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100071440;
    v13[3] = &unk_1000FC1C0;
    v11 = v7;
    v14 = v11;
    [v9 appendCollection:v5 withName:label itemBlock:v13];

    v12.receiver = self;
    v12.super_class = BKMRUEventStatistics;
    [(BKEventStatistic *)&v12 appendDescriptionToFormatter:v11];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[4] isEqual:self->_statistics];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end