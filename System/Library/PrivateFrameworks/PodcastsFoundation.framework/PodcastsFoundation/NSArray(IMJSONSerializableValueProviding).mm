@interface NSArray(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSArray(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  v27 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:self])
  {
    selfCopy = self;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    selfCopy2 = self;
    v5 = [selfCopy2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v19;
      *&v6 = 138412546;
      v17 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(selfCopy2);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = jsonSerializableValueForValue(v10);
          if (!v11)
          {
            v11 = v10;
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v14 = _IMStoreLogCategoryDefault();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v23 = v11;
              v24 = 2112;
              v25 = v13;
              _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_ERROR, "Object %@ of class %@ isn't JSON serializable", buf, 0x16u);
            }
          }

          [v3 addObject:{v11, v17, v18}];
        }

        v7 = [selfCopy2 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v7);
    }

    selfCopy = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  }

  v15 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

@end