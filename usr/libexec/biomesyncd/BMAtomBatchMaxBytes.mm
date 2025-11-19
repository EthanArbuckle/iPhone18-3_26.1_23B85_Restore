@interface BMAtomBatchMaxBytes
- (BMAtomBatchMaxBytes)initWithMaxBytes:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BMAtomBatchMaxBytes

- (BMAtomBatchMaxBytes)initWithMaxBytes:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BMAtomBatchMaxBytes;
  result = [(BMAtomBatchMaxBytes *)&v5 init];
  if (result)
  {
    result->_maxBytes = a3;
    result->_usedBytes = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  maxBytes = v3->_maxBytes;

  return [(BMAtomBatchMaxBytes *)v3 initWithMaxBytes:maxBytes];
}

@end