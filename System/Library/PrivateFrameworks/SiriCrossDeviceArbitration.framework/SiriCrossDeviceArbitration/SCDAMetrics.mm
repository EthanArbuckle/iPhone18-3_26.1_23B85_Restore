@interface SCDAMetrics
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)isMyriadMetricsMessage:(id)a3;
- (double)getSessionId:(MyriadMetricsDataV2 *)a3;
- (id)_getElectionParticipantIdWithLowBits:(unint64_t)a3 withHighBits:(unint64_t)a4;
- (id)_getRequestType:(unint64_t)a3;
- (id)getCDASessionId:(MyriadMetricsDataV2 *)a3;
- (int)_getCDASchemaCDATriggerType:(unint64_t)a3;
- (unsigned)getVersion:(MyriadMetricsDataV2 *)a3;
- (void)_decisionMadeContext:(MyriadMetricsDataV2 *)a3 additionalContext:(id)a4 instrumentation:(id)a5 completion:(id)a6;
- (void)_submitMyriadMetrics:(MyriadMetricsDataV2 *)a3 additionalContext:(id)a4 instrumentation:(id)a5 completion:(id)a6;
- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)a3 payload:(id)a4 additionalContext:(id)a5 instrumentation:(id)a6 completion:(id)a7;
@end

@implementation SCDAMetrics

- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)a3 payload:(id)a4 additionalContext:(id)a5 instrumentation:(id)a6 completion:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v17 = [[SCDAAccessoryMetricMessage alloc] initWithMetricData:v13];
    if (v17)
    {
      v18 = v17;
      v19 = SCDALogContextAnalytics;
      if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        *v25 = 136315906;
        *&v25[4] = "[SCDAMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        *&v25[12] = 1024;
        *&v25[14] = [v18 version];
        v26 = 2048;
        v27 = v12;
        v28 = 2112;
        *&v29 = v14;
        _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s version = %u analytics stream = %p additional = [%@]", v25, 0x26u);
      }

      v30 = 0u;
      v31 = 0u;
      [v18 messageAsStruct];
      [(SCDAMetrics *)self _submitMyriadMetrics:v25 additionalContext:v14 instrumentation:v15 completion:v16];
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:2202 userInfo:0];
      if (v16)
      {
        v16[2](v16, v22, 0);
      }

      v23 = SCDALogContextAnalytics;
      if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *v25 = 136315138;
        *&v25[4] = "[SCDAMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        _os_log_error_impl(&dword_1DA758000, v23, OS_LOG_TYPE_ERROR, "%s Invalid analytics data received", v25, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v21 = SCDALogContextAnalytics;
    if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315138;
      *&v25[4] = "[SCDAMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
      _os_log_error_impl(&dword_1DA758000, v21, OS_LOG_TYPE_ERROR, "%s Invalid analytics stream.", v25, 0xCu);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:2202 userInfo:0];
    if (v16)
    {
      v16[2](v16, v18, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_decisionMadeContext:(MyriadMetricsDataV2 *)a3 additionalContext:(id)a4 instrumentation:(id)a5 completion:(id)a6
{
  v101[3] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (a3->version)
    {
      v90 = v12;
      v92 = v11;
      v93 = v10;
      electionParticipantCount = a3->electionParticipantCount;
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", electionParticipantCount];
      v91 = v13;
      [v13 setObject:v15 forKey:@"device_count"];

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:electionParticipantCount];
      v17 = v16;
      if (electionParticipantCount >= 0x32)
      {
        v18 = 50;
      }

      else
      {
        v18 = electionParticipantCount;
      }

      v19 = self;
      v96 = v18;
      v97 = v16;
      v94 = electionParticipantCount;
      if (electionParticipantCount)
      {
        v20 = 0;
        do
        {
          v21 = objc_alloc(MEMORY[0x1E695DF90]);
          v100[0] = @"dc";
          v22 = &a3->version + v20;
          [MEMORY[0x1E696AD98] numberWithUnsignedChar:a3->electionParticipantDeviceType[v20]];
          v23 = a3;
          v25 = v24 = v19;
          v101[0] = v25;
          v100[1] = @"pt";
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v22[175]];
          v101[1] = v26;
          v100[2] = @"goodness";
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v22[75]];
          v101[2] = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:3];
          v29 = [v21 initWithDictionary:v28];

          v19 = v24;
          a3 = v23;
          v30 = [(SCDAMetrics *)v19 getElectionParticipantId:v23 forParticipant:v20];
          v31 = [v30 UUIDString];
          [v29 setValue:v31 forKey:@"id"];

          v17 = v97;
          [v97 addObject:v29];

          ++v20;
        }

        while (v96 != v20);
      }

      v32 = v19;
      v13 = v91;
      [v91 setObject:v17 forKey:@"goodness_scores"];
      if (a3->previousDecision)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      [v91 setObject:v33 forKey:@"previous_decision"];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3->previousDecisionTime];
      [v91 setObject:v34 forKey:@"previous_decision_time"];

      if (a3->decision)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      [v91 setObject:v35 forKey:@"decision"];
      if (v94)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", a3->electionParticipantGoodnessScore[0]];
        [v91 setObject:v36 forKey:@"winner_goodness"];

        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3->electionParticipantDeviceType[0]];
        [v91 setObject:v37 forKey:@"winner_device_class"];

        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a3->electionParticipantProductType[0]];
        [v91 setObject:v38 forKey:@"winner_product_type"];

        v39 = [(SCDAMetrics *)v19 getElectionParticipantId:a3 forParticipant:0];
        v40 = [v39 UUIDString];
        [v91 setValue:v40 forKey:@"winner_election_participant_id"];
      }

      if (a3->homepodInvolved)
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      [v91 setObject:v41 forKey:@"homepod_involved"];
      v10 = v93;
      if (v94 && !a3->decision)
      {
        if (a3->electionParticipantGoodnessScore[0] == 255)
        {
          v42 = @"YES";
        }

        else
        {
          v42 = @"NO";
        }

        [v91 setObject:v42 forKey:@"winner_sent_suppression"];
      }

      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a3->version];
      [v91 setObject:v43 forKey:@"version"];

      if (a3->lateToElection)
      {
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
        [v91 setObject:v44 forKey:@"late_for_device_arbitration"];

        v45 = [MEMORY[0x1E696AD98] numberWithDouble:a3->advInterval];
        [v91 setObject:v45 forKey:@"device_arbitration_delay"];
      }

      v95 = a3;
      v11 = v92;
      if (v93)
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(v93, "rawGoodnessScore")];
        [v91 setObject:v46 forKey:@"raw_goodness_score"];

        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(v93, "goodnessScore")];
        [v91 setObject:v47 forKey:@"my_goodness"];

        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v93, "deviceClass")];
        [v91 setObject:v48 forKey:@"my_device_class"];

        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v93, "deviceProductType")];
        [v91 setObject:v49 forKey:@"my_product_type"];
      }

      if (v92)
      {
        v50 = objc_alloc_init(MEMORY[0x1E69CE940]);
        [v50 setDeviceClass:a3->electionParticipantDeviceType[0]];
        [v50 setProductType:a3->electionParticipantProductType[0]];
        [v50 setGoodnessScore:a3->electionParticipantGoodnessScore[0]];
        v51 = v32;
        v52 = [(SCDAMetrics *)v32 getElectionParticipantId:a3 forParticipant:0];
        v53 = SCDAToSISchemaUUID(v52);
        v89 = v50;
        [v50 setElectionParticipantId:v53];

        v54 = objc_alloc_init(MEMORY[0x1E69CE940]);
        [v54 setDeviceClass:{objc_msgSend(v93, "deviceClass")}];
        [v54 setProductType:{objc_msgSend(v93, "deviceProductType")}];
        v55 = a3;
        [v54 setGoodnessScore:{objc_msgSend(v93, "goodnessScore")}];
        v56 = [(SCDAMetrics *)v32 getDeviceElectionParticipantId:a3];
        v57 = SCDAToSISchemaUUID(v56);
        [v54 setElectionParticipantId:v57];

        v58 = [(SCDAMetrics *)v32 getDeviceRotatedElectionParticipantId:a3];
        v59 = SCDAToSISchemaUUID(v58);
        v88 = v54;
        [v54 setRotatedElectionParticipantId:v59];

        v60 = v96;
        v61 = 0x1E695D000uLL;
        v62 = @"pt";
        if (v94)
        {
          v63 = 0;
          do
          {
            v64 = objc_alloc(*(v61 + 3984));
            v98[0] = @"dc";
            v65 = v51;
            v66 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v55->electionParticipantDeviceType[v63]];
            v99[0] = v66;
            v98[1] = v62;
            [MEMORY[0x1E696AD98] numberWithUnsignedChar:v55->electionParticipantProductType[v63]];
            v68 = v67 = v62;
            v99[1] = v68;
            v98[2] = @"goodness";
            v69 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v55->electionParticipantGoodnessScore[v63]];
            v99[2] = v69;
            v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:3];
            v71 = [v64 initWithDictionary:v70];

            v55 = a3;
            v51 = v65;

            v72 = [(SCDAMetrics *)v65 getElectionParticipantId:a3 forParticipant:v63];
            v73 = [v72 UUIDString];
            [v71 setValue:v73 forKey:@"id"];

            v62 = v67;
            v60 = v96;
            [v97 addObject:v71];

            v61 = 0x1E695D000;
            ++v63;
          }

          while (v96 != v63);
        }

        v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v94];
        v75 = v51;
        if (v94)
        {
          v76 = 0;
          do
          {
            v77 = objc_alloc_init(MEMORY[0x1E69CE940]);
            [v77 setDeviceClass:v55->electionParticipantDeviceType[v76]];
            [v77 setProductType:v55->electionParticipantProductType[v76]];
            [v77 setGoodnessScore:v55->electionParticipantGoodnessScore[v76]];
            v78 = [(SCDAMetrics *)v75 getElectionParticipantId:v55 forParticipant:v76];
            v79 = SCDAToSISchemaUUID(v78);
            [v77 setElectionParticipantId:v79];

            [v74 addObject:v77];
            ++v76;
          }

          while (v60 != v76);
        }

        if (v55->decision)
        {
          v80 = 1;
        }

        else
        {
          v80 = 2;
        }

        if (v55->previousDecision)
        {
          v81 = 1;
        }

        else
        {
          v81 = 2;
        }

        v82 = mach_absolute_time();
        if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
        {
          dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
        }

        v10 = v93;
        v83 = (((*&_SCDAMachAbsoluteTimeRate_rate * v82) - v95->previousDecisionTime) / 1000000.0);
        v84 = [v93 rawGoodnessScore];
        v85 = [(SCDAMetrics *)v75 getCDASessionId:v95];
        LODWORD(v87) = v84;
        v11 = v92;
        [v92 logCDAElectionDecisionMade:11 withDecision:v80 withPreviousDecision:v81 timeSincePreviousDecision:v83 withWinningDevice:v89 withThisDevice:v88 withParticipants:v74 withRawScore:v87 withBoost:0 withCdaId:v85 currentRequestId:0 withTimestamp:mach_absolute_time()];

        v13 = v91;
      }

      v12 = v90;
    }

    v12[2](v12, v13);
  }

  v86 = *MEMORY[0x1E69E9840];
}

