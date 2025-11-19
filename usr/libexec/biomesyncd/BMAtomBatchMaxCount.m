@interface BMAtomBatchMaxCount
- (BMAtomBatchMaxCount)initWithMaxCount:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BMAtomBatchMaxCount

- (BMAtomBatchMaxCount)initWithMaxCount:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BMAtomBatchMaxCount;
  result = [(BMAtomBatchMaxCount *)&v5 init];
  if (result)
  {
    result->_maxCount = a3;
    result->_atomCount = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  maxCount = v3->_maxCount;

  return [(BMAtomBatchMaxCount *)v3 initWithMaxCount:maxCount];
}

@end