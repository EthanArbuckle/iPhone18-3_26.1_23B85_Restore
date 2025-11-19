@interface SUIBIntelligenceFlowActionSummary
- (SUIBIntelligenceFlowActionSummary)initWithBuilder:(id)a3;
- (SUIBIntelligenceFlowActionSummary)initWithCoder:(id)a3;
- (id)parameterMatches;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUIBIntelligenceFlowActionSummary

- (SUIBIntelligenceFlowActionSummary)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUIBIntelligenceFlowActionSummary;
  v5 = [(SUIBIntelligenceFlowActionSummary *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBIntelligenceFlowActionSummaryMutation);
    v4[2](v4, v7);
    v8 = [(SUIBIntelligenceFlowActionSummaryMutation *)v7 formatString];
    v9 = [v8 copy];
    formatString = v6->_formatString;
    v6->_formatString = v9;

    v11 = [(SUIBIntelligenceFlowActionSummaryMutation *)v7 parameterSummaries];
    v12 = [v11 copy];
    parameterSummaries = v6->_parameterSummaries;
    v6->_parameterSummaries = v12;
  }

  return v6;
}

- (SUIBIntelligenceFlowActionSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowActionSummary::formatString"];
  v6 = objc_opt_class();
  v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowActionSummary::parameterSummaries"];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SUIBIntelligenceFlowActionSummary_initWithCoder___block_invoke;
  v12[3] = &unk_2784BFCA0;
  v13 = v5;
  v14 = v7;
  v8 = v7;
  v9 = v5;
  v10 = [(SUIBIntelligenceFlowActionSummary *)self initWithBuilder:v12];

  return v10;
}

void __51__SUIBIntelligenceFlowActionSummary_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setFormatString:v3];
  [v4 setParameterSummaries:*(a1 + 40)];
}

- (void)encodeWithCoder:(id)a3
{
  formatString = self->_formatString;
  v5 = a3;
  [v5 encodeObject:formatString forKey:@"SUIBIntelligenceFlowActionSummary::formatString"];
  [v5 encodeObject:self->_parameterSummaries forKey:@"SUIBIntelligenceFlowActionSummary::parameterSummaries"];
}

- (id)parameterMatches
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(SUIBIntelligenceFlowActionSummary *)self formatString];
  v3 = [SUIBIntelligenceFlowActionSummaryParameterMatcher matchesIn:v2];

  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [SUIBRegexMatch alloc];
        v12 = [(SUIBRegexMatch *)v11 initWithBridgedMatch:v10, v16];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end