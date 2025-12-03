@interface STDataAccessAttribution
- (BOOL)hasSatisfiedMinimumOnTime;
- (BOOL)isEqual:(id)equal;
- (STActivityAttribution)activityAttribution;
- (STActivityAttribution)audioRecordingActivityAttribution;
- (STAttributedEntity)attributedEntity;
- (STDataAccessAttribution)initWithCoder:(id)coder;
- (STDataAccessAttribution)initWithDataAccessAttribution:(id)attribution;
- (STDataAccessAttribution)initWithDataAccessType:(unint64_t)type microphoneRecordingAttribution:(id)attribution mutedMicrophoneRecordingActivityAttribution:(id)activityAttribution cameraCaptureAttribution:(id)captureAttribution locationAttribution:(id)locationAttribution recent:(BOOL)recent startTimestamp:(double)timestamp endTimestamp:(double)self0;
- (double)accessDuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDataAccessAttribution

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendUnsignedInteger:{-[STDataAccessAttribution dataAccessType](self, "dataAccessType")}];
  microphoneRecordingAttribution = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  v6 = [builder appendObject:microphoneRecordingAttribution];

  mutedMicrophoneRecordingActivityAttribution = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  v8 = [builder appendObject:mutedMicrophoneRecordingActivityAttribution];

  cameraCaptureAttribution = [(STDataAccessAttribution *)self cameraCaptureAttribution];
  v10 = [builder appendObject:cameraCaptureAttribution];

  locationAttribution = [(STDataAccessAttribution *)self locationAttribution];
  v12 = [builder appendObject:locationAttribution];

  [(STDataAccessAttribution *)self accessStartTimestamp];
  v13 = [builder appendDouble:?];
  [(STDataAccessAttribution *)self accessEndTimestamp];
  v14 = [builder appendDouble:?];
  v15 = [builder hash];

  return v15;
}

- (STAttributedEntity)attributedEntity
{
  activityAttribution = [(STDataAccessAttribution *)self activityAttribution];
  attributedEntity = [activityAttribution attributedEntity];

  return attributedEntity;
}

- (STActivityAttribution)activityAttribution
{
  dataAccessType = [(STDataAccessAttribution *)self dataAccessType];
  if (dataAccessType <= 1)
  {
    if (dataAccessType)
    {
      if (dataAccessType != 1)
      {
        goto LABEL_11;
      }

      cameraCaptureAttribution = [(STDataAccessAttribution *)self cameraCaptureAttribution];
    }

    else
    {
      cameraCaptureAttribution = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
    }

    goto LABEL_10;
  }

  if (dataAccessType == 2)
  {
    cameraCaptureAttribution = [(STDataAccessAttribution *)self locationAttribution];
LABEL_10:
    v6 = cameraCaptureAttribution;
    activityAttribution = [cameraCaptureAttribution activityAttribution];

    goto LABEL_11;
  }

  if (dataAccessType == 3)
  {
    activityAttribution = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  }

LABEL_11:

  return activityAttribution;
}

- (double)accessDuration
{
  accessEndTimestamp = self->_accessEndTimestamp;
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v4 = self->_accessEndTimestamp;
  }

  else
  {
    BSContinuousMachTimeNow();
  }

  result = v4 - self->_accessStartTimestamp;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (STDataAccessAttribution)initWithDataAccessAttribution:(id)attribution
{
  attributionCopy = attribution;
  dataAccessType = [attributionCopy dataAccessType];
  microphoneRecordingAttribution = [attributionCopy microphoneRecordingAttribution];
  mutedMicrophoneRecordingActivityAttribution = [attributionCopy mutedMicrophoneRecordingActivityAttribution];
  cameraCaptureAttribution = [attributionCopy cameraCaptureAttribution];
  locationAttribution = [attributionCopy locationAttribution];
  isRecent = [attributionCopy isRecent];
  [attributionCopy accessStartTimestamp];
  v12 = v11;
  [attributionCopy accessEndTimestamp];
  v14 = v13;

  v15 = [(STDataAccessAttribution *)self initWithDataAccessType:dataAccessType microphoneRecordingAttribution:microphoneRecordingAttribution mutedMicrophoneRecordingActivityAttribution:mutedMicrophoneRecordingActivityAttribution cameraCaptureAttribution:cameraCaptureAttribution locationAttribution:locationAttribution recent:isRecent startTimestamp:v12 endTimestamp:v14];
  return v15;
}

