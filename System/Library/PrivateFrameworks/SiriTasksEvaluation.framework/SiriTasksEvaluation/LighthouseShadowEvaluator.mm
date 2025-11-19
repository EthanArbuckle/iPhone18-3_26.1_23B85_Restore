@interface LighthouseShadowEvaluator
- (BOOL)evaluateTaskSuccess:(id)a3 finalInteraction:(id)a4;
- (BOOL)findInteraction:(id)a3;
- (BOOL)isPSEBasedCandidateModel:(id)a3;
- (BOOL)isSuccess:(id)a3 intentType:(id)a4 intentResultType:(id)a5;
- (BOOL)performSiriEvaluationTaskWithTaskName:(id)a3 bmStreamIdentifier:(id)a4 outError:(id *)a5;
- (LighthouseShadowEvaluator)init;
- (id)evaluateAbandonedSiriTasks:(id)a3;
- (id)evaluateAppLaunchedTasks:(id)a3 startTime:(id)a4;
- (id)evaluateWithModel:(id)a3;
- (id)evaluateWithPSEBasedModel:(id)a3;
- (id)fetchSiriIntentEvents:(id)a3;
- (id)generateCandidateModels:(id)a3;
- (id)getDateString:(id)a3;
- (id)getLastEvaluationTime:(id)a3;
- (id)getTaskConfigurationFromInteractionID:(id)a3;
- (id)personalizeModel:(id)a3;
- (int64_t)getIntentEventType:(id)a3;
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

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(LighthouseShadowEvaluator *)v2 setJsonSELFResults:v4];
  }

  return v2;
}

- (BOOL)performSiriEvaluationTaskWithTaskName:(id)a3 bmStreamIdentifier:(id)a4 outError:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  NSLog(&cfstr_Lighthouseshad.isa);
  v9 = [objc_alloc(MEMORY[0x277D36A48]) initWithMaximumNumberOfDays:28 maximumNumberOfEvents:28];
  if (v7)
  {
    v10 = [@"com.apple.SiriTasksEvaluation" stringByAppendingString:@"-"];
    v11 = [v10 stringByAppendingString:v7];
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
    if (!v8)
    {
      v8 = [MEMORY[0x277CF0E28] streamIdentifierForStream:35];
    }

    v25 = v8;
    v16 = [(LighthouseShadowEvaluator *)self generateCandidateModels:v8];
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

    v8 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)getDateString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDateFormat:@"EEE', ' dd' 'MMM' 'yyyy HH':'mm':'ss Z"];
  v5 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:@"UTC"];
  [v4 setTimeZone:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v6];

  v7 = [v4 stringFromDate:v3];

  return v7;
}

- (BOOL)isSuccess:(id)a3 intentType:(id)a4 intentResultType:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 type];
    if ([v10 isEqualToString:@"INStartCallIntent"])
    {
      [v7 duration];
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
  if ([v8 isEqualToString:@"INStartCal]lIntent"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"INSendMessageIntent"))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v9 isEqualToString:@"failed"];
  }

LABEL_10:

  return v14;
}

- (BOOL)findInteraction:(id)a3
{
  v3 = a3;
  if ([v3 eventType] == 1)
  {
    v4 = 5;
  }

  else
  {
    v4 = 30;
  }

  v5 = [v3 createdAt];

  v6 = [v5 dateByAddingTimeInterval:v4];
  v7 = objc_opt_new();
  v8 = [BiomeUtils getEventsFromStream:v7 startingAt:v5 until:v6];
  v9 = [v8 count] != 0;

  return v9;
}

- (BOOL)evaluateTaskSuccess:(id)a3 finalInteraction:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [v6 lastObject];
  v9 = v8;
  if (!v8)
  {
LABEL_6:
    v10 = &stru_2879E0A68;
    goto LABEL_7;
  }

  if ([v8 eventType])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v9, "eventType")];
LABEL_7:
    NSLog(&cfstr_Lighthouseshad_2.isa, v10);

    v11 = 0;
    goto LABEL_8;
  }

  v14 = MEMORY[0x277CCAAA0];
  v15 = [v9 eventData];
  v35 = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:&v35];
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
    v19 = v6;
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
            v25 = [v23 eventData];
            v30 = 0;
            v26 = [v24 JSONObjectWithData:v25 options:0 error:&v30];
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

    v11 = [(LighthouseShadowEvaluator *)self isSuccess:v7 intentType:v18 intentResultType:v20];
  }

LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)evaluateAbandonedSiriTasks:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(LighthouseShadowEvaluator *)self fetchSiriIntentEvents:v4];
  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [v7 intentId];
    if (![(LighthouseShadowEvaluator *)self findInteraction:v7])
    {
      NSLog(&cfstr_Lighthouseshad_4.isa, v8);
      v9 = [[SiriTasksEvaluationResult alloc] initWithTaskId:v8 isEffectiveTask:1 isSuccessfulTask:0];
      [v5 addObject:v9];
    }
  }

  else
  {
    v7 = [(LighthouseShadowEvaluator *)self getDateString:v4];
    NSLog(&cfstr_Lighthouseshad_3.isa, v7);
  }

  return v5;
}

- (id)evaluateAppLaunchedTasks:(id)a3 startTime:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = objc_opt_new();
  v54 = v6;
  v55 = v5;
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
        v14 = [v12 eventBody];
        v15 = [v14 intentClass];
        v16 = [v15 isEqualToString:@"INStartCallIntent"];

        if (v16)
        {
          v17 = MEMORY[0x277CCAAC8];
          v18 = objc_opt_class();
          v19 = [v14 interaction];
          v62 = 0;
          v20 = [v17 unarchivedObjectOfClass:v18 fromData:v19 error:&v62];

          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v20];
          NSLog(&cfstr_Lighthouseshad_7.isa, v21);
          v22 = [v20 intent];
          v23 = [v22 _className];

          v24 = [v20 intent];
          v25 = [v24 identifier];

          v26 = [v20 dateInterval];
          v27 = [v26 startDate];
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = [MEMORY[0x277CBEAA8] date];
          }

          v30 = v29;

          v31 = [v20 dateInterval];
          [v31 duration];
          if (v32 == 0.0)
          {
            v33 = 0.0;
          }

          else
          {
            v33 = v32;
          }

          v34 = [v20 _donatedBySiri];
          v35 = [v20 dateInterval];
          NSLog(&cfstr_Lighthouseshad_8.isa, v35, v25, v34);

          v36 = [[StitchableInteraction alloc] initWithType:v23 identifier:v25 startDate:v30 duration:v34 isDonatedBySiri:v33];
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
        v44 = [v41 startDate];
        v45 = [(LighthouseShadowEvaluator *)self fetchSiriIntentEvents:v44];
        if ([v45 count])
        {
          v46 = [v45 firstObject];
          v47 = [v46 intentId];

          v48 = [(LighthouseShadowEvaluator *)self getTaskConfigurationFromInteractionID:v47];
          v49 = v48;
          if (v48)
          {
            minCallDurationInSeconds = [v48 minDurationInSeconds];
          }

          else
          {
            NSLog(&cfstr_Lighthouseshad_10.isa, v47);
          }

          v50 = [[SiriTasksEvaluationResult alloc] initWithTaskId:v47 isEffectiveTask:1 isSuccessfulTask:[(LighthouseShadowEvaluator *)self evaluateTaskSuccess:v45 finalInteraction:v41]];
          [v56 addObject:v50];
        }

        else
        {
          v47 = [(LighthouseShadowEvaluator *)self getDateString:v44];
          NSLog(&cfstr_Lighthouseshad_9.isa, v47);
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

- (id)fetchSiriIntentEvents:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
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
    v28 = [v7 firstObject];
    v27 = [v28 eventBody];
    v37 = [v27 intentId];
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
          v13 = [v12 eventBody];
          v14 = [v13 intentId];
          v15 = [v14 isEqualToString:v37];

          if (!v15)
          {

            goto LABEL_14;
          }

          v16 = [v13 intentId];
          v17 = [v13 eventType];
          v18 = [v13 eventData];
          v19 = MEMORY[0x277CBEAA8];
          [v12 timestamp];
          v20 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v12];
          NSLog(&cfstr_Lighthouseshad_13.isa, v21);
          v22 = [(LighthouseShadowEvaluator *)self getIntentEventType:v17];
          v23 = [[SiriIntentEvent alloc] initWithIntentId:v16 eventType:v22 eventData:v18 createdAt:v20];
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
    NSLog(&cfstr_Lighthouseshad_14.isa, v37, v24);

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

