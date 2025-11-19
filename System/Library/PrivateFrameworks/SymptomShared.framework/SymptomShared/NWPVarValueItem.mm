@interface NWPVarValueItem
- (NWPVarValueItem)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWPVarValueItem

- (NWPVarValueItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NWPVarValueItem;
  v5 = [(NWPVarValueItem *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_armPullCount = [v4 decodeInt64ForKey:@"armPullCount"];
    v5->_armObservedCount = [v4 decodeInt64ForKey:@"armObservedCount"];
    [v4 decodeDoubleForKey:@"sampleRewardMean"];
    v5->_sampleRewardMean = v7;
    [v4 decodeDoubleForKey:@"sampleRewardSum"];
    v5->_sampleRewardSum = v8;
    [v4 decodeDoubleForKey:@"sampleRewardSumSquares"];
    v5->_sampleRewardSumSquares = v9;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeInt64:-[NWPVarValueItem armPullCount](self forKey:{"armPullCount"), @"armPullCount"}];
  [v5 encodeInt64:-[NWPVarValueItem armObservedCount](self forKey:{"armObservedCount"), @"armObservedCount"}];
  [(NWPVarValueItem *)self sampleRewardMean];
  [v5 encodeDouble:@"sampleRewardMean" forKey:?];
  [(NWPVarValueItem *)self sampleRewardSum];
  [v5 encodeDouble:@"sampleRewardSum" forKey:?];
  [(NWPVarValueItem *)self sampleRewardSumSquares];
  [v5 encodeDouble:@"sampleRewardSumSquares" forKey:?];
  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"pulls: %llu, observed: %llu, mean: %f, sum: %.2f, sum^2: %.2f", self->_armPullCount, self->_armObservedCount, *&self->_sampleRewardMean, *&self->_sampleRewardSum, *&self->_sampleRewardSumSquares];

  return v2;
}

@end