@interface RTWorkoutDistanceEnumerationOptions
- (RTWorkoutDistanceEnumerationOptions)initWithBatchSize:(unint64_t)a3 ascending:(BOOL)a4;
- (RTWorkoutDistanceEnumerationOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTWorkoutDistanceEnumerationOptions

- (RTWorkoutDistanceEnumerationOptions)initWithBatchSize:(unint64_t)a3 ascending:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = RTWorkoutDistanceEnumerationOptions;
  result = [(RTWorkoutDistanceEnumerationOptions *)&v7 init];
  if (result)
  {
    result->_ascending = a4;
    result->_batchSize = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  batchSize = self->_batchSize;
  ascending = self->_ascending;

  return [v4 initWithBatchSize:batchSize ascending:ascending];
}

- (void)encodeWithCoder:(id)a3
{
  ascending = self->_ascending;
  v5 = a3;
  [v5 encodeBool:ascending forKey:@"ascending"];
  [v5 encodeInteger:self->_batchSize forKey:@"batchSize"];
}

- (RTWorkoutDistanceEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"ascending"];
  v6 = [v4 decodeIntegerForKey:@"batchSize"];

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