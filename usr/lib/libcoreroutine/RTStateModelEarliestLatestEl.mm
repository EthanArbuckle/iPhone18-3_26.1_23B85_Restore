@interface RTStateModelEarliestLatestEl
- (RTStateModelEarliestLatestEl)initWithCoder:(id)coder;
- (RTStateModelEarliestLatestEl)initWithEarliest:(double)earliest andLatest:(double)latest;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTStateModelEarliestLatestEl

- (RTStateModelEarliestLatestEl)initWithEarliest:(double)earliest andLatest:(double)latest
{
  v7.receiver = self;
  v7.super_class = RTStateModelEarliestLatestEl;
  result = [(RTStateModelEarliestLatestEl *)&v7 init];
  if (result)
  {
    result->_earliestEl_s = earliest;
    result->_latestEl_s = latest;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  earliestEl_s = self->_earliestEl_s;
  coderCopy = coder;
  [coderCopy encodeDouble:@"earliestStateModelEl" forKey:earliestEl_s];
  [coderCopy encodeDouble:@"latestStateModelEl" forKey:self->_latestEl_s];
}

- (RTStateModelEarliestLatestEl)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RTStateModelEarliestLatestEl;
  v5 = [(RTStateModelEarliestLatestEl *)&v9 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"earliestStateModelEl"];
    v5->_earliestEl_s = v6;
    [coderCopy decodeDoubleForKey:@"latestStateModelEl"];
    v5->_latestEl_s = v7;
  }

  return v5;
}

@end