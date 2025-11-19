@interface STMediaStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STMediaStatusDomainDataDiff)init;
- (STMediaStatusDomainDataDiff)initWithCoder:(id)a3;
- (STMediaStatusDomainDataDiff)initWithMicrophoneAttributionListDataDiff:(id)a3 mutedMicrophoneRecordingAttributionListDataDiff:(id)a4 systemAudioRecordingAttributionListDataDiff:(id)a5 cameraAttributionListDataDiff:(id)a6 screenCaptureAttributionListDataDiff:(id)a7;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMediaStatusDomainDataDiff

- (BOOL)isEmpty
{
  if (self)
  {
    microphoneAttributionListDataDiff = self->_microphoneAttributionListDataDiff;
  }

  else
  {
    microphoneAttributionListDataDiff = 0;
  }

  v4 = microphoneAttributionListDataDiff;
  if ([(STListDataDiff *)v4 isEmpty])
  {
    if (self)
    {
      mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
    }

    else
    {
      mutedMicrophoneRecordingAttributionListDataDiff = 0;
    }

    v6 = mutedMicrophoneRecordingAttributionListDataDiff;
    if ([(STListDataDiff *)v6 isEmpty])
    {
      if (self)
      {
        systemAudioRecordingAttributionListDataDiff = self->_systemAudioRecordingAttributionListDataDiff;
      }

      else
      {
        systemAudioRecordingAttributionListDataDiff = 0;
      }

      v8 = systemAudioRecordingAttributionListDataDiff;
      if ([(STListDataDiff *)v8 isEmpty])
      {
        if (self)
        {
          cameraAttributionListDataDiff = self->_cameraAttributionListDataDiff;
        }

        else
        {
          cameraAttributionListDataDiff = 0;
        }

        v10 = cameraAttributionListDataDiff;
        if ([(STListDataDiff *)v10 isEmpty])
        {
          if (self)
          {
            screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
          }

          else
          {
            screenCaptureAttributionListDataDiff = 0;
          }

          v12 = [(STListDataDiff *)screenCaptureAttributionListDataDiff isEmpty];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 microphoneAttributionListData];
  v8 = [v5 microphoneAttributionListData];
  v9 = [STListDataDiff diffFromListData:v7 toListData:v8];

  v10 = [v6 mutedMicrophoneRecordingAttributionListData];
  v11 = [v5 mutedMicrophoneRecordingAttributionListData];
  v12 = [STListDataDiff diffFromListData:v10 toListData:v11];

  v13 = [v6 systemAudioRecordingAttributionListData];
  v14 = [v5 systemAudioRecordingAttributionListData];
  v15 = [STListDataDiff diffFromListData:v13 toListData:v14];

  v16 = [v6 cameraAttributionListData];
  v17 = [v5 cameraAttributionListData];
  v18 = [STListDataDiff diffFromListData:v16 toListData:v17];

  v19 = [v6 screenCaptureAttributionListData];

  v20 = [v5 screenCaptureAttributionListData];

  v21 = [STListDataDiff diffFromListData:v19 toListData:v20];

  v22 = [[STMediaStatusDomainDataDiff alloc] initWithMicrophoneAttributionListDataDiff:v9 mutedMicrophoneRecordingAttributionListDataDiff:v12 systemAudioRecordingAttributionListDataDiff:v15 cameraAttributionListDataDiff:v18 screenCaptureAttributionListDataDiff:v21];

  return v22;
}

- (STMediaStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(STListDataDiff);
  v4 = objc_alloc_init(STListDataDiff);
  v5 = objc_alloc_init(STListDataDiff);
  v6 = objc_alloc_init(STListDataDiff);
  v7 = objc_alloc_init(STListDataDiff);
  v8 = [(STMediaStatusDomainDataDiff *)self initWithMicrophoneAttributionListDataDiff:v3 mutedMicrophoneRecordingAttributionListDataDiff:v4 systemAudioRecordingAttributionListDataDiff:v5 cameraAttributionListDataDiff:v6 screenCaptureAttributionListDataDiff:v7];

  return v8;
}

- (STMediaStatusDomainDataDiff)initWithMicrophoneAttributionListDataDiff:(id)a3 mutedMicrophoneRecordingAttributionListDataDiff:(id)a4 systemAudioRecordingAttributionListDataDiff:(id)a5 cameraAttributionListDataDiff:(id)a6 screenCaptureAttributionListDataDiff:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = STMediaStatusDomainDataDiff;
  v17 = [(STMediaStatusDomainDataDiff *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    microphoneAttributionListDataDiff = v17->_microphoneAttributionListDataDiff;
    v17->_microphoneAttributionListDataDiff = v18;

    v20 = [v13 copy];
    mutedMicrophoneRecordingAttributionListDataDiff = v17->_mutedMicrophoneRecordingAttributionListDataDiff;
    v17->_mutedMicrophoneRecordingAttributionListDataDiff = v20;

    v22 = [v14 copy];
    systemAudioRecordingAttributionListDataDiff = v17->_systemAudioRecordingAttributionListDataDiff;
    v17->_systemAudioRecordingAttributionListDataDiff = v22;

    v24 = [v15 copy];
    cameraAttributionListDataDiff = v17->_cameraAttributionListDataDiff;
    v17->_cameraAttributionListDataDiff = v24;

    v26 = [v16 copy];
    screenCaptureAttributionListDataDiff = v17->_screenCaptureAttributionListDataDiff;
    v17->_screenCaptureAttributionListDataDiff = v26;
  }

  return v17;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STMediaStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  v19 = a3;
  if (self)
  {
    v4 = self->_microphoneAttributionListDataDiff;
    v5 = [v19 microphoneAttributionListData];
    [(STListDataDiff *)v4 applyToMutableListData:v5];

    mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
  }

  else
  {
    v17 = [v19 microphoneAttributionListData];
    [0 applyToMutableListData:v17];

    mutedMicrophoneRecordingAttributionListDataDiff = 0;
  }

  v7 = mutedMicrophoneRecordingAttributionListDataDiff;
  v8 = [v19 mutedMicrophoneRecordingAttributionListData];
  [(STListDataDiff *)v7 applyToMutableListData:v8];

  if (self)
  {
    v9 = self->_systemAudioRecordingAttributionListDataDiff;
    v10 = [v19 systemAudioRecordingAttributionListData];
    [(STListDataDiff *)v9 applyToMutableListData:v10];

    cameraAttributionListDataDiff = self->_cameraAttributionListDataDiff;
  }

  else
  {
    v18 = [v19 systemAudioRecordingAttributionListData];
    [0 applyToMutableListData:v18];

    cameraAttributionListDataDiff = 0;
  }

  v12 = cameraAttributionListDataDiff;
  v13 = [v19 cameraAttributionListData];
  [(STListDataDiff *)v12 applyToMutableListData:v13];

  if (self)
  {
    screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
  }

  else
  {
    screenCaptureAttributionListDataDiff = 0;
  }

  v15 = screenCaptureAttributionListDataDiff;
  v16 = [v19 screenCaptureAttributionListData];
  [(STListDataDiff *)v15 applyToMutableListData:v16];
}

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self)
    {
      microphoneAttributionListDataDiff = self->_microphoneAttributionListDataDiff;
      if (v5)
      {
LABEL_4:
        v8 = v5[1];
        goto LABEL_5;
      }
    }

    else
    {
      microphoneAttributionListDataDiff = 0;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v8 = 0;
LABEL_5:
    v9 = microphoneAttributionListDataDiff;
    v10 = [(STListDataDiff *)v9 diffByApplyingDiff:v8];

    if (self)
    {
      mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
      if (v6)
      {
LABEL_7:
        v12 = v6[2];
        goto LABEL_8;
      }
    }

    else
    {
      mutedMicrophoneRecordingAttributionListDataDiff = 0;
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
LABEL_8:
    v13 = mutedMicrophoneRecordingAttributionListDataDiff;
    v14 = [(STListDataDiff *)v13 diffByApplyingDiff:v12];

    if (self)
    {
      systemAudioRecordingAttributionListDataDiff = self->_systemAudioRecordingAttributionListDataDiff;
      if (v6)
      {
LABEL_10:
        v16 = v6[3];
        goto LABEL_11;
      }
    }

    else
    {
      systemAudioRecordingAttributionListDataDiff = 0;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    v16 = 0;
LABEL_11:
    v17 = systemAudioRecordingAttributionListDataDiff;
    v18 = [(STListDataDiff *)v17 diffByApplyingDiff:v16];

    if (self)
    {
      cameraAttributionListDataDiff = self->_cameraAttributionListDataDiff;
      if (v6)
      {
LABEL_13:
        v20 = v6[4];
        goto LABEL_14;
      }
    }

    else
    {
      cameraAttributionListDataDiff = 0;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v20 = 0;
LABEL_14:
    v21 = cameraAttributionListDataDiff;
    v22 = [(STListDataDiff *)v21 diffByApplyingDiff:v20];

    if (self)
    {
      screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
      if (v6)
      {
LABEL_16:
        v24 = v6[5];
LABEL_17:
        v25 = screenCaptureAttributionListDataDiff;
        v26 = [(STListDataDiff *)v25 diffByApplyingDiff:v24];

        v27 = [[STMediaStatusDomainDataDiff alloc] initWithMicrophoneAttributionListDataDiff:v10 mutedMicrophoneRecordingAttributionListDataDiff:v14 systemAudioRecordingAttributionListDataDiff:v18 cameraAttributionListDataDiff:v22 screenCaptureAttributionListDataDiff:v26];
        goto LABEL_19;
      }
    }

    else
    {
      screenCaptureAttributionListDataDiff = 0;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    v24 = 0;
    goto LABEL_17;
  }

  v27 = 0;
LABEL_19:

  return v27;
}

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if (-[STMediaStatusDomainDataDiff isEmpty](self, "isEmpty") || ([v4 isEmpty] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v4;
      if (self)
      {
        microphoneAttributionListDataDiff = self->_microphoneAttributionListDataDiff;
      }

      else
      {
        microphoneAttributionListDataDiff = 0;
      }

      v9 = microphoneAttributionListDataDiff;
      if ([(STListDataDiff *)v9 isEmpty])
      {
        v10 = 1;
      }

      else
      {
        if (v7)
        {
          v11 = v7[1];
        }

        else
        {
          v11 = 0;
        }

        v10 = [v11 isEmpty];
      }

      if (self)
      {
        mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
      }

      else
      {
        mutedMicrophoneRecordingAttributionListDataDiff = 0;
      }

      v13 = mutedMicrophoneRecordingAttributionListDataDiff;
      if ([(STListDataDiff *)v13 isEmpty])
      {
        v14 = 1;
      }

      else
      {
        if (v7)
        {
          v15 = v7[2];
        }

        else
        {
          v15 = 0;
        }

        v14 = [v15 isEmpty];
      }

      if (self)
      {
        systemAudioRecordingAttributionListDataDiff = self->_systemAudioRecordingAttributionListDataDiff;
      }

      else
      {
        systemAudioRecordingAttributionListDataDiff = 0;
      }

      v17 = systemAudioRecordingAttributionListDataDiff;
      if ([(STListDataDiff *)v17 isEmpty])
      {
        v18 = 1;
      }

      else
      {
        if (v7)
        {
          v19 = v7[3];
        }

        else
        {
          v19 = 0;
        }

        v18 = [v19 isEmpty];
      }

      if (self)
      {
        cameraAttributionListDataDiff = self->_cameraAttributionListDataDiff;
      }

      else
      {
        cameraAttributionListDataDiff = 0;
      }

      v21 = cameraAttributionListDataDiff;
      if ([(STListDataDiff *)v21 isEmpty])
      {
        v22 = 1;
      }

      else
      {
        if (v7)
        {
          v23 = v7[4];
        }

        else
        {
          v23 = 0;
        }

        v22 = [v23 isEmpty];
      }

      if (self)
      {
        screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
      }

      else
      {
        screenCaptureAttributionListDataDiff = 0;
      }

      v25 = screenCaptureAttributionListDataDiff;
      if ([(STListDataDiff *)v25 isEmpty])
      {
        v26 = 1;
      }

      else
      {
        if (v7)
        {
          v27 = v7[5];
        }

        else
        {
          v27 = 0;
        }

        v26 = [v27 isEmpty];
      }

      v5 = v10 & v14 & v18 & v22 & v26;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  if (self)
  {
    microphoneAttributionListDataDiff = self->_microphoneAttributionListDataDiff;
  }

  else
  {
    microphoneAttributionListDataDiff = 0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __39__STMediaStatusDomainDataDiff_isEqual___block_invoke;
  v31[3] = &unk_1E85DE778;
  v8 = v6;
  v32 = v8;
  v9 = [v5 appendObject:microphoneAttributionListDataDiff counterpart:v31];
  if (self)
  {
    mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
  }

  else
  {
    mutedMicrophoneRecordingAttributionListDataDiff = 0;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_2;
  v29[3] = &unk_1E85DE778;
  v11 = v8;
  v30 = v11;
  v12 = [v5 appendObject:mutedMicrophoneRecordingAttributionListDataDiff counterpart:v29];
  if (self)
  {
    systemAudioRecordingAttributionListDataDiff = self->_systemAudioRecordingAttributionListDataDiff;
  }

  else
  {
    systemAudioRecordingAttributionListDataDiff = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_3;
  v27[3] = &unk_1E85DE778;
  v14 = v11;
  v28 = v14;
  v15 = [v5 appendObject:systemAudioRecordingAttributionListDataDiff counterpart:v27];
  if (self)
  {
    cameraAttributionListDataDiff = self->_cameraAttributionListDataDiff;
  }

  else
  {
    cameraAttributionListDataDiff = 0;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_4;
  v25[3] = &unk_1E85DE778;
  v17 = v14;
  v26 = v17;
  v18 = [v5 appendObject:cameraAttributionListDataDiff counterpart:v25];
  if (self)
  {
    self = self->_screenCaptureAttributionListDataDiff;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_5;
  v23[3] = &unk_1E85DE778;
  v24 = v17;
  v19 = v17;
  v20 = [v5 appendObject:self counterpart:v23];
  v21 = [v5 isEqual];

  return v21;
}

id __39__STMediaStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

id __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

id __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

id __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

id __39__STMediaStatusDomainDataDiff_isEqual___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    v5 = [v3 appendObject:self->_microphoneAttributionListDataDiff];
    mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
  }

  else
  {
    v15 = [v3 appendObject:0];
    mutedMicrophoneRecordingAttributionListDataDiff = 0;
  }

  v7 = [v4 appendObject:mutedMicrophoneRecordingAttributionListDataDiff];
  if (self)
  {
    v8 = [v4 appendObject:self->_systemAudioRecordingAttributionListDataDiff];
    cameraAttributionListDataDiff = self->_cameraAttributionListDataDiff;
  }

  else
  {
    v16 = [v4 appendObject:0];
    cameraAttributionListDataDiff = 0;
  }

  v10 = [v4 appendObject:cameraAttributionListDataDiff];
  if (self)
  {
    screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
  }

  else
  {
    screenCaptureAttributionListDataDiff = 0;
  }

  v12 = [v4 appendObject:screenCaptureAttributionListDataDiff];
  v13 = [v4 hash];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_microphoneAttributionListDataDiff forKey:@"microphoneAttributionListDataDiff"];
    [v5 encodeObject:self->_mutedMicrophoneRecordingAttributionListDataDiff forKey:@"mutedMicrophoneRecordingAttributionListDataDiff"];
    [v5 encodeObject:self->_systemAudioRecordingAttributionListDataDiff forKey:@"systemAudioRecordingAttributionListDataDiff"];
    [v5 encodeObject:self->_cameraAttributionListDataDiff forKey:@"cameraAttributionListDataDiff"];
    screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"microphoneAttributionListDataDiff"];
    [v5 encodeObject:0 forKey:@"mutedMicrophoneRecordingAttributionListDataDiff"];
    [v5 encodeObject:0 forKey:@"systemAudioRecordingAttributionListDataDiff"];
    [v5 encodeObject:0 forKey:@"cameraAttributionListDataDiff"];
    screenCaptureAttributionListDataDiff = 0;
  }

  [v5 encodeObject:screenCaptureAttributionListDataDiff forKey:@"screenCaptureAttributionListDataDiff"];
}

- (STMediaStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"microphoneAttributionListDataDiff"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mutedMicrophoneRecordingAttributionListDataDiff"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemAudioRecordingAttributionListDataDiff"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cameraAttributionListDataDiff"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screenCaptureAttributionListDataDiff"];

  v10 = 0;
  if (v5 && v6 && v7 && v8 && v9)
  {
    self = [(STMediaStatusDomainDataDiff *)self initWithMicrophoneAttributionListDataDiff:v5 mutedMicrophoneRecordingAttributionListDataDiff:v6 systemAudioRecordingAttributionListDataDiff:v7 cameraAttributionListDataDiff:v8 screenCaptureAttributionListDataDiff:v9];
    v10 = self;
  }

  return v10;
}

- (id)succinctDescription
{
  v2 = [(STMediaStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  v3 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = [v3 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    [v6 setActiveMultilinePrefix:v5];

    v7 = [v6 activeMultilinePrefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__STMediaStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v8 = v6;
    v11 = v8;
    v12 = v3;
    [v8 appendBodySectionWithName:0 multilinePrefix:v7 block:v10];

    v3 = v8;
  }

  return v3;
}

id __79__STMediaStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"microphoneAttributionListDataDiff" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"mutedMicrophoneRecordingAttributionListDataDiff" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"systemAudioRecordingAttributionListDataDiff" skipIfNil:1];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"cameraAttributionListDiff" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"screenCaptureAttributionListDiff" skipIfNil:1];
}

@end