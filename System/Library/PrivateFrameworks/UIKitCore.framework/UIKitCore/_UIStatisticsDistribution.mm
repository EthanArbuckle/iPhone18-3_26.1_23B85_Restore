@interface _UIStatisticsDistribution
- (BOOL)isTimingForObject:(id)object;
- (void)recordTimingForObject:(id)object;
- (void)startTimingForObject:(id)object;
@end

@implementation _UIStatisticsDistribution

- (BOOL)isTimingForObject:(id)object
{
  v3 = objc_getAssociatedObject(object, self);
  v4 = v3 != 0;

  return v4;
}

- (void)startTimingForObject:(id)object
{
  v4 = MEMORY[0x1E696AD98];
  objectCopy = object;
  v6 = [v4 numberWithUnsignedLongLong:{+[_UIStatistics currentTime](_UIStatistics, "currentTime")}];
  objc_setAssociatedObject(objectCopy, self, v6, 0x303);
}

- (void)recordTimingForObject:(id)object
{
  object = object;
  v4 = objc_getAssociatedObject(object, self);
  v5 = v4;
  if (v4)
  {
    -[_UIStatistics _recordDistributionTime:](self, "_recordDistributionTime:", [v4 unsignedLongLongValue]);
    objc_setAssociatedObject(object, self, 0, 0x303);
  }
}

@end