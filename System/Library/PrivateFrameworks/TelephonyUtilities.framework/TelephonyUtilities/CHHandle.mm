@interface CHHandle
+ (CHHandle)handleWithTUHandle:(id)a3;
+ (id)normalizedHandleWithTUHandle:(id)a3 andISOCountryCode:(id)a4;
+ (int64_t)handleTypeForTUHandle:(id)a3;
- (TUHandle)tuHandle;
- (int64_t)tuHandleType;
@end

@implementation CHHandle

+ (int64_t)handleTypeForTUHandle:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  result = [a3 type];
  if (result == 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (result != 2)
  {
    return v4;
  }

  return result;
}

+ (CHHandle)handleWithTUHandle:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 handleTypeForTUHandle:v4];
    v6 = [CHHandle alloc];
    v7 = [v4 value];

    v8 = [v6 initWithType:v5 value:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)normalizedHandleWithTUHandle:(id)a3 andISOCountryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [CHHandle handleTypeForTUHandle:v5];
    v8 = v7;
    if (v6 || v7 != 2)
    {
      v10 = [v5 value];
      v11 = [CHHandle normalizedHandleWithType:v8 value:v10 isoCountryCode:v6];
    }

    else
    {
      v9 = [CHHandle alloc];
      v10 = [v5 value];
      v11 = [v9 initWithType:2 value:v10];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)tuHandleType
{
  result = [(CHHandle *)self type];
  if (result == 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  if (result != 2)
  {
    return v3;
  }

  return result;
}

- (TUHandle)tuHandle
{
  v3 = [TUHandle alloc];
  v4 = [(CHHandle *)self tuHandleType];
  v5 = [(CHHandle *)self value];
  v6 = [(CHHandle *)self normalizedValue];
  v7 = [v3 initWithType:v4 value:v5 normalizedValue:v6];

  return v7;
}

@end