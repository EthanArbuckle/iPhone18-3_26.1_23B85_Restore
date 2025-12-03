@interface LighthouseShadowEvaluator
- (BOOL)evaluateTaskSuccess:(id)success finalInteraction:(id)interaction;
- (BOOL)findInteraction:(id)interaction;
- (BOOL)isPSEBasedCandidateModel:(id)model;
- (BOOL)isSuccess:(id)success intentType:(id)type intentResultType:(id)resultType;
- (BOOL)performSiriEvaluationTaskWithTaskName:(id)name bmStreamIdentifier:(id)identifier outError:(id *)error;
- (LighthouseShadowEvaluator)init;
- (id)evaluateAbandonedSiriTasks:(id)tasks;
- (id)evaluateAppLaunchedTasks:(id)tasks startTime:(id)time;
- (id)evaluateWithModel:(id)model;
- (id)evaluateWithPSEBasedModel:(id)model;
- (id)fetchSiriIntentEvents:(id)events;
- (id)generateCandidateModels:(id)models;
- (id)getDateString:(id)string;
- (id)getLastEvaluationTime:(id)time;
- (id)getTaskConfigurationFromInteractionID:(id)d;
- (id)personalizeModel:(id)model;
- (int64_t)getIntentEventType:(id)type;
@end

@implementation LighthouseShadowEvaluator

- (LighthouseShadowEvaluator)init
{
  v6.receiver = self;
  v6.super_class = LighthouseShadowEvaluator;
  v2 = [(LighthouseShadowEvaluator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(LighthouseShadowEvaluator *)v2 setEvaluationResults:v3];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(LighthouseShadowEvaluator *)v2 setJsonSELFResults:dictionary];
  }

  return v2;
}

- (BOOL)performSiriEvaluationTaskWithTaskName:(id)name bmStreamIdentifier:(id)identifier outError:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  NSLog(&cfstr_Lighthouseshad.isa);
  v9 = [objc_alloc(MEMORY[0x277D36A48]) initWithMaximumNumberOfDays:28 maximumNumberOfEvents:28];
  if (nameCopy)
  {
    v10 = [@"com.apple.SiriTasksEvaluation" stringByAppendingString:@"-"];
    v11 = [v10 stringByAppendingString:nameCopy];
  }

  else
  {
    v11 = @"com.apple.SiriTasksEvaluation";
  }

  v27 = 0;
  v12 = [objc_alloc(MEMORY[0x277D36A50]) initWithBundleIdentifier:v11 dataProviderInstance:self evaluationInstance:self personalizationInstance:self pruningPolicy:v9 error:&v27];
  v13 = v27;
  if (v13)
  {
    v14 = v13;
    NSLog(&cfstr_Lighthouseshad_0.isa, v13);
    v15 = 0;
  }

  else
  {
    if (!identifierCopy)
    {
      identifierCopy = [MEMORY[0x277CF0E28] streamIdentifierForStream:35];
    }

    v25 = identifierCopy;
    v16 = [(LighthouseShadowEvaluator *)self generateCandidateModels:identifierCopy];
    v17 = [objc_alloc(MEMORY[0x277D36A58]) initWithMetricName:@"taskSuccessMetric" percentageIncrease:0.05];
    v28[0] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

    v19 = [objc_alloc(MEMORY[0x277D36A60]) initWithModelSelectionParameters:v18 minimumNumberOfEvaluations:&unk_2879E1808 minimumNumberOfSamples:0];
    v20 = [objc_alloc(MEMORY[0x277D36A68]) initWithModelSelectionParameters:v18 minimumNumberOfSamplesForPersonalization:&unk_2879E1820 minimumNumberOfSamplesForPersonalizationSelection:&unk_2879E1808];
    v26 = 0;
    v21 = v16;
    [v12 trainAndEvaluateModelsWithCandidateModels:v16 personalizationPolicy:v20 selectionPolicy:v19 error:&v26];
    v22 = v26;
    v14 = v22;
    v15 = v22 == 0;
    if (v22)
    {
      NSLog(&cfstr_Lighthouseshad_1.isa, v22);
    }

    identifierCopy = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)getDateString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  [v4 setDateFormat:@"EEE', ' dd' 'MMM' 'yyyy HH':'mm':'ss Z"];
  v5 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v4 setTimeZone:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v6];

  v7 = [v4 stringFromDate:stringCopy];

  return v7;
}

