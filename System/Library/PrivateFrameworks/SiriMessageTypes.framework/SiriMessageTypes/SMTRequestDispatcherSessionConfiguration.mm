@interface SMTRequestDispatcherSessionConfiguration
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (SMTRequestDispatcherSessionConfiguration)initWithBuilder:(id)builder;
- (SMTRequestDispatcherSessionConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTRequestDispatcherSessionConfiguration

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  assistantId = self->_assistantId;
  coderCopy = coder;
  [coderCopy encodeObject:assistantId forKey:@"assistantd"];
  [coderCopy encodeObject:self->_languageCode forKey:@"languageCode"];
  [coderCopy encodeObject:self->_sharedUserId forKey:@"sharedUserId"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_understandingOnDevice];
  [coderCopy encodeObject:v6 forKey:@"understandingOnDevice"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSystemAssistantExperienceEnabled];
  [coderCopy encodeObject:v7 forKey:@"isSystemAssistantExperienceEnabled"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFullPlannerEnabled];
  [coderCopy encodeObject:v8 forKey:@"isFullPlannerEnabled"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPQAEnabled];
  [coderCopy encodeObject:v9 forKey:@"isPQAEnabled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_deferIntelligenceFlowSessionCreation];
  [coderCopy encodeObject:v10 forKey:@"deferIntelligenceFlowSessionCreation"];

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:&self->_clientAuditToken length:32];
  [coderCopy encodeObject:v11 forKey:@"clientAuditToken"];
}

- (SMTRequestDispatcherSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assistantd"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"languageCode"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedUserId"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"understandingOnDevice"];
  bOOLValue = [v7 BOOLValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isSystemAssistantExperienceEnabled"];
  bOOLValue2 = [v9 BOOLValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isFullPlannerEnabled"];
  bOOLValue3 = [v11 BOOLValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPQAEnabled"];
  bOOLValue4 = [v13 BOOLValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deferIntelligenceFlowSessionCreation"];
  bOOLValue5 = [v15 BOOLValue];

  v35 = 0u;
  v36 = 0u;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAuditToken"];

  if ([v17 length] == 32)
  {
    [v17 getBytes:&v35 length:32];
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v28 = v35;
  v24[2] = __58__SMTRequestDispatcherSessionConfiguration_initWithCoder___block_invoke;
  v24[3] = &unk_2784D5C38;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v30 = bOOLValue;
  v31 = bOOLValue2;
  v32 = bOOLValue3;
  v33 = bOOLValue4;
  v34 = bOOLValue5;
  v29 = v36;
  v18 = v6;
  v19 = v5;
  v20 = v4;
  v21 = [(SMTRequestDispatcherSessionConfiguration *)self initWithBuilder:v24];

  return v21;
}

void __58__SMTRequestDispatcherSessionConfiguration_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAssistantId:v3];
  [v4 setLanguageCode:*(a1 + 40)];
  [v4 setSharedUserId:*(a1 + 48)];
  [v4 setUnderstandingOnDevice:*(a1 + 88)];
  [v4 setIsSystemAssistantExperienceEnabled:*(a1 + 89)];
  [v4 setIsFullPlannerEnabled:*(a1 + 90)];
  [v4 setIsPQAEnabled:*(a1 + 91)];
  [v4 setDeferIntelligenceFlowSessionCreation:*(a1 + 92)];
  v5 = *(a1 + 72);
  v6[0] = *(a1 + 56);
  v6[1] = v5;
  [v4 setClientAuditToken:v6];
}

- (SMTRequestDispatcherSessionConfiguration)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v20.receiver = self;
  v20.super_class = SMTRequestDispatcherSessionConfiguration;
  v5 = [(SMTRequestDispatcherSessionConfiguration *)&v20 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SMTRequestDispatcherSessionConfigurationMutating);
    builderCopy[2](builderCopy, v7);
    assistantId = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 assistantId];
    v9 = [assistantId copy];
    assistantId = v6->_assistantId;
    v6->_assistantId = v9;

    languageCode = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 languageCode];
    v12 = [languageCode copy];
    languageCode = v6->_languageCode;
    v6->_languageCode = v12;

    v6->_understandingOnDevice = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 understandingOnDevice];
    v6->_isSystemAssistantExperienceEnabled = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 isSystemAssistantExperienceEnabled];
    v6->_isFullPlannerEnabled = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 isFullPlannerEnabled];
    v6->_isPQAEnabled = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 isPQAEnabled];
    v6->_deferIntelligenceFlowSessionCreation = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 deferIntelligenceFlowSessionCreation];
    sharedUserId = [(SMTRequestDispatcherSessionConfigurationMutating *)v7 sharedUserId];
    v15 = [sharedUserId copy];
    sharedUserId = v6->_sharedUserId;
    v6->_sharedUserId = v15;

    if (v7)
    {
      [(SMTRequestDispatcherSessionConfigurationMutating *)v7 clientAuditToken];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    *v6->_clientAuditToken.val = v18;
    *&v6->_clientAuditToken.val[4] = v19;
  }

  return v6;
}

@end