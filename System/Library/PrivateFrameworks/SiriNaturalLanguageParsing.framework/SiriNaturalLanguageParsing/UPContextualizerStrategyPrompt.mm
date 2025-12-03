@interface UPContextualizerStrategyPrompt
- (UPContextualizerStrategyPrompt)initWithPrebuiltIntentThreshold:(double)threshold usoSerializer:(id)serializer;
- (id)resultUsingContextualizerInput:(id)input;
@end

@implementation UPContextualizerStrategyPrompt

- (id)resultUsingContextualizerInput:(id)input
{
  v40 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  dialogAct = [inputCopy dialogAct];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[UPContextualizerStrategyPrompt resultUsingContextualizerInput:]", "UPContextualizerStrategyPrompt.m", 45, "[dialogAct isKindOfClass:[UPDialogActPrompt class]]");
  }

  reference = [dialogAct reference];
  coreResult = [inputCopy coreResult];
  v35 = reference;
  v8 = [UPContextualizerUtilities createConfirmOrRejectedDialogActsFor:coreResult reference:reference];

  v9 = [UPContextualizerInput alloc];
  domainResult = [inputCopy domainResult];
  modelIdentifier = [inputCopy modelIdentifier];
  query = [inputCopy query];
  v33 = v8;
  v34 = dialogAct;
  v13 = [(UPContextualizerInput *)v9 initWithDomainResult:domainResult coreResult:v8 modelIdentifier:modelIdentifier query:query dialogAct:dialogAct];

  dialogAct2 = [(UPContextualizerInput *)v13 dialogAct];
  query2 = [(UPContextualizerInput *)v13 query];
  entityName = [dialogAct2 entityName];
  domainResult2 = [(UPContextualizerInput *)v13 domainResult];
  selfCopy = self;
  v18 = [UPContextualizerUtilities filterResult:domainResult2 byEntityName:entityName serializer:self->_usoSerializer];

  candidateCount = [v18 candidateCount];
  v20 = SNLPOSLoggerForCategory(3);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (candidateCount < 1)
  {
    if (v21)
    {
      *buf = 138412290;
      v37 = entityName;
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyPrompt: No domain result matched dialog act prompted entity (%@)", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (v21)
  {
    *buf = 134218242;
    v37 = candidateCount;
    v38 = 2112;
    v39 = entityName;
    _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyPrompt; %ld domain candidates matched dialog act prompted entity (%@)", buf, 0x16u);
  }

  intent = [dialogAct2 intent];
  v23 = [UPContextualizerUtilities resultFromResult:v18 withNewIntent:intent];

  if (!v23)
  {
LABEL_10:
    entityType = [dialogAct2 entityType];
    v25 = [entityType isEqualToString:@"string"];

    if (v25)
    {
      v26 = SNLPOSLoggerForCategory(3);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyPrompt: Building verbatim string payload", buf, 2u);
      }

      modelIdentifier2 = [(UPContextualizerInput *)v13 modelIdentifier];
      intent2 = [dialogAct2 intent];
      entityName2 = [dialogAct2 entityName];
      v23 = [UPContextualizerUtilities buildPayloadResultFromQuery:query2 modelIdentifier:modelIdentifier2 intent:intent2 entityName:entityName2 serializer:selfCopy->_usoSerializer];
    }

    else
    {
      v23 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v23;
}

- (UPContextualizerStrategyPrompt)initWithPrebuiltIntentThreshold:(double)threshold usoSerializer:(id)serializer
{
  serializerCopy = serializer;
  v11.receiver = self;
  v11.super_class = UPContextualizerStrategyPrompt;
  v8 = [(UPContextualizerStrategyPrompt *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_prebuiltIntentThreshold = threshold;
    objc_storeStrong(&v8->_usoSerializer, serializer);
  }

  return v9;
}

@end