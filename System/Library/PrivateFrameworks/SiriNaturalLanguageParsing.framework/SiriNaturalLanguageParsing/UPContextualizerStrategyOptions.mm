@interface UPContextualizerStrategyOptions
- (UPContextualizerStrategyOptions)initWithPrebuiltIntentThreshold:(double)a3 usoSerializer:(id)a4;
- (id)resultUsingContextualizerInput:(id)a3;
@end

@implementation UPContextualizerStrategyOptions

- (id)resultUsingContextualizerInput:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 dialogAct];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[UPContextualizerStrategyOptions resultUsingContextualizerInput:]", "UPContextualizerStrategyOptions.m", 45, "[contextualizerInput.dialogAct isKindOfClass:[UPDialogActOptions class]]");
  }

  v6 = [v4 dialogAct];
  v7 = [v4 query];
  v8 = [v4 coreResult];
  prebuiltIntentThreshold = self->_prebuiltIntentThreshold;
  v34[0] = @"selectOrdinal";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v11 = [UPContextualizerUtilities hasTopCandidate:v8 excedingProbability:v10 matchingOneOfIntents:prebuiltIntentThreshold];

  if (v11)
  {
    v12 = SNLPOSLoggerForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: Detected high-probability selectOrdinal intent in core result", &v30, 2u);
    }

    v13 = [UPResult createResultFromExistingResult:v8 truncatedTo:1];
    if (v13)
    {
      v14 = v13;
      goto LABEL_20;
    }
  }

  v15 = [v6 entityName];
  v16 = [v4 domainResult];
  v17 = [UPContextualizerUtilities filterResult:v16 byEntityName:v15 serializer:self->_usoSerializer];

  v18 = [v17 candidateCount];
  v19 = SNLPOSLoggerForCategory(3);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v18 < 1)
  {
    if (v20)
    {
      v30 = 138412290;
      v31 = v15;
      _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: No domain result matched dialog act prompted entity (%@)", &v30, 0xCu);
    }

    goto LABEL_15;
  }

  if (v20)
  {
    v30 = 134218242;
    v31 = v18;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: %ld domain candidates matched dialog act prompted entity (%@)", &v30, 0x16u);
  }

  v21 = [v6 intent];
  v14 = [UPContextualizerUtilities resultFromResult:v17 withNewIntent:v21];

  if (!v14)
  {
LABEL_15:
    v22 = [v6 entityType];
    v23 = [v22 isEqualToString:@"string"];

    if (v23)
    {
      v24 = SNLPOSLoggerForCategory(3);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_22284A000, v24, OS_LOG_TYPE_DEBUG, "UPContextualizerStrategyOptions: Building verbatim string payload", &v30, 2u);
      }

      v25 = [v4 modelIdentifier];
      v26 = [v6 intent];
      v27 = [v6 entityName];
      v14 = [UPContextualizerUtilities buildPayloadResultFromQuery:v7 modelIdentifier:v25 intent:v26 entityName:v27 serializer:self->_usoSerializer];
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

- (UPContextualizerStrategyOptions)initWithPrebuiltIntentThreshold:(double)a3 usoSerializer:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UPContextualizerStrategyOptions;
  v8 = [(UPContextualizerStrategyOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_prebuiltIntentThreshold = a3;
    objc_storeStrong(&v8->_usoSerializer, a4);
  }

  return v9;
}

@end