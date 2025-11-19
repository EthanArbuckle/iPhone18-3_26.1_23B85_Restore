@interface STMediaStatusDomainData
- (BOOL)isEqual:(id)a3;
- (NSArray)cameraAttributions;
- (NSArray)microphoneAttributions;
- (NSArray)mutedMicrophoneRecordingAttributions;
- (NSArray)screenCaptureAttributions;
- (NSArray)systemAudioRecordingAttributions;
- (STMediaStatusDomainData)init;
- (STMediaStatusDomainData)initWithCoder:(id)a3;
- (STMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)a3 mutedMicrophoneRecordingAttributionListData:(id)a4 systemAudioRecordingAttributionListData:(id)a5 cameraAttributionListData:(id)a6 screenCaptureAttributionListData:(id)a7;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)_initWithMicrophoneAttributionListData:(id)a3 mutedMicrophoneRecordingAttributionListData:(id)a4 systemAudioRecordingAttributionListData:(id)a5 cameraAttributionListData:(id)a6 screenCaptureAttributionListData:(id)a7;
- (id)audioRecordingAttributions;
- (id)cameraCaptureAttributionList;
- (id)cameraCaptureAttributions;
- (id)camerasInUseMatchingAttribution:(id)a3;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)initWithData:(void *)a1;
- (id)microphoneRecordingAttributions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)mutedAudioRecordingAttributions;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMediaStatusDomainData

- (NSArray)microphoneAttributions
{
  v2 = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  v3 = [v2 objects];

  return v3;
}

- (NSArray)mutedMicrophoneRecordingAttributions
{
  v2 = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  v3 = [v2 objects];

  return v3;
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
  v2 = [(STMediaStatusDomainData *)self cameraAttributionListData];
  v3 = [v2 objects];

  return v3;
}

- (id)audioRecordingAttributions
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(STMediaStatusDomainData *)self audioRecordingAttributionList];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)microphoneRecordingAttributions
{
  v2 = [(STMediaStatusDomainData *)self microphoneAttributions];
  v3 = [v2 bs_map:&__block_literal_global_25];

  return v3;
}

- (id)cameraCaptureAttributions
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(STMediaStatusDomainData *)self cameraCaptureAttributionList];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)cameraCaptureAttributionList
{
  v2 = [(STMediaStatusDomainData *)self cameraAttributions];
  v3 = [v2 bs_map:&__block_literal_global_16];

  return v3;
}

- (id)initWithData:(void *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v3 microphoneAttributionListData];
    v5 = [v3 mutedMicrophoneRecordingAttributionListData];
    v6 = [v3 systemAudioRecordingAttributionListData];
    v7 = [v3 cameraAttributionListData];
    v8 = [v3 screenCaptureAttributionListData];

    v2 = [v2 initWithMicrophoneAttributionListData:v4 mutedMicrophoneRecordingAttributionListData:v5 systemAudioRecordingAttributionListData:v6 cameraAttributionListData:v7 screenCaptureAttributionListData:v8];
  }

  return v2;
}

- (STMediaStatusDomainData)initWithMicrophoneAttributionListData:(id)a3 mutedMicrophoneRecordingAttributionListData:(id)a4 systemAudioRecordingAttributionListData:(id)a5 cameraAttributionListData:(id)a6 screenCaptureAttributionListData:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 copy];
  v17 = [v15 copy];

  v18 = [v14 copy];
  v19 = [v13 copy];

  v20 = [v12 copy];
  v21 = [(STMediaStatusDomainData *)self _initWithMicrophoneAttributionListData:v16 mutedMicrophoneRecordingAttributionListData:v17 systemAudioRecordingAttributionListData:v18 cameraAttributionListData:v19 screenCaptureAttributionListData:v20];

  return v21;
}