- (void)_submitMyriadMetrics:(MyriadMetricsDataV2 *)a3 additionalContext:(id)a4 instrumentation:(id)a5 completion:(id)a6
{
  v100[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__1114;
  v83 = __Block_byref_object_dispose__1115;
  v84 = 0;
  if (!a3)
  {
    v14 = 2202;
    goto LABEL_9;
  }

  eventType = a3->eventType;
  v14 = 2201;
  if (eventType <= 2)
  {
    if (!a3->eventType)
    {
      requestType = a3->requestType;
      state = a3->state;
      v99[0] = @"state";
      v77 = state;
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, state];
      v99[1] = @"trigger";
      v100[0] = v42;
      v43 = [(SCDAMetrics *)self _getRequestType:requestType];
      v100[1] = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
      v45 = [(SCDAMetrics *)self getVersion:a3];
      [(SCDAMetrics *)self getSessionId:a3];
      v46 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v44 forVersion:v45 sessionId:?];
      v47 = v80[5];
      v80[5] = v46;

      if (v11)
      {
        v48 = [(SCDAMetrics *)self _getCDASchemaCDATriggerType:requestType];
        v49 = [(SCDAMetrics *)self getCDASessionId:a3];
        [v11 logCDADeviceStateActivityStartedOrChanged:(v77 + 1) withTrigger:v48 withCdaId:v49 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

    if (eventType == 1)
    {
      v64 = a3->state;
      v97 = @"state";
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v64];
      v98 = v65;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v67 = [(SCDAMetrics *)self getVersion:a3];
      [(SCDAMetrics *)self getSessionId:a3];
      v68 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v66 forVersion:v67 sessionId:?];
      v69 = v80[5];
      v80[5] = v68;

      if (v11)
      {
        v70 = [(SCDAMetrics *)self getCDASessionId:a3];
        [v11 logCDADeviceStateActivityEnded:(v64 + 1) withCdaId:v70 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

    if (eventType == 2)
    {
      v26 = a3->state;
      advDelay = a3->advDelay;
      advInterval = a3->advInterval;
      v95[0] = @"state";
      v76 = v26;
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v26];
      v96[0] = v29;
      v95[1] = @"adv-delay";
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:advDelay];
      v96[1] = v30;
      v95[2] = @"adv-interval";
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:advInterval];
      v96[2] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
      v33 = [(SCDAMetrics *)self getVersion:a3];
      [(SCDAMetrics *)self getSessionId:a3];
      v34 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v32 forVersion:v33 sessionId:?];
      v35 = v80[5];
      v80[5] = v34;

      if (v11)
      {
        v36 = [(SCDAMetrics *)self getCDASessionId:a3];
        v37 = mach_absolute_time();
        *&v38 = advDelay;
        *&v39 = advInterval;
        [v11 logCDAElectionAdvertisingStarting:(v76 + 1) withDelay:v36 withInterval:v37 withVoiceTriggerLatency:v38 withCdaId:v39 withTimestamp:0.0];
      }

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  if (a3->eventType <= 4u)
  {
    if (eventType == 3)
    {
      v50 = a3->state;
      v93 = @"state";
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v50];
      v94 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      v53 = [(SCDAMetrics *)self getVersion:a3];
      [(SCDAMetrics *)self getSessionId:a3];
      v54 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v52 forVersion:v53 sessionId:?];
      v55 = v80[5];
      v80[5] = v54;

      if (v11)
      {
        v56 = [(SCDAMetrics *)self getCDASessionId:a3];
        [v11 logCDAElectionAdvertisingStarted:(v50 + 1) withCdaId:v56 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

    if (eventType == 4)
    {
      v15 = a3->state;
      v91[0] = @"state";
      v75 = v15;
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v15];
      v91[1] = @"unixTime";
      v92[0] = v16;
      v17 = MEMORY[0x1E696AD98];
      v18 = [MEMORY[0x1E695DF00] date];
      [v18 timeIntervalSince1970];
      v19 = [v17 numberWithDouble:?];
      v92[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
      v21 = [(SCDAMetrics *)self getVersion:a3];
      [(SCDAMetrics *)self getSessionId:a3];
      v22 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v20 forVersion:v21 sessionId:?];
      v23 = v80[5];
      v80[5] = v22;

      if (v11)
      {
        v24 = [(SCDAMetrics *)self getCDASessionId:a3];
        [v11 logCDAElectionTimerEnded:(v75 + 1) withCdaId:v24 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

LABEL_9:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:v14 userInfo:0];
    goto LABEL_27;
  }

  if (eventType == 5)
  {
    v57 = a3->state;
    v89 = @"state";
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v57];
    v90 = v58;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v60 = [(SCDAMetrics *)self getVersion:a3];
    [(SCDAMetrics *)self getSessionId:a3];
    v61 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v59 forVersion:v60 sessionId:?];
    v62 = v80[5];
    v80[5] = v61;

    if (v11)
    {
      v63 = [(SCDAMetrics *)self getCDASessionId:a3];
      [v11 logCDAElectionAdvertisingEnded:(v57 + 1) withCdaId:v63 withTimestamp:mach_absolute_time()];
    }

    goto LABEL_26;
  }

  if (eventType != 6)
  {
    goto LABEL_9;
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __81__SCDAMetrics__submitMyriadMetrics_additionalContext_instrumentation_completion___block_invoke;
  v78[3] = &unk_1E85D2EF0;
  v78[4] = self;
  v78[5] = &v79;
  v78[6] = a3;
  [(SCDAMetrics *)self _decisionMadeContext:a3 additionalContext:v10 instrumentation:v11 completion:v78];
LABEL_26:
  v25 = 0;
LABEL_27:
  v71 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v74 = v80[5];
    *buf = 136315394;
    v86 = "[SCDAMetrics _submitMyriadMetrics:additionalContext:instrumentation:completion:]";
    v87 = 2112;
    v88 = v74;
    _os_log_debug_impl(&dword_1DA758000, v71, OS_LOG_TYPE_DEBUG, "%s Myriad endpoint metrics context: %@", buf, 0x16u);
    if (!v12)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v12)
  {
LABEL_29:
    v72 = [v80[5] copy];
    v12[2](v12, v25, v72);
  }

LABEL_30:

  _Block_object_dispose(&v79, 8);
  v73 = *MEMORY[0x1E69E9840];
}

void __81__SCDAMetrics__submitMyriadMetrics_additionalContext_instrumentation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v3 getVersion:v4];
  [*(a1 + 32) getSessionId:*(a1 + 48)];
  v7 = [v3 _createEndAnalyticContextFromIntermediateContext:v5 forVersion:v6 sessionId:?];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)_getElectionParticipantIdWithLowBits:(unint64_t)a3 withHighBits:(unint64_t)a4
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (a4 | a3)
  {
    v7[0] = veor_s8(vdup_n_s8(a4 >> 2), 0x8101820283038);
    v7[1] = veor_s8(vdup_n_s8(a3 >> 2), 0x8101820283038);
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v7];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)getCDASessionId:(MyriadMetricsDataV2 *)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = v4;
  if (a3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"00000000-0000-0000-0000-%012u", a3->sessionId];
    v7 = [v5 initWithUUIDString:v6];
  }

  else
  {
    v7 = [v4 initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  return v7;
}

- (BOOL)isMyriadMetricsMessage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:scdaAccessoryMetricsMessageKey];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (double)getSessionId:(MyriadMetricsDataV2 *)a3
{
  if (a3)
  {
    return a3->sessionId;
  }

  else
  {
    return 0.0;
  }
}

- (unsigned)getVersion:(MyriadMetricsDataV2 *)a3
{
  if (a3)
  {
    return a3->version;
  }

  else
  {
    return 0;
  }
}

- (int)_getCDASchemaCDATriggerType:(unint64_t)a3
{
  if (a3 - 2 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1DA78D2B0[a3 - 2];
  }
}

- (id)_getRequestType:(unint64_t)a3
{
  if (a3 - 2 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E85D2F10[a3 - 2];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1129);
  }

  v3 = sharedInstance_metrics;

  return v3;
}

uint64_t __29__SCDAMetrics_sharedInstance__block_invoke()
{
  sharedInstance_metrics = objc_alloc_init(SCDAMetrics);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)initialize
{
  if (SCDALogInitIfNeeded_once != -1)
  {
    dispatch_once(&SCDALogInitIfNeeded_once, &__block_literal_global_498);
  }
}

@end