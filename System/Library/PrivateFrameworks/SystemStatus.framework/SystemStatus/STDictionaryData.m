@interface STDictionaryData
- (BOOL)isEqual:(id)a3;
- (BOOL)validateObjectsAndKeysWithValidObjectClasses:(id)a3 keyClasses:(id)a4;
- (NSDictionary)objectsAndKeys;
- (STDictionaryData)init;
- (STDictionaryData)initWithCoder:(id)a3;
- (STDictionaryData)initWithObjectsAndKeys:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
@end

@implementation STDictionaryData

- (STDictionaryData)init
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(STDictionaryData *)self initWithObjectsAndKeys:v3];

  return v4;
}

- (NSDictionary)objectsAndKeys
{
  v2 = [(NSMutableDictionary *)self->_objectsAndKeys copy];

  return v2;
}

- (unint64_t)count
{
  v2 = [(STDictionaryData *)self allKeys];
  v3 = [v2 count];

  return v3;
}

- (STDictionaryData)initWithObjectsAndKeys:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STDictionaryData;
  v5 = [(STDictionaryData *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    objectsAndKeys = v5->_objectsAndKeys;
    v5->_objectsAndKeys = v6;
  }

  return v5;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  if (a3)
  {
    objectsAndKeys = self->_objectsAndKeys;
    v4 = a3;
    v5 = [(NSMutableDictionary *)objectsAndKeys copy];
    [v5 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STDictionaryData *)self objectsAndKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__STDictionaryData_isEqual___block_invoke;
  v10[3] = &unk_1E85DE848;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:v6 counterpart:v10];

  LOBYTE(v6) = [v5 isEqual];
  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __24__STDictionaryData_hash__block_invoke;
  v7[3] = &unk_1E85DE870;
  v8 = v3;
  v4 = v3;
  [(STDictionaryData *)self enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 hash];

  return v5;
}

void __24__STDictionaryData_hash__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) appendObject:a2];
  v6 = [*(a1 + 32) appendObject:v7];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableDictionaryData allocWithZone:a3];
  v5 = [(STDictionaryData *)self objectsAndKeys];
  v6 = [(STDictionaryData *)v4 initWithObjectsAndKeys:v5];

  return v6;
}

- (id)succinctDescription
{
  v2 = [(STDictionaryData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STDictionaryData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STDictionaryData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  if (a1)
  {
    v5 = a2;
    v6 = [a1 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    [v6 setActiveMultilinePrefix:v5];

    [v6 appendDictionarySection:a1[1] withName:@"dictionaryData" skipIfEmpty:0];
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
    v5 = [STDictionaryDataDiff diffFromDictionaryData:v4 toDictionaryData:self];
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
      v5 = [(STDictionaryData *)self copy];
    }

    else
    {
      v5 = [(STDictionaryData *)self mutableCopy];
      [v4 applyToMutableDictionaryData:v5];
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
  v5 = [(STDictionaryData *)self objectsAndKeys];
  [v4 encodeObject:v5 forKey:@"objectsAndKeys"];
}

- (STDictionaryData)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_self();
  if (qword_1ED7F5D08 != -1)
  {
    dispatch_once(&qword_1ED7F5D08, &__block_literal_global_17);
  }

  v5 = _MergedGlobals_10;
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"objectsAndKeys"];

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
    self = [(STDictionaryData *)self initWithObjectsAndKeys:v8];
    v9 = self;
  }

  else
  {
    v10 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "decoded invalid dictionary data", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)validateObjectsAndKeysWithValidObjectClasses:(id)a3 keyClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  objectsAndKeys = self->_objectsAndKeys;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__STDictionaryData_validateObjectsAndKeysWithValidObjectClasses_keyClasses___block_invoke;
  v12[3] = &unk_1E85DE8C0;
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v14 = v10;
  v15 = &v16;
  [(NSMutableDictionary *)objectsAndKeys enumerateKeysAndObjectsUsingBlock:v12];
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

void __76__STDictionaryData_validateObjectsAndKeysWithValidObjectClasses_keyClasses___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[4];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__STDictionaryData_validateObjectsAndKeysWithValidObjectClasses_keyClasses___block_invoke_2;
  v16[3] = &unk_1E85DE898;
  v10 = v7;
  v17 = v10;
  LODWORD(v9) = [v9 bs_containsObjectPassingTest:v16];
  v11 = a1[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__STDictionaryData_validateObjectsAndKeysWithValidObjectClasses_keyClasses___block_invoke_3;
  v14[3] = &unk_1E85DE898;
  v12 = v8;
  v15 = v12;
  v13 = [v11 bs_containsObjectPassingTest:v14];
  if (!v9 || (v13 & 1) == 0)
  {
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 0;
  }
}

uint64_t __41__STDictionaryData__encodableObjectTypes__block_invoke()
{
  v20 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
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
  v10 = [v20 setWithObjects:{v19, v18, v17, v16, v15, v14, v13, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = _MergedGlobals_10;
  _MergedGlobals_10 = v10;

  return MEMORY[0x1EEE66BB8](v10, v11);
}

@end