@interface STDictionaryData
- (BOOL)isEqual:(id)equal;
- (BOOL)validateObjectsAndKeysWithValidObjectClasses:(id)classes keyClasses:(id)keyClasses;
- (NSDictionary)objectsAndKeys;
- (STDictionaryData)init;
- (STDictionaryData)initWithCoder:(id)coder;
- (STDictionaryData)initWithObjectsAndKeys:(id)keys;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
@end

@implementation STDictionaryData

- (STDictionaryData)init
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(STDictionaryData *)self initWithObjectsAndKeys:dictionary];

  return v4;
}

- (NSDictionary)objectsAndKeys
{
  v2 = [(NSMutableDictionary *)self->_objectsAndKeys copy];

  return v2;
}

- (unint64_t)count
{
  allKeys = [(STDictionaryData *)self allKeys];
  v3 = [allKeys count];

  return v3;
}

- (STDictionaryData)initWithObjectsAndKeys:(id)keys
{
  keysCopy = keys;
  v9.receiver = self;
  v9.super_class = STDictionaryData;
  v5 = [(STDictionaryData *)&v9 init];
  if (v5)
  {
    v6 = [keysCopy mutableCopy];
    objectsAndKeys = v5->_objectsAndKeys;
    v5->_objectsAndKeys = v6;
  }

  return v5;
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  if (block)
  {
    objectsAndKeys = self->_objectsAndKeys;
    blockCopy = block;
    v5 = [(NSMutableDictionary *)objectsAndKeys copy];
    [v5 enumerateKeysAndObjectsUsingBlock:blockCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  objectsAndKeys = [(STDictionaryData *)self objectsAndKeys];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__STDictionaryData_isEqual___block_invoke;
  v10[3] = &unk_1E85DE848;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:objectsAndKeys counterpart:v10];

  LOBYTE(objectsAndKeys) = [v5 isEqual];
  return objectsAndKeys;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __24__STDictionaryData_hash__block_invoke;
  v7[3] = &unk_1E85DE870;
  v8 = builder;
  v4 = builder;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableDictionaryData allocWithZone:zone];
  objectsAndKeys = [(STDictionaryData *)self objectsAndKeys];
  v6 = [(STDictionaryData *)v4 initWithObjectsAndKeys:objectsAndKeys];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STDictionaryData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STDictionaryData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STDictionaryData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];

    [succinctDescriptionBuilder appendDictionarySection:self[1] withName:@"dictionaryData" skipIfEmpty:0];
  }

  else
  {
    succinctDescriptionBuilder = 0;
  }

  return succinctDescriptionBuilder;
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STDictionaryDataDiff diffFromDictionaryData:dataCopy toDictionaryData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([diffCopy isEmpty])
    {
      v5 = [(STDictionaryData *)self copy];
    }

    else
    {
      v5 = [(STDictionaryData *)self mutableCopy];
      [diffCopy applyToMutableDictionaryData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectsAndKeys = [(STDictionaryData *)self objectsAndKeys];
  [coderCopy encodeObject:objectsAndKeys forKey:@"objectsAndKeys"];
}

- (STDictionaryData)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_self();
  if (qword_1ED7F5D08 != -1)
  {
    dispatch_once(&qword_1ED7F5D08, &__block_literal_global_17);
  }

  v5 = _MergedGlobals_10;
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"objectsAndKeys"];

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
    selfCopy = self;
  }

  else
  {
    v10 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "decoded invalid dictionary data", v12, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)validateObjectsAndKeysWithValidObjectClasses:(id)classes keyClasses:(id)keyClasses
{
  classesCopy = classes;
  keyClassesCopy = keyClasses;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  objectsAndKeys = self->_objectsAndKeys;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__STDictionaryData_validateObjectsAndKeysWithValidObjectClasses_keyClasses___block_invoke;
  v12[3] = &unk_1E85DE8C0;
  v9 = keyClassesCopy;
  v13 = v9;
  v10 = classesCopy;
  v14 = v10;
  v15 = &v16;
  [(NSMutableDictionary *)objectsAndKeys enumerateKeysAndObjectsUsingBlock:v12];
  LOBYTE(classesCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return classesCopy;
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