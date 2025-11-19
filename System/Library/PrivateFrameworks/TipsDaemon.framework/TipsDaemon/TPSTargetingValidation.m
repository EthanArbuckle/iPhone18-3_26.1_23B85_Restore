@interface TPSTargetingValidation
- (BOOL)BOOLValue;
- (NSString)description;
- (NSString)name;
- (TPSTargetingValidation)initWithTargetContext:(id)a3;
- (id)arrayValue;
- (id)key;
- (id)stringValue;
- (id)value;
- (int64_t)integerValue;
- (unint64_t)unsignedIntegerValue;
- (void)getCurrentStateWithCompletion:(id)a3;
@end

@implementation TPSTargetingValidation

- (TPSTargetingValidation)initWithTargetContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSTargetingValidation;
  v6 = [(TPSTargetingValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetContext, a3);
  }

  return v7;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
    v3 = name;
  }

  else
  {
    v4 = objc_opt_class();
    v3 = NSStringFromClass(v4);
  }

  return v3;
}

- (id)key
{
  v3 = [(TPSTargetingValidation *)self targetContext];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TPSTargetingValidation *)self targetContext];
    v6 = [v5 allKeys];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)value
{
  v3 = [(TPSTargetingValidation *)self targetContext];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TPSTargetingValidation *)self targetContext];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)BOOLValue
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(TPSTargetingValidation *)self targetContext];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TPSTargetingValidation *)self targetContext];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 BOOLValue];
    }

    else
    {
      v9 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = v10;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, v9, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)integerValue
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(TPSTargetingValidation *)self targetContext];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TPSTargetingValidation *)self targetContext];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 intValue];
    }

    else
    {
      v9 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = v10;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, v9, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unint64_t)unsignedIntegerValue
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(TPSTargetingValidation *)self targetContext];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TPSTargetingValidation *)self targetContext];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 unsignedIntegerValue];
    }

    else
    {
      v9 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = v10;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, v9, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)stringValue
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(TPSTargetingValidation *)self targetContext];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TPSTargetingValidation *)self targetContext];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 stringValue];
    }

    else
    {
      v9 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = v10;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, v9, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)arrayValue
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(TPSTargetingValidation *)self targetContext];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(TPSTargetingValidation *)self targetContext];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v12[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)getCurrentStateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEB68];
  v5 = a3;
  v6 = [v4 null];
  (*(a3 + 2))(v5, v6, 0);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TPSTargetingValidation *)self name];
  v5 = [(TPSTargetingValidation *)self targetContext];
  v6 = [v3 stringWithFormat:@"<%@: %p targetContext = %@; ignoreCache: %d>", v4, self, v5, -[TPSTargetingValidation ignoreCache](self, "ignoreCache")];;

  return v6;
}

@end