- (STDataAccessAttribution)initWithDataAccessType:(unint64_t)type microphoneRecordingAttribution:(id)attribution mutedMicrophoneRecordingActivityAttribution:(id)activityAttribution cameraCaptureAttribution:(id)captureAttribution locationAttribution:(id)locationAttribution recent:(BOOL)recent startTimestamp:(double)timestamp endTimestamp:(double)self0
{
  attributionCopy = attribution;
  activityAttributionCopy = activityAttribution;
  captureAttributionCopy = captureAttribution;
  locationAttributionCopy = locationAttribution;
  v33.receiver = self;
  v33.super_class = STDataAccessAttribution;
  v22 = [(STDataAccessAttribution *)&v33 init];
  v23 = v22;
  if (v22)
  {
    v22->_dataAccessType = type;
    v24 = [attributionCopy copy];
    microphoneRecordingAttribution = v23->_microphoneRecordingAttribution;
    v23->_microphoneRecordingAttribution = v24;

    v26 = [activityAttributionCopy copy];
    mutedMicrophoneRecordingActivityAttribution = v23->_mutedMicrophoneRecordingActivityAttribution;
    v23->_mutedMicrophoneRecordingActivityAttribution = v26;

    v28 = [captureAttributionCopy copy];
    cameraCaptureAttribution = v23->_cameraCaptureAttribution;
    v23->_cameraCaptureAttribution = v28;

    v30 = [locationAttributionCopy copy];
    locationAttribution = v23->_locationAttribution;
    v23->_locationAttribution = v30;

    v23->_recent = recent;
    v23->_accessStartTimestamp = timestamp;
    v23->_accessEndTimestamp = endTimestamp;
  }

  return v23;
}

- (STActivityAttribution)audioRecordingActivityAttribution
{
  microphoneRecordingAttribution = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  activityAttribution = [microphoneRecordingAttribution activityAttribution];

  return activityAttribution;
}

- (BOOL)hasSatisfiedMinimumOnTime
{
  if (self->_recent)
  {
    return 1;
  }

  BSContinuousMachTimeNow();
  v5 = v4 - self->_accessStartTimestamp;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  return v5 >= 3.0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  dataAccessType = [(STDataAccessAttribution *)self dataAccessType];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __35__STDataAccessAttribution_isEqual___block_invoke;
  v42[3] = &unk_1E85DE2F8;
  v7 = equalCopy;
  v43 = v7;
  v8 = [v5 appendUnsignedInteger:dataAccessType counterpart:v42];
  microphoneRecordingAttribution = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __35__STDataAccessAttribution_isEqual___block_invoke_2;
  v40[3] = &unk_1E85DDCD8;
  v10 = v7;
  v41 = v10;
  v11 = [v5 appendObject:microphoneRecordingAttribution counterpart:v40];

  mutedMicrophoneRecordingActivityAttribution = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__STDataAccessAttribution_isEqual___block_invoke_3;
  v38[3] = &unk_1E85DDCD8;
  v13 = v10;
  v39 = v13;
  v14 = [v5 appendObject:mutedMicrophoneRecordingActivityAttribution counterpart:v38];

  cameraCaptureAttribution = [(STDataAccessAttribution *)self cameraCaptureAttribution];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__STDataAccessAttribution_isEqual___block_invoke_4;
  v36[3] = &unk_1E85DDCD8;
  v16 = v13;
  v37 = v16;
  v17 = [v5 appendObject:cameraCaptureAttribution counterpart:v36];

  locationAttribution = [(STDataAccessAttribution *)self locationAttribution];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __35__STDataAccessAttribution_isEqual___block_invoke_5;
  v34[3] = &unk_1E85DDCD8;
  v19 = v16;
  v35 = v19;
  v20 = [v5 appendObject:locationAttribution counterpart:v34];

  [(STDataAccessAttribution *)self accessStartTimestamp];
  v22 = v21;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __35__STDataAccessAttribution_isEqual___block_invoke_6;
  v32[3] = &unk_1E85DEAF8;
  v23 = v19;
  v33 = v23;
  v24 = [v5 appendDouble:v32 counterpart:v22];
  [(STDataAccessAttribution *)self accessEndTimestamp];
  v26 = v25;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __35__STDataAccessAttribution_isEqual___block_invoke_7;
  v30[3] = &unk_1E85DEAF8;
  v31 = v23;
  v27 = v23;
  v28 = [v5 appendDouble:v30 counterpart:v26];
  LOBYTE(v23) = [v5 isEqual];

  return v23;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STDataAccessAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STDataAccessAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STDataAccessAttribution *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__STDataAccessAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E85DDD00;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __65__STDataAccessAttribution_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataAccessType];
  if (v2 > 3)
  {
    v3 = @"invalid";
  }

  else
  {
    v3 = off_1E85DF278[v2];
  }

  [*(a1 + 40) appendString:v3 withName:@"type"];
  v4 = [*(a1 + 32) isRecent];
  v5 = @"active";
  if (v4)
  {
    v5 = @"recent";
  }

  v28 = v5;
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_11;
  }

  BSContinuousMachTimeNow();
  v8 = v7 - *(v6 + 56);
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  if (v8 < 3.0)
  {
    v9 = [(__CFString *)v28 stringByAppendingString:@" (in minimum on time)"];

    v10 = v9;
  }

  else
  {
LABEL_11:
    v10 = v28;
  }

  v29 = v10;
  [*(a1 + 40) appendString:? withName:?];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (v11)
  {
    v13 = *(v11 + 56);
    BSContinuousMachTimeNow();
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v13 - v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v12 appendObject:v15 withName:@"startDate"];

  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (v18)
  {
    v19 = *(v18 + 8);
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      v20 = v18[8];
      BSContinuousMachTimeNow();
      v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v20 - v21];
    }

    else
    {
      v18 = 0;
    }
  }

  v22 = [v17 appendObject:v18 withName:@"endDate" skipIfNil:1];

  if (v2 > 1)
  {
    v23 = v29;
    if (v2 == 2)
    {
      v24 = *(a1 + 40);
      v25 = [*(a1 + 32) locationAttribution];
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_28;
      }

      v24 = *(a1 + 40);
      v25 = [*(a1 + 32) mutedMicrophoneRecordingActivityAttribution];
    }
  }

  else
  {
    v23 = v29;
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_28;
      }

      v24 = *(a1 + 40);
      v25 = [*(a1 + 32) cameraCaptureAttribution];
    }

    else
    {
      v24 = *(a1 + 40);
      v25 = [*(a1 + 32) microphoneRecordingAttribution];
    }
  }

  v26 = v25;
  v27 = [v24 appendObject:v25 withName:@"attribution"];

  v23 = v29;
