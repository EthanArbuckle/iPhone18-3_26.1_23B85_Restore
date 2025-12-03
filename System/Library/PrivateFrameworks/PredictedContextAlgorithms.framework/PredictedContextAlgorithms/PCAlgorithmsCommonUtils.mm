@interface PCAlgorithmsCommonUtils
+ (id)dataFromUUID:(id)d;
+ (id)uuidStringFromData:(id)data;
@end

@implementation PCAlgorithmsCommonUtils

+ (id)dataFromUUID:(id)d
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (d)
  {
    v7[0] = 0;
    v7[1] = 0;
    [d getUUIDBytes:v7];
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:16];
  }

  else
  {
    v4 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_1CEE74000, v4, OS_LOG_TYPE_ERROR, "Provided NSUUID is nil.", v7, 2u);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)uuidStringFromData:(id)data
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy && [dataCopy length] == 16)
  {
    *buf = 0uLL;
    [v4 getBytes:buf length:16];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buf];
    v6 = v5;
    if (v5)
    {
      uUIDString = [v5 UUIDString];
    }

    else
    {
      v9 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_ERROR, "Failed to create NSUUID from provided data.", v12, 2u);
      }

      uUIDString = 0;
    }
  }

  else
  {
    v8 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = [v4 length];
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_ERROR, "Invalid UUID data. Expected 16 bytes but got %lu.", buf, 0xCu);
    }

    uUIDString = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return uUIDString;
}

@end