@interface SUPolicyGlobalOptions
- (SUPolicyGlobalOptions)init;
@end

@implementation SUPolicyGlobalOptions

- (SUPolicyGlobalOptions)init
{
  v12[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SUPolicyGlobalOptions;
  v2 = [(SUPolicyGlobalOptions *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = *MEMORY[0x277D64700];
    v11[0] = *MEMORY[0x277D645B0];
    v11[1] = v4;
    v12[0] = @"SUS-2.0";
    v12[1] = @"SUS-2.0";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v6 = [v3 dictionaryWithDictionary:v5];
    updateMetricEventFields = v2->_updateMetricEventFields;
    v2->_updateMetricEventFields = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

@end