- (BOOL)isSuccess:(id)success intentType:(id)type intentResultType:(id)resultType
{
  successCopy = success;
  typeCopy = type;
  resultTypeCopy = resultType;
  if (successCopy)
  {
    type = [successCopy type];
    if ([type isEqualToString:@"INStartCallIntent"])
    {
      [successCopy duration];
      v12 = v11;
      v13 = minCallDurationInSeconds;

      if (v13 > v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }

    v14 = 1;
    goto LABEL_10;
  }

LABEL_4:
  if ([typeCopy isEqualToString:@"INStartCal]lIntent"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"INSendMessageIntent"))
  {
    v14 = 0;
  }

  else
  {
    v14 = [resultTypeCopy isEqualToString:@"failed"];
  }

LABEL_10:

  return v14;
}

- (BOOL)findInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([interactionCopy eventType] == 1)
  {
    v4 = 5;
  }

  else
  {
    v4 = 30;
  }

  createdAt = [interactionCopy createdAt];

  v6 = [createdAt dateByAddingTimeInterval:v4];
  v7 = objc_opt_new();
  v8 = [BiomeUtils getEventsFromStream:v7 startingAt:createdAt until:v6];
  v9 = [v8 count] != 0;

  return v9;
}

- (BOOL)evaluateTaskSuccess:(id)success finalInteraction:(id)interaction
{
  v37 = *MEMORY[0x277D85DE8];
  successCopy = success;
  interactionCopy = interaction;
  if (![successCopy count])
  {
    v9 = 0;
    goto LABEL_6;
  }

  lastObject = [successCopy lastObject];
  v9 = lastObject;
  if (!lastObject)
  {
LABEL_6:
    v10 = &stru_2879E0A68;
    goto LABEL_7;
  }

  if ([lastObject eventType])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v9, "eventType")];
LABEL_7:
    NSLog(&cfstr_Lighthouseshad_2.isa, v10);

    v11 = 0;
    goto LABEL_8;
  }

  v14 = MEMORY[0x277CCAAA0];
  eventData = [v9 eventData];
  v35 = 0;
  v16 = [v14 JSONObjectWithData:eventData options:0 error:&v35];
  v17 = v35;

  if (v17)
  {
    v11 = 0;
  }

  else
  {
    v18 = [v16 objectForKey:@"intentType"];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = successCopy;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v28 = v18;
      v29 = v16;
      v21 = *v32;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          if ([v23 eventType] == 1)
          {
            v24 = MEMORY[0x277CCAAA0];
            eventData2 = [v23 eventData];
            v30 = 0;
            v26 = [v24 JSONObjectWithData:eventData2 options:0 error:&v30];
            v27 = v30;

            v20 = 0;
            if (!v27)
            {
              v20 = [v26 objectForKey:@"type"];
            }

            goto LABEL_23;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_23:
      v18 = v28;
      v16 = v29;
    }

    v11 = [(LighthouseShadowEvaluator *)self isSuccess:interactionCopy intentType:v18 intentResultType:v20];
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)evaluateAbandonedSiriTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(LighthouseShadowEvaluator *)self fetchSiriIntentEvents:tasksCopy];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    intentId = [firstObject intentId];
    if (![(LighthouseShadowEvaluator *)self findInteraction:firstObject])
    {
      NSLog(&cfstr_Lighthouseshad_4.isa, intentId);
      v9 = [[SiriTasksEvaluationResult alloc] initWithTaskId:intentId isEffectiveTask:1 isSuccessfulTask:0];
      [v5 addObject:v9];
    }
  }

  else
  {
    firstObject = [(LighthouseShadowEvaluator *)self getDateString:tasksCopy];
    NSLog(&cfstr_Lighthouseshad_3.isa, firstObject);
  }

  return v5;
}

