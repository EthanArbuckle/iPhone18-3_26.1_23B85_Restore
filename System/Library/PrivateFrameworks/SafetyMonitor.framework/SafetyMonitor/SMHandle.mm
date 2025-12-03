@interface SMHandle
+ (int64_t)getSMHandleTypeWithHandle:(id)handle;
- (BOOL)hasEqualPrimaryHandle:(id)handle;
- (BOOL)isEqual:(id)equal;
- (SMHandle)initWithCoder:(id)coder;
- (SMHandle)initWithDictionary:(id)dictionary;
- (SMHandle)initWithPrimaryHandle:(id)handle secondaryHandles:(id)handles;
- (id)canonicalizedHandle;
- (id)description;
- (id)descriptionDictionary;
- (id)outputToDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMHandle

- (SMHandle)initWithPrimaryHandle:(id)handle secondaryHandles:(id)handles
{
  handleCopy = handle;
  handlesCopy = handles;
  v13.receiver = self;
  v13.super_class = SMHandle;
  v9 = [(SMHandle *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (handleCopy && handlesCopy)
  {
    objc_storeStrong(&v9->_primaryHandle, handle);
    objc_storeStrong(p_isa + 2, handles);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (BOOL)hasEqualPrimaryHandle:(id)handle
{
  handleCopy = handle;
  primaryHandle = [(SMHandle *)self primaryHandle];
  primaryHandle2 = [handleCopy primaryHandle];

  LOBYTE(handleCopy) = [primaryHandle isEqualToString:primaryHandle2];
  return handleCopy;
}

- (id)canonicalizedHandle
{
  v27 = *MEMORY[0x277D85DE8];
  primaryHandle = [(SMHandle *)self primaryHandle];
  v4 = [SMHandleFormatting canonicalIDSAddressForAddress:primaryHandle];
  v5 = v4;
  if (v4)
  {
    primaryHandle2 = v4;
  }

  else
  {
    primaryHandle2 = [(SMHandle *)self primaryHandle];
  }

  v7 = primaryHandle2;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  secondaryHandles = [(SMHandle *)self secondaryHandles];
  v10 = [secondaryHandles countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(secondaryHandles);
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

      v11 = [secondaryHandles countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v19 = [[SMHandle alloc] initWithPrimaryHandle:v7 secondaryHandles:v8];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (int64_t)getSMHandleTypeWithHandle:(id)handle
{
  v12 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (!handleCopy)
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

  if (MEMORY[0x26673CBB0](handleCopy))
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
  primaryHandle = [(SMHandle *)self primaryHandle];
  v7[0] = primaryHandle;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  descriptionDictionary = [(SMHandle *)self descriptionDictionary];
  v4 = [v2 stringWithFormat:@"%@", descriptionDictionary];

  return v4;
}

- (SMHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__kSMPrimaryHandleKey"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"__kSMSecondaryHandlesKey"];

  v10 = [(SMHandle *)self initWithPrimaryHandle:v5 secondaryHandles:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  primaryHandle = self->_primaryHandle;
  coderCopy = coder;
  [coderCopy encodeObject:primaryHandle forKey:@"__kSMPrimaryHandleKey"];
  [coderCopy encodeObject:self->_secondaryHandles forKey:@"__kSMSecondaryHandlesKey"];
}

- (SMHandle)initWithDictionary:(id)dictionary
{
  v13 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy valueForKey:@"__kSMPrimaryHandleKey"];
  v6 = [dictionaryCopy valueForKey:@"__kSMSecondaryHandlesKey"];

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
  primaryHandle = [(SMHandle *)self primaryHandle];
  [v3 setObject:primaryHandle forKey:@"__kSMPrimaryHandleKey"];

  secondaryHandles = [(SMHandle *)self secondaryHandles];
  [v3 setObject:secondaryHandles forKey:@"__kSMSecondaryHandlesKey"];

  return v3;
}

- (unint64_t)hash
{
  primaryHandle = [(SMHandle *)self primaryHandle];
  v4 = [primaryHandle hash];
  secondaryHandles = [(SMHandle *)self secondaryHandles];
  v6 = [secondaryHandles hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      primaryHandle = [(SMHandle *)self primaryHandle];
      primaryHandle2 = [(SMHandle *)v6 primaryHandle];
      if (primaryHandle != primaryHandle2)
      {
        primaryHandle3 = [(SMHandle *)self primaryHandle];
        primaryHandle4 = [(SMHandle *)v6 primaryHandle];
        if (![primaryHandle3 isEqual:primaryHandle4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = primaryHandle3;
      }

      secondaryHandles = [(SMHandle *)self secondaryHandles];
      secondaryHandles2 = [(SMHandle *)v6 secondaryHandles];
      if (secondaryHandles == secondaryHandles2)
      {
        v10 = 1;
      }

      else
      {
        secondaryHandles3 = [(SMHandle *)self secondaryHandles];
        secondaryHandles4 = [(SMHandle *)v6 secondaryHandles];
        v10 = [secondaryHandles3 isEqual:secondaryHandles4];
      }

      primaryHandle3 = v16;
      if (primaryHandle == primaryHandle2)
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