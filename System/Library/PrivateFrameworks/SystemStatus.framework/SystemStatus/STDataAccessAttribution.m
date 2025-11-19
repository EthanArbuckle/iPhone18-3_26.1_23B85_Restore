@interface STDataAccessAttribution
- (BOOL)hasSatisfiedMinimumOnTime;
- (BOOL)isEqual:(id)a3;
- (STActivityAttribution)activityAttribution;
- (STActivityAttribution)audioRecordingActivityAttribution;
- (STAttributedEntity)attributedEntity;
- (STDataAccessAttribution)initWithCoder:(id)a3;
- (STDataAccessAttribution)initWithDataAccessAttribution:(id)a3;
- (STDataAccessAttribution)initWithDataAccessType:(unint64_t)a3 microphoneRecordingAttribution:(id)a4 mutedMicrophoneRecordingActivityAttribution:(id)a5 cameraCaptureAttribution:(id)a6 locationAttribution:(id)a7 recent:(BOOL)a8 startTimestamp:(double)a9 endTimestamp:(double)a10;
- (double)accessDuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDataAccessAttribution

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:{-[STDataAccessAttribution dataAccessType](self, "dataAccessType")}];
  v5 = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  v6 = [v3 appendObject:v5];

  v7 = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  v8 = [v3 appendObject:v7];

  v9 = [(STDataAccessAttribution *)self cameraCaptureAttribution];
  v10 = [v3 appendObject:v9];

  v11 = [(STDataAccessAttribution *)self locationAttribution];
  v12 = [v3 appendObject:v11];

  [(STDataAccessAttribution *)self accessStartTimestamp];
  v13 = [v3 appendDouble:?];
  [(STDataAccessAttribution *)self accessEndTimestamp];
  v14 = [v3 appendDouble:?];
  v15 = [v3 hash];

  return v15;
}

- (STAttributedEntity)attributedEntity
{
  v2 = [(STDataAccessAttribution *)self activityAttribution];
  v3 = [v2 attributedEntity];

  return v3;
}

- (STActivityAttribution)activityAttribution
{
  v4 = [(STDataAccessAttribution *)self dataAccessType];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      v5 = [(STDataAccessAttribution *)self cameraCaptureAttribution];
    }

    else
    {
      v5 = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
    }

    goto LABEL_10;
  }

  if (v4 == 2)
  {
    v5 = [(STDataAccessAttribution *)self locationAttribution];
LABEL_10:
    v6 = v5;
    v2 = [v5 activityAttribution];

    goto LABEL_11;
  }

  if (v4 == 3)
  {
    v2 = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  }

LABEL_11:

  return v2;
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

- (STDataAccessAttribution)initWithDataAccessAttribution:(id)a3
{
  v4 = a3;
  v5 = [v4 dataAccessType];
  v6 = [v4 microphoneRecordingAttribution];
  v7 = [v4 mutedMicrophoneRecordingActivityAttribution];
  v8 = [v4 cameraCaptureAttribution];
  v9 = [v4 locationAttribution];
  v10 = [v4 isRecent];
  [v4 accessStartTimestamp];
  v12 = v11;
  [v4 accessEndTimestamp];
  v14 = v13;

  v15 = [(STDataAccessAttribution *)self initWithDataAccessType:v5 microphoneRecordingAttribution:v6 mutedMicrophoneRecordingActivityAttribution:v7 cameraCaptureAttribution:v8 locationAttribution:v9 recent:v10 startTimestamp:v12 endTimestamp:v14];
  return v15;
}

- (STDataAccessAttribution)initWithDataAccessType:(unint64_t)a3 microphoneRecordingAttribution:(id)a4 mutedMicrophoneRecordingActivityAttribution:(id)a5 cameraCaptureAttribution:(id)a6 locationAttribution:(id)a7 recent:(BOOL)a8 startTimestamp:(double)a9 endTimestamp:(double)a10
{
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v33.receiver = self;
  v33.super_class = STDataAccessAttribution;
  v22 = [(STDataAccessAttribution *)&v33 init];
  v23 = v22;
  if (v22)
  {
    v22->_dataAccessType = a3;
    v24 = [v18 copy];
    microphoneRecordingAttribution = v23->_microphoneRecordingAttribution;
    v23->_microphoneRecordingAttribution = v24;

    v26 = [v19 copy];
    mutedMicrophoneRecordingActivityAttribution = v23->_mutedMicrophoneRecordingActivityAttribution;
    v23->_mutedMicrophoneRecordingActivityAttribution = v26;

    v28 = [v20 copy];
    cameraCaptureAttribution = v23->_cameraCaptureAttribution;
    v23->_cameraCaptureAttribution = v28;

    v30 = [v21 copy];
    locationAttribution = v23->_locationAttribution;
    v23->_locationAttribution = v30;

    v23->_recent = a8;
    v23->_accessStartTimestamp = a9;
    v23->_accessEndTimestamp = a10;
  }

  return v23;
}

