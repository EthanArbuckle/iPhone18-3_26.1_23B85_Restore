@interface PREResponsesMetricsPET
- (PREResponsesMetricsPET)init;
- (PREResponsesMetricsPET)initWithExperimentResolver:(id)resolver;
- (PREResponsesMetricsPET)initWithTracker:(id)tracker experimentResolver:(id)resolver;
- (id)_responseListFromGeneratedEvent:(id)event;
- (void)registerResponseTapped:(id)tapped;
- (void)registerResponseViewed:(id)viewed;
- (void)registerResponsesGenerated:(id)generated;
@end

@implementation PREResponsesMetricsPET

- (void)registerResponseViewed:(id)viewed
{
  viewedCopy = viewed;
  if (viewedCopy)
  {
    v5 = objc_opt_new();
    -[NSObject setLastViewedIndex:](v5, "setLastViewedIndex:", [viewedCopy unsignedIntValue]);
    resolver = self->_resolver;
    defaultLanguage = [MEMORY[0x277D3A248] defaultLanguage];
    v8 = [(PREExperimentResolverProtocol *)resolver getResponseSuggestionsExperimentConfig:defaultLanguage shouldDownloadAssets:0];

    experimentIdentifiers = [v8 experimentIdentifiers];
    experimentId = [experimentIdentifiers experimentId];
    [v5 setExperimentId:experimentId];

    experimentIdentifiers2 = [v8 experimentIdentifiers];
    treatmentId = [experimentIdentifiers2 treatmentId];
    [v5 setTreatmentId:treatmentId];

    treatmentName = [v8 treatmentName];
    [v5 setTreatmentModelName:treatmentName];

    [v5 setHostProcess:self->_processName];
    [v5 setIsApricotDevice:self->_isApricotDevice];
    tracker = self->_tracker;
    [viewedCopy doubleValue];
    [(PETEventTracker2 *)tracker trackDistributionForMessage:v5 value:?];
    v15 = pre_responses_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_260CE3000, v15, OS_LOG_TYPE_DEFAULT, "PREResponsesMetricsPET finished logging responses viewed", v16, 2u);
    }
  }

  else
  {
    v5 = pre_responses_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, v5, OS_LOG_TYPE_DEFAULT, "lastViewedIndex is nil. Skip logging", buf, 2u);
    }
  }
}

