@interface PPEnumTypes
+ (id)deviceFilterMapping;
+ (id)locationConsumerMapping;
+ (id)locationConsumerValidValueList;
+ (id)reverseDeviceFilterMapping;
+ (id)reverseLocationConsumerMapping;
+ (id)stringForDeviceFilter:(unint64_t)a3;
+ (id)stringForLocationConsumer:(unint64_t)a3;
@end

@implementation PPEnumTypes

+ (id)locationConsumerValidValueList
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v3 = [PPEnumTypes stringForLocationConsumer:1];
  [v2 appendString:v3];

  for (i = 2; i != 4; ++i)
  {
    [v2 appendString:{@", "}];
    v5 = [PPEnumTypes stringForLocationConsumer:i];
    [v2 appendString:v5];
  }

  [v2 appendString:@"]"];

  return v2;
}

+ (id)reverseLocationConsumerMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  for (i = 0; i != 4; ++i)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v6 = [a1 stringForLocationConsumer:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)locationConsumerMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  for (i = 0; i != 4; ++i)
  {
    v5 = [a1 stringForLocationConsumer:i];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)reverseDeviceFilterMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  for (i = 0; i != 3; ++i)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v6 = [a1 stringForDeviceFilter:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)deviceFilterMapping
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  for (i = 0; i != 3; ++i)
  {
    v5 = [a1 stringForDeviceFilter:i];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [v3 setObject:v5 forKeyedSubscript:v6];
  }

  return v3;
}

+ (id)stringForLocationConsumer:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      v12 = v10;
      v13 = 2048;
      v14 = a3;
      _os_log_error_impl(&dword_1A7FD3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ called with invalid PPLocationConsumer value of %lu", buf, 0x16u);
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"%@ called with invalid PPLocationConsumer value of %lu", v8, a3}];

    result = @"invalid";
  }

  else
  {
    result = off_1E77F6CB8[a3];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)stringForDeviceFilter:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3 >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 138412546;
      v12 = v10;
      v13 = 2048;
      v14 = a3;
      _os_log_error_impl(&dword_1A7FD3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ called with invalid PPDeviceFilter value of %lu", buf, 0x16u);
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"%@ called with invalid PPDeviceFilter value of %lu", v8, a3}];

    result = @"invalid";
  }

  else
  {
    result = off_1E77F6CA0[a3];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end