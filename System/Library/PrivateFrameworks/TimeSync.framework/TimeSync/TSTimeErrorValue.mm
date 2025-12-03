@interface TSTimeErrorValue
+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)timestamps timeError:(int64_t *)error count:(int64_t)count;
- (TSTimeErrorValue)initWithTimestamp:(unint64_t)timestamp andError:(int64_t)error;
- (id)description;
@end

@implementation TSTimeErrorValue

- (TSTimeErrorValue)initWithTimestamp:(unint64_t)timestamp andError:(int64_t)error
{
  v7.receiver = self;
  v7.super_class = TSTimeErrorValue;
  result = [(TSTimeErrorValue *)&v7 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_error = error;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p: {%llu, %lld}>", v5, self, -[TSTimeErrorValue timestamp](self, "timestamp"), -[TSTimeErrorValue error](self, "error")];

  return v6;
}

+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)timestamps timeError:(int64_t *)error count:(int64_t)count
{
  array = [MEMORY[0x277CBEB18] array];
  if (timestamps && error && count >= 1)
  {
    do
    {
      v9 = [TSTimeErrorValue alloc];
      v11 = *timestamps++;
      v10 = v11;
      v12 = *error++;
      v13 = [(TSTimeErrorValue *)v9 initWithTimestamp:v10 andError:v12];
      [array addObject:v13];

      --count;
    }

    while (count);
  }

  return array;
}

@end