- (void)registerResponseTapped:(id)tapped
{
  v57 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  v5 = tappedCopy;
  if (tappedCopy)
  {
    selectedPosition = [tappedCopy selectedPosition];
    if (selectedPosition)
    {
      selectedPosition2 = [v5 selectedPosition];
      unsignedIntegerValue = [selectedPosition2 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0xFFFFFFFFLL;
    }

    resolver = self->_resolver;
    responsesGeneratedEvent = [v5 responsesGeneratedEvent];
    language = [responsesGeneratedEvent language];
    v9 = [(PREExperimentResolverProtocol *)resolver getResponseSuggestionsExperimentConfig:language shouldDownloadAssets:0];

    v13 = objc_opt_new();
    responsesGeneratedEvent2 = [v5 responsesGeneratedEvent];

    if (responsesGeneratedEvent2)
    {
      responsesGeneratedEvent3 = [v5 responsesGeneratedEvent];
      responses = [responsesGeneratedEvent3 responses];
      v17 = [responses count];

      v49 = v9;
      v50 = v5;
      v47 = unsignedIntegerValue;
      selfCopy = self;
      if (v17 <= unsignedIntegerValue)
      {
        [v13 setModelId:0xFFFFFFFFLL];
        [v13 setReplyTextId:0xFFFFFFFFLL];
        [v13 setResponseClassId:0xFFFFFFFFLL];
      }

      else
      {
        responses2 = [responsesGeneratedEvent3 responses];
        v19 = [responses2 objectAtIndexedSubscript:unsignedIntegerValue];

        modelId = [v19 modelId];
        [v13 setModelId:{objc_msgSend(modelId, "unsignedIntegerValue")}];

        [v13 setReplyTextId:0xFFFFFFFFLL];
        [v13 setResponseClassId:0xFFFFFFFFLL];
        isCustomResponse = [v19 isCustomResponse];
        [v13 setIsCustomResponse:{objc_msgSend(isCustomResponse, "BOOLValue")}];

        isRobotResponse = [v19 isRobotResponse];
        [v13 setIsRobotResponse:{objc_msgSend(isRobotResponse, "BOOLValue")}];
      }

      locale = [responsesGeneratedEvent3 locale];
      [v13 setLocale:locale];

      language2 = [responsesGeneratedEvent3 language];
      [v13 setLang:language2];

      [v13 setGenerationStatus:{objc_msgSend(responsesGeneratedEvent3, "generationStatus")}];
      responses3 = [responsesGeneratedEvent3 responses];
      [v13 setNumberOfResponsesGenerated:{objc_msgSend(responses3, "count")}];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v46 = responsesGeneratedEvent3;
      responses4 = [responsesGeneratedEvent3 responses];
      v28 = [responses4 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = 0;
        v32 = *v52;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v52 != v32)
            {
              objc_enumerationMutation(responses4);
            }

            v34 = *(*(&v51 + 1) + 8 * i);
            isCustomResponse2 = [v34 isCustomResponse];
            bOOLValue = [isCustomResponse2 BOOLValue];

            if (bOOLValue)
            {
              v31 = (v31 + 1);
            }

            else
            {
              isRobotResponse2 = [v34 isRobotResponse];
              bOOLValue2 = [isRobotResponse2 BOOLValue];

              v30 = (v30 + bOOLValue2);
            }
          }

          v29 = [responses4 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v29);
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      [v13 setNumberOfCustomResponses:v31];
      [v13 setNumberOfRobotResponses:v30];

      v9 = v49;
      v5 = v50;
      unsignedIntegerValue = v47;
      self = selfCopy;
    }

    else
    {
      v23 = pre_responses_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260CE3000, v23, OS_LOG_TYPE_DEFAULT, "No generated list found in the tapped event. Probably due to process restart", buf, 2u);
      }

      [v13 setModelId:0xFFFFFFFFLL];
      [v13 setReplyTextId:0xFFFFFFFFLL];
      [v13 setResponseClassId:0xFFFFFFFFLL];
      [v13 setLocale:0];
      [v13 setLang:0];
      [v13 setGenerationStatus:0];
      [v13 setNumberOfResponsesGenerated:0xFFFFFFFFLL];
      [v13 setNumberOfCustomResponses:0xFFFFFFFFLL];
      [v13 setIsCustomResponse:0];
      [v13 setIsRobotResponse:0];
    }

    experimentIdentifiers = [v9 experimentIdentifiers];
    experimentId = [experimentIdentifiers experimentId];
    [v13 setExperimentId:experimentId];

    experimentIdentifiers2 = [v9 experimentIdentifiers];
    treatmentId = [experimentIdentifiers2 treatmentId];
    [v13 setTreatmentId:treatmentId];

    treatmentName = [v9 treatmentName];
    [v13 setTreatmentModelName:treatmentName];

    [v13 setIsApricotDevice:self->_isApricotDevice];
    [v13 setHostProcess:self->_processName];
    [v13 setInputMethod:{objc_msgSend(v5, "inputMethod")}];
    [v13 setHasQuestionMark:{objc_msgSend(v5, "hasQuestionMark")}];
    [v13 setPosition:unsignedIntegerValue];
    -[PETEventTracker2 trackDistributionForMessage:value:](self->_tracker, "trackDistributionForMessage:value:", v13, [v5 timeToTap]);
    v44 = pre_responses_handle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, v44, OS_LOG_TYPE_DEFAULT, "PREResponsesMetricsPET finished logging response tapped", buf, 2u);
    }
  }

  else
  {
    v9 = pre_responses_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, v9, OS_LOG_TYPE_DEFAULT, "PREResponseTappedEvent is nil. Skip logging", buf, 2u);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_responseListFromGeneratedEvent:(id)event
{
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  resolver = self->_resolver;
  language = [eventCopy language];
  v7 = [(PREExperimentResolverProtocol *)resolver getResponseSuggestionsExperimentConfig:language shouldDownloadAssets:0];

  v8 = objc_opt_new();
  experimentIdentifiers = [v7 experimentIdentifiers];
  experimentId = [experimentIdentifiers experimentId];
  [v8 setExperimentId:experimentId];

  experimentIdentifiers2 = [v7 experimentIdentifiers];
  treatmentId = [experimentIdentifiers2 treatmentId];
  [v8 setTreatmentId:treatmentId];

  v34 = v7;
  treatmentName = [v7 treatmentName];
  [v8 setTreatmentModelName:treatmentName];

  v14 = objc_opt_new();
  [v14 setHostProcess:self->_processName];
  locale = [eventCopy locale];
  [v14 setLocale:locale];

  language2 = [eventCopy language];
  [v14 setLang:language2];

  [v14 setIsApricotDevice:self->_isApricotDevice];
  [v14 setCharCount:{objc_msgSend(eventCopy, "messageCharCount")}];
  v33 = v14;
  [v14 setHasQuestionMark:{objc_msgSend(eventCopy, "hasQuestionMark")}];
  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  responses = [eventCopy responses];
  v19 = [v17 initWithCapacity:{objc_msgSend(responses, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  responses2 = [eventCopy responses];
  v21 = [responses2 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(responses2);
        }

        v25 = *(*(&v35 + 1) + 8 * i);
        v26 = objc_opt_new();
        modelId = [v25 modelId];
        [v26 setModelId:{objc_msgSend(modelId, "unsignedIntegerValue")}];

        [v26 setResponseClassId:0xFFFFFFFFLL];
        [v26 setReplyTextId:0xFFFFFFFFLL];
        isCustomResponse = [v25 isCustomResponse];
        [v26 setIsCustomResponse:{objc_msgSend(isCustomResponse, "BOOLValue")}];

        isRobotResponse = [v25 isRobotResponse];
        [v26 setIsRobotResponse:{objc_msgSend(isRobotResponse, "BOOLValue")}];

        [v19 addObject:v26];
      }

      v22 = [responses2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v22);
  }

  v30 = objc_opt_new();
  [v30 setExperiment:v8];
  [v30 setMsgMetadata:v33];
  [v30 setItems:v19];
  [v30 setIsCached:{objc_msgSend(eventCopy, "isCached")}];
  [v30 setResponseTimePerf:{objc_msgSend(eventCopy, "responseTimePerf")}];
  [v30 setGenerationStatus:{objc_msgSend(eventCopy, "generationStatus")}];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)registerResponsesGenerated:(id)generated
{
  generatedCopy = generated;
  v5 = generatedCopy;
  if (generatedCopy)
  {
    resolver = self->_resolver;
    language = [generatedCopy language];
    v8 = [(PREExperimentResolverProtocol *)resolver getResponseSuggestionsExperimentConfig:language shouldDownloadAssets:0];

    *buf = 0;
    v34 = buf;
    v35 = 0x2020000000;
    v36 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    responses = [v5 responses];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __53__PREResponsesMetricsPET_registerResponsesGenerated___block_invoke;
    v23[3] = &unk_279ABAF20;
    v10 = v8;
    v24 = v10;
    selfCopy = self;
    v11 = v5;
    v26 = v11;
    v27 = buf;
    v28 = &v29;
    [responses enumerateObjectsUsingBlock:v23];

    v12 = objc_opt_new();
    [v12 setIsCached:{objc_msgSend(v11, "isCached")}];
    experimentIdentifiers = [v10 experimentIdentifiers];
    experimentId = [experimentIdentifiers experimentId];
    [v12 setExperimentId:experimentId];

    experimentIdentifiers2 = [v10 experimentIdentifiers];
    treatmentId = [experimentIdentifiers2 treatmentId];
    [v12 setTreatmentId:treatmentId];

    treatmentName = [v10 treatmentName];
    [v12 setTreatmentModelName:treatmentName];

    [v12 setHostProcess:self->_processName];
    locale = [v11 locale];
    [v12 setLocale:locale];

    language2 = [v11 language];
    [v12 setLang:language2];

    [v12 setIsApricotDevice:self->_isApricotDevice];
    [v12 setGenerationStatus:{objc_msgSend(v11, "generationStatus")}];
    responses2 = [v11 responses];
    [v12 setNumberOfResponsesGenerated:{objc_msgSend(responses2, "count")}];

    [v12 setNumberOfCustomResponses:*(v34 + 6)];
    [v12 setNumberOfRobotResponses:*(v30 + 6)];
    -[PETEventTracker2 trackDistributionForMessage:value:](self->_tracker, "trackDistributionForMessage:value:", v12, [v11 responseTimePerf]);
    v21 = pre_responses_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_260CE3000, v21, OS_LOG_TYPE_DEFAULT, "PREResponsesMetricsPET finished logging responses generated", v22, 2u);
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = pre_responses_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260CE3000, v10, OS_LOG_TYPE_DEFAULT, "PREResponsesGeneratedEvent is nil. Skip logging", buf, 2u);
    }
  }
}

