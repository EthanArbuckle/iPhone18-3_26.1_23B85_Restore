@interface SYDManagedKeyValue
- (id)value;
- (void)setValue:(id)value;
- (void)value;
@end

@implementation SYDManagedKeyValue

- (id)value
{
  plistDataValue = [(SYDManagedKeyValue *)self plistDataValue];

  if (plistDataValue)
  {
    v4 = MEMORY[0x277CCAC58];
    plistDataValue2 = [(SYDManagedKeyValue *)self plistDataValue];
    v10 = 0;
    v6 = [v4 propertyListWithData:plistDataValue2 options:0 format:0 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = SYDGetCloudKitLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SYDManagedKeyValue *)v7 value];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setValue:(id)value
{
  if (value)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:value format:200 options:0 error:&v9];
    v5 = v9;
    v6 = v5;
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      [(SYDManagedKeyValue *)self setPlistDataValue:v4];
    }

    else
    {
      v8 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SYDManagedKeyValue *)v6 setValue:v8];
      }
    }
  }

  else
  {

    [(SYDManagedKeyValue *)self setPlistDataValue:?];
  }
}

- (void)value
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_26C384000, a2, OS_LOG_TYPE_ERROR, "Error decoding plist value data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26C384000, a2, OS_LOG_TYPE_ERROR, "Error generating plist value: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end