LABEL_28:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[STDataAccessAttribution dataAccessType](self forKey:{"dataAccessType"), @"dataAccessType"}];
  microphoneRecordingAttribution = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  [coderCopy encodeObject:microphoneRecordingAttribution forKey:@"microphoneRecordingAttribution"];

  mutedMicrophoneRecordingActivityAttribution = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  [coderCopy encodeObject:mutedMicrophoneRecordingActivityAttribution forKey:@"mutedMicrophoneRecordingActivityAttribution"];

  cameraCaptureAttribution = [(STDataAccessAttribution *)self cameraCaptureAttribution];
  [coderCopy encodeObject:cameraCaptureAttribution forKey:@"cameraCaptureAttribution"];

  locationAttribution = [(STDataAccessAttribution *)self locationAttribution];
  [coderCopy encodeObject:locationAttribution forKey:@"locationAttribution"];

  [coderCopy encodeBool:-[STDataAccessAttribution isRecent](self forKey:{"isRecent"), @"recent"}];
  [(STDataAccessAttribution *)self accessStartTimestamp];
  [coderCopy encodeDouble:@"accessStartTimestamp" forKey:?];
  [(STDataAccessAttribution *)self accessEndTimestamp];
  [coderCopy encodeDouble:@"accessEndTimestamp" forKey:?];
}

- (STDataAccessAttribution)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"dataAccessType"];
  if (v5 > 3)
  {
    goto LABEL_12;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"microphoneRecordingAttribution"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mutedMicrophoneRecordingActivityAttribution"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraCaptureAttribution"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationAttribution"];
  v10 = v9;
  if (!v5 && v6 || v5 == 3 && v7 || v5 == 1 && v8 || (v11 = 0, v5 == 2) && v9)
  {
    v12 = [coderCopy decodeBoolForKey:@"recent"];
    [coderCopy decodeDoubleForKey:@"accessStartTimestamp"];
    v14 = v13;
    [coderCopy decodeDoubleForKey:@"accessEndTimestamp"];
    self = [(STDataAccessAttribution *)self initWithDataAccessType:v5 microphoneRecordingAttribution:v6 mutedMicrophoneRecordingActivityAttribution:v7 cameraCaptureAttribution:v8 locationAttribution:v10 recent:v12 startTimestamp:v14 endTimestamp:v15];
    v11 = 1;
  }

  selfCopy = self;
  if ((v11 & 1) == 0)
  {
LABEL_12:
    v17 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v5 > 3)
      {
        v20 = @"invalid";
      }

      else
      {
        v20 = off_1E85DF278[v5];
      }

      v21 = 134349314;
      v22 = v5;
      v23 = 2114;
      v24 = v20;
      _os_log_error_impl(&dword_1DA9C2000, v17, OS_LOG_TYPE_ERROR, "decoded invalid data access attribution of type: %{public}lu (%{public}@)", &v21, 0x16u);
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end