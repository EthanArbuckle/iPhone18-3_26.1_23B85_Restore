@interface SPBeaconIndex
- (SPBeaconIndex)initWithCoder:(id)a3;
- (SPBeaconIndex)initWithSequence:(unsigned __int8)a3 index:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconIndex

- (SPBeaconIndex)initWithSequence:(unsigned __int8)a3 index:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SPBeaconIndex;
  result = [(SPBeaconIndex *)&v7 init];
  if (result)
  {
    result->_sequence = a3;
    result->_index = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPBeaconIndex alloc];
  sequence = self->_sequence;
  index = self->_index;

  return [(SPBeaconIndex *)v4 initWithSequence:sequence index:index];
}

- (void)encodeWithCoder:(id)a3
{
  sequence = self->_sequence;
  v5 = a3;
  [v5 encodeInteger:sequence forKey:@"sequence"];
  [v5 encodeInt64:self->_index forKey:@"index"];
}

- (SPBeaconIndex)initWithCoder:(id)a3
{
  v4 = a3;
  self->_sequence = [v4 decodeIntegerForKey:@"sequence"];
  v5 = [v4 decodeInt64ForKey:@"index"];

  self->_index = v5;
  return self;
}

@end