- (id)_initWithMicrophoneAttributionListData:(id)a3 mutedMicrophoneRecordingAttributionListData:(id)a4 systemAudioRecordingAttributionListData:(id)a5 cameraAttributionListData:(id)a6 screenCaptureAttributionListData:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = STMediaStatusDomainData;
  v17 = [(STMediaStatusDomainData *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_microphoneAttributionListData, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  return p_isa;
}

- (NSArray)screenCaptureAttributions
{
  v2 = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  v3 = [v2 objects];

  return v3;
}

- (NSArray)systemAudioRecordingAttributions
{
  v2 = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  v3 = [v2 objects];

  return v3;
}

- (id)mutedAudioRecordingAttributions
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(STMediaStatusDomainData *)self mutedAudioRecordingAttributionList];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)camerasInUseMatchingAttribution:(id)a3
{
  v4 = a3;
  v5 = [(STMediaStatusDomainData *)self cameraAttributions];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__STMediaStatusDomainData_camerasInUseMatchingAttribution___block_invoke;
  v12[3] = &unk_1E85DF620;
  v13 = v4;
  v6 = v4;
  v7 = [v5 bs_filter:v12];
  v8 = [v7 bs_map:&__block_literal_global_20];

  v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  v10 = [v9 allObjects];

  return v10;
}

uint64_t __59__STMediaStatusDomainData_camerasInUseMatchingAttribution___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 activityAttribution];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  v7 = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __35__STMediaStatusDomainData_isEqual___block_invoke;
  v31[3] = &unk_1E85DEFD8;
  v8 = v6;
  v32 = v8;
  v9 = [v5 appendObject:v7 counterpart:v31];

  v10 = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_2;
  v29[3] = &unk_1E85DEFD8;
  v11 = v8;
  v30 = v11;
  v12 = [v5 appendObject:v10 counterpart:v29];

  v13 = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_3;
  v27[3] = &unk_1E85DDCD8;
  v14 = v11;
  v28 = v14;
  v15 = [v5 appendObject:v13 counterpart:v27];

  v16 = [(STMediaStatusDomainData *)self cameraAttributionListData];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_4;
  v25[3] = &unk_1E85DEFD8;
  v17 = v14;
  v26 = v17;
  v18 = [v5 appendObject:v16 counterpart:v25];

  v19 = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __35__STMediaStatusDomainData_isEqual___block_invoke_5;
  v23[3] = &unk_1E85DEFD8;
  v24 = v17;
  v20 = v17;
  v21 = [v5 appendObject:v19 counterpart:v23];

  LOBYTE(v19) = [v5 isEqual];
  return v19;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  v5 = [v3 appendObject:v4];

  v6 = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  v7 = [v3 appendObject:v6];

  v8 = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  v9 = [v3 appendObject:v8];

  v10 = [(STMediaStatusDomainData *)self cameraAttributionListData];
  v11 = [v3 appendObject:v10];

  v12 = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  v13 = [v3 appendObject:v12];

  v14 = [v3 hash];
  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableMediaStatusDomainData allocWithZone:a3];

  return [(STMediaStatusDomainData *)v4 initWithData:?];
}

- (id)succinctDescription
{
  v2 = [(STMediaStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
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
    v10[2] = __75__STMediaStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
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

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STMediaStatusDomainDataDiff diffFromData:v4 toData:self];
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
      v5 = [(STMediaStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STMediaStatusDomainData *)self mutableCopy];
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
  v5 = [(STMediaStatusDomainData *)self microphoneAttributionListData];
  [v4 encodeObject:v5 forKey:@"microphoneAttributions"];

  v6 = [(STMediaStatusDomainData *)self mutedMicrophoneRecordingAttributionListData];
  [v4 encodeObject:v6 forKey:@"mutedMicrophoneRecordingAttributions"];

  v7 = [(STMediaStatusDomainData *)self systemAudioRecordingAttributionListData];
  [v4 encodeObject:v7 forKey:@"systemAudioRecordingAttributions"];

  v8 = [(STMediaStatusDomainData *)self cameraAttributionListData];
  [v4 encodeObject:v8 forKey:@"cameraAttributions"];

  v9 = [(STMediaStatusDomainData *)self screenCaptureAttributionListData];
  [v4 encodeObject:v9 forKey:@"screenCaptureAttributions"];
}

- (STMediaStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"microphoneAttributions"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mutedMicrophoneRecordingAttributions"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemAudioRecordingAttributions"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cameraAttributions"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screenCaptureAttributions"];

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
    v20 = self;
  }

  else
  {
    v21 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_1DA9C2000, v21, OS_LOG_TYPE_ERROR, "decoded invalid media domain data", v23, 2u);
    }

    v20 = 0;
  }

  return v20;
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