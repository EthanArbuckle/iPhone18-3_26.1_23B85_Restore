@interface TSTimeErrorValue
+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)a3 timeError:(int64_t *)a4 count:(int64_t)a5;
- (TSTimeErrorValue)initWithTimestamp:(unint64_t)a3 andError:(int64_t)a4;
- (id)description;
@end

@implementation TSTimeErrorValue

- (TSTimeErrorValue)initWithTimestamp:(unint64_t)a3 andError:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = TSTimeErrorValue;
  result = [(TSTimeErrorValue *)&v7 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_error = a4;
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

+ (id)timeErrorSequenceWithTimestamps:(unint64_t *)a3 timeError:(int64_t *)a4 count:(int64_t)a5
{
  v8 = [MEMORY[0x277CBEB18] array];
  if (a3 && a4 && a5 >= 1)
  {
    do
    {
      v9 = [TSTimeErrorValue alloc];
      v11 = *a3++;
      v10 = v11;
      v12 = *a4++;
      v13 = [(TSTimeErrorValue *)v9 initWithTimestamp:v10 andError:v12];
      [v8 addObject:v13];

      --a5;
    }

    while (a5);
  }

  return v8;
}

@end