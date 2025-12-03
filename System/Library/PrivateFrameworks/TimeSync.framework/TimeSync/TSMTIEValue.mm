@interface TSMTIEValue
- (TSMTIEValue)initWithObservationInterval:(double)interval andMTIE:(double)e;
- (id)description;
@end

@implementation TSMTIEValue

- (TSMTIEValue)initWithObservationInterval:(double)interval andMTIE:(double)e
{
  v7.receiver = self;
  v7.super_class = TSMTIEValue;
  result = [(TSMTIEValue *)&v7 init];
  if (result)
  {
    result->_observationInterval = interval;
    result->_mtie = e;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSMTIEValue *)self observationInterval];
  v7 = v6;
  [(TSMTIEValue *)self mtie];
  v9 = [v3 stringWithFormat:@"<%@: %p: {%.9f, %.9f}>", v5, self, v7, v8];

  return v9;
}

@end