void __53__PREResponsesMetricsPET_registerResponsesGenerated___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v5 = objc_opt_new();
  v6 = [v19 modelId];
  [v5 setModelId:{objc_msgSend(v6, "unsignedIntegerValue")}];

  [v5 setResponseClassId:0xFFFFFFFFLL];
  [v5 setReplyTextId:0xFFFFFFFFLL];
  [v5 setPosition:a3];
  v7 = [*(a1 + 32) experimentIdentifiers];
  v8 = [v7 experimentId];
  [v5 setExperimentId:v8];

  v9 = [*(a1 + 32) experimentIdentifiers];
  v10 = [v9 treatmentId];
  [v5 setTreatmentId:v10];

  v11 = [*(a1 + 32) treatmentName];
  [v5 setTreatmentModelName:v11];

  [v5 setHostProcess:*(*(a1 + 40) + 32)];
  v12 = [*(a1 + 48) locale];
  [v5 setLocale:v12];

  v13 = [*(a1 + 48) language];
  [v5 setLang:v13];

  [v5 setIsApricotDevice:*(*(a1 + 40) + 24)];
  v14 = [v19 isCustomResponse];
  [v5 setIsCustomResponse:{objc_msgSend(v14, "BOOLValue")}];

  v15 = [v19 isCustomResponse];
  LODWORD(v10) = [v15 BOOLValue];

  if (v10)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v16 = [v19 isRobotResponse];
  [v5 setIsRobotResponse:{objc_msgSend(v16, "BOOLValue")}];

  v17 = [v19 isRobotResponse];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  [*(*(a1 + 40) + 8) trackScalarForMessage:v5];
}

- (PREResponsesMetricsPET)initWithTracker:(id)tracker experimentResolver:(id)resolver
{
  trackerCopy = tracker;
  resolverCopy = resolver;
  v15.receiver = self;
  v15.super_class = PREResponsesMetricsPET;
  v9 = [(PREResponsesMetricsPET *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tracker, tracker);
    objc_storeStrong(&v10->_resolver, resolver);
    v10->_isApricotDevice = [(PREResponsesMetricsPET *)v10 isApricotDevice];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v10->_processName;
    v10->_processName = processName;
  }

  return v10;
}

- (PREResponsesMetricsPET)initWithExperimentResolver:(id)resolver
{
  v4 = MEMORY[0x277D41DA8];
  resolverCopy = resolver;
  sharedInstance = [v4 sharedInstance];
  v7 = [(PREResponsesMetricsPET *)self initWithTracker:sharedInstance experimentResolver:resolverCopy];

  return v7;
}

- (PREResponsesMetricsPET)init
{
  v3 = +[PREExperimentResolver sharedInstance];
  v4 = [(PREResponsesMetricsPET *)self initWithExperimentResolver:v3];

  return v4;
}

@end