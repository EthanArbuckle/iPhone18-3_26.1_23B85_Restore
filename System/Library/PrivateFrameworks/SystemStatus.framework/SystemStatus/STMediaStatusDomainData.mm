@interface STMediaStatusDomainData
- (BOOL)isEqual:(id)equal;
- (NSArray)cameraAttributions;
- (NSArray)microphoneAttributions;
- (NSArray)mutedMicrophoneRecordingAttributions;
- (NSArray)screenCaptureAttributions;
- (NSArray)systemAudioRecordingAttributions;
- (STMediaStatusDomainData)init;
- (STMediaStatusDomainData)initWithCoder:(id)coder;
- (STMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)data mutedMicrophoneRecordingAttributionListData:(id)listData systemAudioRecordingAttributionListData:(id)attributionListData cameraAttributionListData:(id)cameraAttributionListData screenCaptureAttributionListData:(id)captureAttributionListData;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_initWithMicrophoneAttributionListData:(id)data mutedMicrophoneRecordingAttributionListData:(id)listData systemAudioRecordingAttributionListData:(id)attributionListData cameraAttributionListData:(id)cameraAttributionListData screenCaptureAttributionListData:(id)captureAttributionListData;
- (id)audioRecordingAttributions;
- (id)cameraCaptureAttributionList;
- (id)cameraCaptureAttributions;
- (id)camerasInUseMatchingAttribution:(id)attribution;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)initWithData:(void *)data;
- (id)microphoneRecordingAttributions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)mutedAudioRecordingAttributions;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMediaStatusDomainData

- (NSArray)microphoneAttributions
{
  microphoneAttributionListData = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  objects = [microphoneAttributionListData objects];

  return objects;
}

- (NSArray)mutedMicrophoneRecordingAttributions
{
  mutedMicrophoneRecordingAttributionListData = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  objects = [mutedMicrophoneRecordingAttributionListData objects];

  return objects;
}

- (STMediaStatusDomainData)init
{
  v3 = objc_alloc_init(STListData);
  v4 = objc_alloc_init(STListData);
  v5 = objc_alloc_init(STListData);
  v6 = objc_alloc_init(STListData);
  v7 = objc_alloc_init(STListData);
  v8 = [(STMediaStatusDomainData *)self initWithMicrophoneAttributionListData:v3 mutedMicrophoneRecordingAttributionListData:v4 systemAudioRecordingAttributionListData:v5 cameraAttributionListData:v6 screenCaptureAttributionListData:v7];

  return v8;
}

- (NSArray)cameraAttributions
{
  cameraAttributionListData = [(STMediaStatusDomainData *)self cameraAttributionListData];
  objects = [cameraAttributionListData objects];

  return objects;
}

- (id)audioRecordingAttributions
{
  v2 = MEMORY[0x1E695DFD8];
  audioRecordingAttributionList = [(STMediaStatusDomainData *)self audioRecordingAttributionList];
  v4 = [v2 setWithArray:audioRecordingAttributionList];

  return v4;
}

- (id)microphoneRecordingAttributions
{
  microphoneAttributions = [(STMediaStatusDomainData *)self microphoneAttributions];
  v3 = [microphoneAttributions bs_map:&__block_literal_global_25];

  return v3;
}

- (id)cameraCaptureAttributions
{
  v2 = MEMORY[0x1E695DFD8];
  cameraCaptureAttributionList = [(STMediaStatusDomainData *)self cameraCaptureAttributionList];
  v4 = [v2 setWithArray:cameraCaptureAttributionList];

  return v4;
}

- (id)cameraCaptureAttributionList
{
  cameraAttributions = [(STMediaStatusDomainData *)self cameraAttributions];
  v3 = [cameraAttributions bs_map:&__block_literal_global_16];

  return v3;
}

- (id)initWithData:(void *)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    microphoneAttributionListData = [v3 microphoneAttributionListData];
    mutedMicrophoneRecordingAttributionListData = [v3 mutedMicrophoneRecordingAttributionListData];
    systemAudioRecordingAttributionListData = [v3 systemAudioRecordingAttributionListData];
    cameraAttributionListData = [v3 cameraAttributionListData];
    screenCaptureAttributionListData = [v3 screenCaptureAttributionListData];

    dataCopy = [dataCopy initWithMicrophoneAttributionListData:microphoneAttributionListData mutedMicrophoneRecordingAttributionListData:mutedMicrophoneRecordingAttributionListData systemAudioRecordingAttributionListData:systemAudioRecordingAttributionListData cameraAttributionListData:cameraAttributionListData screenCaptureAttributionListData:screenCaptureAttributionListData];
  }

  return dataCopy;
}