- (STActivityAttribution)audioRecordingActivityAttribution
{
  v2 = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  v3 = [v2 activityAttribution];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STDataAccessAttribution *)self dataAccessType];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __35__STDataAccessAttribution_isEqual___block_invoke;
  v42[3] = &unk_1E85DE2F8;
  v7 = v4;
  v43 = v7;
  v8 = [v5 appendUnsignedInteger:v6 counterpart:v42];
  v9 = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __35__STDataAccessAttribution_isEqual___block_invoke_2;
  v40[3] = &unk_1E85DDCD8;
  v10 = v7;
  v41 = v10;
  v11 = [v5 appendObject:v9 counterpart:v40];

  v12 = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__STDataAccessAttribution_isEqual___block_invoke_3;
  v38[3] = &unk_1E85DDCD8;
  v13 = v10;
  v39 = v13;
  v14 = [v5 appendObject:v12 counterpart:v38];

  v15 = [(STDataAccessAttribution *)self cameraCaptureAttribution];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__STDataAccessAttribution_isEqual___block_invoke_4;
  v36[3] = &unk_1E85DDCD8;
  v16 = v13;
  v37 = v16;
  v17 = [v5 appendObject:v15 counterpart:v36];

  v18 = [(STDataAccessAttribution *)self locationAttribution];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __35__STDataAccessAttribution_isEqual___block_invoke_5;
  v34[3] = &unk_1E85DDCD8;
  v19 = v16;
  v35 = v19;
  v20 = [v5 appendObject:v18 counterpart:v34];

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
  v2 = [(STDataAccessAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STDataAccessAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STDataAccessAttribution *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__STDataAccessAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E85DDD00;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[STDataAccessAttribution dataAccessType](self forKey:{"dataAccessType"), @"dataAccessType"}];
  v4 = [(STDataAccessAttribution *)self microphoneRecordingAttribution];
  [v8 encodeObject:v4 forKey:@"microphoneRecordingAttribution"];

  v5 = [(STDataAccessAttribution *)self mutedMicrophoneRecordingActivityAttribution];
  [v8 encodeObject:v5 forKey:@"mutedMicrophoneRecordingActivityAttribution"];

  v6 = [(STDataAccessAttribution *)self cameraCaptureAttribution];
  [v8 encodeObject:v6 forKey:@"cameraCaptureAttribution"];

  v7 = [(STDataAccessAttribution *)self locationAttribution];
  [v8 encodeObject:v7 forKey:@"locationAttribution"];

  [v8 encodeBool:-[STDataAccessAttribution isRecent](self forKey:{"isRecent"), @"recent"}];
  [(STDataAccessAttribution *)self accessStartTimestamp];
  [v8 encodeDouble:@"accessStartTimestamp" forKey:?];
  [(STDataAccessAttribution *)self accessEndTimestamp];
  [v8 encodeDouble:@"accessEndTimestamp" forKey:?];
}

- (STDataAccessAttribution)initWithCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"dataAccessType"];
  if (v5 > 3)
  {
    goto LABEL_12;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"microphoneRecordingAttribution"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mutedMicrophoneRecordingActivityAttribution"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cameraCaptureAttribution"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationAttribution"];
  v10 = v9;
  if (!v5 && v6 || v5 == 3 && v7 || v5 == 1 && v8 || (v11 = 0, v5 == 2) && v9)
  {
    v12 = [v4 decodeBoolForKey:@"recent"];
    [v4 decodeDoubleForKey:@"accessStartTimestamp"];
    v14 = v13;
    [v4 decodeDoubleForKey:@"accessEndTimestamp"];
    self = [(STDataAccessAttribution *)self initWithDataAccessType:v5 microphoneRecordingAttribution:v6 mutedMicrophoneRecordingActivityAttribution:v7 cameraCaptureAttribution:v8 locationAttribution:v10 recent:v12 startTimestamp:v14 endTimestamp:v15];
    v11 = 1;
  }

  v16 = self;
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

    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

@end