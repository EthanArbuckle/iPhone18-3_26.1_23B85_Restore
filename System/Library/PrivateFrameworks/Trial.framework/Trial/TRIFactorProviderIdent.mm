@interface TRIFactorProviderIdent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdent:(id)ident;
- (TRIFactorProviderIdent)initWithCoder:(id)coder;
- (TRIFactorProviderIdent)initWithType:(unsigned __int8)type value:(id)value;
- (id)copyWithReplacementValue:(id)value;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIFactorProviderIdent

- (TRIFactorProviderIdent)initWithType:(unsigned __int8)type value:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1420 description:{@"Invalid parameter not satisfying: %@", @"value != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIFactorProviderIdent;
  v9 = [(TRIFactorProviderIdent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    objc_storeStrong(&v9->_value, value);
  }

  return v10;
}

- (id)copyWithReplacementValue:(id)value
{
  valueCopy = value;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type value:valueCopy];

  return v5;
}

- (BOOL)isEqualToIdent:(id)ident
{
  identCopy = ident;
  v5 = identCopy;
  if (identCopy && (type = self->_type, type == [identCopy type]) && (v7 = self->_value == 0, objc_msgSend(v5, "value"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 != v9))
  {
    value = self->_value;
    if (value)
    {
      value = [v5 value];
      v12 = [(NSString *)value isEqual:value];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorProviderIdent *)self isEqualToIdent:v5];
  }

  return v6;
}

- (TRIFactorProviderIdent)initWithCoder:(id)coder
{
  v27[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"type"];
  if (v5)
  {
    goto LABEL_2;
  }

  error = [coderCopy error];

  if (!error)
  {
    if (([coderCopy containsValueForKey:@"type"] & 1) == 0)
    {
      v26 = *MEMORY[0x277CCA450];
      v27[0] = @"Missing serialized value for TRIFactorProviderIdent.type";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFactorProviderIdentOCNTErrorDomain" code:1 userInfo:v7];
      [coderCopy failWithError:v14];
      goto LABEL_13;
    }

LABEL_2:
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    if (!v6)
    {
      error2 = [coderCopy error];

      if (!error2)
      {
        v24 = *MEMORY[0x277CCA450];
        v25 = @"Retrieved nil serialized value for nonnull TRIFactorProviderIdent.value";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFactorProviderIdentOCNTErrorDomain" code:2 userInfo:v11];
        [coderCopy failWithError:v12];
      }

      v7 = 0;
      goto LABEL_14;
    }

    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(TRIFactorProviderIdent *)self initWithType:v5 value:v7];
      selfCopy = self;
LABEL_15:

      goto LABEL_16;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIFactorProviderIdent key value (expected %@, decoded %@)", v14, v16, 0];
    v22 = *MEMORY[0x277CCA450];
    v23 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFactorProviderIdentOCNTErrorDomain" code:3 userInfo:v18];
    [coderCopy failWithError:v19];

LABEL_13:
LABEL_14:
    selfCopy = 0;
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_type forKey:@"type"];
  value = self->_value;
  if (value)
  {
    [coderCopy encodeObject:value forKey:@"value"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_type];
  v5 = [v3 initWithFormat:@"<TRIFactorProviderIdent | type:%@ value:%@>", v4, self->_value];

  return v5;
}

@end