@interface TRIVersionedNamespace
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVersionedNamespace:(id)a3;
- (TRIVersionedNamespace)initWithCoder:(id)a3;
- (TRIVersionedNamespace)initWithName:(id)a3 compatibilityVersion:(unsigned int)a4;
- (id)copyWithReplacementName:(id)a3;
- (id)description;
- (id)userFacingString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIVersionedNamespace

- (id)userFacingString
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(TRIVersionedNamespace *)self name];
  v5 = [v3 initWithFormat:@"%@.%u", v4, -[TRIVersionedNamespace compatibilityVersion](self, "compatibilityVersion")];

  return v5;
}

- (TRIVersionedNamespace)initWithName:(id)a3 compatibilityVersion:(unsigned int)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIVersionedNamespace.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIVersionedNamespace;
  v9 = [(TRIVersionedNamespace *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v10->_compatibilityVersion = a4;
  }

  return v10;
}

- (id)copyWithReplacementName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithName:v4 compatibilityVersion:self->_compatibilityVersion];

  return v5;
}

- (BOOL)isEqualToVersionedNamespace:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = self->_name == 0;
  v7 = [v4 name];
  v8 = v7 != 0;

  if (v6 == v8 || (name = self->_name) != 0 && ([v5 name], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](name, "isEqual:", v10), v10, !v11))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    compatibilityVersion = self->_compatibilityVersion;
    v13 = compatibilityVersion == [v5 compatibilityVersion];
  }

  return v13;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIVersionedNamespace *)self isEqualToVersionedNamespace:v5];
  }

  return v6;
}

- (TRIVersionedNamespace)initWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (!v5)
  {
    v8 = [v4 error];

    if (!v8)
    {
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"Retrieved nil serialized value for nonnull TRIVersionedNamespace.name";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 2;
LABEL_9:
      v13 = [v10 initWithDomain:@"TRIVersionedNamespaceOCNTErrorDomain" code:v11 userInfo:v9];
      [v4 failWithError:v13];
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v6 = [v4 decodeInt64ForKey:@"compatibilityVersion"];
  if (!v6)
  {
    v12 = [v4 error];

    if (!v12)
    {
      if ([v4 containsValueForKey:@"compatibilityVersion"])
      {
        goto LABEL_3;
      }

      v16 = *MEMORY[0x277CCA450];
      v17 = @"Missing serialized value for TRIVersionedNamespace.compatibilityVersion";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_3:
  self = [(TRIVersionedNamespace *)self initWithName:v5 compatibilityVersion:v6];
  v7 = self;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = v4;
  if (name)
  {
    [v4 encodeObject:name forKey:@"name"];
    v4 = v6;
  }

  [v4 encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = self->_name;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_compatibilityVersion];
  v6 = [v3 initWithFormat:@"<TRIVersionedNamespace | name:%@ compatibilityVersion:%@>", name, v5];

  return v6;
}

@end