- (STMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)data mutedMicrophoneRecordingAttributionListData:(id)listData systemAudioRecordingAttributionListData:(id)attributionListData cameraAttributionListData:(id)cameraAttributionListData screenCaptureAttributionListData:(id)captureAttributionListData
{
  captureAttributionListDataCopy = captureAttributionListData;
  cameraAttributionListDataCopy = cameraAttributionListData;
  attributionListDataCopy = attributionListData;
  listDataCopy = listData;
  v16 = [data copy];
  v17 = [listDataCopy copy];

  v18 = [attributionListDataCopy copy];
  v19 = [cameraAttributionListDataCopy copy];

  v20 = [captureAttributionListDataCopy copy];
  v21 = [(STMediaStatusDomainData *)self _initWithMicrophoneAttributionListData:v16 mutedMicrophoneRecordingAttributionListData:v17 systemAudioRecordingAttributionListData:v18 cameraAttributionListData:v19 screenCaptureAttributionListData:v20];

  return v21;
}

- (id)_initWithMicrophoneAttributionListData:(id)data mutedMicrophoneRecordingAttributionListData:(id)listData systemAudioRecordingAttributionListData:(id)attributionListData cameraAttributionListData:(id)cameraAttributionListData screenCaptureAttributionListData:(id)captureAttributionListData
{
  dataCopy = data;
  listDataCopy = listData;
  attributionListDataCopy = attributionListData;
  cameraAttributionListDataCopy = cameraAttributionListData;
  captureAttributionListDataCopy = captureAttributionListData;
  v21.receiver = self;
  v21.super_class = STMediaStatusDomainData;
  v17 = [(STMediaStatusDomainData *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_microphoneAttributionListData, data);
    objc_storeStrong(p_isa + 2, listData);
    objc_storeStrong(p_isa + 3, attributionListData);
    objc_storeStrong(p_isa + 4, cameraAttributionListData);
    objc_storeStrong(p_isa + 5, captureAttributionListData);
  }

  return p_isa;
}

- (NSArray)screenCaptureAttributions
{
  screenCaptureAttributionListData = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  objects = [screenCaptureAttributionListData objects];

  return objects;
}

- (NSArray)systemAudioRecordingAttributions
{
  systemAudioRecordingAttributionListData = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  objects = [systemAudioRecordingAttributionListData objects];

  return objects;
}

- (id)mutedAudioRecordingAttributions
{
  v2 = MEMORY[0x1E695DFD8];
  mutedAudioRecordingAttributionList = [(STMediaStatusDomainData *)self mutedAudioRecordingAttributionList];
  v4 = [v2 setWithArray:mutedAudioRecordingAttributionList];

  return v4;
}

- (id)camerasInUseMatchingAttribution:(id)attribution
{
  attributionCopy = attribution;
  cameraAttributions = [(STMediaStatusDomainData *)self cameraAttributions];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__STMediaStatusDomainData_camerasInUseMatchingAttribution___block_invoke;
  v12[3] = &unk_1E85DF620;
  v13 = attributionCopy;
  v6 = attributionCopy;
  v7 = [cameraAttributions bs_filter:v12];
  v8 = [v7 bs_map:&__block_literal_global_20];

  v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  allObjects = [v9 allObjects];

  return allObjects;
}

