@interface SUIBIntelligenceFlowParameterSummary
- (SUIBIntelligenceFlowParameterSummary)initWithBuilder:(id)builder;
- (SUIBIntelligenceFlowParameterSummary)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUIBIntelligenceFlowParameterSummary

- (SUIBIntelligenceFlowParameterSummary)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = SUIBIntelligenceFlowParameterSummary;
  v5 = [(SUIBIntelligenceFlowParameterSummary *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SUIBIntelligenceFlowParameterSummaryMutation);
    builderCopy[2](builderCopy, v7);
    v6->_valueType = [(SUIBIntelligenceFlowParameterSummaryMutation *)v7 valueType];
    value = [(SUIBIntelligenceFlowParameterSummaryMutation *)v7 value];
    v9 = [value copy];
    value = v6->_value;
    v6->_value = v9;
  }

  return v6;
}

- (SUIBIntelligenceFlowParameterSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowParameterSummary::valueType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowParameterSummary::value"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SUIBIntelligenceFlowParameterSummary_initWithCoder___block_invoke;
  v11[3] = &unk_2784BFCE8;
  v12 = v7;
  v13 = unsignedIntegerValue;
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  valueType = self->_valueType;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:valueType];
  [coderCopy encodeObject:v6 forKey:@"SUIBIntelligenceFlowParameterSummary::valueType"];

  [coderCopy encodeObject:self->_value forKey:@"SUIBIntelligenceFlowParameterSummary::value"];
}

@end