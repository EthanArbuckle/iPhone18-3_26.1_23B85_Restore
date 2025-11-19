@interface FedStatsDataEncoderDimensionalResult
+ (id)resultWithIndex:(id)a3 dimensionality:(id)a4;
- (FedStatsDataEncoderDimensionalResult)initWithIndex:(id)a3 dimensionality:(id)a4;
@end

@implementation FedStatsDataEncoderDimensionalResult

- (FedStatsDataEncoderDimensionalResult)initWithIndex:(id)a3 dimensionality:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FedStatsDataEncoderDimensionalResult;
  v9 = [(FedStatsDataEncoderDimensionalResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_index, a3);
    objc_storeStrong(&v10->_dimensionality, a4);
  }

  return v10;
}

+ (id)resultWithIndex:(id)a3 dimensionality:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIndex:v7 dimensionality:v6];

  return v8;
}

@end