uint64_t __59__STMediaStatusDomainData_camerasInUseMatchingAttribution___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityAttribution];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  microphoneAttributionListData = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __35__STMediaStatusDomainData_isEqual___block_invoke;
  v31[3] = &unk_1E85DEFD8;
  v8 = v6;
  v32 = v8;
  v9 = [v5 appendObject:microphoneAttributionListData counterpart:v31];

  mutedMicrophoneRecordingAttributionListData = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_2;
  v29[3] = &unk_1E85DEFD8;
  v11 = v8;
  v30 = v11;
  v12 = [v5 appendObject:mutedMicrophoneRecordingAttributionListData counterpart:v29];

  systemAudioRecordingAttributionListData = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_3;
  v27[3] = &unk_1E85DDCD8;
  v14 = v11;
  v28 = v14;
  v15 = [v5 appendObject:systemAudioRecordingAttributionListData counterpart:v27];

  cameraAttributionListData = [(STMediaStatusDomainData *)self cameraAttributionListData];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_4;
  v25[3] = &unk_1E85DEFD8;
  v17 = v14;
  v26 = v17;
  v18 = [v5 appendObject:cameraAttributionListData counterpart:v25];

  screenCaptureAttributionListData = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_5;
  v23[3] = &unk_1E85DEFD8;
  v24 = v17;
  v20 = v17;
  v21 = [v5 appendObject:screenCaptureAttributionListData counterpart:v23];

  LOBYTE(screenCaptureAttributionListData) = [v5 isEqual];
  return screenCaptureAttributionListData;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  microphoneAttributionListData = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  v5 = [builder appendObject:microphoneAttributionListData];

  mutedMicrophoneRecordingAttributionListData = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  v7 = [builder appendObject:mutedMicrophoneRecordingAttributionListData];

  systemAudioRecordingAttributionListData = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  v9 = [builder appendObject:systemAudioRecordingAttributionListData];

  cameraAttributionListData = [(STMediaStatusDomainData *)self cameraAttributionListData];
  v11 = [builder appendObject:cameraAttributionListData];

  screenCaptureAttributionListData = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  v13 = [builder appendObject:screenCaptureAttributionListData];

  v14 = [builder hash];
  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableMediaStatusDomainData allocWithZone:zone];

  return [(STMediaStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STMediaStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
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
    v10[2] = __75__STMediaStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

void __75__STMediaStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) microphoneAttributionListData];
  v4 = [v2 appendObject:v3 withName:@"microphoneAttributions"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) mutedMicrophoneRecordingAttributionListData];
  v7 = [v5 appendObject:v6 withName:@"mutedMicrophoneRecordingAttributions"];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) systemAudioRecordingAttributionListData];
  v10 = [v8 appendObject:v9 withName:@"systemAudioRecordingAttributions"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) cameraAttributionListData];
  v13 = [v11 appendObject:v12 withName:@"cameraAttributions"];

  v14 = *(a1 + 32);
  v16 = [*(a1 + 40) screenCaptureAttributionListData];
  v15 = [v14 appendObject:v16 withName:@"screenCaptureAttributions"];
}

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STMediaStatusDomainDataDiff diffFromData:dataCopy toData:self];
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
      v5 = [(STMediaStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STMediaStatusDomainData *)self mutableCopy];
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
  microphoneAttributionListData = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  [coderCopy encodeObject:microphoneAttributionListData forKey:@"microphoneAttributions"];

  mutedMicrophoneRecordingAttributionListData = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  [coderCopy encodeObject:mutedMicrophoneRecordingAttributionListData forKey:@"mutedMicrophoneRecordingAttributions"];

  systemAudioRecordingAttributionListData = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  [coderCopy encodeObject:systemAudioRecordingAttributionListData forKey:@"systemAudioRecordingAttributions"];

  cameraAttributionListData = [(STMediaStatusDomainData *)self cameraAttributionListData];
  [coderCopy encodeObject:cameraAttributionListData forKey:@"cameraAttributions"];

  screenCaptureAttributionListData = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  [coderCopy encodeObject:screenCaptureAttributionListData forKey:@"screenCaptureAttributions"];
}

- (STMediaStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"microphoneAttributions"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutedMicrophoneRecordingAttributions"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemAudioRecordingAttributions"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraAttributions"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenCaptureAttributions"];

  v10 = objc_opt_class();
  v11 = __41__STMediaStatusDomainData_initWithCoder___block_invoke(v5, v10);

  v12 = objc_opt_class();
  v13 = __41__STMediaStatusDomainData_initWithCoder___block_invoke(v6, v12);

  v14 = objc_opt_class();
  v15 = __41__STMediaStatusDomainData_initWithCoder___block_invoke(v7, v14);

  v16 = objc_opt_class();
  v17 = __41__STMediaStatusDomainData_initWithCoder___block_invoke(v8, v16);

  v18 = objc_opt_class();
  v19 = __41__STMediaStatusDomainData_initWithCoder___block_invoke(v9, v18);

  if (v11 && v13 && v15 && v17 && v19)
  {
    self = [(STMediaStatusDomainData *)self initWithMicrophoneAttributionListData:v11 mutedMicrophoneRecordingAttributionListData:v13 systemAudioRecordingAttributionListData:v15 cameraAttributionListData:v17 screenCaptureAttributionListData:v19];
    selfCopy = self;
  }

  else
  {
    v21 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1DA9C2000, v21, OS_LOG_TYPE_ERROR, "decoded invalid media domain data", v23, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

id __41__STMediaStatusDomainData_initWithCoder___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__STMediaStatusDomainData_initWithCoder___block_invoke_2;
  v6[3] = &unk_1E85DF648;
  v6[4] = &v7;
  v6[5] = a2;
  [v3 enumerateObjectsUsingBlock:v6];
  if (v8[3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __41__STMediaStatusDomainData_initWithCoder___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end