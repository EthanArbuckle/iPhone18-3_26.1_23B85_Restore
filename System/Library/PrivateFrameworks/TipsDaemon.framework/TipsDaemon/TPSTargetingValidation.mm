@interface TPSTargetingValidation
- (BOOL)BOOLValue;
- (NSString)description;
- (NSString)name;
- (TPSTargetingValidation)initWithTargetContext:(id)context;
- (id)arrayValue;
- (id)key;
- (id)stringValue;
- (id)value;
- (int64_t)integerValue;
- (unint64_t)unsignedIntegerValue;
- (void)getCurrentStateWithCompletion:(id)completion;
@end

@implementation TPSTargetingValidation

- (TPSTargetingValidation)initWithTargetContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TPSTargetingValidation;
  v6 = [(TPSTargetingValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetContext, context);
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
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v4 = [targetContext count];

  if (v4 == 1)
  {
    targetContext2 = [(TPSTargetingValidation *)self targetContext];
    allKeys = [targetContext2 allKeys];
    firstObject = [allKeys firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)value
{
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v4 = [targetContext count];

  if (v4 == 1)
  {
    targetContext2 = [(TPSTargetingValidation *)self targetContext];
    allValues = [targetContext2 allValues];
    firstObject = [allValues firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)BOOLValue
{
  v24 = *MEMORY[0x277D85DE8];
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v4 = [targetContext count];

  if (v4 == 1)
  {
    targetContext2 = [(TPSTargetingValidation *)self targetContext];
    allValues = [targetContext2 allValues];
    firstObject = [allValues firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [firstObject BOOLValue];
    }

    else
    {
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
      {
        name = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = name;
        v18 = 2112;
        v19 = firstObject;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (int64_t)integerValue
{
  v24 = *MEMORY[0x277D85DE8];
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v4 = [targetContext count];

  if (v4 == 1)
  {
    targetContext2 = [(TPSTargetingValidation *)self targetContext];
    allValues = [targetContext2 allValues];
    firstObject = [allValues firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [firstObject intValue];
    }

    else
    {
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
      {
        name = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = name;
        v18 = 2112;
        v19 = firstObject;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      intValue = 0;
    }
  }

  else
  {
    intValue = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return intValue;
}

- (unint64_t)unsignedIntegerValue
{
  v24 = *MEMORY[0x277D85DE8];
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v4 = [targetContext count];

  if (v4 == 1)
  {
    targetContext2 = [(TPSTargetingValidation *)self targetContext];
    allValues = [targetContext2 allValues];
    firstObject = [allValues firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [firstObject unsignedIntegerValue];
    }

    else
    {
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
      {
        name = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = name;
        v18 = 2112;
        v19 = firstObject;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      unsignedIntegerValue = 0;
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (id)stringValue
{
  v24 = *MEMORY[0x277D85DE8];
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v4 = [targetContext count];

  if (v4 == 1)
  {
    targetContext2 = [(TPSTargetingValidation *)self targetContext];
    allValues = [targetContext2 allValues];
    firstObject = [allValues firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [firstObject stringValue];
    }

    else
    {
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
      {
        name = [(TPSTargetingValidation *)self name];
        v11 = objc_opt_class();
        v12 = v11;
        v16 = 138413058;
        v17 = name;
        v18 = 2112;
        v19 = firstObject;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = objc_opt_class();
        v13 = v23;
        _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_INFO, "[%@] Unexpected value: %@ with class: %@. Expected type: %@.", &v16, 0x2Au);
      }

      stringValue = 0;
    }
  }

  else
  {
    stringValue = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return stringValue;
}

- (id)arrayValue
{
  v12[1] = *MEMORY[0x277D85DE8];
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v4 = [targetContext count];

  if (v4 == 1)
  {
    targetContext2 = [(TPSTargetingValidation *)self targetContext];
    allValues = [targetContext2 allValues];
    firstObject = [allValues firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = firstObject;
    }

    else
    {
      v12[0] = firstObject;
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

- (void)getCurrentStateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEB68];
  completionCopy = completion;
  null = [v4 null];
  (*(completion + 2))(completionCopy, null, 0);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(TPSTargetingValidation *)self name];
  targetContext = [(TPSTargetingValidation *)self targetContext];
  v6 = [v3 stringWithFormat:@"<%@: %p targetContext = %@; ignoreCache: %d>", name, self, targetContext, -[TPSTargetingValidation ignoreCache](self, "ignoreCache")];;

  return v6;
}

@end