@interface STMediaStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STMediaStatusDomainDataDiff)init;
- (STMediaStatusDomainDataDiff)initWithCoder:(id)coder;
- (STMediaStatusDomainDataDiff)initWithMicrophoneAttributionListDataDiff:(id)diff mutedMicrophoneRecordingAttributionListDataDiff:(id)dataDiff systemAudioRecordingAttributionListDataDiff:(id)listDataDiff cameraAttributionListDataDiff:(id)attributionListDataDiff screenCaptureAttributionListDataDiff:(id)captureAttributionListDataDiff;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingToData:(id)data;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)data;
- (void)encodeWithCoder:(id)coder;
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

          isEmpty = [(STListDataDiff *)screenCaptureAttributionListDataDiff isEmpty];
        }

        else
        {
          isEmpty = 0;
        }
      }

      else
      {
        isEmpty = 0;
      }
    }

    else
    {
      isEmpty = 0;
    }
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

+ (id)diffFromData:(id)data toData:(id)toData
{
  toDataCopy = toData;
  dataCopy = data;
  microphoneAttributionListData = [dataCopy microphoneAttributionListData];
  microphoneAttributionListData2 = [toDataCopy microphoneAttributionListData];
  v9 = [STListDataDiff diffFromListData:microphoneAttributionListData toListData:microphoneAttributionListData2];

  mutedMicrophoneRecordingAttributionListData = [dataCopy mutedMicrophoneRecordingAttributionListData];
  mutedMicrophoneRecordingAttributionListData2 = [toDataCopy mutedMicrophoneRecordingAttributionListData];
  v12 = [STListDataDiff diffFromListData:mutedMicrophoneRecordingAttributionListData toListData:mutedMicrophoneRecordingAttributionListData2];

  systemAudioRecordingAttributionListData = [dataCopy systemAudioRecordingAttributionListData];
  systemAudioRecordingAttributionListData2 = [toDataCopy systemAudioRecordingAttributionListData];
  v15 = [STListDataDiff diffFromListData:systemAudioRecordingAttributionListData toListData:systemAudioRecordingAttributionListData2];

  cameraAttributionListData = [dataCopy cameraAttributionListData];
  cameraAttributionListData2 = [toDataCopy cameraAttributionListData];
  v18 = [STListDataDiff diffFromListData:cameraAttributionListData toListData:cameraAttributionListData2];

  screenCaptureAttributionListData = [dataCopy screenCaptureAttributionListData];

  screenCaptureAttributionListData2 = [toDataCopy screenCaptureAttributionListData];

  v21 = [STListDataDiff diffFromListData:screenCaptureAttributionListData toListData:screenCaptureAttributionListData2];

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

- (STMediaStatusDomainDataDiff)initWithMicrophoneAttributionListDataDiff:(id)diff mutedMicrophoneRecordingAttributionListDataDiff:(id)dataDiff systemAudioRecordingAttributionListDataDiff:(id)listDataDiff cameraAttributionListDataDiff:(id)attributionListDataDiff screenCaptureAttributionListDataDiff:(id)captureAttributionListDataDiff
{
  diffCopy = diff;
  dataDiffCopy = dataDiff;
  listDataDiffCopy = listDataDiff;
  attributionListDataDiffCopy = attributionListDataDiff;
  captureAttributionListDataDiffCopy = captureAttributionListDataDiff;
  v29.receiver = self;
  v29.super_class = STMediaStatusDomainDataDiff;
  v17 = [(STMediaStatusDomainDataDiff *)&v29 init];
  if (v17)
  {
    v18 = [diffCopy copy];
    microphoneAttributionListDataDiff = v17->_microphoneAttributionListDataDiff;
    v17->_microphoneAttributionListDataDiff = v18;

    v20 = [dataDiffCopy copy];
    mutedMicrophoneRecordingAttributionListDataDiff = v17->_mutedMicrophoneRecordingAttributionListDataDiff;
    v17->_mutedMicrophoneRecordingAttributionListDataDiff = v20;

    v22 = [listDataDiffCopy copy];
    systemAudioRecordingAttributionListDataDiff = v17->_systemAudioRecordingAttributionListDataDiff;
    v17->_systemAudioRecordingAttributionListDataDiff = v22;

    v24 = [attributionListDataDiffCopy copy];
    cameraAttributionListDataDiff = v17->_cameraAttributionListDataDiff;
    v17->_cameraAttributionListDataDiff = v24;

    v26 = [captureAttributionListDataDiffCopy copy];
    screenCaptureAttributionListDataDiff = v17->_screenCaptureAttributionListDataDiff;
    v17->_screenCaptureAttributionListDataDiff = v26;
  }

  return v17;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STMediaStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  dataCopy = data;
  if (self)
  {
    v4 = self->_microphoneAttributionListDataDiff;
    microphoneAttributionListData = [dataCopy microphoneAttributionListData];
    [(STListDataDiff *)v4 applyToMutableListData:microphoneAttributionListData];

    mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
  }

  else
  {
    microphoneAttributionListData2 = [dataCopy microphoneAttributionListData];
    [0 applyToMutableListData:microphoneAttributionListData2];

    mutedMicrophoneRecordingAttributionListDataDiff = 0;
  }

  v7 = mutedMicrophoneRecordingAttributionListDataDiff;
  mutedMicrophoneRecordingAttributionListData = [dataCopy mutedMicrophoneRecordingAttributionListData];
  [(STListDataDiff *)v7 applyToMutableListData:mutedMicrophoneRecordingAttributionListData];

  if (self)
  {
    v9 = self->_systemAudioRecordingAttributionListDataDiff;
    systemAudioRecordingAttributionListData = [dataCopy systemAudioRecordingAttributionListData];
    [(STListDataDiff *)v9 applyToMutableListData:systemAudioRecordingAttributionListData];

    cameraAttributionListDataDiff = self->_cameraAttributionListDataDiff;
  }

  else
  {
    systemAudioRecordingAttributionListData2 = [dataCopy systemAudioRecordingAttributionListData];
    [0 applyToMutableListData:systemAudioRecordingAttributionListData2];

    cameraAttributionListDataDiff = 0;
  }

  v12 = cameraAttributionListDataDiff;
  cameraAttributionListData = [dataCopy cameraAttributionListData];
  [(STListDataDiff *)v12 applyToMutableListData:cameraAttributionListData];

  if (self)
  {
    screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
  }

  else
  {
    screenCaptureAttributionListDataDiff = 0;
  }

  v15 = screenCaptureAttributionListDataDiff;
  screenCaptureAttributionListData = [dataCopy screenCaptureAttributionListData];
  [(STListDataDiff *)v15 applyToMutableListData:screenCaptureAttributionListData];
}

- (id)diffByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diffCopy;
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

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if (-[STMediaStatusDomainDataDiff isEmpty](self, "isEmpty") || ([diffCopy isEmpty] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = diffCopy;
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
        isEmpty = 1;
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

        isEmpty = [v11 isEmpty];
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
        isEmpty2 = 1;
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

        isEmpty2 = [v15 isEmpty];
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
        isEmpty3 = 1;
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

        isEmpty3 = [v19 isEmpty];
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
        isEmpty4 = 1;
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

        isEmpty4 = [v23 isEmpty];
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
        isEmpty5 = 1;
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

        isEmpty5 = [v27 isEmpty];
      }

      v5 = isEmpty & isEmpty2 & isEmpty3 & isEmpty4 & isEmpty5;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    v5 = [builder appendObject:self->_microphoneAttributionListDataDiff];
    mutedMicrophoneRecordingAttributionListDataDiff = self->_mutedMicrophoneRecordingAttributionListDataDiff;
  }

  else
  {
    v15 = [builder appendObject:0];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:self->_microphoneAttributionListDataDiff forKey:@"microphoneAttributionListDataDiff"];
    [coderCopy encodeObject:self->_mutedMicrophoneRecordingAttributionListDataDiff forKey:@"mutedMicrophoneRecordingAttributionListDataDiff"];
    [coderCopy encodeObject:self->_systemAudioRecordingAttributionListDataDiff forKey:@"systemAudioRecordingAttributionListDataDiff"];
    [coderCopy encodeObject:self->_cameraAttributionListDataDiff forKey:@"cameraAttributionListDataDiff"];
    screenCaptureAttributionListDataDiff = self->_screenCaptureAttributionListDataDiff;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"microphoneAttributionListDataDiff"];
    [coderCopy encodeObject:0 forKey:@"mutedMicrophoneRecordingAttributionListDataDiff"];
    [coderCopy encodeObject:0 forKey:@"systemAudioRecordingAttributionListDataDiff"];
    [coderCopy encodeObject:0 forKey:@"cameraAttributionListDataDiff"];
    screenCaptureAttributionListDataDiff = 0;
  }

  [coderCopy encodeObject:screenCaptureAttributionListDataDiff forKey:@"screenCaptureAttributionListDataDiff"];
}

- (STMediaStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"microphoneAttributionListDataDiff"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutedMicrophoneRecordingAttributionListDataDiff"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemAudioRecordingAttributionListDataDiff"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraAttributionListDataDiff"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenCaptureAttributionListDataDiff"];

  selfCopy = 0;
  if (v5 && v6 && v7 && v8 && v9)
  {
    self = [(STMediaStatusDomainDataDiff *)self initWithMicrophoneAttributionListDataDiff:v5 mutedMicrophoneRecordingAttributionListDataDiff:v6 systemAudioRecordingAttributionListDataDiff:v7 cameraAttributionListDataDiff:v8 screenCaptureAttributionListDataDiff:v9];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STMediaStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [selfCopy succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];

    activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__STMediaStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v10[3] = &unk_1E85DDD00;
    v8 = succinctDescriptionBuilder;
    v11 = v8;
    v12 = selfCopy;
    [v8 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v10];

    selfCopy = v8;
  }

  return selfCopy;
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