- (id)evaluateAppLaunchedTasks:(id)tasks startTime:(id)time
{
  v68 = *MEMORY[0x277D85DE8];
  tasksCopy = tasks;
  timeCopy = time;
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = objc_opt_new();
  v54 = timeCopy;
  v55 = tasksCopy;
  v7 = [BiomeUtils getEventsFromStream:"getEventsFromStream:startingAt:until:" startingAt:? until:?];
  NSLog(&cfstr_Lighthouseshad_5.isa, [v7 count]);
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v64;
    v58 = *v64;
    do
    {
      v11 = 0;
      v60 = v9;
      do
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v63 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        eventBody = [v12 eventBody];
        intentClass = [eventBody intentClass];
        v16 = [intentClass isEqualToString:@"INStartCallIntent"];

        if (v16)
        {
          v17 = MEMORY[0x277CCAAC8];
          v18 = objc_opt_class();
          interaction = [eventBody interaction];
          v62 = 0;
          v20 = [v17 unarchivedObjectOfClass:v18 fromData:interaction error:&v62];

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v20];
          NSLog(&cfstr_Lighthouseshad_7.isa, v21);
          intent = [v20 intent];
          _className = [intent _className];

          intent2 = [v20 intent];
          identifier = [intent2 identifier];

          dateInterval = [v20 dateInterval];
          startDate = [dateInterval startDate];
          v28 = startDate;
          if (startDate)
          {
            date = startDate;
          }

          else
          {
            date = [MEMORY[0x277CBEAA8] date];
          }

          v30 = date;

          dateInterval2 = [v20 dateInterval];
          [dateInterval2 duration];
          if (v32 == 0.0)
          {
            v33 = 0.0;
          }

          else
          {
            v33 = v32;
          }

          _donatedBySiri = [v20 _donatedBySiri];
          dateInterval3 = [v20 dateInterval];
          NSLog(&cfstr_Lighthouseshad_8.isa, dateInterval3, identifier, _donatedBySiri);

          v36 = [[StitchableInteraction alloc] initWithType:_className identifier:identifier startDate:v30 duration:_donatedBySiri isDonatedBySiri:v33];
          [v59 addObject:v36];

          v10 = v58;
          v9 = v60;
        }

        else
        {
          NSLog(&cfstr_Lighthouseshad_6.isa);
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v9);
  }

  v37 = v59;
  v38 = [v59 sortedArrayUsingComparator:&__block_literal_global_0];
  if ([v59 count] >= 2)
  {
    v39 = 1;
    do
    {
      v40 = objc_autoreleasePoolPush();
      v41 = [v37 objectAtIndex:v39];
      v42 = v39 - 1;
      v43 = [v37 objectAtIndex:v39 - 1];
      if (([v41 isDonatedBySiri] & 1) == 0 && objc_msgSend(v43, "isDonatedBySiri"))
      {
        startDate2 = [v41 startDate];
        v45 = [(LighthouseShadowEvaluator *)self fetchSiriIntentEvents:startDate2];
        if ([v45 count])
        {
          firstObject = [v45 firstObject];
          intentId = [firstObject intentId];

          v48 = [(LighthouseShadowEvaluator *)self getTaskConfigurationFromInteractionID:intentId];
          v49 = v48;
          if (v48)
          {
            minCallDurationInSeconds = [v48 minDurationInSeconds];
          }

          else
          {
            NSLog(&cfstr_Lighthouseshad_10.isa, intentId);
          }

          v50 = [[SiriTasksEvaluationResult alloc] initWithTaskId:intentId isEffectiveTask:1 isSuccessfulTask:[(LighthouseShadowEvaluator *)self evaluateTaskSuccess:v45 finalInteraction:v41]];
          [v56 addObject:v50];
        }

        else
        {
          intentId = [(LighthouseShadowEvaluator *)self getDateString:startDate2];
          NSLog(&cfstr_Lighthouseshad_9.isa, intentId);
        }

        v37 = v59;
      }

      objc_autoreleasePoolPop(v40);
      v39 = v42 + 2;
    }

    while (v42 + 2 < [v37 count]);
  }

  v51 = *MEMORY[0x277D85DE8];

  return v56;
}

