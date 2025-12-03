@interface RTWorkoutDistanceEnumerationOptions
- (RTWorkoutDistanceEnumerationOptions)initWithBatchSize:(unint64_t)size ascending:(BOOL)ascending;
- (RTWorkoutDistanceEnumerationOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTWorkoutDistanceEnumerationOptions

- (RTWorkoutDistanceEnumerationOptions)initWithBatchSize:(unint64_t)size ascending:(BOOL)ascending
{
  v7.receiver = self;
  v7.super_class = RTWorkoutDistanceEnumerationOptions;
  result = [(RTWorkoutDistanceEnumerationOptions *)&v7 init];
  if (result)
  {
    result->_ascending = ascending;
    result->_batchSize = size;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  batchSize = self->_batchSize;
  ascending = self->_ascending;

  return [v4 initWithBatchSize:batchSize ascending:ascending];
}

- (void)encodeWithCoder:(id)coder
{
  ascending = self->_ascending;
  coderCopy = coder;
  [coderCopy encodeBool:ascending forKey:@"ascending"];
  [coderCopy encodeInteger:self->_batchSize forKey:@"batchSize"];
}

- (RTWorkoutDistanceEnumerationOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"ascending"];
  v6 = [coderCopy decodeIntegerForKey:@"batchSize"];

  return [(RTWorkoutDistanceEnumerationOptions *)self initWithBatchSize:v6 ascending:v5];
}

- (id)description
{
  if (self->_ascending)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"ascending, %@, batchSize, %lu", v2, self->_batchSize];
}

@end