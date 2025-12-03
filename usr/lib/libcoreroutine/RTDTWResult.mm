@interface RTDTWResult
- (RTDTWResult)initWithDistance:(double)distance cellIndices:(id)indices;
@end

@implementation RTDTWResult

- (RTDTWResult)initWithDistance:(double)distance cellIndices:(id)indices
{
  indicesCopy = indices;
  v10.receiver = self;
  v10.super_class = RTDTWResult;
  v7 = [(RTDTWResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(RTDTWResult *)v7 setDistance:distance];
    [(RTDTWResult *)v8 setCellIndices:indicesCopy];
  }

  return v8;
}

@end