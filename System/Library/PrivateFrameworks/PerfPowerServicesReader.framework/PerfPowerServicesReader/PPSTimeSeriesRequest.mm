@interface PPSTimeSeriesRequest
- (PPSTimeSeriesRequest)initWithCoder:(id)coder;
- (PPSTimeSeriesRequest)initWithMetrics:(id)metrics predicate:(id)predicate timeFilter:(id)filter limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount readDirection:(unint64_t)direction;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSTimeSeriesRequest

- (PPSTimeSeriesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PPSTimeSeriesRequest;
  v5 = [(PPSDataRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_limitCount = [coderCopy decodeIntegerForKey:@"limitCount"];
    v5->_offsetCount = [coderCopy decodeIntegerForKey:@"offsetCount"];
    v5->_readDirection = [coderCopy decodeIntegerForKey:@"readDirection"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PPSTimeSeriesRequest;
  coderCopy = coder;
  [(PPSDataRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_limitCount forKey:{@"limitCount", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_offsetCount forKey:@"offsetCount"];
  [coderCopy encodeInteger:self->_readDirection forKey:@"readDirection"];
}

- (PPSTimeSeriesRequest)initWithMetrics:(id)metrics predicate:(id)predicate timeFilter:(id)filter limitCount:(unint64_t)count offsetCount:(unint64_t)offsetCount readDirection:(unint64_t)direction
{
  v12.receiver = self;
  v12.super_class = PPSTimeSeriesRequest;
  result = [(PPSDataRequest *)&v12 initWithRequestType:0 metrics:metrics predicate:predicate timeFilter:filter];
  if (result)
  {
    result->_limitCount = count;
    result->_offsetCount = offsetCount;
    result->_readDirection = direction;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  requestType = [(PPSDataRequest *)self requestType];
  metrics = [(PPSDataRequest *)self metrics];
  predicate = [(PPSDataRequest *)self predicate];
  timeFilter = [(PPSDataRequest *)self timeFilter];
  v9 = [v3 stringWithFormat:@"<%@: %p { type: %ld, metrics: %@, predicate: %@, timeFilter: %@ limitCount:%ld offsetCount:%ld readDirection: %ld }>", v4, self, requestType, metrics, predicate, timeFilter, -[PPSTimeSeriesRequest limitCount](self, "limitCount"), -[PPSTimeSeriesRequest offsetCount](self, "offsetCount"), -[PPSTimeSeriesRequest readDirection](self, "readDirection")];

  return v9;
}

@end