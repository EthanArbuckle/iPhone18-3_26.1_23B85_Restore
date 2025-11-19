@interface STListData
- (BOOL)isEqual:(id)a3;
- (NSArray)objects;
- (STListData)init;
- (STListData)initWithCoder:(id)a3;
- (STListData)initWithObjects:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithListData:(void *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation STListData

- (NSArray)objects
{
  v2 = [(NSMutableArray *)self->_objects copy];

  return v2;
}

- (STListData)init
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(STListData *)self initWithObjects:v3];

  return v4;
}

- (unint64_t)count
{
  v2 = [(STListData *)self objects];
  v3 = [v2 count];

  return v3;
}

uint64_t __35__STListData__encodableObjectTypes__block_invoke()
{
  v18 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
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
  _MergedGlobals_12 = [v18 setWithObjects:{v17, v16, v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initWithListData:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 objects];
    v2 = [v2 initWithObjects:v3];
  }

  return v2;
}

- (STListData)initWithObjects:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STListData;
  v5 = [(STListData *)&v11 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] array];
    }

    objects = v5->_objects;
    v5->_objects = v8;
  }

  return v5;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(STListData *)self objects];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__STListData_enumerateObjectsUsingBlock___block_invoke;
    v6[3] = &unk_1E85DECC0;
    v7 = v4;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = objc_alloc(MEMORY[0x1E696AB50]);
  v7 = [(STListData *)self objects];
  v8 = [v6 initWithArray:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __22__STListData_isEqual___block_invoke;
  v12[3] = &unk_1E85DECE8;
  v13 = v4;
  v9 = v4;
  v10 = [v5 appendObject:v8 counterpart:v12];

  LOBYTE(v7) = [v5 isEqual];
  return v7;
}

id __22__STListData_isEqual___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AB50]);
  v3 = [*(a1 + 32) objects];
  v4 = [v2 initWithArray:v3];

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = objc_alloc(MEMORY[0x1E696AB50]);
  v5 = [(STListData *)self objects];
  v6 = [v4 initWithArray:v5];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableListData allocWithZone:a3];

  return [(STListData *)v4 initWithListData:?];
}

- (id)succinctDescription
{
  v2 = [(STListData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STListData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STListData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  if (a1)
  {
    v5 = a2;
    v6 = [a1 succinctDescriptionBuilder];
    [v6 setActiveMultilinePrefix:v5];

    [v6 setUseDebugDescription:a3];
    v7 = [a1 objects];
    v8 = [v6 activeMultilinePrefix];
    [v6 appendArraySection:v7 withName:0 multilinePrefix:v8 skipIfEmpty:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STListDataDiff diffFromListData:v4 toListData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEmpty])
    {
      v5 = [(STListData *)self copy];
    }

    else
    {
      v5 = [(STListData *)self mutableCopy];
      [v4 applyToMutableListData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STListData *)self objects];
  [v4 encodeObject:v5 forKey:@"objects"];
}

- (STListData)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_self();
  if (qword_1ED7F5D28 != -1)
  {
    dispatch_once(&qword_1ED7F5D28, &__block_literal_global_14);
  }

  v5 = _MergedGlobals_12;
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"objects"];

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    self = [(STListData *)self initWithObjects:v8];
    v9 = self;
  }

  else
  {
    v10 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "decoded invalid list data", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

@end