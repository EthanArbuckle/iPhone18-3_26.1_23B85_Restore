@interface STCallingStatusDomainData
- (BOOL)isEqual:(id)equal;
- (NSArray)callDescriptors;
- (NSSet)activeCallAttributions;
- (NSSet)activeVideoConferenceAttributions;
- (NSSet)ringingCallAttributions;
- (NSSet)ringingVideoConferenceAttributions;
- (STCallingStatusDomainData)init;
- (STCallingStatusDomainData)initWithCallDescriptorListData:(id)data;
- (STCallingStatusDomainData)initWithCoder:(id)coder;
- (STCallingStatusDomainData)initWithData:(id)data;
- (id)_activeAudioCallDescriptors;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_initWithCallDescriptorListData:(id)data;
- (id)_ringingAudioCallDescriptors;
- (id)_videoOrCopresenceCallDescriptorsWithCallState:(void *)state;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STCallingStatusDomainData

- (NSSet)activeCallAttributions
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  _activeAudioCallDescriptors = [(STCallingStatusDomainData *)self _activeAudioCallDescriptors];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__STCallingStatusDomainData_activeCallAttributions__block_invoke;
  v6[3] = &unk_1E85DED10;
  v6[4] = v7;
  v3 = [_activeAudioCallDescriptors bs_map:v6];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  _Block_object_dispose(v7, 8);

  return v4;
}

- (id)_activeAudioCallDescriptors
{
  if (self)
  {
    callDescriptors = [self callDescriptors];
    v2 = [callDescriptors bs_filter:&__block_literal_global_19];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSArray)callDescriptors
{
  callDescriptorListData = [(STCallingStatusDomainData *)self callDescriptorListData];
  objects = [callDescriptorListData objects];

  return objects;
}

- (NSSet)ringingCallAttributions
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  _ringingAudioCallDescriptors = [(STCallingStatusDomainData *)self _ringingAudioCallDescriptors];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__STCallingStatusDomainData_ringingCallAttributions__block_invoke;
  v6[3] = &unk_1E85DED10;
  v6[4] = v7;
  v3 = [_ringingAudioCallDescriptors bs_map:v6];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  _Block_object_dispose(v7, 8);

  return v4;
}

- (id)_ringingAudioCallDescriptors
{
  if (self)
  {
    callDescriptors = [self callDescriptors];
    v2 = [callDescriptors bs_filter:&__block_literal_global_21_0];
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

- (STCallingStatusDomainData)initWithData:(id)data
{
  callDescriptorListData = [data callDescriptorListData];
  v5 = [(STCallingStatusDomainData *)self initWithCallDescriptorListData:callDescriptorListData];

  return v5;
}

- (STCallingStatusDomainData)initWithCallDescriptorListData:(id)data
{
  v4 = [data copy];
  v5 = [(STCallingStatusDomainData *)self _initWithCallDescriptorListData:v4];

  return v5;
}

- (id)_initWithCallDescriptorListData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = STCallingStatusDomainData;
  v6 = [(STCallingStatusDomainData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDescriptorListData, data);
  }

  return v7;
}

- (id)_videoOrCopresenceCallDescriptorsWithCallState:(void *)state
{
  if (state)
  {
    callDescriptors = [state callDescriptors];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__STCallingStatusDomainData__videoOrCopresenceCallDescriptorsWithCallState___block_invoke;
    v6[3] = &__block_descriptor_40_e45_B16__0__STCallingStatusDomainCallDescriptor_8l;
    v6[4] = a2;
    v4 = [callDescriptors bs_filter:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  callDescriptorListData = [(STCallingStatusDomainData *)self callDescriptorListData];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__STCallingStatusDomainData_isEqual___block_invoke;
  v10[3] = &unk_1E85DDCD8;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:callDescriptorListData counterpart:v10];

  LOBYTE(callDescriptorListData) = [v5 isEqual];
  return callDescriptorListData;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  callDescriptorListData = [(STCallingStatusDomainData *)self callDescriptorListData];
  v5 = [builder appendObject:callDescriptorListData];

  v6 = [builder hash];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableCallingStatusDomainData allocWithZone:zone];

  return [(STCallingStatusDomainData *)v4 initWithData:self];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STCallingStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STCallingStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STCallingStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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

    callDescriptorListData = [self callDescriptorListData];
    v8 = [succinctDescriptionBuilder appendObject:callDescriptorListData withName:@"callDescriptors"];
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
    v5 = [STCallingStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STCallingStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STCallingStatusDomainData *)self mutableCopy];
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
  callDescriptorListData = [(STCallingStatusDomainData *)self callDescriptorListData];
  [coderCopy encodeObject:callDescriptorListData forKey:@"callDescriptorListData"];
}

- (STCallingStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callDescriptorListData"];

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
    selfCopy = self;
  }

  else
  {
    v9 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "decoded invalid calling domain data", v11, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
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