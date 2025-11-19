@interface TSTDEVValue
- (TSTDEVValue)initWithObservationInterval:(double)a3 andTDEV:(double)a4;
- (id)description;
@end

@implementation TSTDEVValue

- (TSTDEVValue)initWithObservationInterval:(double)a3 andTDEV:(double)a4
{
  v7.receiver = self;
  v7.super_class = TSTDEVValue;
  result = [(TSTDEVValue *)&v7 init];
  if (result)
  {
    result->_observationInterval = a3;
    result->_tdev = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TSTDEVValue *)self observationInterval];
  v7 = v6;
  [(TSTDEVValue *)self tdev];
  v9 = [v3 stringWithFormat:@"<%@: %p: {%.9f, %.9f}>", v5, self, v7, v8];

  return v9;
}

@end