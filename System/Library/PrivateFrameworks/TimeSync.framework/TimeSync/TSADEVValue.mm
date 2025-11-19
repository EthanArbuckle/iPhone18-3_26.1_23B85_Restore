@interface TSADEVValue
- (TSADEVValue)initWithObservationInterval:(double)a3 andADEV:(double)a4;
- (id)description;
@end

@implementation TSADEVValue

- (TSADEVValue)initWithObservationInterval:(double)a3 andADEV:(double)a4
{
  v7.receiver = self;
  v7.super_class = TSADEVValue;
  result = [(TSADEVValue *)&v7 init];
  if (result)
  {
    result->_observationInterval = a3;
    result->_adev = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSADEVValue *)self observationInterval];
  v7 = v6;
  [(TSADEVValue *)self adev];
  v9 = [v3 stringWithFormat:@"<%@: %p: {%.3f, %.9f}>", v5, self, v7, v8];

  return v9;
}

@end