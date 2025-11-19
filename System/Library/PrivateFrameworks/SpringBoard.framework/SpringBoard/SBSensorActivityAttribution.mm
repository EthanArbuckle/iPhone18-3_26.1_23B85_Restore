@interface SBSensorActivityAttribution
- (BOOL)isEqual:(id)a3;
- (SBSensorActivityAttribution)initWithDataAccessAttribution:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation SBSensorActivityAttribution

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SBSensorActivityAttribution_hash__block_invoke;
  v8[3] = &unk_2783A9500;
  v8[4] = self;
  v4 = [v3 appendHashingBlocks:{v8, 0}];
  v5 = [v3 appendInteger:{-[SBSensorActivityAttribution sensor](self, "sensor")}];
  v6 = [v3 hash];

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
  v2 = [(SBSensorActivityAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBSensorActivityAttribution;
  v3 = [(SBActivityAttribution *)&v7 succinctDescriptionBuilder];
  [(SBSensorActivityAttribution *)self sensor];
  v4 = SBFDescriptionForSensorType();
  v5 = [v3 appendObject:v4 withName:@"sensor"];

  return v3;
}

- (SBSensorActivityAttribution)initWithDataAccessAttribution:(id)a3
{
  v4 = a3;
  v5 = [v4 dataAccessType];
  switch(v5)
  {
    case 2:
      v6 = [v4 locationAttribution];
      v7 = 2;
      goto LABEL_7;
    case 1:
      v6 = [v4 cameraCaptureAttribution];
      v7 = 0;
      goto LABEL_7;
    case 0:
      v6 = [v4 microphoneRecordingAttribution];
      v7 = 1;
LABEL_7:
      v8 = [v6 activityAttribution];

LABEL_8:
      v14.receiver = self;
      v14.super_class = SBSensorActivityAttribution;
      v9 = [(SBActivityAttribution *)&v14 initWithSTActivityAttribution:v8];
      v10 = v9;
      if (v9)
      {
        v9->_sensor = v7;
        v11 = [v4 copy];
        dataAccessAttribution = v10->_dataAccessAttribution;
        v10->_dataAccessAttribution = v11;
      }

      self = v10;

      v8 = self;
      goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = [v4 mutedMicrophoneRecordingActivityAttribution];
  if (v8)
  {
    v7 = 3;
    goto LABEL_8;
  }

LABEL_11:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(SBSensorActivityAttribution *)self sensor];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__SBSensorActivityAttribution_isEqual___block_invoke;
  v12[3] = &unk_2783ACDE0;
  v7 = v4;
  v13 = v7;
  v8 = [v5 appendInteger:v6 counterpart:v12];
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSensorActivityAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBSensorActivityAttribution;
  v4 = a3;
  v5 = [(SBActivityAttribution *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SBSensorActivityAttribution_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

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