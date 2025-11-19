@interface FedStatsBooleanType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsBooleanType)init;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)decodeFromOneHotVector:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToOneHotVector:(id)a3 possibleError:(id *)a4;
@end

@implementation FedStatsBooleanType

- (FedStatsBooleanType)init
{
  v3.receiver = self;
  v3.super_class = FedStatsBooleanType;
  return [(FedStatsBooleanType *)&v3 init];
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v4 = objc_alloc_init(a1);

  return v4;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v5 = a3;
  v6 = +[NSNull null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = &off_100030478;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 BOOLValue]);
    }

    else if (a4)
    {
      [FedStatsError errorWithCode:401 description:@"The encoder can only work with a number type"];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 BOOLValue]);
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:500 description:@"The encoder can only work with a number type"];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeToOneHotVector:(id)a3 possibleError:(id *)a4
{
  v4 = [(FedStatsBooleanType *)self encodeToIndex:a3 possibleError:a4];
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

- (id)decodeFromOneHotVector:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [v6 getBytes:&v11 range:{0, 2}];
    v8 = [NSNumber numberWithBool:HIBYTE(v11) == 1];
    v9 = [(FedStatsBooleanType *)self decodeFromIndex:v8 possibleError:a4];
  }

  else if (a4)
  {
    [FedStatsError errorWithCode:500 description:@"The decoder can only work with a valid one-hot vector"];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end