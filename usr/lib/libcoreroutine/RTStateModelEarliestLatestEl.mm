@interface RTStateModelEarliestLatestEl
- (RTStateModelEarliestLatestEl)initWithCoder:(id)a3;
- (RTStateModelEarliestLatestEl)initWithEarliest:(double)a3 andLatest:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStateModelEarliestLatestEl

- (RTStateModelEarliestLatestEl)initWithEarliest:(double)a3 andLatest:(double)a4
{
  v7.receiver = self;
  v7.super_class = RTStateModelEarliestLatestEl;
  result = [(RTStateModelEarliestLatestEl *)&v7 init];
  if (result)
  {
    result->_earliestEl_s = a3;
    result->_latestEl_s = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  earliestEl_s = self->_earliestEl_s;
  v5 = a3;
  [v5 encodeDouble:@"earliestStateModelEl" forKey:earliestEl_s];
  [v5 encodeDouble:@"latestStateModelEl" forKey:self->_latestEl_s];
}

- (RTStateModelEarliestLatestEl)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTStateModelEarliestLatestEl;
  v5 = [(RTStateModelEarliestLatestEl *)&v9 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"earliestStateModelEl"];
    v5->_earliestEl_s = v6;
    [v4 decodeDoubleForKey:@"latestStateModelEl"];
    v5->_latestEl_s = v7;
  }

  return v5;
}

@end