@interface RTDTWResult
- (RTDTWResult)initWithDistance:(double)a3 cellIndices:(id)a4;
@end

@implementation RTDTWResult

- (RTDTWResult)initWithDistance:(double)a3 cellIndices:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = RTDTWResult;
  v7 = [(RTDTWResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(RTDTWResult *)v7 setDistance:a3];
    [(RTDTWResult *)v8 setCellIndices:v6];
  }

  return v8;
}

@end