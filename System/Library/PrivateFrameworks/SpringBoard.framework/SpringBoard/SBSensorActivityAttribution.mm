@interface SBSensorActivityAttribution
- (BOOL)isEqual:(id)equal;
- (SBSensorActivityAttribution)initWithDataAccessAttribution:(id)attribution;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation SBSensorActivityAttribution

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SBSensorActivityAttribution_hash__block_invoke;
  v8[3] = &unk_2783A9500;
  v8[4] = self;
  v4 = [builder appendHashingBlocks:{v8, 0}];
  v5 = [builder appendInteger:{-[SBSensorActivityAttribution sensor](self, "sensor")}];
  v6 = [builder hash];

  return v6;
}

id __35__SBSensorActivityAttribution_hash__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = SBSensorActivityAttribution;
  return objc_msgSendSuper2(&v2, sel_hash);
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSensorActivityAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBSensorActivityAttribution;
  succinctDescriptionBuilder = [(SBActivityAttribution *)&v7 succinctDescriptionBuilder];
  [(SBSensorActivityAttribution *)self sensor];
  v4 = SBFDescriptionForSensorType();
  v5 = [succinctDescriptionBuilder appendObject:v4 withName:@"sensor"];

  return succinctDescriptionBuilder;
}

- (SBSensorActivityAttribution)initWithDataAccessAttribution:(id)attribution
{
  attributionCopy = attribution;
  dataAccessType = [attributionCopy dataAccessType];
  switch(dataAccessType)
  {
    case 2:
      locationAttribution = [attributionCopy locationAttribution];
      v7 = 2;
      goto LABEL_7;
    case 1:
      locationAttribution = [attributionCopy cameraCaptureAttribution];
      v7 = 0;
      goto LABEL_7;
    case 0:
      locationAttribution = [attributionCopy microphoneRecordingAttribution];
      v7 = 1;
LABEL_7:
      selfCopy = [locationAttribution activityAttribution];

LABEL_8:
      v14.receiver = self;
      v14.super_class = SBSensorActivityAttribution;
      v9 = [(SBActivityAttribution *)&v14 initWithSTActivityAttribution:selfCopy];
      v10 = v9;
      if (v9)
      {
        v9->_sensor = v7;
        v11 = [attributionCopy copy];
        dataAccessAttribution = v10->_dataAccessAttribution;
        v10->_dataAccessAttribution = v11;
      }

      self = v10;

      selfCopy = self;
      goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    selfCopy = 0;
    goto LABEL_11;
  }

  selfCopy = [attributionCopy mutedMicrophoneRecordingActivityAttribution];
  if (selfCopy)
  {
    v7 = 3;
    goto LABEL_8;
  }

LABEL_11:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  sensor = [(SBSensorActivityAttribution *)self sensor];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__SBSensorActivityAttribution_isEqual___block_invoke;
  v12[3] = &unk_2783ACDE0;
  v7 = equalCopy;
  v13 = v7;
  v8 = [v5 appendInteger:sensor counterpart:v12];
  if ([v5 isEqual])
  {
    v11.receiver = self;
    v11.super_class = SBSensorActivityAttribution;
    v9 = [(SBActivityAttribution *)&v11 isEqual:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSensorActivityAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = SBSensorActivityAttribution;
  prefixCopy = prefix;
  v5 = [(SBActivityAttribution *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBSensorActivityAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __69__SBSensorActivityAttribution_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) sensor];
  v3 = SBFDescriptionForSensorType();
  v2 = [v1 appendObject:v3 withName:@"sensor"];
}

@end