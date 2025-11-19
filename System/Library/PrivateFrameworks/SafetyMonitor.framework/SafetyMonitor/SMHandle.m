@interface SMHandle
+ (int64_t)getSMHandleTypeWithHandle:(id)a3;
- (BOOL)hasEqualPrimaryHandle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SMHandle)initWithCoder:(id)a3;
- (SMHandle)initWithDictionary:(id)a3;
- (SMHandle)initWithPrimaryHandle:(id)a3 secondaryHandles:(id)a4;
- (id)canonicalizedHandle;
- (id)description;
- (id)descriptionDictionary;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMHandle

- (SMHandle)initWithPrimaryHandle:(id)a3 secondaryHandles:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SMHandle;
  v9 = [(SMHandle *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v7 && v8)
  {
    objc_storeStrong(&v9->_primaryHandle, a3);
    objc_storeStrong(p_isa + 2, a4);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (BOOL)hasEqualPrimaryHandle:(id)a3
{
  v4 = a3;
  v5 = [(SMHandle *)self primaryHandle];
  v6 = [v4 primaryHandle];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)canonicalizedHandle
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(SMHandle *)self primaryHandle];
  v4 = [SMHandleFormatting canonicalIDSAddressForAddress:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(SMHandle *)self primaryHandle];
  }

  v7 = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(SMHandle *)self secondaryHandles];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [SMHandleFormatting canonicalIDSAddressForAddress:v14];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17;

        if (v18)
        {
          [v8 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [[SMHandle alloc] initWithPrimaryHandle:v7 secondaryHandles:v8];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (int64_t)getSMHandleTypeWithHandle:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "+[SMHandle getSMHandleTypeWithHandle:]";
      v10 = 1024;
      v11 = 54;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handle (in %s:%d)", &v8, 0x12u);
    }
  }

  if (MEMORY[0x26673CBB0](v3))
  {
    v5 = 1;
  }

  else if (IMStringIsEmail())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)descriptionDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"__kSMPrimaryHandleKey";
  v2 = [(SMHandle *)self primaryHandle];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SMHandle *)self descriptionDictionary];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (SMHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__kSMPrimaryHandleKey"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"__kSMSecondaryHandlesKey"];

  v10 = [(SMHandle *)self initWithPrimaryHandle:v5 secondaryHandles:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  primaryHandle = self->_primaryHandle;
  v5 = a3;
  [v5 encodeObject:primaryHandle forKey:@"__kSMPrimaryHandleKey"];
  [v5 encodeObject:self->_secondaryHandles forKey:@"__kSMSecondaryHandlesKey"];
}

- (SMHandle)initWithDictionary:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForKey:@"__kSMPrimaryHandleKey"];
  v6 = [v4 valueForKey:@"__kSMSecondaryHandlesKey"];

  if ([v5 length])
  {
    v7 = [[SMHandle alloc] initWithPrimaryHandle:v5 secondaryHandles:v6];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[SMHandle initWithDictionary:]";
      _os_log_error_impl(&dword_26455D000, v8, OS_LOG_TYPE_ERROR, "%s, toHandleString is empty", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)outputToDictionary
{
  v3 = objc_opt_new();
  v4 = [(SMHandle *)self primaryHandle];
  [v3 setObject:v4 forKey:@"__kSMPrimaryHandleKey"];

  v5 = [(SMHandle *)self secondaryHandles];
  [v3 setObject:v5 forKey:@"__kSMSecondaryHandlesKey"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SMHandle *)self primaryHandle];
  v4 = [v3 hash];
  v5 = [(SMHandle *)self secondaryHandles];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(SMHandle *)self primaryHandle];
      v8 = [(SMHandle *)v6 primaryHandle];
      if (v7 != v8)
      {
        v9 = [(SMHandle *)self primaryHandle];
        v3 = [(SMHandle *)v6 primaryHandle];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(SMHandle *)self secondaryHandles];
      v12 = [(SMHandle *)v6 secondaryHandles];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(SMHandle *)self secondaryHandles];
        v14 = [(SMHandle *)v6 secondaryHandles];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

@end