@interface BMAtomBatchMaxCount
- (BMAtomBatchMaxCount)initWithMaxCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BMAtomBatchMaxCount

- (BMAtomBatchMaxCount)initWithMaxCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = BMAtomBatchMaxCount;
  result = [(BMAtomBatchMaxCount *)&v5 init];
  if (result)
  {
    result->_maxCount = count;
    result->_atomCount = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  maxCount = selfCopy->_maxCount;

  return [(BMAtomBatchMaxCount *)selfCopy initWithMaxCount:maxCount];
}

@end