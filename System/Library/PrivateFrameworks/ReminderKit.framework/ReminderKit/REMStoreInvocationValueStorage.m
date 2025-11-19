@interface REMStoreInvocationValueStorage
- (BOOL)isEqual:(id)a3;
- (REMStoreInvocationValueStorage)init;
- (REMStoreInvocationValueStorage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)storedPropertyForKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)storeProperty:(id)a3 forKey:(id)a4;
@end

@implementation REMStoreInvocationValueStorage

- (REMStoreInvocationValueStorage)init
{
  v6.receiver = self;
  v6.super_class = REMStoreInvocationValueStorage;
  v2 = [(REMStoreInvocationValueStorage *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    valueStorage = v2->_valueStorage;
    v2->_valueStorage = v3;
  }

  return v2;
}

- (REMStoreInvocationValueStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMStoreInvocationValueStorage;
  v5 = [(REMStoreInvocationValueStorage *)&v9 init];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [REMStoreInvocationValueStorage initWithCoder:];
    }

    v6 = [v4 decodeObjectOfClasses:initWithCoder____sClasses forKey:@"valueStorage"];
    valueStorage = v5->_valueStorage;
    v5->_valueStorage = v6;
  }

  return v5;
}

uint64_t __48__REMStoreInvocationValueStorage_initWithCoder___block_invoke()
{
  v17 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  initWithCoder____sClasses = [v17 setWithObjects:{v16, v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMStoreInvocationValueStorage *)self valueStorage];
  [v4 encodeObject:v5 forKey:@"valueStorage"];
}

- (void)storeProperty:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMStoreInvocationValueStorage *)self valueStorage];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (id)storedPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(REMStoreInvocationValueStorage *)self valueStorage];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(REMStoreInvocationValueStorage *)self valueStorage];
  v7 = [v6 copyWithZone:a3];
  [v5 setValueStorage:v7];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 valueStorage];
    v6 = [(REMStoreInvocationValueStorage *)self valueStorage];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [v4 valueStorage];
      v8 = [(REMStoreInvocationValueStorage *)self valueStorage];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(REMStoreInvocationValueStorage *)self valueStorage];
  v5 = v3 ^ [v4 hash];

  return v5 ^ 0x1F;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMStoreInvocationValueStorage *)self valueStorage];
  v6 = [v3 stringWithFormat:@"<%@: %p valueStorage: %@>", v4, self, v5];

  return v6;
}

@end