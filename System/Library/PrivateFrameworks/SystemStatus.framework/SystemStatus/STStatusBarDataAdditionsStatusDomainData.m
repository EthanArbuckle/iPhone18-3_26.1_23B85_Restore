@interface STStatusBarDataAdditionsStatusDomainData
- (BOOL)isEqual:(id)a3;
- (STStatusBarDataActivityEntry)activityEntry;
- (STStatusBarDataAdditionsStatusDomainData)init;
- (STStatusBarDataAdditionsStatusDomainData)initWithCoder:(id)a3;
- (STStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)a3;
- (STStatusBarDataBluetoothEntry)bluetoothEntry;
- (STStatusBarDataBoolEntry)ringerSilenceEntry;
- (STStatusBarDataLockEntry)lockEntry;
- (STStatusBarDataPersonNameEntry)avatarEntry;
- (STStatusBarDataQuietModeEntry)focusModeEntry;
- (STStatusBarDataStringEntry)personNameEntry;
- (STStatusBarDataTetheringEntry)tetheringEntry;
- (STStatusBarDataThermalEntry)thermalEntry;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)_expectedClassForKey:(id)a1;
- (id)_initWithEntryDictionaryData:(id *)a1;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithData:(void *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataAdditionsStatusDomainData

- (STStatusBarDataAdditionsStatusDomainData)init
{
  v3 = objc_alloc_init(STDictionaryData);
  v4 = [(STStatusBarDataAdditionsStatusDomainData *)self initWithEntryDictionaryData:v3];

  return v4;
}

- (id)initWithData:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 entryDictionaryData];
    v2 = [v2 initWithEntryDictionaryData:v3];
  }

  return v2;
}

- (STStatusBarDataAdditionsStatusDomainData)initWithEntryDictionaryData:(id)a3
{
  v4 = [a3 copy];
  v5 = [(STStatusBarDataAdditionsStatusDomainData *)&self->super.isa _initWithEntryDictionaryData:v4];

  return v5;
}

- (id)_initWithEntryDictionaryData:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = STStatusBarDataAdditionsStatusDomainData;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__STStatusBarDataAdditionsStatusDomainData_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:v6 counterpart:v10];

  LOBYTE(v6) = [v5 isEqual];
  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (STStatusBarDataStringEntry)personNameEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"personNameEntry"];

  return v3;
}

- (STStatusBarDataBluetoothEntry)bluetoothEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"bluetoothEntry"];

  return v3;
}

- (STStatusBarDataThermalEntry)thermalEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"thermalEntry"];

  return v3;
}

- (STStatusBarDataActivityEntry)activityEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"activityEntry"];

  return v3;
}

- (STStatusBarDataTetheringEntry)tetheringEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"tetheringEntry"];

  return v3;
}

- (STStatusBarDataLockEntry)lockEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"lockEntry"];

  return v3;
}

- (STStatusBarDataQuietModeEntry)focusModeEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"focusModeEntry"];

  return v3;
}

- (STStatusBarDataBoolEntry)ringerSilenceEntry
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  v3 = [v2 objectForKey:@"ringerSilenceEntry"];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableStatusBarDataAdditionsStatusDomainData allocWithZone:a3];

  return [(STStatusBarDataAdditionsStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarDataAdditionsStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarDataAdditionsStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92__STStatusBarDataAdditionsStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v7 = v6;
    v11 = v7;
    v12 = a1;
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

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STStatusBarDataAdditionsStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STStatusBarDataAdditionsStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STStatusBarDataAdditionsStatusDomainData *)self mutableCopy];
      [v4 applyToMutableData:v5];
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
  v5 = [(STStatusBarDataAdditionsStatusDomainData *)self entryDictionaryData];
  [v4 encodeObject:v5 forKey:@"entryDictionaryData"];
}

- (id)_expectedClassForKey:(id)a1
{
  v3 = a2;
  if (a1)
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

    a1 = v4;
  }

  return a1;
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

- (STStatusBarDataAdditionsStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryDictionaryData"];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__STStatusBarDataAdditionsStatusDomainData_initWithCoder___block_invoke;
  v13[3] = &unk_1E85DE7C8;
  v6 = self;
  v14 = v6;
  v7 = MEMORY[0x1E1274600](v13);
  v8 = (v7)[2](v7, v5);

  if (v8)
  {
    v6 = [(STStatusBarDataAdditionsStatusDomainData *)v6 initWithEntryDictionaryData:v8];
    v9 = v6;
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
  v2 = [(STStatusBarDataAdditionsStatusDomainData *)self personNameEntry];
  if (objc_opt_respondsToSelector())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end