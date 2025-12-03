@interface FedStatsDataEncoderDimensionalResult
+ (id)resultWithIndex:(id)index dimensionality:(id)dimensionality;
- (FedStatsDataEncoderDimensionalResult)initWithIndex:(id)index dimensionality:(id)dimensionality;
@end

@implementation FedStatsDataEncoderDimensionalResult

- (FedStatsDataEncoderDimensionalResult)initWithIndex:(id)index dimensionality:(id)dimensionality
{
  indexCopy = index;
  dimensionalityCopy = dimensionality;
  v12.receiver = self;
  v12.super_class = FedStatsDataEncoderDimensionalResult;
  v9 = [(FedStatsDataEncoderDimensionalResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_index, index);
    objc_storeStrong(&v10->_dimensionality, dimensionality);
  }

  return v10;
}

+ (id)resultWithIndex:(id)index dimensionality:(id)dimensionality
{
  dimensionalityCopy = dimensionality;
  indexCopy = index;
  v8 = [[self alloc] initWithIndex:indexCopy dimensionality:dimensionalityCopy];

  return v8;
}

@end