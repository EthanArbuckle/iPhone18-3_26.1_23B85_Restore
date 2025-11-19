@interface STCallingStatusDomainData
- (BOOL)isEqual:(id)a3;
- (NSArray)callDescriptors;
- (NSSet)activeCallAttributions;
- (NSSet)activeVideoConferenceAttributions;
- (NSSet)ringingCallAttributions;
- (NSSet)ringingVideoConferenceAttributions;
- (STCallingStatusDomainData)init;
- (STCallingStatusDomainData)initWithCallDescriptorListData:(id)a3;
- (STCallingStatusDomainData)initWithCoder:(id)a3;
- (STCallingStatusDomainData)initWithData:(id)a3;
- (id)_activeAudioCallDescriptors;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)_initWithCallDescriptorListData:(id)a3;
- (id)_ringingAudioCallDescriptors;
- (id)_videoOrCopresenceCallDescriptorsWithCallState:(void *)a1;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STCallingStatusDomainData

- (NSSet)activeCallAttributions
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v2 = [(STCallingStatusDomainData *)self _activeAudioCallDescriptors];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__STCallingStatusDomainData_activeCallAttributions__block_invoke;
  v6[3] = &unk_1E85DED10;
  v6[4] = v7;
  v3 = [v2 bs_map:v6];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  _Block_object_dispose(v7, 8);

  return v4;
}

- (id)_activeAudioCallDescriptors
{
  if (a1)
  {
    v1 = [a1 callDescriptors];
    v2 = [v1 bs_filter:&__block_literal_global_19];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSArray)callDescriptors
{
  v2 = [(STCallingStatusDomainData *)self callDescriptorListData];
  v3 = [v2 objects];

  return v3;
}

- (NSSet)ringingCallAttributions
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v2 = [(STCallingStatusDomainData *)self _ringingAudioCallDescriptors];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__STCallingStatusDomainData_ringingCallAttributions__block_invoke;
  v6[3] = &unk_1E85DED10;
  v6[4] = v7;
  v3 = [v2 bs_map:v6];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  _Block_object_dispose(v7, 8);

  return v4;
}

- (id)_ringingAudioCallDescriptors
{
  if (a1)
  {
    v1 = [a1 callDescriptors];
    v2 = [v1 bs_filter:&__block_literal_global_21_0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSSet)activeVideoConferenceAttributions
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v2 = [(STCallingStatusDomainData *)self _videoOrCopresenceCallDescriptorsWithCallState:?];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__STCallingStatusDomainData_activeVideoConferenceAttributions__block_invoke;
  v6[3] = &unk_1E85DED10;
  v6[4] = v7;
  v3 = [v2 bs_map:v6];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  _Block_object_dispose(v7, 8);

  return v4;
}

- (NSSet)ringingVideoConferenceAttributions
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v2 = [(STCallingStatusDomainData *)self _videoOrCopresenceCallDescriptorsWithCallState:?];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__STCallingStatusDomainData_ringingVideoConferenceAttributions__block_invoke;
  v6[3] = &unk_1E85DED10;
  v6[4] = v7;
  v3 = [v2 bs_map:v6];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  _Block_object_dispose(v7, 8);

  return v4;
}

- (STCallingStatusDomainData)init
{
  v3 = objc_alloc_init(STListData);
  v4 = [(STCallingStatusDomainData *)self initWithCallDescriptorListData:v3];

  return v4;
}

BOOL __56__STCallingStatusDomainData__activeAudioCallDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 callType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 callState] == 0;
  }

  return v3;
}

- (STCallingStatusDomainData)initWithData:(id)a3
{
  v4 = [a3 callDescriptorListData];
  v5 = [(STCallingStatusDomainData *)self initWithCallDescriptorListData:v4];

  return v5;
}

- (STCallingStatusDomainData)initWithCallDescriptorListData:(id)a3
{
  v4 = [a3 copy];
  v5 = [(STCallingStatusDomainData *)self _initWithCallDescriptorListData:v4];

  return v5;
}

- (id)_initWithCallDescriptorListData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STCallingStatusDomainData;
  v6 = [(STCallingStatusDomainData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDescriptorListData, a3);
  }

  return v7;
}

- (id)_videoOrCopresenceCallDescriptorsWithCallState:(void *)a1
{
  if (a1)
  {
    v3 = [a1 callDescriptors];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__STCallingStatusDomainData__videoOrCopresenceCallDescriptorsWithCallState___block_invoke;
    v6[3] = &__block_descriptor_40_e45_B16__0__STCallingStatusDomainCallDescriptor_8l;
    v6[4] = a2;
    v4 = [v3 bs_filter:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STCallingStatusDomainData *)self callDescriptorListData];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__STCallingStatusDomainData_isEqual___block_invoke;
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
  v4 = [(STCallingStatusDomainData *)self callDescriptorListData];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableCallingStatusDomainData allocWithZone:a3];

  return [(STCallingStatusDomainData *)v4 initWithData:self];
}

- (id)succinctDescription
{
  v2 = [(STCallingStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STCallingStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STCallingStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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

    v7 = [a1 callDescriptorListData];
    v8 = [v6 appendObject:v7 withName:@"callDescriptors"];
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
    v5 = [STCallingStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STCallingStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STCallingStatusDomainData *)self mutableCopy];
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
  v5 = [(STCallingStatusDomainData *)self callDescriptorListData];
  [v4 encodeObject:v5 forKey:@"callDescriptorListData"];
}

- (STCallingStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callDescriptorListData"];

  v6 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__STCallingStatusDomainData_initWithCoder___block_invoke_2;
  v11[3] = &unk_1E85DED38;
  v11[4] = &v12;
  [v6 enumerateObjectsUsingBlock:v11];
  if (v13[3])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  _Block_object_dispose(&v12, 8);

  if (v7)
  {
    self = [(STCallingStatusDomainData *)self initWithCallDescriptorListData:v7];
    v8 = self;
  }

  else
  {
    v9 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "decoded invalid calling domain data", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

void __43__STCallingStatusDomainData_initWithCoder___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

BOOL __57__STCallingStatusDomainData__ringingAudioCallDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 callType])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 callState] == 1;
  }

  return v3;
}

BOOL __56__STCallingStatusDomainData__activeVideoCallDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 callType] == 1 && objc_msgSend(v2, "callState") == 0;

  return v3;
}

BOOL __76__STCallingStatusDomainData__videoOrCopresenceCallDescriptorsWithCallState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ([v3 callType] == 1 || objc_msgSend(v3, "callType") == 2) && objc_msgSend(v3, "callState") == *(a1 + 32);

  return v4;
}

BOOL __57__STCallingStatusDomainData__ringingVideoCallDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 callType] == 1 && objc_msgSend(v2, "callState") == 1;

  return v3;
}

@end