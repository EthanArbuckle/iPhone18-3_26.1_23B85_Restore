@interface FedStatsBooleanType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsBooleanType)init;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error;
@end

@implementation FedStatsBooleanType

- (FedStatsBooleanType)init
{
  v3.receiver = self;
  v3.super_class = FedStatsBooleanType;
  return [(FedStatsBooleanType *)&v3 init];
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v4 = objc_alloc_init(self);

  return v4;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  v6 = +[NSNull null];
  v7 = [indexCopy isEqual:v6];

  if (v7)
  {
    v8 = &off_100030430;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [indexCopy BOOLValue]);
    }

    else if (error)
    {
      [FedStatsError errorWithCode:401 description:@"The encoder can only work with a number type"];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  v6 = indexCopy;
  if (indexCopy)
  {
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [indexCopy BOOLValue]);
  }

  else if (error)
  {
    [FedStatsError errorWithCode:500 description:@"The encoder can only work with a number type"];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeToOneHotVector:(id)vector possibleError:(id *)error
{
  v4 = [(FedStatsBooleanType *)self encodeToIndex:vector possibleError:error];
  v5 = v4;
  if (v4)
  {
    v8 = 0;
    *(&v8 + [v4 unsignedIntValue]) = 1;
    v6 = [NSData dataWithBytes:&v8 length:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decodeFromOneHotVector:(id)vector possibleError:(id *)error
{
  vectorCopy = vector;
  v7 = vectorCopy;
  if (vectorCopy)
  {
    v11 = 0;
    [vectorCopy getBytes:&v11 range:{0, 2}];
    v8 = [NSNumber numberWithBool:HIBYTE(v11) == 1];
    v9 = [(FedStatsBooleanType *)self decodeFromIndex:v8 possibleError:error];
  }

  else if (error)
  {
    [FedStatsError errorWithCode:500 description:@"The decoder can only work with a valid one-hot vector"];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end