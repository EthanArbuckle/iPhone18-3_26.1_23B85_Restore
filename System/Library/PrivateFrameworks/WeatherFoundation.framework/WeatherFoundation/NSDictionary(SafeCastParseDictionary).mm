@interface NSDictionary(SafeCastParseDictionary)
+ (double)doubleValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:;
+ (float)floatValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:;
+ (id)stringValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:;
+ (uint64_t)integerValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:;
- (id)arrayForKey:()SafeCastParseDictionary;
- (id)dictionaryForKey:()SafeCastParseDictionary;
- (id)numberForKey:()SafeCastParseDictionary;
- (id)stringForKey:()SafeCastParseDictionary;
- (uint64_t)BOOLForKey:()SafeCastParseDictionary defaultValue:;
@end

@implementation NSDictionary(SafeCastParseDictionary)

+ (float)floatValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    null = [MEMORY[0x277CBEB68] null];
    v10 = [v7 isEqual:null];

    if ((v10 & 1) == 0)
    {
      v11 = [v7 numberForKey:v8];
      if (v11 && ([MEMORY[0x277CBEB68] null], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, (v13 & 1) == 0))
      {
        [v11 floatValue];
        self = v15;
      }

      else
      {
        v14 = WFLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          +[NSDictionary(SafeCastParseDictionary) floatValueFromDictionary:forKey:defaultValue:];
        }
      }
    }
  }

  return self;
}

+ (double)doubleValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    null = [MEMORY[0x277CBEB68] null];
    v10 = [v7 isEqual:null];

    if ((v10 & 1) == 0)
    {
      v11 = [v7 numberForKey:v8];
      if (v11 && ([MEMORY[0x277CBEB68] null], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, (v13 & 1) == 0))
      {
        [v11 doubleValue];
        self = v15;
      }

      else
      {
        v14 = WFLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          +[NSDictionary(SafeCastParseDictionary) doubleValueFromDictionary:forKey:defaultValue:];
        }
      }
    }
  }

  return self;
}

+ (uint64_t)integerValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    null = [MEMORY[0x277CBEB68] null];
    v10 = [v7 isEqual:null];

    if ((v10 & 1) == 0)
    {
      v11 = [v7 numberForKey:v8];
      if (v11 && ([MEMORY[0x277CBEB68] null], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, (v13 & 1) == 0))
      {
        a5 = [v11 integerValue];
      }

      else
      {
        v14 = WFLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [NSDictionary(SafeCastParseDictionary) integerValueFromDictionary:v8 forKey:a5 defaultValue:v14];
        }
      }
    }
  }

  return a5;
}

+ (id)stringValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && ([MEMORY[0x277CBEB68] null], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v7, "isEqual:", v10), v10, !v11))
  {
    v13 = [v7 stringForKey:v8];
    if (!v13 || ([MEMORY[0x277CBEB68] null], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v16 = v13, v15))
    {
      v17 = WFLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [NSDictionary(SafeCastParseDictionary) stringValueFromDictionary:v8 forKey:v9 defaultValue:v17];
      }

      v16 = v9;
    }

    v12 = v16;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)dictionaryForKey:()SafeCastParseDictionary
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)arrayForKey:()SafeCastParseDictionary
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)numberForKey:()SafeCastParseDictionary
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)stringForKey:()SafeCastParseDictionary
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)BOOLForKey:()SafeCastParseDictionary defaultValue:
{
  v5 = [self numberForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

+ (void)floatValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_272B94000, v0, OS_LOG_TYPE_DEBUG, "Missing integer value for key: %{public}@ defaultValue: %ld", v1, 0x16u);
}

+ (void)doubleValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_272B94000, v0, OS_LOG_TYPE_DEBUG, "Missing integer value for key: %{public}@ defaultValue: %ld", v1, 0x16u);
}

+ (void)integerValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_272B94000, a2, a3, "Missing integer value for key: %{public}@ defaultValue: %ld", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

+ (void)stringValueFromDictionary:()SafeCastParseDictionary forKey:defaultValue:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_272B94000, a2, a3, "Missing string value for key: %{public}@ defaultValue: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end