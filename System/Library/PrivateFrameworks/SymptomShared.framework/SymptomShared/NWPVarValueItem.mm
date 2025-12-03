@interface NWPVarValueItem
- (NWPVarValueItem)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWPVarValueItem

- (NWPVarValueItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NWPVarValueItem;
  v5 = [(NWPVarValueItem *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_armPullCount = [coderCopy decodeInt64ForKey:@"armPullCount"];
    v5->_armObservedCount = [coderCopy decodeInt64ForKey:@"armObservedCount"];
    [coderCopy decodeDoubleForKey:@"sampleRewardMean"];
    v5->_sampleRewardMean = v7;
    [coderCopy decodeDoubleForKey:@"sampleRewardSum"];
    v5->_sampleRewardSum = v8;
    [coderCopy decodeDoubleForKey:@"sampleRewardSumSquares"];
    v5->_sampleRewardSumSquares = v9;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInt64:-[NWPVarValueItem armPullCount](self forKey:{"armPullCount"), @"armPullCount"}];
  [coderCopy encodeInt64:-[NWPVarValueItem armObservedCount](self forKey:{"armObservedCount"), @"armObservedCount"}];
  [(NWPVarValueItem *)self sampleRewardMean];
  [coderCopy encodeDouble:@"sampleRewardMean" forKey:?];
  [(NWPVarValueItem *)self sampleRewardSum];
  [coderCopy encodeDouble:@"sampleRewardSum" forKey:?];
  [(NWPVarValueItem *)self sampleRewardSumSquares];
  [coderCopy encodeDouble:@"sampleRewardSumSquares" forKey:?];
  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"pulls: %llu, observed: %llu, mean: %f, sum: %.2f, sum^2: %.2f", self->_armPullCount, self->_armObservedCount, *&self->_sampleRewardMean, *&self->_sampleRewardSum, *&self->_sampleRewardSumSquares];

  return v2;
}

@end