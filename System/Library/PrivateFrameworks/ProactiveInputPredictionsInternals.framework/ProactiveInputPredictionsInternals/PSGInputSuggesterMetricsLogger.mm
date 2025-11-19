@interface PSGInputSuggesterMetricsLogger
- (PSGInputSuggesterMetricsLogger)init;
- (PSGInputSuggesterMetricsLogger)initWithTracker:(id)a3;
- (int)_errorTypeProto:(unsigned __int8)a3;
- (int)_predictionDataSourceTypeProto:(unsigned __int8)a3;
- (int)_triggerSourceTypeProto:(unint64_t)a3;
- (void)_populatePredictionItems:(id)a3 proto:(id)a4;
- (void)_populateQueryFields:(id)a3 proto:(id)a4;
- (void)_populateTreatmentFields:(id)a3 proto:(id)a4;
- (void)_populateTriggerAttributeFields:(id)a3 proto:(id)a4;
- (void)_populateTriggerFields:(id)a3 proto:(id)a4;
- (void)logEngagement:(id)a3 request:(id)a4 position:(unint64_t)a5 config:(id)a6;
- (void)logImpression:(id)a3 request:(id)a4 config:(id)a5;
- (void)logPrediction:(id)a3 request:(id)a4 latencyMillis:(double)a5 config:(id)a6;
- (void)logQuery:(id)a3 config:(id)a4;
- (void)logTrigger:(id)a3 request:(id)a4 config:(id)a5;
@end

@implementation PSGInputSuggesterMetricsLogger

