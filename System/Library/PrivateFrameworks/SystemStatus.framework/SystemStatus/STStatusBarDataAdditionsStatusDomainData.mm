@interface STStatusBarDataAdditionsStatusDomainData
- (BOOL)isEqual:(id)equal;
- (STStatusBarDataActivityEntry)activityEntry;
- (STStatusBarDataAdditionsStatusDomainData)init;
- (STStatusBarDataAdditionsStatusDomainData)initWithCoder:(id)coder;
- (STStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)data;
- (STStatusBarDataBluetoothEntry)bluetoothEntry;
- (STStatusBarDataBoolEntry)ringerSilenceEntry;
- (STStatusBarDataLockEntry)lockEntry;
- (STStatusBarDataPersonNameEntry)avatarEntry;
- (STStatusBarDataQuietModeEntry)focusModeEntry;
- (STStatusBarDataStringEntry)personNameEntry;
- (STStatusBarDataTetheringEntry)tetheringEntry;
- (STStatusBarDataThermalEntry)thermalEntry;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_expectedClassForKey:(id)key;
- (id)_initWithEntryDictionaryData:(id *)data;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithData:(void *)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataAdditionsStatusDomainData

- (STStatusBarDataAdditionsStatusDomainData)init
{
  v3 = objc_alloc_init(STDictionaryData);
  v4 = [(STStatusBarDataAdditionsStatusDomainData *)self initWithEntryDictionaryData:v3];

  return v4;
}

- (id)initWithData:(void *)data
{
  dataCopy = data;
  if (data)
  {
    entryDictionaryData = [a2 entryDictionaryData];
    dataCopy = [dataCopy initWithEntryDictionaryData:entryDictionaryData];
  }

  return dataCopy;
}

- (STStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)data
{
  v4 = [data copy];
  v5 = [(STStatusBarDataAdditionsStatusDomainData *)&self->super.isa _initWithEntryDictionaryData:v4];

  return v5;
}

- (id)_initWithEntryDictionaryData:(id *)data
{
  v4 = a2;
  if (data)
  {
    v7.receiver = data;
    v7.super_class = STStatusBarDataAdditionsStatusDomainData;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    data = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return data;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__STStatusBarDataAdditionsStatusDomainData_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:entryDictionaryData counterpart:v10];

  LOBYTE(entryDictionaryData) = [v5 isEqual];
  return entryDictionaryData;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v5 = [builder appendObject:entryDictionaryData];

  v6 = [builder hash];
  return v6;
}

- (STStatusBarDataStringEntry)personNameEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"personNameEntry"];

  return v3;
}

- (STStatusBarDataBluetoothEntry)bluetoothEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"bluetoothEntry"];

  return v3;
}

- (STStatusBarDataThermalEntry)thermalEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"thermalEntry"];

  return v3;
}

- (STStatusBarDataActivityEntry)activityEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"activityEntry"];

  return v3;
}

- (STStatusBarDataTetheringEntry)tetheringEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"tetheringEntry"];

  return v3;
}

- (STStatusBarDataLockEntry)lockEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"lockEntry"];

  return v3;
}

- (STStatusBarDataQuietModeEntry)focusModeEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"focusModeEntry"];

  return v3;
}

- (STStatusBarDataBoolEntry)ringerSilenceEntry
{
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [entryDictionaryData objectForKey:@"ringerSilenceEntry"];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableStatusBarDataAdditionsStatusDomainData allocWithZone:zone];

  return [(STStatusBarDataAdditionsStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusBarDataAdditionsStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarDataAdditionsStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarDataAdditionsStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92__STStatusBarDataAdditionsStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v11 = v7;
    selfCopy = self;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __92__STStatusBarDataAdditionsStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) entryDictionaryData];
  v2 = [v1 appendObject:v3 withName:0 skipIfNil:1];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStatusBarDataAdditionsStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STStatusBarDataAdditionsStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStatusBarDataAdditionsStatusDomainData *)self mutableCopy];
      [diffCopy applyToMutableData:v5];
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
  entryDictionaryData = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  [coderCopy encodeObject:entryDictionaryData forKey:@"entryDictionaryData"];
}

- (id)_expectedClassForKey:(id)key
{
  v3 = a2;
  if (key)
  {
    if (_MergedGlobals_8 != -1)
    {
      dispatch_once(&_MergedGlobals_8, &__block_literal_global_9);
    }

    v4 = [qword_1ED7F5CD8 objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = objc_opt_class();
    }

    key = v4;
  }

  return key;
}

void __65__STStatusBarDataAdditionsStatusDomainData__expectedClassForKey___block_invoke()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v3[0] = @"activityEntry";
  v4[0] = objc_opt_class();
  v3[1] = @"bluetoothEntry";
  v4[1] = objc_opt_class();
  v3[2] = @"focusModeEntry";
  v4[2] = objc_opt_class();
  v3[3] = @"lockEntry";
  v4[3] = objc_opt_class();
  v3[4] = @"personNameEntry";
  v4[4] = objc_opt_class();
  v3[5] = @"tetheringEntry";
  v4[5] = objc_opt_class();
  v3[6] = @"thermalEntry";
  v4[6] = objc_opt_class();
  v3[7] = @"ringerSilenceEntry";
  v4[7] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:8];
  v1 = qword_1ED7F5CD8;
  qword_1ED7F5CD8 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (STStatusBarDataAdditionsStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryDictionaryData"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__STStatusBarDataAdditionsStatusDomainData_initWithCoder___block_invoke;
  v13[3] = &unk_1E85DE7C8;
  selfCopy = self;
  v14 = selfCopy;
  v7 = MEMORY[0x1E1274600](v13);
  v8 = (v7)[2](v7, v5);

  if (v8)
  {
    selfCopy = [(STStatusBarDataAdditionsStatusDomainData *)selfCopy initWithEntryDictionaryData:v8];
    v9 = selfCopy;
  }

  else
  {
    v10 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_ERROR, "decoded invalid status bar data additions domain data", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

id __58__STStatusBarDataAdditionsStatusDomainData_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__STStatusBarDataAdditionsStatusDomainData_initWithCoder___block_invoke_2;
  v6[3] = &unk_1E85DE7A0;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  if (v10[3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __58__STStatusBarDataAdditionsStatusDomainData_initWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [(STStatusBarDataAdditionsStatusDomainData *)*(a1 + 32) _expectedClassForKey:a2];
  if (!a2 || ([v7 isEqual:objc_opt_class()] & 1) != 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (STStatusBarDataPersonNameEntry)avatarEntry
{
  personNameEntry = [(STStatusBarDataAdditionsStatusDomainData *)self personNameEntry];
  if (objc_opt_respondsToSelector())
  {
    v3 = personNameEntry;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end