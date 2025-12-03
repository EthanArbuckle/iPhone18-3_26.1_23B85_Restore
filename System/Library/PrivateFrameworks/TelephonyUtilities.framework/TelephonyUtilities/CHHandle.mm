@interface CHHandle
+ (CHHandle)handleWithTUHandle:(id)handle;
+ (id)normalizedHandleWithTUHandle:(id)handle andISOCountryCode:(id)code;
+ (int64_t)handleTypeForTUHandle:(id)handle;
- (TUHandle)tuHandle;
- (int64_t)tuHandleType;
@end

@implementation CHHandle

+ (int64_t)handleTypeForTUHandle:(id)handle
{
  if (!handle)
  {
    return 1;
  }

  result = [handle type];
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

+ (CHHandle)handleWithTUHandle:(id)handle
{
  if (handle)
  {
    handleCopy = handle;
    v5 = [self handleTypeForTUHandle:handleCopy];
    v6 = [CHHandle alloc];
    value = [handleCopy value];

    v8 = [v6 initWithType:v5 value:value];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)normalizedHandleWithTUHandle:(id)handle andISOCountryCode:(id)code
{
  handleCopy = handle;
  codeCopy = code;
  if (handleCopy)
  {
    v7 = [CHHandle handleTypeForTUHandle:handleCopy];
    v8 = v7;
    if (codeCopy || v7 != 2)
    {
      value = [handleCopy value];
      v11 = [CHHandle normalizedHandleWithType:v8 value:value isoCountryCode:codeCopy];
    }

    else
    {
      v9 = [CHHandle alloc];
      value = [handleCopy value];
      v11 = [v9 initWithType:2 value:value];
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
  tuHandleType = [(CHHandle *)self tuHandleType];
  value = [(CHHandle *)self value];
  normalizedValue = [(CHHandle *)self normalizedValue];
  v7 = [v3 initWithType:tuHandleType value:value normalizedValue:normalizedValue];

  return v7;
}

@end