@interface PSGInputSuggesterMetricsLogger
- (PSGInputSuggesterMetricsLogger)init;
- (PSGInputSuggesterMetricsLogger)initWithTracker:(id)tracker;
- (int)_errorTypeProto:(unsigned __int8)proto;
- (int)_predictionDataSourceTypeProto:(unsigned __int8)proto;
- (int)_triggerSourceTypeProto:(unint64_t)proto;
- (void)_populatePredictionItems:(id)items proto:(id)proto;
- (void)_populateQueryFields:(id)fields proto:(id)proto;
- (void)_populateTreatmentFields:(id)fields proto:(id)proto;
- (void)_populateTriggerAttributeFields:(id)fields proto:(id)proto;
- (void)_populateTriggerFields:(id)fields proto:(id)proto;
- (void)logEngagement:(id)engagement request:(id)request position:(unint64_t)position config:(id)config;
- (void)logImpression:(id)impression request:(id)request config:(id)config;
- (void)logPrediction:(id)prediction request:(id)request latencyMillis:(double)millis config:(id)config;
- (void)logQuery:(id)query config:(id)config;
- (void)logTrigger:(id)trigger request:(id)request config:(id)config;
@end

@implementation PSGInputSuggesterMetricsLogger

- (int)_errorTypeProto:(unsigned __int8)proto
{
  if (proto < 4u)
  {
    return proto + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_populateTriggerAttributeFields:(id)fields proto:(id)proto
{
  v20 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  protoCopy = proto;
  if (_populateTriggerAttributeFields_proto__once != -1)
  {
    dispatch_once(&_populateTriggerAttributeFields_proto__once, &__block_literal_global_1755);
  }

  v7 = [fieldsCopy valueForKey:*MEMORY[0x277D23050]];
  v8 = [fieldsCopy valueForKey:*MEMORY[0x277D23028]];
  [protoCopy setTriggerAttributeType:v7];
  [protoCopy setTriggerAttributeSubtype:v8];
  v9 = [fieldsCopy valueForKey:*MEMORY[0x277D41EE8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [_populateTriggerAttributeFields_proto__map objectForKeyedSubscript:v9];
    if ([(__CFString *)v10 length])
    {
      v11 = protoCopy;
      v12 = v10;
    }

    else
    {
      v14 = psg_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        v19 = fieldsCopy;
        _os_log_fault_impl(&dword_260D36000, v14, OS_LOG_TYPE_FAULT, "Invalid search field for Contacts Autocomplete trigger: %@", &v18, 0xCu);
      }

      v12 = @"Invalid";
      v11 = protoCopy;
    }

    [v11 setTriggerAttributeField:v12];
  }

  else
  {
    v13 = [fieldsCopy valueForKey:*MEMORY[0x277D23010]];

    if (!v13)
    {
      v9 = [fieldsCopy valueForKey:*MEMORY[0x277D22F30]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = protoCopy;
        v16 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_17;
        }

        v16 = @"NSNull";
        v15 = protoCopy;
      }

      [v15 setTriggerAttributeField:v16];
      goto LABEL_17;
    }

    [protoCopy setTriggerAttributeField:v13];
    v9 = v13;
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

void __72__PSGInputSuggesterMetricsLogger__populateTriggerAttributeFields_proto___block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D22FE8];
  v5[0] = &unk_28734B0D0;
  v5[1] = &unk_28734B0E8;
  v1 = *MEMORY[0x277D22F40];
  v6[0] = v0;
  v6[1] = v1;
  v5[2] = &unk_28734B100;
  v6[2] = *MEMORY[0x277D22F18];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = _populateTriggerAttributeFields_proto__map;
  _populateTriggerAttributeFields_proto__map = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (int)_predictionDataSourceTypeProto:(unsigned __int8)proto
{
  if ((proto - 1) < 0xA)
  {
    return (proto - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_triggerSourceTypeProto:(unint64_t)proto
{
  if (proto < 6)
  {
    return proto + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_populateTriggerFields:(id)fields proto:(id)proto
{
  protoCopy = proto;
  fieldsCopy = fields;
  [protoCopy setTriggerSourceType:{-[PSGInputSuggesterMetricsLogger _triggerSourceTypeProto:](self, "_triggerSourceTypeProto:", objc_msgSend(fieldsCopy, "triggerSourceType"))}];
  triggerCategory = [fieldsCopy triggerCategory];
  [protoCopy setTriggerCategory:triggerCategory];

  triggerAttributes = [fieldsCopy triggerAttributes];

  [(PSGInputSuggesterMetricsLogger *)self _populateTriggerAttributeFields:triggerAttributes proto:protoCopy];
}

- (void)_populateQueryFields:(id)fields proto:(id)proto
{
  protoCopy = proto;
  fieldsCopy = fields;
  responseContext = [fieldsCopy responseContext];
  [protoCopy setHasResponseContext:{objc_msgSend(responseContext, "length") != 0}];

  [protoCopy setIsResponseContextBlacklisted:{objc_msgSend(fieldsCopy, "isResponseContextBlacklisted")}];
  [protoCopy setIsDocumentEmpty:{objc_msgSend(fieldsCopy, "isDocumentEmpty")}];
  textContentType = [fieldsCopy textContentType];
  [protoCopy setTextContentType:textContentType];

  contextBeforeInput = [fieldsCopy contextBeforeInput];
  [protoCopy setHasContextBeforeInput:{objc_msgSend(contextBeforeInput, "length") != 0}];

  recipientNames = [fieldsCopy recipientNames];
  [protoCopy setHasRecipientNames:{objc_msgSend(recipientNames, "count") != 0}];

  localeIdentifier = [fieldsCopy localeIdentifier];
  [protoCopy setLocaleIdentifier:localeIdentifier];

  bundleIdentifier = [fieldsCopy bundleIdentifier];
  [protoCopy setBundleIdentifier:bundleIdentifier];

  [protoCopy setMaxTextualResponseItems:{objc_msgSend(fieldsCopy, "textualResponseLimit")}];
  [protoCopy setMaxStructuredInfoItems:{objc_msgSend(fieldsCopy, "structuredInfoLimit")}];
  [protoCopy setMaxPredictionItems:{objc_msgSend(fieldsCopy, "totalSuggestionsLimit")}];
  initiatingProcess = [fieldsCopy initiatingProcess];

  [protoCopy setInitiatingProcess:initiatingProcess];
}

- (void)_populatePredictionItems:(id)items proto:(id)proto
{
  v31 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  protoCopy = proto;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = itemsCopy;
  v7 = [itemsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v27;
    v23 = *v27;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        textualResponseSuggestion = [v15 textualResponseSuggestion];

        if (textualResponseSuggestion)
        {
          v11 = (v11 + 1);
          if (v9)
          {
            v9 = 1;
            continue;
          }

          textualResponseSuggestion2 = [v15 textualResponseSuggestion];
          responseCategory = [textualResponseSuggestion2 responseCategory];
          [protoCopy setTextualResponseCategory:responseCategory];
          v9 = 1;
        }

        else
        {
          structuredInfoSuggestion = [v15 structuredInfoSuggestion];

          if (!structuredInfoSuggestion)
          {
            continue;
          }

          v12 = (v12 + 1);
          if (v10)
          {
            v10 = 1;
            continue;
          }

          structuredInfoSuggestion2 = [v15 structuredInfoSuggestion];
          proactiveTrigger = [structuredInfoSuggestion2 proactiveTrigger];
          [(PSGInputSuggesterMetricsLogger *)self _populateTriggerFields:proactiveTrigger proto:protoCopy];

          textualResponseSuggestion2 = [v15 structuredInfoSuggestion];
          responseCategory = [textualResponseSuggestion2 portraitItem];
          v13 = v23;
          [protoCopy setDataSourceType:{-[PSGInputSuggesterMetricsLogger _predictionDataSourceTypeProto:](self, "_predictionDataSourceTypeProto:", objc_msgSend(responseCategory, "source"))}];
          v10 = 1;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v8)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = 0;
  v12 = 0;
LABEL_19:
  [protoCopy setNumTextualResponseItems:v11];
  [protoCopy setNumStructuredInfoItems:v12];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_populateTreatmentFields:(id)fields proto:(id)proto
{
  protoCopy = proto;
  fieldsCopy = fields;
  experimentIdentifiers = [fieldsCopy experimentIdentifiers];
  experimentId = [experimentIdentifiers experimentId];
  [protoCopy setExperimentId:experimentId];

  experimentIdentifiers2 = [fieldsCopy experimentIdentifiers];
  treatmentId = [experimentIdentifiers2 treatmentId];
  [protoCopy setTreatmentId:treatmentId];

  treatmentName = [fieldsCopy treatmentName];

  [protoCopy setTreatmentName:treatmentName];
}

- (void)logEngagement:(id)engagement request:(id)request position:(unint64_t)position config:(id)config
{
  engagementCopy = engagement;
  requestCopy = request;
  configCopy = config;
  if ([engagementCopy count])
  {
    v13 = objc_opt_new();
    [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:configCopy proto:v13];
    [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:requestCopy proto:v13];
    [(PSGInputSuggesterMetricsLogger *)self _populatePredictionItems:engagementCopy proto:v13];
    [v13 setPosition:position];
    [(PETEventTracker2 *)self->_tracker trackScalarForMessage:v13];
  }

  else
  {
    v14 = psg_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_260D36000, v14, OS_LOG_TYPE_ERROR, "logEngagement called with zero item.", v15, 2u);
    }
  }
}

- (void)logImpression:(id)impression request:(id)request config:(id)config
{
  impressionCopy = impression;
  requestCopy = request;
  configCopy = config;
  if ([impressionCopy count])
  {
    v11 = objc_opt_new();
    [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:configCopy proto:v11];
    [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:requestCopy proto:v11];
    [(PSGInputSuggesterMetricsLogger *)self _populatePredictionItems:impressionCopy proto:v11];
    [(PETEventTracker2 *)self->_tracker trackScalarForMessage:v11];
  }

  else
  {
    v12 = psg_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_260D36000, v12, OS_LOG_TYPE_ERROR, "logImpression called with zero item.", v13, 2u);
    }
  }
}

- (void)logPrediction:(id)prediction request:(id)request latencyMillis:(double)millis config:(id)config
{
  predictionCopy = prediction;
  configCopy = config;
  requestCopy = request;
  v13 = objc_opt_new();
  [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:configCopy proto:v13];

  [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:requestCopy proto:v13];
  responseItems = [predictionCopy responseItems];
  v15 = [responseItems count];

  if (v15)
  {
    responseItems2 = [predictionCopy responseItems];
    [(PSGInputSuggesterMetricsLogger *)self _populatePredictionItems:responseItems2 proto:v13];
  }

  else
  {
    explanationSet = [predictionCopy explanationSet];
    v18 = [explanationSet count];

    if (v18)
    {
      explanationSet2 = [predictionCopy explanationSet];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __77__PSGInputSuggesterMetricsLogger_logPrediction_request_latencyMillis_config___block_invoke;
      v20[3] = &unk_279ABE478;
      v21 = v13;
      [explanationSet2 enumerateExplanationCodeWithBlock:v20];
    }
  }

  [(PETEventTracker2 *)self->_tracker trackDistributionForMessage:v13 value:millis];
}

uint64_t __77__PSGInputSuggesterMetricsLogger_logPrediction_request_latencyMillis_config___block_invoke(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    return [*(result + 32) setRequiredAppUnavailable:1];
  }

  if (a2 == 1)
  {
    return [*(result + 32) setPortraitTimeout:1];
  }

  return result;
}

- (void)logTrigger:(id)trigger request:(id)request config:(id)config
{
  configCopy = config;
  requestCopy = request;
  triggerCopy = trigger;
  v11 = objc_opt_new();
  [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:configCopy proto:v11];

  [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:requestCopy proto:v11];
  [(PSGInputSuggesterMetricsLogger *)self _populateTriggerFields:triggerCopy proto:v11];

  [(PETEventTracker2 *)self->_tracker trackScalarForMessage:v11];
}

- (void)logQuery:(id)query config:(id)config
{
  configCopy = config;
  queryCopy = query;
  v8 = objc_opt_new();
  [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:configCopy proto:v8];

  [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:queryCopy proto:v8];
  [(PETEventTracker2 *)self->_tracker trackScalarForMessage:v8];
}

- (PSGInputSuggesterMetricsLogger)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v9.receiver = self;
  v9.super_class = PSGInputSuggesterMetricsLogger;
  v6 = [(PSGInputSuggesterMetricsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, tracker);
  }

  return v7;
}

- (PSGInputSuggesterMetricsLogger)init
{
  mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
  v4 = [(PSGInputSuggesterMetricsLogger *)self initWithTracker:mEMORY[0x277D41DA8]];

  return v4;
}

@end