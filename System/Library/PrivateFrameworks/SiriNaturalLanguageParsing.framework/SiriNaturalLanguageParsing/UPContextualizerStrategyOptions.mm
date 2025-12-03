@interface UPContextualizerStrategyOptions
- (UPContextualizerStrategyOptions)initWithPrebuiltIntentThreshold:(double)threshold usoSerializer:(id)serializer;
- (id)resultUsingContextualizerInput:(id)input;
@end

@implementation UPContextualizerStrategyOptions

- (id)resultUsingContextualizerInput:(id)input
{
  v34[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  dialogAct = [inputCopy dialogAct];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[UPContextualizerStrategyOptions resultUsingContextualizerInput:]", "UPContextualizerStrategyOptions.m", 45, "[contextualizerInput.dialogAct isKindOfClass:[UPDialogActOptions class]]");
  }

  dialogAct2 = [inputCopy dialogAct];
  query = [inputCopy query];
  coreResult = [inputCopy coreResult];
  prebuiltIntentThreshold = self->_prebuiltIntentThreshold;
  v34[0] = @"selectOrdinal";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v11 = [UPContextualizerUtilities hasTopCandidate:coreResult excedingProbability:v10 matchingOneOfIntents:prebuiltIntentThreshold];

  if (v11)
  {
    v12 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: Detected high-probability selectOrdinal intent in core result", &v30, 2u);
    }

    v13 = [UPResult createResultFromExistingResult:coreResult truncatedTo:1];
    if (v13)
    {
      v14 = v13;
      goto LABEL_20;
    }
  }

  entityName = [dialogAct2 entityName];
  domainResult = [inputCopy domainResult];
  v17 = [UPContextualizerUtilities filterResult:domainResult byEntityName:entityName serializer:self->_usoSerializer];

  candidateCount = [v17 candidateCount];
  v19 = SNLPOSLoggerForCategory(3);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (candidateCount < 1)
  {
    if (v20)
    {
      v30 = 138412290;
      v31 = entityName;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: No domain result matched dialog act prompted entity (%@)", &v30, 0xCu);
    }

    goto LABEL_15;
  }

  if (v20)
  {
    v30 = 134218242;
    v31 = candidateCount;
    v32 = 2112;
    v33 = entityName;
    _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: %ld domain candidates matched dialog act prompted entity (%@)", &v30, 0x16u);
  }

  intent = [dialogAct2 intent];
  v14 = [UPContextualizerUtilities resultFromResult:v17 withNewIntent:intent];

  if (!v14)
  {
LABEL_15:
    entityType = [dialogAct2 entityType];
    v23 = [entityType isEqualToString:@"string"];

    if (v23)
    {
      v24 = SNLPOSLoggerForCategory(3);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: Building verbatim string payload", &v30, 2u);
      }

      modelIdentifier = [inputCopy modelIdentifier];
      intent2 = [dialogAct2 intent];
      entityName2 = [dialogAct2 entityName];
      v14 = [UPContextualizerUtilities buildPayloadResultFromQuery:query modelIdentifier:modelIdentifier intent:intent2 entityName:entityName2 serializer:self->_usoSerializer];
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_20:

  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

- (UPContextualizerStrategyOptions)initWithPrebuiltIntentThreshold:(double)threshold usoSerializer:(id)serializer
{
  serializerCopy = serializer;
  v11.receiver = self;
  v11.super_class = UPContextualizerStrategyOptions;
  v8 = [(UPContextualizerStrategyOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_prebuiltIntentThreshold = threshold;
    objc_storeStrong(&v8->_usoSerializer, serializer);
  }

  return v9;
}

@end