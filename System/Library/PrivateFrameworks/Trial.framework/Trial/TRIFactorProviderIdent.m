@interface TRIFactorProviderIdent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdent:(id)a3;
- (TRIFactorProviderIdent)initWithCoder:(id)a3;
- (TRIFactorProviderIdent)initWithType:(unsigned __int8)a3 value:(id)a4;
- (id)copyWithReplacementValue:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIFactorProviderIdent

- (TRIFactorProviderIdent)initWithType:(unsigned __int8)a3 value:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1420 description:{@"Invalid parameter not satisfying: %@", @"value != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIFactorProviderIdent;
  v9 = [(TRIFactorProviderIdent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = a3;
    objc_storeStrong(&v9->_value, a4);
  }

  return v10;
}

- (id)copyWithReplacementValue:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type value:v4];

  return v5;
}

- (BOOL)isEqualToIdent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (type = self->_type, type == [v4 type]) && (v7 = self->_value == 0, objc_msgSend(v5, "value"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 != 0, v8, v7 != v9))
  {
    value = self->_value;
    if (value)
    {
      v11 = [v5 value];
      v12 = [(NSString *)value isEqual:v11];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorProviderIdent *)self isEqualToIdent:v5];
  }

  return v6;
}

- (TRIFactorProviderIdent)initWithCoder:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"type"];
  if (v5)
  {
    goto LABEL_2;
  }

  v9 = [v4 error];

  if (!v9)
  {
    if (([v4 containsValueForKey:@"type"] & 1) == 0)
    {
      v26 = *MEMORY[0x277CCA450];
      v27[0] = @"Missing serialized value for TRIFactorProviderIdent.type";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFactorProviderIdentOCNTErrorDomain" code:1 userInfo:v7];
      [v4 failWithError:v14];
      goto LABEL_13;
    }

LABEL_2:
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    if (!v6)
    {
      v10 = [v4 error];

      if (!v10)
      {
        v24 = *MEMORY[0x277CCA450];
        v25 = @"Retrieved nil serialized value for nonnull TRIFactorProviderIdent.value";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIFactorProviderIdentOCNTErrorDomain" code:2 userInfo:v11];
        [v4 failWithError:v12];
      }

      v7 = 0;
      goto LABEL_14;
    }

    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(TRIFactorProviderIdent *)self initWithType:v5 value:v7];
      v8 = self;
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
    [v4 failWithError:v19];

LABEL_13:
LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:self->_type forKey:@"type"];
  value = self->_value;
  if (value)
  {
    [v5 encodeObject:value forKey:@"value"];
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