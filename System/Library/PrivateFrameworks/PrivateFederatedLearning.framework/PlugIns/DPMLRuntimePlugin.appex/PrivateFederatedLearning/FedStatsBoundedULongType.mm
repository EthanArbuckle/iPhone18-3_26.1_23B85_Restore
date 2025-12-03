@interface FedStatsBoundedULongType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsBoundedULongType)initWithBound:(unint64_t)bound;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error;
- (id)sampleForIndex:(unint64_t)index;
@end

@implementation FedStatsBoundedULongType

- (FedStatsBoundedULongType)initWithBound:(unint64_t)bound
{
  v5.receiver = self;
  v5.super_class = FedStatsBoundedULongType;
  result = [(FedStatsBoundedULongType *)&v5 init];
  if (result)
  {
    result->_bound = bound;
  }

  return result;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v6 = [dict objectForKey:@"bound"];
  v7 = v6;
  if (!v6)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    0x20000000 = [NSString stringWithFormat:@"The key %@ is missing", @"bound"];
    v10 = 300;
    goto LABEL_7;
  }

  unsignedLongValue = [v6 unsignedLongValue];
  if (error && unsignedLongValue >= 0x20000001)
  {
    0x20000000 = [NSString stringWithFormat:@"The value for %@ must be less than %lu", @"bound", 0x20000000];
    v10 = 302;
LABEL_7:
    *error = [FedStatsError errorWithCode:v10 description:0x20000000];

    error = 0;
    goto LABEL_9;
  }

  error = [[self alloc] initWithBound:{objc_msgSend(v7, "unsignedLongValue")}];
LABEL_9:

  return error;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  v7 = +[NSNull null];
  v8 = [indexCopy isEqual:v7];

  if (v8)
  {
    v9 = &off_100030430;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10 = [indexCopy longValue], v10 == objc_msgSend(indexCopy, "unsignedLongValue")))
    {
      unsignedLongValue = [indexCopy unsignedLongValue];
      if (unsignedLongValue + 1 <= [(FedStatsBoundedULongType *)self bound])
      {
        v12 = unsignedLongValue + 1;
      }

      else
      {
        v12 = 0;
      }

      v9 = [NSNumber numberWithUnsignedLong:v12];
    }

    else if (error)
    {
      [FedStatsError errorWithCode:401 description:@"The encoder can only work with a positive integer"];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  v7 = indexCopy;
  if (!indexCopy)
  {
    if (error)
    {
      v11 = @"The decoder can only work with a number type";
LABEL_9:
      [FedStatsError errorWithCode:500 description:v11];
      *error = v10 = 0;
      goto LABEL_12;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_12;
  }

  unsignedLongValue = [indexCopy unsignedLongValue];
  if (unsignedLongValue >= [(FedStatsBoundedULongType *)self classCount])
  {
    if (error)
    {
      v11 = @"The decoder requires a number less than the class count";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  unsignedLongValue2 = [v7 unsignedLongValue];
  if (unsignedLongValue2)
  {
    v10 = [NSNumber numberWithUnsignedLong:unsignedLongValue2 - 1];
  }

  else
  {
    v10 = &off_100030448;
  }

LABEL_12:

  return v10;
}

- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error
{
  v5 = [(FedStatsBoundedULongType *)self encodeToIndex:vector possibleError:error];
  v6 = v5;
  if (v5)
  {
    unsignedLongValue = [v5 unsignedLongValue];
    v8 = [NSMutableData dataWithLength:[(FedStatsBoundedULongType *)self classCount]];
    v11 = 1;
    [v8 replaceBytesInRange:unsignedLongValue withBytes:{1, &v11}];
    v9 = [NSData dataWithData:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error
{
  vectorCopy = vector;
  v11 = 0;
  if ([vectorCopy length])
  {
    v7 = 0;
    while (1)
    {
      [vectorCopy getBytes:&v11 range:{v7, 1}];
      if (v11)
      {
        break;
      }

      if (++v7 >= [vectorCopy length])
      {
        goto LABEL_5;
      }
    }

    v9 = [NSNumber numberWithUnsignedLong:v7];
    v8 = [(FedStatsBoundedULongType *)self decodeFromIndex:v9 possibleError:error];
  }

  else
  {
LABEL_5:
    if (error)
    {
      [FedStatsError errorWithCode:900 description:@"Only one factor in the input vector must be non-zero."];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)sampleForIndex:(unint64_t)index
{
  if (index)
  {
    bound = index - 1;
  }

  else
  {
    bound = [(FedStatsBoundedULongType *)self bound];
  }

  return [NSNumber numberWithUnsignedLong:bound];
}

@end