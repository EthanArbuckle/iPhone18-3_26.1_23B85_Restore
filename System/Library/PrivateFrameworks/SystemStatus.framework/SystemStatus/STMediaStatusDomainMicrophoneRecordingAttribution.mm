@interface STMediaStatusDomainMicrophoneRecordingAttribution
- (BOOL)isEqual:(id)equal;
- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithActivityAttribution:(id)attribution maximumHistoryAccessed:(double)accessed;
- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithCoder:(id)coder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMediaStatusDomainMicrophoneRecordingAttribution

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  activityAttribution = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self activityAttribution];
  v5 = [builder appendObject:activityAttribution];

  [(STMediaStatusDomainMicrophoneRecordingAttribution *)self maximumHistoryAccessed];
  v6 = [builder appendDouble:?];
  v7 = [builder hash];

  return v7;
}

- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithActivityAttribution:(id)attribution maximumHistoryAccessed:(double)accessed
{
  attributionCopy = attribution;
  v11.receiver = self;
  v11.super_class = STMediaStatusDomainMicrophoneRecordingAttribution;
  v7 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)&v11 init];
  if (v7)
  {
    v8 = [attributionCopy copy];
    activityAttribution = v7->_activityAttribution;
    v7->_activityAttribution = v8;

    v7->_maximumHistoryAccessed = accessed;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  activityAttribution = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self activityAttribution];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__STMediaStatusDomainMicrophoneRecordingAttribution_isEqual___block_invoke;
  v19[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendObject:activityAttribution counterpart:v19];

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
  succinctDescriptionBuilder = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__STMediaStatusDomainMicrophoneRecordingAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E85DDD00;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityAttribution = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self activityAttribution];
  [coderCopy encodeObject:activityAttribution forKey:@"activityAttribution"];

  [(STMediaStatusDomainMicrophoneRecordingAttribution *)self maximumHistoryAccessed];
  [coderCopy encodeDouble:@"maximumHistoryAccessed" forKey:?];
}

- (STMediaStatusDomainMicrophoneRecordingAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityAttribution"];
  [coderCopy decodeDoubleForKey:@"maximumHistoryAccessed"];
  v7 = v6;

  if (v5)
  {
    self = [(STMediaStatusDomainMicrophoneRecordingAttribution *)self initWithActivityAttribution:v5 maximumHistoryAccessed:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end