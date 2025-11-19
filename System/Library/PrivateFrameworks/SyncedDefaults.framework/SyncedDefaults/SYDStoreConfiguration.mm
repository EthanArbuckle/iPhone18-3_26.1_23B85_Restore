@interface SYDStoreConfiguration
- (BOOL)isEqual:(id)a3;
- (SYDStoreConfiguration)init;
- (SYDStoreConfiguration)initWithCoder:(id)a3;
- (SYDStoreConfiguration)initWithStoreID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYDStoreConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDStoreConfiguration *)self storeID];
  v7 = [v3 stringWithFormat:@"<%@: %p storeID=%@", v5, self, v6];;

  v8 = [(SYDStoreConfiguration *)self entitlementOverrides];

  if (v8)
  {
    v9 = [(SYDStoreConfiguration *)self entitlementOverrides];
    [v7 appendFormat:@" entitlementOverrides=%@", v9];
  }

  [v7 appendString:@">"];

  return v7;
}

- (SYDStoreConfiguration)initWithStoreID:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SYDStoreConfiguration *)self initWithStoreID:a2];
  }

  v13.receiver = self;
  v13.super_class = SYDStoreConfiguration;
  v7 = [(SYDStoreConfiguration *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_storeID, a3);
    v9 = [MEMORY[0x1E696AE30] processInfo];
    v10 = [v9 processName];
    processName = v8->_processName;
    v8->_processName = v10;
  }

  return v8;
}

- (SYDStoreConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(sel_initWithStoreID_);
  [v4 handleFailureInMethod:a2 object:self file:@"SYDStoreConfiguration.m" lineNumber:40 description:{@"Use -[%@ %@]", v6, v7}];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(SYDStoreConfiguration *)self storeID];
  v4 = [v3 hash];
  v5 = [(SYDStoreConfiguration *)self processName];
  v6 = [v5 hash] ^ v4;

  v7 = [(SYDStoreConfiguration *)self entitlementOverrides];

  if (v7)
  {
    v8 = [(SYDStoreConfiguration *)self entitlementOverrides];
    v6 ^= [v8 hash];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 storeID];
    v7 = [(SYDStoreConfiguration *)self storeID];
    v8 = [v6 isEqual:v7];

    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = [v5 processName];
    v10 = [(SYDStoreConfiguration *)self processName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [v5 entitlementOverrides];
    v13 = [v12 count];
    v14 = [(SYDStoreConfiguration *)self entitlementOverrides];
    v15 = [v14 count];

    if (v13 == v15)
    {
      v16 = [v5 entitlementOverrides];
      if (v16)
      {
        v17 = v16;
        v18 = [(SYDStoreConfiguration *)self entitlementOverrides];
        if (v18)
        {
          v19 = v18;
          v20 = [v5 entitlementOverrides];
          v21 = [(SYDStoreConfiguration *)self entitlementOverrides];
          v22 = [v20 isEqual:v21];
        }

        else
        {
          v22 = 1;
        }
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
LABEL_9:
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SYDStoreConfiguration alloc];
  v5 = [(SYDStoreConfiguration *)self storeID];
  v6 = [v5 copy];
  v7 = [(SYDStoreConfiguration *)v4 initWithStoreID:v6];

  v8 = [(SYDStoreConfiguration *)self processName];
  v9 = [v8 copy];
  [(SYDStoreConfiguration *)v7 setProcessName:v9];

  v10 = [(SYDStoreConfiguration *)self entitlementOverrides];
  v11 = [v10 copy];
  [(SYDStoreConfiguration *)v7 setEntitlementOverrides:v11];

  return v7;
}

- (SYDStoreConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SYDStoreConfiguration;
  v5 = [(SYDStoreConfiguration *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    storeID = v5->_storeID;
    v5->_storeID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    processName = v5->_processName;
    v5->_processName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"e"];
    entitlementOverrides = v5->_entitlementOverrides;
    v5->_entitlementOverrides = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  storeID = self->_storeID;
  v5 = a3;
  [v5 encodeObject:storeID forKey:@"s"];
  [v5 encodeObject:self->_processName forKey:@"n"];
  [v5 encodeObject:self->_entitlementOverrides forKey:@"e"];
}

- (void)initWithStoreID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SYDStoreConfiguration.m" lineNumber:29 description:{@"Must specify a non-nil storeID when initializing %@", v5}];
}

@end