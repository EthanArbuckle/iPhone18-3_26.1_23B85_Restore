@interface BMAtomBatchMaxBytes
- (BMAtomBatchMaxBytes)initWithMaxBytes:(unint64_t)bytes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BMAtomBatchMaxBytes

- (BMAtomBatchMaxBytes)initWithMaxBytes:(unint64_t)bytes
{
  v5.receiver = self;
  v5.super_class = BMAtomBatchMaxBytes;
  result = [(BMAtomBatchMaxBytes *)&v5 init];
  if (result)
  {
    result->_maxBytes = bytes;
    result->_usedBytes = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  maxBytes = selfCopy->_maxBytes;

  return [(BMAtomBatchMaxBytes *)selfCopy initWithMaxBytes:maxBytes];
}

@end