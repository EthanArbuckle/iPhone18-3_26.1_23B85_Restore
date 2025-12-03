@interface RMJSONUtilities
+ (BOOL)serializeJSONDictionary:(id)dictionary fileURL:(id)l error:(id *)error;
+ (id)deserializeJSONDictionaryAtFileURL:(id)l error:(id *)error;
@end

@implementation RMJSONUtilities

+ (BOOL)serializeJSONDictionary:(id)dictionary fileURL:(id)l error:(id *)error
{
  dictionaryCopy = dictionary;
  lCopy = l;
  v20 = 0;
  v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryCopy options:11 error:&v20];
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    v19 = v10;
    v12 = [v9 rm_atomicWriteToURL:lCopy error:&v19];
    v13 = v19;

    if (v12)
    {
      v14 = 1;
      goto LABEL_13;
    }

    v16 = +[RMLog jsonUtilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[RMJSONUtilities serializeJSONDictionary:fileURL:error:];
    }

    v14 = 0;
    if (error)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = v10;
    v15 = +[RMLog jsonUtilities];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RMJSONUtilities serializeJSONDictionary:v11 fileURL:v15 error:?];
    }

    v14 = 0;
    v9 = 0;
    if (error)
    {
LABEL_11:
      if (v13)
      {
        v17 = v13;
        v14 = 0;
        *error = v13;
      }
    }
  }

LABEL_13:

  return v14;
}

+ (id)deserializeJSONDictionaryAtFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v23 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:&v23];

  if (v8)
  {
    v22 = 0;
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:0 error:&v22];
    v10 = v22;
    if (v9)
    {
      v21 = v10;
      v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v21];
      v12 = v21;

      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
        }

        else
        {
          v18 = +[RMLog jsonUtilities];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [RMJSONUtilities deserializeJSONDictionaryAtFileURL:v18 error:?];
          }

          if (error)
          {
            v19 = +[RMErrorUtilities createInternalError];
            if (v19)
            {
              v19 = v19;
              *error = v19;
            }
          }

          v13 = 0;
        }
      }

      else
      {
        v16 = +[RMLog jsonUtilities];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [RMJSONUtilities deserializeJSONDictionaryAtFileURL:v12 error:v16];
        }

        v13 = 0;
        if (error && v12)
        {
          v17 = v12;
          v13 = 0;
          *error = v12;
        }
      }
    }

    else
    {
      v14 = +[RMLog jsonUtilities];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[RMJSONUtilities deserializeJSONDictionaryAtFileURL:error:];
      }

      v13 = 0;
      if (error && v10)
      {
        v15 = v10;
        v13 = 0;
        *error = v10;
      }

      v12 = v10;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  return v13;
}

+ (void)serializeJSONDictionary:fileURL:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v0, v1, "Could not write JSON data to disk %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)serializeJSONDictionary:(uint64_t)a1 fileURL:(NSObject *)a2 error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E1168000, a2, OS_LOG_TYPE_ERROR, "Could not serialize JSON object: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)deserializeJSONDictionaryAtFileURL:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E1168000, a2, OS_LOG_TYPE_ERROR, "Could not deserialize JSON data: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)deserializeJSONDictionaryAtFileURL:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v0, v1, "Could not read JSON data file: %{public}@ %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end