uint64_t __64__LighthouseShadowEvaluator_evaluateAppLaunchedTasks_startTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)fetchSiriIntentEvents:(id)events
{
  v43 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = eventsCopy;
  v5 = [v4 dateByAddingTimeInterval:-60.0];
  v6 = objc_opt_new();
  v7 = [BiomeUtils getEventsFromStream:v6 startingAt:v5 until:v4];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  NSLog(&cfstr_Lighthouseshad_11.isa, v8);

  if ([v7 count])
  {
    v30 = v6;
    v31 = v5;
    v32 = v4;
    firstObject = [v7 firstObject];
    eventBody = [firstObject eventBody];
    intentId = [eventBody intentId];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v35 = *v39;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          eventBody2 = [v12 eventBody];
          intentId2 = [eventBody2 intentId];
          v15 = [intentId2 isEqualToString:intentId];

          if (!v15)
          {

            goto LABEL_14;
          }

          intentId3 = [eventBody2 intentId];
          eventType = [eventBody2 eventType];
          eventData = [eventBody2 eventData];
          v19 = MEMORY[0x277CBEAA8];
          [v12 timestamp];
          v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v12];
          NSLog(&cfstr_Lighthouseshad_13.isa, v21);
          v22 = [(LighthouseShadowEvaluator *)self getIntentEventType:eventType];
          v23 = [[SiriIntentEvent alloc] initWithIntentId:intentId3 eventType:v22 eventData:eventData createdAt:v20];
          if (v22 <= 5)
          {
            [v34 addObject:v23];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
    NSLog(&cfstr_Lighthouseshad_14.isa, intentId, v24);

    v5 = v31;
    v4 = v32;
    v7 = v29;
    v6 = v30;
  }

  else
  {
    NSLog(&cfstr_Lighthouseshad_12.isa);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)getLastEvaluationTime:(id)time
{
  v30 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  bMModelDataStream = [timeCopy BMModelDataStream];

  if (bMModelDataStream)
  {
    selfCopy = self;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bMModelDataStream2 = [timeCopy BMModelDataStream];
    publisher = [bMModelDataStream2 publisher];

    bmReceiveInputBlock = [timeCopy bmReceiveInputBlock];
    v10 = [publisher filterWithIsIncluded:bmReceiveInputBlock];

    v11 = [BiomeUtils getEventsFromPublisher:v10];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = MEMORY[0x277CBEAA8];
          [*(*(&v25 + 1) + 8 * i) timestamp];
          v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
          [v6 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    if ([v6 count])
    {
      v18 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:1];
      v19 = [MEMORY[0x277CBEA60] arrayWithObject:v18];
      [v6 sortUsingDescriptors:v19];

      firstObject = [v6 firstObject];
      v21 = [(LighthouseShadowEvaluator *)selfCopy getDateString:firstObject];
      NSLog(&cfstr_Lighthouseshad_15.isa, v21);
    }

    else
    {
      firstObject = [MEMORY[0x277CBEAA8] distantPast];
    }
  }

  else
  {
    firstObject = [MEMORY[0x277CBEAA8] distantPast];
  }

  v22 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (BOOL)isPSEBasedCandidateModel:(id)model
{
  modelCopy = model;
  bMModelDataStream = [modelCopy BMModelDataStream];

  if (bMModelDataStream)
  {
    bMModelDataStream = [modelCopy BMModelDataStream];
    identifier = [bMModelDataStream identifier];
    NSLog(&cfstr_Lighthouseshad_16.isa, identifier);

    bMModelDataStream2 = [modelCopy BMModelDataStream];
    identifier2 = [bMModelDataStream2 identifier];
    LOBYTE(bMModelDataStream) = [identifier2 isEqualToString:@"Siri.PostSiriEngagement"];
  }

  return bMModelDataStream;
}

- (id)evaluateWithPSEBasedModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_new();
  v6 = BiomeLibrary();
  siri = [v6 Siri];
  postSiriEngagement = [siri PostSiriEngagement];

  publisher = [postSiriEngagement publisher];
  bmReceiveInputBlock = [modelCopy bmReceiveInputBlock];

  v11 = [publisher filterWithIsIncluded:bmReceiveInputBlock];

  v12 = [BiomeUtils getEventsFromPublisher:v11];
  v13 = objc_alloc_init(_TtC19SiriTasksEvaluation26SimpleTaskSuccessEvaluator);
  v14 = [(SimpleTaskSuccessEvaluator *)v13 evaluateWithPseEvents:v12];
  [(LighthouseShadowEvaluator *)self setJsonSELFResults:v14];

  v15 = objc_opt_new();
  [v15 setMetricName:@"taskSuccessMetric"];
  [v15 setMetricValue:0.5];
  [v15 setNumberOfPositiveSamples:5];
  [v15 setNumberOfSamples:10];
  [v5 addModelEvaluationResults:v15];

  return v5;
}

- (id)evaluateWithModel:(id)model
{
  v45 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = objc_opt_new();
  bMModelDataStream = [modelCopy BMModelDataStream];
  if (!bMModelDataStream || (v7 = bMModelDataStream, [modelCopy bmReceiveInputBlock], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    NSLog(&cfstr_Lighthouseshad_17.isa);
    v9 = v5;
    goto LABEL_6;
  }

  if ([(LighthouseShadowEvaluator *)self isPSEBasedCandidateModel:modelCopy])
  {
    v9 = [(LighthouseShadowEvaluator *)self evaluateWithPSEBasedModel:modelCopy];
LABEL_6:
    v10 = v9;
    goto LABEL_7;
  }

  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = [(LighthouseShadowEvaluator *)self getLastEvaluationTime:modelCopy];
  modelURL = [modelCopy modelURL];
  absoluteString = [modelURL absoluteString];
  v17 = [(LighthouseShadowEvaluator *)self getDateString:v14];
  NSLog(&cfstr_Lighthouseshad_18.isa, absoluteString, v17);

  v18 = [v13 dateByAddingTimeInterval:-10800.0];
  v38 = v18;
  if ([v14 compare:v18] == -1)
  {
    v19 = v18;

    v20 = [(LighthouseShadowEvaluator *)self getDateString:v19];
    NSLog(&cfstr_Lighthouseshad_19.isa, v20);

    v14 = v19;
  }

  v21 = [(LighthouseShadowEvaluator *)self evaluateAbandonedSiriTasks:v13];
  v39 = v13;
  v22 = [(LighthouseShadowEvaluator *)self evaluateAppLaunchedTasks:v13 startTime:v14];
  v23 = MEMORY[0x277CBEB18];
  v36 = v22;
  v37 = v21;
  v24 = [v21 arrayByAddingObjectsFromArray:?];
  v25 = [v23 arrayWithArray:v24];
  [(LighthouseShadowEvaluator *)self setEvaluationResults:v25];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  evaluationResults = [(LighthouseShadowEvaluator *)self evaluationResults];
  v27 = [evaluationResults countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    LODWORD(v29) = 0;
    LODWORD(v30) = 0;
    v31 = *v41;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(evaluationResults);
        }

        v33 = *(*(&v40 + 1) + 8 * i);
        v30 = v30 + [v33 isSuccessfulTask];
        v29 = v29 + [v33 isEffectiveTask];
      }

      v28 = [evaluationResults countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v34 = objc_opt_new();
  [v34 setMetricName:@"taskSuccessMetric"];
  [v34 setMetricValue:v30 * 100.0 / v29];
  [v34 setNumberOfPositiveSamples:v30];
  [v34 setNumberOfSamples:v29];
  metricName = [v34 metricName];
  NSLog(&cfstr_Lighthouseshad_20.isa, metricName, v30, v29);

  [v5 addModelEvaluationResults:v34];
  v10 = v5;

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)personalizeModel:(id)model
{
  modelURL = [model modelURL];
  absoluteString = [modelURL absoluteString];
  NSLog(&cfstr_Lighthouseshad_21.isa, absoluteString);

  v5 = objc_opt_new();
  [v5 setIsDefaultModel:0];

  return v5;
}

- (id)generateCandidateModels:(id)models
{
  modelsCopy = models;
  v4 = objc_opt_new();
  if (modelsCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"test_URL"];
    streamIdentifiers = [MEMORY[0x277CF0E28] streamIdentifiers];
    v7 = [streamIdentifiers containsObject:modelsCopy];

    v8 = "false";
    if (v7)
    {
      v8 = "true";
    }

    NSLog(&cfstr_Lighthouseshad_23.isa, modelsCopy, v8);
    if (v7)
    {
      v9 = [MEMORY[0x277CF0E28] streamForStreamIdentifier:modelsCopy];
      v10 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPublicStream:v9];
      v11 = [objc_alloc(MEMORY[0x277D36A40]) initWithModelURL:v5 withBiomeStream:v10 andMetadata:0];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D36A40]) initWithModelURL:v5 withBiomeStreamIdentifier:modelsCopy andMetadata:0];
    }

    [v11 setModelTag:@"default_model"];
    [v11 setIsDefaultModel:1];
    [v4 addObject:v11];
  }

  else
  {
    NSLog(&cfstr_Lighthouseshad_22.isa);
  }

  return v4;
}

- (int64_t)getIntentEventType:(id)type
{
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v5 = [v3 arrayWithObjects:{@"intentStart", @"intentResult", @"disambiguationOffer", @"disambiguationResult", @"confirmationOffer", @"confirmationResult", @"entityRejection", @"customSignal", 0}];
  v6 = [v5 indexOfObject:typeCopy];

  return v6;
}

- (id)getTaskConfigurationFromInteractionID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v3 = [_TtC19SiriTasksEvaluation17FeatureStoreUtils retrieveFeatureDataWithStreamId:@"SIRITaskConfiguration" interactionId:?];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [[SiriTaskConfiguration alloc] initWithJSONData:*(*(&v18 + 1) + 8 * i)];
        v10 = v9;
        if (v6)
        {
          eventTime = [(SiriTaskConfiguration *)v6 eventTime];
          eventTime2 = [(SiriTaskConfiguration *)v10 eventTime];
          v13 = [eventTime compare:eventTime2];

          if (v13 == -1)
          {
            v14 = v10;

            v6 = v14;
          }
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

@end