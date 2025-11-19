@interface SUIBIntelligenceFlowParameterSummary
- (SUIBIntelligenceFlowParameterSummary)initWithBuilder:(id)a3;
- (SUIBIntelligenceFlowParameterSummary)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUIBIntelligenceFlowParameterSummary

- (SUIBIntelligenceFlowParameterSummary)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUIBIntelligenceFlowParameterSummary;
  v5 = [(SUIBIntelligenceFlowParameterSummary *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBIntelligenceFlowParameterSummaryMutation);
    v4[2](v4, v7);
    v6->_valueType = [(SUIBIntelligenceFlowParameterSummaryMutation *)v7 valueType];
    v8 = [(SUIBIntelligenceFlowParameterSummaryMutation *)v7 value];
    v9 = [v8 copy];
    value = v6->_value;
    v6->_value = v9;
  }

  return v6;
}

- (SUIBIntelligenceFlowParameterSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowParameterSummary::valueType"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowParameterSummary::value"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SUIBIntelligenceFlowParameterSummary_initWithCoder___block_invoke;
  v11[3] = &unk_2784BFCE8;
  v12 = v7;
  v13 = v6;
  v8 = v7;
  v9 = [(SUIBIntelligenceFlowParameterSummary *)self initWithBuilder:v11];

  return v9;
}

void __54__SUIBIntelligenceFlowParameterSummary_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setValueType:v3];
  [v4 setValue:*(a1 + 32)];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  valueType = self->_valueType;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:valueType];
  [v7 encodeObject:v6 forKey:@"SUIBIntelligenceFlowParameterSummary::valueType"];

  [v7 encodeObject:self->_value forKey:@"SUIBIntelligenceFlowParameterSummary::value"];
}

@end