- (int)_errorTypeProto:(unsigned __int8)a3
{
  if (a3 < 4u)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_populateTriggerAttributeFields:(id)a3 proto:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (_populateTriggerAttributeFields_proto__once != -1)
  {
    dispatch_once(&_populateTriggerAttributeFields_proto__once, &__block_literal_global_1755);
  }

  v7 = [v5 valueForKey:*MEMORY[0x277D23050]];
  v8 = [v5 valueForKey:*MEMORY[0x277D23028]];
  [v6 setTriggerAttributeType:v7];
  [v6 setTriggerAttributeSubtype:v8];
  v9 = [v5 valueForKey:*MEMORY[0x277D41EE8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [_populateTriggerAttributeFields_proto__map objectForKeyedSubscript:v9];
    if ([(__CFString *)v10 length])
    {
      v11 = v6;
      v12 = v10;
    }

    else
    {
      v14 = psg_default_log_handle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        v19 = v5;
        _os_log_fault_impl(&dword_260D36000, v14, OS_LOG_TYPE_FAULT, "Invalid search field for Contacts Autocomplete trigger: %@", &v18, 0xCu);
      }

      v12 = @"Invalid";
      v11 = v6;
    }

    [v11 setTriggerAttributeField:v12];
  }

  else
  {
    v13 = [v5 valueForKey:*MEMORY[0x277D23010]];

    if (!v13)
    {
      v9 = [v5 valueForKey:*MEMORY[0x277D22F30]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v6;
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
        v15 = v6;
      }

      [v15 setTriggerAttributeField:v16];
      goto LABEL_17;
    }

    [v6 setTriggerAttributeField:v13];
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

- (int)_predictionDataSourceTypeProto:(unsigned __int8)a3
{
  if ((a3 - 1) < 0xA)
  {
    return (a3 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (int)_triggerSourceTypeProto:(unint64_t)a3
{
  if (a3 < 6)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_populateTriggerFields:(id)a3 proto:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 setTriggerSourceType:{-[PSGInputSuggesterMetricsLogger _triggerSourceTypeProto:](self, "_triggerSourceTypeProto:", objc_msgSend(v7, "triggerSourceType"))}];
  v8 = [v7 triggerCategory];
  [v6 setTriggerCategory:v8];

  v9 = [v7 triggerAttributes];

  [(PSGInputSuggesterMetricsLogger *)self _populateTriggerAttributeFields:v9 proto:v6];
}

- (void)_populateQueryFields:(id)a3 proto:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 responseContext];
  [v5 setHasResponseContext:{objc_msgSend(v7, "length") != 0}];

  [v5 setIsResponseContextBlacklisted:{objc_msgSend(v6, "isResponseContextBlacklisted")}];
  [v5 setIsDocumentEmpty:{objc_msgSend(v6, "isDocumentEmpty")}];
  v8 = [v6 textContentType];
  [v5 setTextContentType:v8];

  v9 = [v6 contextBeforeInput];
  [v5 setHasContextBeforeInput:{objc_msgSend(v9, "length") != 0}];

  v10 = [v6 recipientNames];
  [v5 setHasRecipientNames:{objc_msgSend(v10, "count") != 0}];

  v11 = [v6 localeIdentifier];
  [v5 setLocaleIdentifier:v11];

  v12 = [v6 bundleIdentifier];
  [v5 setBundleIdentifier:v12];

  [v5 setMaxTextualResponseItems:{objc_msgSend(v6, "textualResponseLimit")}];
  [v5 setMaxStructuredInfoItems:{objc_msgSend(v6, "structuredInfoLimit")}];
  [v5 setMaxPredictionItems:{objc_msgSend(v6, "totalSuggestionsLimit")}];
  v13 = [v6 initiatingProcess];

  [v5 setInitiatingProcess:v13];
}

- (void)_populatePredictionItems:(id)a3 proto:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
        v16 = [v15 textualResponseSuggestion];

        if (v16)
        {
          v11 = (v11 + 1);
          if (v9)
          {
            v9 = 1;
            continue;
          }

          v18 = [v15 textualResponseSuggestion];
          v19 = [v18 responseCategory];
          [v6 setTextualResponseCategory:v19];
          v9 = 1;
        }

        else
        {
          v17 = [v15 structuredInfoSuggestion];

          if (!v17)
          {
            continue;
          }

          v12 = (v12 + 1);
          if (v10)
          {
            v10 = 1;
            continue;
          }

          v20 = [v15 structuredInfoSuggestion];
          v21 = [v20 proactiveTrigger];
          [(PSGInputSuggesterMetricsLogger *)self _populateTriggerFields:v21 proto:v6];

          v18 = [v15 structuredInfoSuggestion];
          v19 = [v18 portraitItem];
          v13 = v23;
          [v6 setDataSourceType:{-[PSGInputSuggesterMetricsLogger _predictionDataSourceTypeProto:](self, "_predictionDataSourceTypeProto:", objc_msgSend(v19, "source"))}];
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
  [v6 setNumTextualResponseItems:v11];
  [v6 setNumStructuredInfoItems:v12];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_populateTreatmentFields:(id)a3 proto:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 experimentIdentifiers];
  v8 = [v7 experimentId];
  [v5 setExperimentId:v8];

  v9 = [v6 experimentIdentifiers];
  v10 = [v9 treatmentId];
  [v5 setTreatmentId:v10];

  v11 = [v6 treatmentName];

  [v5 setTreatmentName:v11];
}

- (void)logEngagement:(id)a3 request:(id)a4 position:(unint64_t)a5 config:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 count])
  {
    v13 = objc_opt_new();
    [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:v12 proto:v13];
    [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:v11 proto:v13];
    [(PSGInputSuggesterMetricsLogger *)self _populatePredictionItems:v10 proto:v13];
    [v13 setPosition:a5];
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

- (void)logImpression:(id)a3 request:(id)a4 config:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = objc_opt_new();
    [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:v10 proto:v11];
    [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:v9 proto:v11];
    [(PSGInputSuggesterMetricsLogger *)self _populatePredictionItems:v8 proto:v11];
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

- (void)logPrediction:(id)a3 request:(id)a4 latencyMillis:(double)a5 config:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = objc_opt_new();
  [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:v11 proto:v13];

  [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:v12 proto:v13];
  v14 = [v10 responseItems];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v10 responseItems];
    [(PSGInputSuggesterMetricsLogger *)self _populatePredictionItems:v16 proto:v13];
  }

  else
  {
    v17 = [v10 explanationSet];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [v10 explanationSet];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __77__PSGInputSuggesterMetricsLogger_logPrediction_request_latencyMillis_config___block_invoke;
      v20[3] = &unk_279ABE478;
      v21 = v13;
      [v19 enumerateExplanationCodeWithBlock:v20];
    }
  }

  [(PETEventTracker2 *)self->_tracker trackDistributionForMessage:v13 value:a5];
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

- (void)logTrigger:(id)a3 request:(id)a4 config:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:v8 proto:v11];

  [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:v9 proto:v11];
  [(PSGInputSuggesterMetricsLogger *)self _populateTriggerFields:v10 proto:v11];

  [(PETEventTracker2 *)self->_tracker trackScalarForMessage:v11];
}

- (void)logQuery:(id)a3 config:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [(PSGInputSuggesterMetricsLogger *)self _populateTreatmentFields:v6 proto:v8];

  [(PSGInputSuggesterMetricsLogger *)self _populateQueryFields:v7 proto:v8];
  [(PETEventTracker2 *)self->_tracker trackScalarForMessage:v8];
}

- (PSGInputSuggesterMetricsLogger)initWithTracker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSGInputSuggesterMetricsLogger;
  v6 = [(PSGInputSuggesterMetricsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tracker, a3);
  }

  return v7;
}

- (PSGInputSuggesterMetricsLogger)init
{
  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  v4 = [(PSGInputSuggesterMetricsLogger *)self initWithTracker:v3];

  return v4;
}

@end