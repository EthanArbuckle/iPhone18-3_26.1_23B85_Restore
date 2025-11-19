@interface NSDictionary(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSDictionary(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  v1 = a1;
  v36 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:a1])
  {
    v2 = v1;
  }

  else
  {
    v3 = [v1 allKeys];
    v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      v8 = 0x1E696A000uLL;
      v23 = *v26;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = *(v8 + 3776);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v1 objectForKey:v10];
            v13 = jsonSerializableValueForValue(v12);
            if (v13)
            {
              [v24 setObject:v13 forKey:v10];
            }

            else
            {
              v15 = v8;
              v16 = v4;
              v17 = v1;
              v18 = objc_opt_class();
              v19 = NSStringFromClass(v18);
              v20 = _IMStoreLogCategoryDefault();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v30 = v12;
                v31 = 2112;
                v32 = v19;
                v33 = 2112;
                v34 = v10;
                _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_ERROR, "Object %@ of class %@ for key %@ isn't JSON serializable", buf, 0x20u);
              }

              v1 = v17;
              v4 = v16;
              v8 = v15;
              v7 = v23;
            }
          }

          else
          {
            v14 = objc_opt_class();
            v12 = NSStringFromClass(v14);
            v13 = _IMStoreLogCategoryDefault();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v30 = v10;
              v31 = 2112;
              v32 = v12;
              _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_ERROR, "Non-string key %@ class %@ isn't JSON serializable", buf, 0x16u);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v6);
    }

    v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v24];
  }

  v21 = *MEMORY[0x1E69E9840];

  return v2;
}

@end