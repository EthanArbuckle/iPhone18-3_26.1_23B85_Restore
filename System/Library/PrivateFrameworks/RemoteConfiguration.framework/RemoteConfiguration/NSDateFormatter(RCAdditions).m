@interface NSDateFormatter(RCAdditions)
+ (id)dateFormatterWithFormat:()RCAdditions localeIdentifier:timezone:forReuse:;
- (void)initWithFormat:()RCAdditions localeIdentifier:;
@end

@implementation NSDateFormatter(RCAdditions)

+ (id)dateFormatterWithFormat:()RCAdditions localeIdentifier:timezone:forReuse:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[NSDateFormatter(RCAdditions) dateFormatterWithFormat:localeIdentifier:timezone:forReuse:];
      if (!v10)
      {
LABEL_9:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          +[NSDateFormatter(RCAdditions) dateFormatterWithFormat:localeIdentifier:timezone:forReuse:];
        }
      }
    }

    else if (!v10)
    {
      goto LABEL_9;
    }

    v18 = 0;
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCACC8] currentThread];
  v13 = [v12 threadDictionary];
  v14 = [v13 objectForKey:@"NSDateFormatter_RCAdditions_CachedFormatters"];

  if (!v14)
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [MEMORY[0x277CCACC8] currentThread];
    v16 = [v15 threadDictionary];
    [v16 setObject:v14 forKey:@"NSDateFormatter_RCAdditions_CachedFormatters"];
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v9, v10];
  v18 = [v14 objectForKey:v17];
  if (!v18)
  {
    v20 = [objc_alloc(MEMORY[0x277CCA968]) initWithFormat:v9 localeIdentifier:v10];
    v18 = v20;
    if (v11)
    {
      [v20 setTimeZone:v11];
    }

    if (v18)
    {
      if (a6)
      {
        [v14 setObject:v18 forKey:v17];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[NSDateFormatter(RCAdditions) dateFormatterWithFormat:localeIdentifier:timezone:forReuse:];
      }

      v18 = 0;
    }
  }

LABEL_12:

  return v18;
}

- (void)initWithFormat:()RCAdditions localeIdentifier:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 init];
  v9 = v8;
  if (v8)
  {
    [v8 setDateFormat:v6];
    v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v7];
    [v9 setLocale:v10];
  }

  return v9;
}

+ (void)dateFormatterWithFormat:()RCAdditions localeIdentifier:timezone:forReuse:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"invalid nil value for '%s'"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "formatter", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)dateFormatterWithFormat:()RCAdditions localeIdentifier:timezone:forReuse:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "format != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)dateFormatterWithFormat:()RCAdditions localeIdentifier:timezone:forReuse:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "localeIdentifier != nil", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end