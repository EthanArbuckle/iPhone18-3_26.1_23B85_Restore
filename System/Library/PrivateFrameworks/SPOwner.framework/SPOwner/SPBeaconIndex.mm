@interface SPBeaconIndex
- (SPBeaconIndex)initWithCoder:(id)coder;
- (SPBeaconIndex)initWithSequence:(unsigned __int8)sequence index:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconIndex

- (SPBeaconIndex)initWithSequence:(unsigned __int8)sequence index:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = SPBeaconIndex;
  result = [(SPBeaconIndex *)&v7 init];
  if (result)
  {
    result->_sequence = sequence;
    result->_index = index;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPBeaconIndex alloc];
  sequence = self->_sequence;
  index = self->_index;

  return [(SPBeaconIndex *)v4 initWithSequence:sequence index:index];
}

- (void)encodeWithCoder:(id)coder
{
  sequence = self->_sequence;
  coderCopy = coder;
  [coderCopy encodeInteger:sequence forKey:@"sequence"];
  [coderCopy encodeInt64:self->_index forKey:@"index"];
}

- (SPBeaconIndex)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_sequence = [coderCopy decodeIntegerForKey:@"sequence"];
  v5 = [coderCopy decodeInt64ForKey:@"index"];

  self->_index = v5;
  return self;
}

@end