- (id)getLastEvaluationTime:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 BMModelDataStream];

  if (v5)
  {
    v24 = self;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [v4 BMModelDataStream];
    v8 = [v7 publisher];

    v9 = [v4 bmReceiveInputBlock];
    v10 = [v8 filterWithIsIncluded:v9];

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

      v20 = [v6 firstObject];
      v21 = [(LighthouseShadowEvaluator *)v24 getDateString:v20];
      NSLog(&cfstr_Lighthouseshad_15.isa, v21);
    }

    else
    {
      v20 = [MEMORY[0x277CBEAA8] distantPast];
    }
  }

  else
  {
    v20 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)isPSEBasedCandidateModel:(id)a3
{
  v3 = a3;
  v4 = [v3 BMModelDataStream];

  if (v4)
  {
    v4 = [v3 BMModelDataStream];
    v5 = [v4 identifier];
    NSLog(&cfstr_Lighthouseshad_16.isa, v5);

    v6 = [v3 BMModelDataStream];
    v7 = [v6 identifier];
    LOBYTE(v4) = [v7 isEqualToString:@"Siri.PostSiriEngagement"];
  }

  return v4;
}

- (id)evaluateWithPSEBasedModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = BiomeLibrary();
  v7 = [v6 Siri];
  v8 = [v7 PostSiriEngagement];

  v9 = [v8 publisher];
  v10 = [v4 bmReceiveInputBlock];

  v11 = [v9 filterWithIsIncluded:v10];

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

- (id)evaluateWithModel:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 BMModelDataStream];
  if (!v6 || (v7 = v6, [v4 bmReceiveInputBlock], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    NSLog(&cfstr_Lighthouseshad_17.isa);
    v9 = v5;
    goto LABEL_6;
  }

  if ([(LighthouseShadowEvaluator *)self isPSEBasedCandidateModel:v4])
  {
    v9 = [(LighthouseShadowEvaluator *)self evaluateWithPSEBasedModel:v4];
LABEL_6:
    v10 = v9;
    goto LABEL_7;
  }

  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = [(LighthouseShadowEvaluator *)self getLastEvaluationTime:v4];
  v15 = [v4 modelURL];
  v16 = [v15 absoluteString];
  v17 = [(LighthouseShadowEvaluator *)self getDateString:v14];
  NSLog(&cfstr_Lighthouseshad_18.isa, v16, v17);

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
  v26 = [(LighthouseShadowEvaluator *)self evaluationResults];
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v40 + 1) + 8 * i);
        v30 = v30 + [v33 isSuccessfulTask];
        v29 = v29 + [v33 isEffectiveTask];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
  v35 = [v34 metricName];
  NSLog(&cfstr_Lighthouseshad_20.isa, v35, v30, v29);

  [v5 addModelEvaluationResults:v34];
  v10 = v5;

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)personalizeModel:(id)a3
{
  v3 = [a3 modelURL];
  v4 = [v3 absoluteString];
  NSLog(&cfstr_Lighthouseshad_21.isa, v4);

  v5 = objc_opt_new();
  [v5 setIsDefaultModel:0];

  return v5;
}

- (id)generateCandidateModels:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"test_URL"];
    v6 = [MEMORY[0x277CF0E28] streamIdentifiers];
    v7 = [v6 containsObject:v3];

    v8 = "false";
    if (v7)
    {
      v8 = "true";
    }

    NSLog(&cfstr_Lighthouseshad_23.isa, v3, v8);
    if (v7)
    {
      v9 = [MEMORY[0x277CF0E28] streamForStreamIdentifier:v3];
      v10 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPublicStream:v9];
      v11 = [objc_alloc(MEMORY[0x277D36A40]) initWithModelURL:v5 withBiomeStream:v10 andMetadata:0];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D36A40]) initWithModelURL:v5 withBiomeStreamIdentifier:v3 andMetadata:0];
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

- (int64_t)getIntentEventType:(id)a3
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [v3 arrayWithObjects:{@"intentStart", @"intentResult", @"disambiguationOffer", @"disambiguationResult", @"confirmationOffer", @"confirmationResult", @"entityRejection", @"customSignal", 0}];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)getTaskConfigurationFromInteractionID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
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
          v11 = [(SiriTaskConfiguration *)v6 eventTime];
          v12 = [(SiriTaskConfiguration *)v10 eventTime];
          v13 = [v11 compare:v12];

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