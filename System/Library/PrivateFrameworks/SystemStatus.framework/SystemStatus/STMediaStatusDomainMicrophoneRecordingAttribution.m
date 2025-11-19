@interface STMediaStatusDomainMicrophoneRecordingAttribution
- (BOOL)isEqual:(id)a3;
- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithActivityAttribution:(id)a3 maximumHistoryAccessed:(double)a4;
- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithCoder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMediaStatusDomainMicrophoneRecordingAttribution

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self activityAttribution];
  v5 = [v3 appendObject:v4];

  [(STMediaStatusDomainMicrophoneRecordingAttribution *)self maximumHistoryAccessed];
  v6 = [v3 appendDouble:?];
  v7 = [v3 hash];

  return v7;
}

- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithActivityAttribution:(id)a3 maximumHistoryAccessed:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = STMediaStatusDomainMicrophoneRecordingAttribution;
  v7 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    activityAttribution = v7->_activityAttribution;
    v7->_activityAttribution = v8;

    v7->_maximumHistoryAccessed = a4;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self activityAttribution];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__STMediaStatusDomainMicrophoneRecordingAttribution_isEqual___block_invoke;
  v19[3] = &unk_1E85DDCD8;
  v7 = v4;
  v20 = v7;
  v8 = [v5 appendObject:v6 counterpart:v19];

  [(STMediaStatusDomainMicrophoneRecordingAttribution *)self maximumHistoryAccessed];
  v10 = v9;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __61__STMediaStatusDomainMicrophoneRecordingAttribution_isEqual___block_invoke_2;
  v17 = &unk_1E85DEAF8;
  v18 = v7;
  v11 = v7;
  v12 = [v5 appendDouble:&v14 counterpart:v10];
  LOBYTE(v7) = [v5 isEqual];

  return v7;
}

- (id)succinctDescription
{
  v2 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__STMediaStatusDomainMicrophoneRecordingAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __91__STMediaStatusDomainMicrophoneRecordingAttribution_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activityAttribution];
  v4 = [v2 appendObject:v3 withName:@"activityAttribution"];

  v5 = *(a1 + 32);
  [*(a1 + 40) maximumHistoryAccessed];
  return [v5 appendDouble:@"maximumHistoryAccessed" withName:0x7FFFFFFFFFFFFFFFLL decimalPrecision:?];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self activityAttribution];
  [v5 encodeObject:v4 forKey:@"activityAttribution"];

  [(STMediaStatusDomainMicrophoneRecordingAttribution *)self maximumHistoryAccessed];
  [v5 encodeDouble:@"maximumHistoryAccessed" forKey:?];
}

- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];
  [v4 decodeDoubleForKey:@"maximumHistoryAccessed"];
  v7 = v6;

  if (v5)
  {
    self = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self initWithActivityAttribution:v5 maximumHistoryAccessed:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end