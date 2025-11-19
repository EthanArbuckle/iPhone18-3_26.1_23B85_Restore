@interface _UIStatisticsDistribution
- (BOOL)isTimingForObject:(id)a3;
- (void)recordTimingForObject:(id)a3;
- (void)startTimingForObject:(id)a3;
@end

@implementation _UIStatisticsDistribution

- (BOOL)isTimingForObject:(id)a3
{
  v3 = objc_getAssociatedObject(a3, self);
  v4 = v3 != 0;

  return v4;
}

- (void)startTimingForObject:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedLongLong:{+[_UIStatistics currentTime](_UIStatistics, "currentTime")}];
  objc_setAssociatedObject(v5, self, v6, 0x303);
}

- (void)recordTimingForObject:(id)a3
{
  object = a3;
  v4 = objc_getAssociatedObject(object, self);
  v5 = v4;
  if (v4)
  {
    -[_UIStatistics _recordDistributionTime:](self, "_recordDistributionTime:", [v4 unsignedLongLongValue]);
    objc_setAssociatedObject(object, self, 0, 0x303);
  }
}

@end