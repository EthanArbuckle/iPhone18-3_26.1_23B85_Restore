@interface TransparencyDaemon
- (id)transparencyCheckIDSHealth:(id *)health;
- (id)transparencyIDMSDeviceList:(id *)list;
- (id)transparencySysDiagnoseData:(id *)data;
- (void)changeOptInState:(unint64_t)state application:(id)application complete:(id)complete;
- (void)clearEligibilityOverrides:(id)overrides;
- (void)clearOptInStateForURI:(id)i application:(id)application complete:(id)complete;
- (void)clearPeerState:(id)state uris:(id)uris block:(id)block;
- (void)clearTapToRadarNotification:(id)notification complete:(id)complete;
- (void)configurationBagFetch:(id)fetch;
- (void)getAggregateResult:(int64_t)result element:(id)element complete:(id)complete;
- (void)getAllOptInStates:(id)states;
- (void)getOptInForURI:(id)i application:(id)application complete:(id)complete;
- (void)getOptInState:(id)state complete:(id)complete;
- (void)getOptInStateForApplication:(id)application complete:(id)complete;
- (void)insertResultForElement:(id)element samplesAgo:(id)ago success:(BOOL)success complete:(id)complete;
- (void)ktRepair:(id)repair complete:(id)complete;
- (void)networkKTQuery:(id)query application:(id)application complete:(id)complete;
- (void)networkKTQuery:(id)query application:(id)application trace:(id)trace timeout:(double)timeout complete:(id)complete;
- (void)networkKTQuery:(id)query application:(id)application traceUUID:(id)d timeout:(double)timeout complete:(id)complete;
- (void)performAndWaitForSelfValidate:(id)validate;
- (void)replaySelfValidate:(id)validate application:(id)application pcsAccountKey:(id)key queryRequest:(id)request queryResponse:(id)response responseTime:(id)time completionHandler:(id)handler;
- (void)reportEligibility:(id)eligibility complete:(id)complete;
- (void)setOSVersion:(id)version complete:(id)complete;
- (void)setOptInForURI:(id)i application:(id)application state:(BOOL)state smtTimestamp:(id)timestamp complete:(id)complete;
- (void)setOverrideTimeBetweenReports:(double)reports completion:(id)completion;
- (void)successInfoForElement:(id)element samples:(int64_t)samples completion:(id)completion;
- (void)transparencyCheckKTAccountKey:(id)key complete:(id)complete;
- (void)transparencyClearKTRegistrationData:(id)data;
- (void)transparencyCloudDeviceAdd:(id)add clientData:(id)data complete:(id)complete;
- (void)transparencyCloudDeviceRemove:(id)remove clientData:(id)data complete:(id)complete;
- (void)transparencyCloudDevices:(id)devices;
- (void)transparencyDumpKTRegistrationData:(id)data;
- (void)transparencyFetchIDMS:(id)s;
- (void)transparencyFetchPublicKeys:(id)keys;
- (void)transparencyFetchSelf:(id)self;
- (void)transparencyGetKTSignatures:(id)signatures complete:(id)complete;
- (void)transparencyIDSRegistration:(id)registration;
- (void)transparencyIDSRepair:(id)repair;
- (void)transparencyPerformRegistrationSignature:(id)signature;
- (void)transparencySysDiagnose:(id)diagnose;
- (void)transparencyTriggerIDSRegistration:(id)registration;
- (void)transparencyTriggerOperation:(id)operation complete:(id)complete;
- (void)transparencyTriggerTTR:(id)r handle:(id)handle complete:(id)complete;
- (void)transparencyValidateSelf:(id)self;
- (void)triggerReportAndMaybeOptInWithCompletion:(id)completion;
- (void)updateIDSRecommendation:(BOOL)recommendation complete:(id)complete;
- (void)validateIDSData:(id)data ktQueryData:(id)queryData ktResponseData:(id)responseData complete:(id)complete;
- (void)validateSelfForThisDeviceForApplication:(id)application pushToken:(id)token complete:(id)complete;
@end

@implementation TransparencyDaemon

- (void)configurationBagFetch:(id)fetch
{
  fetchCopy = fetch;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_configurationBagFetch___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = fetchCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__TransparencyDaemon_configurationBagFetch___block_invoke_383;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v7 errorHandler:v5];
}

void __44__TransparencyDaemon_configurationBagFetch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __44__TransparencyDaemon_configurationBagFetch___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending configurationBagFetch", v8, 2u);
  }

  [v5 configurationBagFetch:*(a1 + 32)];
}

uint64_t __44__TransparencyDaemon_configurationBagFetch___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyIDSRepair:(id)repair
{
  repairCopy = repair;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_transparencyIDSRepair___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = repairCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__TransparencyDaemon_transparencyIDSRepair___block_invoke_2_388;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v7 errorHandler:v5];
}

void __44__TransparencyDaemon_transparencyIDSRepair___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __44__TransparencyDaemon_transparencyIDSRepair___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyIDSRepair", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__TransparencyDaemon_transparencyIDSRepair___block_invoke_387;
  v8[3] = &unk_1E87013C8;
  v9 = *(a1 + 32);
  [v5 transparencyIDSRepair:v8];
}

uint64_t __44__TransparencyDaemon_transparencyIDSRepair___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencySysDiagnose:(id)diagnose
{
  diagnoseCopy = diagnose;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__TransparencyDaemon_transparencySysDiagnose___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = diagnoseCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__TransparencyDaemon_transparencySysDiagnose___block_invoke_391;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v7 errorHandler:v5];
}

void __46__TransparencyDaemon_transparencySysDiagnose___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __46__TransparencyDaemon_transparencySysDiagnose___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencySysDiagnose", v8, 2u);
  }

  [v5 transparencySysDiagnose:*(a1 + 32)];
}

uint64_t __46__TransparencyDaemon_transparencySysDiagnose___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)transparencySysDiagnoseData:(id *)data
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__2;
  v15[4] = __Block_byref_object_dispose__2;
  v16 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke;
  v14[3] = &unk_1E8701870;
  v14[4] = v15;
  v14[5] = &v17;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_2_397;
  v13[3] = &unk_1E8701788;
  v13[4] = v15;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v14 errorHandler:v13];
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_3;
  v10[3] = &unk_1E87018C0;
  v12 = v15;
  v6 = array;
  v11 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_2_412;
  v9[3] = &unk_1E8701788;
  v9[4] = v15;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v10 errorHandler:v9];
  if (![v6 count])
  {

    v6 = 0;
  }

  [dictionary setObject:v18[5] forKeyedSubscript:@"stateMachine"];
  [dictionary setObject:v6 forKeyedSubscript:@"registration"];
  if ([dictionary count])
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:data];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
    {
      __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_cold_1();
    }

    v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencySysDiagnose", buf, 2u);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_395;
    v8[3] = &unk_1E87011F8;
    v8[4] = *(a1 + 40);
    [v5 transparencySysDiagnose:v8];
  }
}

uint64_t __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
    {
      __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_3_cold_1();
    }

    v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyDumpKTRegistrationData", buf, 2u);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_401;
    v8[3] = &unk_1E8701898;
    v9 = *(a1 + 32);
    [v5 transparencyDumpKTRegistrationData:v8];
  }
}

uint64_t __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_4()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_401(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v4 = [a2 registrationData];
    v5 = [v4 allValues];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = @"app";
      v9 = @"YES";
      v10 = *v41;
      do
      {
        v11 = 0;
        v38 = v7;
        do
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * v11);
          v13 = [MEMORY[0x1E695DF90] dictionary];
          v14 = [v12 application];
          [v13 setObject:v14 forKeyedSubscript:v8];

          v15 = [v12 signature];
          if (v15)
          {
            v16 = v9;
          }

          else
          {
            v16 = @"NO";
          }

          [v13 setObject:v16 forKeyedSubscript:@"signature"];

          v17 = [v12 createdAt];
          v18 = [v17 description];
          [v13 setObject:v18 forKeyedSubscript:@"createdAt"];

          v19 = [v12 signedAt];
          v20 = [v19 description];
          [v13 setObject:v20 forKeyedSubscript:@"signedAt"];

          v21 = [v12 uploadedToCKAt];
          v22 = [v21 description];
          [v13 setObject:v22 forKeyedSubscript:@"uploadedToCKAt"];

          v23 = [v12 createdAt];
          if (v23)
          {
            v24 = v23;
            v25 = [v12 signedAt];

            if (v25)
            {
              v26 = MEMORY[0x1E696AD98];
              v27 = [v12 signedAt];
              [v12 createdAt];
              v28 = v10;
              v29 = a1;
              v30 = v9;
              v32 = v31 = v8;
              [v27 timeIntervalSinceDate:v32];
              v34 = [v26 numberWithInt:v33];
              [v13 setObject:v34 forKeyedSubscript:@"delay"];

              v8 = v31;
              v9 = v30;
              a1 = v29;
              v10 = v28;
              v7 = v38;
            }
          }

          v35 = [v12 pushToken];
          v36 = [v35 kt_hexString];
          [v13 setObject:v36 forKeyedSubscript:@"pushToken"];

          [*(a1 + 32) addObject:v13];
          ++v11;
        }

        while (v7 != v11);
        v7 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v7);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)transparencyFetchIDMS:(id)s
{
  sCopy = s;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_transparencyFetchIDMS___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = sCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__TransparencyDaemon_transparencyFetchIDMS___block_invoke_422;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v7 errorHandler:v5];
}

void __44__TransparencyDaemon_transparencyFetchIDMS___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __44__TransparencyDaemon_transparencyFetchIDMS___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyFetchIDMS", v8, 2u);
  }

  [v5 transparencyTriggerIDMSFetch:*(a1 + 32)];
}

uint64_t __44__TransparencyDaemon_transparencyFetchIDMS___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyValidateSelf:(id)self
{
  selfCopy = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__TransparencyDaemon_transparencyValidateSelf___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = selfCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__TransparencyDaemon_transparencyValidateSelf___block_invoke_425;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v7 errorHandler:v5];
}

void __47__TransparencyDaemon_transparencyValidateSelf___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __47__TransparencyDaemon_transparencyValidateSelf___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyValidateSelf", v8, 2u);
  }

  [v5 triggerSelfValidate:*(a1 + 32)];
}

uint64_t __47__TransparencyDaemon_transparencyValidateSelf___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyFetchSelf:(id)self
{
  selfCopy = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_transparencyFetchSelf___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = selfCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__TransparencyDaemon_transparencyFetchSelf___block_invoke_428;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v7 errorHandler:v5];
}

void __44__TransparencyDaemon_transparencyFetchSelf___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __44__TransparencyDaemon_transparencyFetchSelf___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyTriggerFetchSelf", v8, 2u);
  }

  [v5 transparencyTriggerFetchSelf:*(a1 + 32)];
}

uint64_t __44__TransparencyDaemon_transparencyFetchSelf___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)performAndWaitForSelfValidate:(id)validate
{
  validateCopy = validate;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__TransparencyDaemon_performAndWaitForSelfValidate___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = validateCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__TransparencyDaemon_performAndWaitForSelfValidate___block_invoke_431;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v7 errorHandler:v5];
}

void __52__TransparencyDaemon_performAndWaitForSelfValidate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __52__TransparencyDaemon_performAndWaitForSelfValidate___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending performAndWaitForSelfValidate", v8, 2u);
  }

  [v5 performAndWaitForSelfValidate:*(a1 + 32)];
}

uint64_t __52__TransparencyDaemon_performAndWaitForSelfValidate___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __45__TransparencyDaemon_maybeUpdateMonitorState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __45__TransparencyDaemon_maybeUpdateMonitorState__block_invoke_cold_1();
  }

  v6 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E10DB000, v6, OS_LOG_TYPE_INFO, "Sending maybeUpdateMonitorState", v7, 2u);
  }

  [v4 maybeUpdateMonitorState];
}

uint64_t __45__TransparencyDaemon_maybeUpdateMonitorState__block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __45__TransparencyDaemon_maybeUpdateMonitorState__block_invoke_436(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __45__TransparencyDaemon_maybeUpdateMonitorState__block_invoke_436_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "maybeUpdateMonitorState failed with: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __45__TransparencyDaemon_maybeUpdateMonitorState__block_invoke_2_439()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)transparencyIDMSDeviceList:(id *)list
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke;
  v7[3] = &unk_1E8701870;
  v7[4] = &v14;
  v7[5] = &v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:&__block_literal_global_448];
  if (list)
  {
    v4 = v9[5];
    if (v4)
    {
      *list = v4;
    }
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending deviceStatus", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke_444;
  v8[3] = &unk_1E8701908;
  v9 = *(a1 + 32);
  [v5 idmsDevices:v8];
}

uint64_t __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke_444(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke_2_446(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke_2_446_cold_1();
  }

  v3 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1E10DB000, v3, OS_LOG_TYPE_ERROR, "deviceStatus failed with: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __49__TransparencyDaemon_transparencyIDMSDeviceList___block_invoke_3()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)replaySelfValidate:(id)validate application:(id)application pcsAccountKey:(id)key queryRequest:(id)request queryResponse:(id)response responseTime:(id)time completionHandler:(id)handler
{
  validateCopy = validate;
  applicationCopy = application;
  keyCopy = key;
  requestCopy = request;
  responseCopy = response;
  timeCopy = time;
  handlerCopy = handler;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __125__TransparencyDaemon_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler___block_invoke;
  v30[3] = &unk_1E8701930;
  v31 = validateCopy;
  v32 = applicationCopy;
  v33 = keyCopy;
  v34 = requestCopy;
  v35 = responseCopy;
  v36 = timeCopy;
  v37 = handlerCopy;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __125__TransparencyDaemon_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler___block_invoke_453;
  v28[3] = &unk_1E87013C8;
  v29 = v37;
  v21 = v37;
  v22 = timeCopy;
  v23 = responseCopy;
  v24 = requestCopy;
  v25 = keyCopy;
  v26 = applicationCopy;
  v27 = validateCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v30 errorHandler:v28];
}

void __125__TransparencyDaemon_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __125__TransparencyDaemon_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending replay self validate", buf, 2u);
  }

  [v5 replaySelfValidate:a1[4] application:a1[5] pcsAccountKey:a1[6] queryRequest:a1[7] queryResponse:a1[8] responseTime:a1[9] completionHandler:a1[10]];
}

uint64_t __125__TransparencyDaemon_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyFetchPublicKeys:(id)keys
{
  keysCopy = keys;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TransparencyDaemon_transparencyFetchPublicKeys___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = keysCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__TransparencyDaemon_transparencyFetchPublicKeys___block_invoke_456;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __50__TransparencyDaemon_transparencyFetchPublicKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __50__TransparencyDaemon_transparencyFetchPublicKeys___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyFetchPublicKeys", v8, 2u);
  }

  [v5 transparencyTriggerPublicKeyFetch:*(a1 + 32)];
}

uint64_t __50__TransparencyDaemon_transparencyFetchPublicKeys___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyTriggerIDSRegistration:(id)registration
{
  registrationCopy = registration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__TransparencyDaemon_transparencyTriggerIDSRegistration___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = registrationCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__TransparencyDaemon_transparencyTriggerIDSRegistration___block_invoke_459;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __57__TransparencyDaemon_transparencyTriggerIDSRegistration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __57__TransparencyDaemon_transparencyTriggerIDSRegistration___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyTriggerIDSRegistration", v8, 2u);
  }

  [v5 transparencyTriggerCheckIDSRegistration:*(a1 + 32)];
}

uint64_t __57__TransparencyDaemon_transparencyTriggerIDSRegistration___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyCheckKTAccountKey:(id)key complete:(id)complete
{
  keyCopy = key;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__TransparencyDaemon_transparencyCheckKTAccountKey_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = keyCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__TransparencyDaemon_transparencyCheckKTAccountKey_complete___block_invoke_462;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = keyCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __61__TransparencyDaemon_transparencyCheckKTAccountKey_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __61__TransparencyDaemon_transparencyCheckKTAccountKey_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyCheckKTAccountKey", v8, 2u);
  }

  [v5 transparencyCheckKTAccountKey:*(a1 + 32) complete:*(a1 + 40)];
}

uint64_t __61__TransparencyDaemon_transparencyCheckKTAccountKey_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyTriggerTTR:(id)r handle:(id)handle complete:(id)complete
{
  rCopy = r;
  handleCopy = handle;
  completeCopy = complete;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke;
  v15[3] = &unk_1E8701980;
  v17 = handleCopy;
  v18 = completeCopy;
  v16 = rCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_470;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = handleCopy;
  v12 = rCopy;
  [TransparencyXPCConnection invokeIDSSupportWithBlock:v15 errorHandler:v13];
}

void __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
    {
      __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_cold_1();
    }

    v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "ktTTR: failed send %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_465;
    v11[3] = &unk_1E87013C8;
    v12 = *(a1 + 48);
    [v5 ttr:v8 fromHandle:v9 complete:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_465(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
    {
      __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_465_cold_1();
    }

    v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "ktTTR: trigger ttr %{public}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_2_466()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_470(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_470_cold_1();
  }

  v4 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1E10DB000, v4, OS_LOG_TYPE_ERROR, "ktTTR: error handler %{public}@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_2_471()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearTapToRadarNotification:(id)notification complete:(id)complete
{
  notificationCopy = notification;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TransparencyDaemon_clearTapToRadarNotification_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = notificationCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__TransparencyDaemon_clearTapToRadarNotification_complete___block_invoke_476;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = notificationCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __59__TransparencyDaemon_clearTapToRadarNotification_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __59__TransparencyDaemon_clearTapToRadarNotification_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending clearTapToRadarNotification", v8, 2u);
  }

  [v5 clearTapToRadarNotification:*(a1 + 32) complete:*(a1 + 40)];
}

uint64_t __59__TransparencyDaemon_clearTapToRadarNotification_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (id)transparencyCheckIDSHealth:(id *)health
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = @"unknown";
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__TransparencyDaemon_transparencyCheckIDSHealth___block_invoke;
  v8[3] = &unk_1E8701870;
  v8[4] = &v9;
  v8[5] = &v15;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__TransparencyDaemon_transparencyCheckIDSHealth___block_invoke_2_484;
  v7[3] = &unk_1E8701788;
  v7[4] = &v9;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v8 errorHandler:v7];
  if (health)
  {
    v4 = v10[5];
    if (v4)
    {
      *health = v4;
    }
  }

  v5 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __49__TransparencyDaemon_transparencyCheckIDSHealth___block_invoke(int8x16_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[2].i64[0] + 8) + 40), a3);
  }

  else
  {
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
    {
      __49__TransparencyDaemon_transparencyCheckIDSHealth___block_invoke_cold_1();
    }

    v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
    if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyCheckIDSHealth", buf, 2u);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__TransparencyDaemon_transparencyCheckIDSHealth___block_invoke_482;
    v8[3] = &unk_1E87019A8;
    v9 = vextq_s8(a1[2], a1[2], 8uLL);
    [v5 transparencyCheckIDSHealth:v8];
  }
}

uint64_t __49__TransparencyDaemon_transparencyCheckIDSHealth___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __49__TransparencyDaemon_transparencyCheckIDSHealth___block_invoke_482(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)transparencyIDSRegistration:(id)registration
{
  registrationCopy = registration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TransparencyDaemon_transparencyIDSRegistration___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = registrationCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__TransparencyDaemon_transparencyIDSRegistration___block_invoke_2;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

- (void)transparencyPerformRegistrationSignature:(id)signature
{
  signatureCopy = signature;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__TransparencyDaemon_transparencyPerformRegistrationSignature___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = signatureCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__TransparencyDaemon_transparencyPerformRegistrationSignature___block_invoke_487;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __63__TransparencyDaemon_transparencyPerformRegistrationSignature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __63__TransparencyDaemon_transparencyPerformRegistrationSignature___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyPerformRegistrationSignature", v8, 2u);
  }

  [v5 transparencyPerformRegistrationSignature:*(a1 + 32)];
}

uint64_t __63__TransparencyDaemon_transparencyPerformRegistrationSignature___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyDumpKTRegistrationData:(id)data
{
  dataCopy = data;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__TransparencyDaemon_transparencyDumpKTRegistrationData___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = dataCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__TransparencyDaemon_transparencyDumpKTRegistrationData___block_invoke_490;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __57__TransparencyDaemon_transparencyDumpKTRegistrationData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __57__TransparencyDaemon_transparencyDumpKTRegistrationData___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyDumpKTRegistrationData", v8, 2u);
  }

  [v5 transparencyDumpKTRegistrationData:*(a1 + 32)];
}

uint64_t __57__TransparencyDaemon_transparencyDumpKTRegistrationData___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyGetKTSignatures:(id)signatures complete:(id)complete
{
  signaturesCopy = signatures;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TransparencyDaemon_transparencyGetKTSignatures_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = signaturesCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__TransparencyDaemon_transparencyGetKTSignatures_complete___block_invoke_493;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = signaturesCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v11 errorHandler:v9];
}

void __59__TransparencyDaemon_transparencyGetKTSignatures_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __59__TransparencyDaemon_transparencyGetKTSignatures_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyGetKTSignatures:complete:", v8, 2u);
  }

  [v5 transparencyGetKTSignatures:*(a1 + 32) complete:*(a1 + 40)];
}

uint64_t __59__TransparencyDaemon_transparencyGetKTSignatures_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyClearKTRegistrationData:(id)data
{
  dataCopy = data;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__TransparencyDaemon_transparencyClearKTRegistrationData___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = dataCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__TransparencyDaemon_transparencyClearKTRegistrationData___block_invoke_496;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __58__TransparencyDaemon_transparencyClearKTRegistrationData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __58__TransparencyDaemon_transparencyClearKTRegistrationData___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyClearKTRegistrationData:", v8, 2u);
  }

  [v5 transparencyClearKTRegistrationData:*(a1 + 32)];
}

uint64_t __58__TransparencyDaemon_transparencyClearKTRegistrationData___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyCloudDevices:(id)devices
{
  devicesCopy = devices;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__TransparencyDaemon_transparencyCloudDevices___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = devicesCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__TransparencyDaemon_transparencyCloudDevices___block_invoke_499;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __47__TransparencyDaemon_transparencyCloudDevices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __47__TransparencyDaemon_transparencyCloudDevices___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyCloudDevices", v8, 2u);
  }

  [v5 transparencyCloudDevices:*(a1 + 32)];
}

uint64_t __47__TransparencyDaemon_transparencyCloudDevices___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearPeerState:(id)state uris:(id)uris block:(id)block
{
  stateCopy = state;
  urisCopy = uris;
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__TransparencyDaemon_clearPeerState_uris_block___block_invoke;
  v13[3] = &unk_1E87019D0;
  v14 = urisCopy;
  v15 = stateCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = stateCopy;
  v12 = urisCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v13 errorHandler:v10];
}

void __48__TransparencyDaemon_clearPeerState_uris_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __48__TransparencyDaemon_clearPeerState_uris_block___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = [*(a1 + 32) componentsJoinedByString:{@", "}];
    }

    else
    {
      v9 = @"all peers";
    }

    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending clearPeerState for %@", &v11, 0xCu);
    if (v8)
    {
    }
  }

  [v5 clearPeerState:*(a1 + 40) uris:*(a1 + 32) block:*(a1 + 48)];
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __48__TransparencyDaemon_clearPeerState_uris_block___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyTriggerOperation:(id)operation complete:(id)complete
{
  operationCopy = operation;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__TransparencyDaemon_transparencyTriggerOperation_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = operationCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__TransparencyDaemon_transparencyTriggerOperation_complete___block_invoke_510;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = operationCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __60__TransparencyDaemon_transparencyTriggerOperation_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __60__TransparencyDaemon_transparencyTriggerOperation_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyTriggerOperation", v8, 2u);
  }

  [v5 transparencyTriggerOperation:*(a1 + 32) complete:*(a1 + 40)];
}

uint64_t __60__TransparencyDaemon_transparencyTriggerOperation_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)changeOptInState:(unint64_t)state application:(id)application complete:(id)complete
{
  applicationCopy = application;
  completeCopy = complete;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__TransparencyDaemon_changeOptInState_application_complete___block_invoke;
  v13[3] = &unk_1E87019F8;
  stateCopy = state;
  v14 = applicationCopy;
  v15 = completeCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__TransparencyDaemon_changeOptInState_application_complete___block_invoke_513;
  v11[3] = &unk_1E87013C8;
  v12 = v15;
  v9 = v15;
  v10 = applicationCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v13 errorHandler:v11];
}

void __60__TransparencyDaemon_changeOptInState_application_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __60__TransparencyDaemon_changeOptInState_application_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    v8 = a1[6];
    v10[0] = 67109120;
    v10[1] = v8;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending changeOptInState:complete: %d", v10, 8u);
  }

  [v5 changeOptInState:a1[6] application:a1[4] completionBlock:a1[5]];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __60__TransparencyDaemon_changeOptInState_application_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOptInState:(id)state complete:(id)complete
{
  stateCopy = state;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__TransparencyDaemon_getOptInState_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = stateCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__TransparencyDaemon_getOptInState_complete___block_invoke_516;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = stateCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __45__TransparencyDaemon_getOptInState_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __45__TransparencyDaemon_getOptInState_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 application];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1E10DB000, v9, OS_LOG_TYPE_INFO, "Sending getOptInState:complete: %@", &v12, 0xCu);
  }

  [v5 getOptInStateForAccount:*(a1 + 32) complete:*(a1 + 40)];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __45__TransparencyDaemon_getOptInState_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOptInForURI:(id)i application:(id)application complete:(id)complete
{
  iCopy = i;
  applicationCopy = application;
  completeCopy = complete;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__TransparencyDaemon_getOptInForURI_application_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = iCopy;
  v17 = applicationCopy;
  v18 = completeCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__TransparencyDaemon_getOptInForURI_application_complete___block_invoke_519;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = applicationCopy;
  v12 = iCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v15 errorHandler:v13];
}

void __58__TransparencyDaemon_getOptInForURI_application_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __58__TransparencyDaemon_getOptInForURI_application_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending getOptInForURI:application:complete:", v8, 2u);
  }

  [v5 getOptInForURI:a1[4] application:a1[5] complete:a1[6]];
}

uint64_t __58__TransparencyDaemon_getOptInForURI_application_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)setOptInForURI:(id)i application:(id)application state:(BOOL)state smtTimestamp:(id)timestamp complete:(id)complete
{
  iCopy = i;
  applicationCopy = application;
  timestampCopy = timestamp;
  completeCopy = complete;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__TransparencyDaemon_setOptInForURI_application_state_smtTimestamp_complete___block_invoke;
  v21[3] = &unk_1E8701A20;
  v22 = iCopy;
  v23 = applicationCopy;
  stateCopy = state;
  v24 = timestampCopy;
  v25 = completeCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__TransparencyDaemon_setOptInForURI_application_state_smtTimestamp_complete___block_invoke_522;
  v19[3] = &unk_1E87013C8;
  v20 = v25;
  v15 = v25;
  v16 = timestampCopy;
  v17 = applicationCopy;
  v18 = iCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v21 errorHandler:v19];
}

void __77__TransparencyDaemon_setOptInForURI_application_state_smtTimestamp_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __77__TransparencyDaemon_setOptInForURI_application_state_smtTimestamp_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending setOptInForURI:application:state:complete:", v8, 2u);
  }

  [v5 setOptInForURI:*(a1 + 32) application:*(a1 + 40) state:*(a1 + 64) smtTimestamp:*(a1 + 48) complete:*(a1 + 56)];
}

uint64_t __77__TransparencyDaemon_setOptInForURI_application_state_smtTimestamp_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getAllOptInStates:(id)states
{
  statesCopy = states;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__TransparencyDaemon_getAllOptInStates___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = statesCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__TransparencyDaemon_getAllOptInStates___block_invoke_525;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __40__TransparencyDaemon_getAllOptInStates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __40__TransparencyDaemon_getAllOptInStates___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending getAllOptInStates:complete:", v8, 2u);
  }

  [v5 getAllOptInStates:*(a1 + 32)];
}

uint64_t __40__TransparencyDaemon_getAllOptInStates___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getOptInStateForApplication:(id)application complete:(id)complete
{
  applicationCopy = application;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TransparencyDaemon_getOptInStateForApplication_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = applicationCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__TransparencyDaemon_getOptInStateForApplication_complete___block_invoke_528;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = applicationCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __59__TransparencyDaemon_getOptInStateForApplication_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __59__TransparencyDaemon_getOptInStateForApplication_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending getAggregateOptInState:application:complete:", v8, 2u);
  }

  [v5 getOptInStateForApplication:*(a1 + 32) complete:*(a1 + 40)];
}

uint64_t __59__TransparencyDaemon_getOptInStateForApplication_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearOptInStateForURI:(id)i application:(id)application complete:(id)complete
{
  iCopy = i;
  applicationCopy = application;
  completeCopy = complete;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__TransparencyDaemon_clearOptInStateForURI_application_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = iCopy;
  v17 = applicationCopy;
  v18 = completeCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__TransparencyDaemon_clearOptInStateForURI_application_complete___block_invoke_531;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = applicationCopy;
  v12 = iCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v15 errorHandler:v13];
}

void __65__TransparencyDaemon_clearOptInStateForURI_application_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __65__TransparencyDaemon_clearOptInStateForURI_application_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending clearOptInStateForURI:application:complete:", v8, 2u);
  }

  [v5 clearOptInStateForURI:a1[4] application:a1[5] complete:a1[6]];
}

uint64_t __65__TransparencyDaemon_clearOptInStateForURI_application_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyCloudDeviceAdd:(id)add clientData:(id)data complete:(id)complete
{
  addCopy = add;
  dataCopy = data;
  completeCopy = complete;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__TransparencyDaemon_transparencyCloudDeviceAdd_clientData_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = addCopy;
  v17 = dataCopy;
  v18 = completeCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__TransparencyDaemon_transparencyCloudDeviceAdd_clientData_complete___block_invoke_534;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = dataCopy;
  v12 = addCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v15 errorHandler:v13];
}

void __69__TransparencyDaemon_transparencyCloudDeviceAdd_clientData_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __69__TransparencyDaemon_transparencyCloudDeviceAdd_clientData_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyCloudDeviceAdd:complete:", v8, 2u);
  }

  [v5 transparencyCloudDeviceAdd:a1[4] clientData:a1[5] complete:a1[6]];
}

uint64_t __69__TransparencyDaemon_transparencyCloudDeviceAdd_clientData_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)transparencyCloudDeviceRemove:(id)remove clientData:(id)data complete:(id)complete
{
  removeCopy = remove;
  dataCopy = data;
  completeCopy = complete;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__TransparencyDaemon_transparencyCloudDeviceRemove_clientData_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = removeCopy;
  v17 = dataCopy;
  v18 = completeCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__TransparencyDaemon_transparencyCloudDeviceRemove_clientData_complete___block_invoke_537;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = dataCopy;
  v12 = removeCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v15 errorHandler:v13];
}

void __72__TransparencyDaemon_transparencyCloudDeviceRemove_clientData_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __72__TransparencyDaemon_transparencyCloudDeviceRemove_clientData_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyCloudDeviceRemove:complete:", v8, 2u);
  }

  [v5 transparencyCloudDeviceRemove:a1[4] clientData:a1[5] complete:a1[6]];
}

uint64_t __72__TransparencyDaemon_transparencyCloudDeviceRemove_clientData_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateIDSRecommendation:(BOOL)recommendation complete:(id)complete
{
  completeCopy = complete;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__TransparencyDaemon_updateIDSRecommendation_complete___block_invoke;
  v9[3] = &unk_1E8701618;
  recommendationCopy = recommendation;
  v10 = completeCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__TransparencyDaemon_updateIDSRecommendation_complete___block_invoke_540;
  v7[3] = &unk_1E87013C8;
  v8 = v10;
  v6 = v10;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v9 errorHandler:v7];
}

void __55__TransparencyDaemon_updateIDSRecommendation_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __55__TransparencyDaemon_updateIDSRecommendation_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending updateIDSRecommendation:complete:", v8, 2u);
  }

  [v5 updateIDSRecommendation:*(a1 + 40) complete:*(a1 + 32)];
}

uint64_t __55__TransparencyDaemon_updateIDSRecommendation_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)setOSVersion:(id)version complete:(id)complete
{
  versionCopy = version;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__TransparencyDaemon_setOSVersion_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = versionCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__TransparencyDaemon_setOSVersion_complete___block_invoke_2_544;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = versionCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __44__TransparencyDaemon_setOSVersion_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __44__TransparencyDaemon_setOSVersion_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending setOSUpdate:complete:", buf, 2u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__TransparencyDaemon_setOSVersion_complete___block_invoke_543;
  v9[3] = &unk_1E8701A48;
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v5 setOSVersion:v8 complete:v9];
}

uint64_t __44__TransparencyDaemon_setOSVersion_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)setOverrideTimeBetweenReports:(double)reports completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__TransparencyDaemon_setOverrideTimeBetweenReports_completion___block_invoke;
  v9[3] = &unk_1E8701A70;
  reportsCopy = reports;
  v10 = completionCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__TransparencyDaemon_setOverrideTimeBetweenReports_completion___block_invoke_547;
  v7[3] = &unk_1E87013C8;
  v8 = v10;
  v6 = v10;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v9 errorHandler:v7];
}

void __63__TransparencyDaemon_setOverrideTimeBetweenReports_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __63__TransparencyDaemon_setOverrideTimeBetweenReports_completion___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending setOverrideTimeBetweenReports:complete:", v8, 2u);
  }

  [v5 setOverrideTimeBetweenReports:*(a1 + 32) completion:*(a1 + 40)];
}

uint64_t __63__TransparencyDaemon_setOverrideTimeBetweenReports_completion___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)clearEligibilityOverrides:(id)overrides
{
  overridesCopy = overrides;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TransparencyDaemon_clearEligibilityOverrides___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = overridesCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__TransparencyDaemon_clearEligibilityOverrides___block_invoke_550;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __48__TransparencyDaemon_clearEligibilityOverrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __48__TransparencyDaemon_clearEligibilityOverrides___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending clearEligibilityOverrides:", v8, 2u);
  }

  [v5 clearEligibilityOverrides:*(a1 + 32)];
}

uint64_t __48__TransparencyDaemon_clearEligibilityOverrides___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)reportEligibility:(id)eligibility complete:(id)complete
{
  eligibilityCopy = eligibility;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__TransparencyDaemon_reportEligibility_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = eligibilityCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__TransparencyDaemon_reportEligibility_complete___block_invoke_553;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = eligibilityCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __49__TransparencyDaemon_reportEligibility_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __49__TransparencyDaemon_reportEligibility_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending reportEligibility:complete:", v8, 2u);
  }

  [v5 reportEligibility:*(a1 + 32) complete:*(a1 + 40)];
}

uint64_t __49__TransparencyDaemon_reportEligibility_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)getAggregateResult:(int64_t)result element:(id)element complete:(id)complete
{
  elementCopy = element;
  completeCopy = complete;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__TransparencyDaemon_getAggregateResult_element_complete___block_invoke;
  v13[3] = &unk_1E87019F8;
  resultCopy = result;
  v14 = elementCopy;
  v15 = completeCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__TransparencyDaemon_getAggregateResult_element_complete___block_invoke_556;
  v11[3] = &unk_1E87013C8;
  v12 = v15;
  v9 = v15;
  v10 = elementCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v13 errorHandler:v11];
}

void __58__TransparencyDaemon_getAggregateResult_element_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __58__TransparencyDaemon_getAggregateResult_element_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending getAggregateResult:", v8, 2u);
  }

  [v5 getAggregateResult:a1[6] element:a1[4] complete:a1[5]];
}

uint64_t __58__TransparencyDaemon_getAggregateResult_element_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)insertResultForElement:(id)element samplesAgo:(id)ago success:(BOOL)success complete:(id)complete
{
  elementCopy = element;
  agoCopy = ago;
  completeCopy = complete;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__TransparencyDaemon_insertResultForElement_samplesAgo_success_complete___block_invoke;
  v17[3] = &unk_1E8701A98;
  v18 = elementCopy;
  v19 = agoCopy;
  successCopy = success;
  v20 = completeCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__TransparencyDaemon_insertResultForElement_samplesAgo_success_complete___block_invoke_559;
  v15[3] = &unk_1E87013C8;
  v16 = v20;
  v12 = v20;
  v13 = agoCopy;
  v14 = elementCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v17 errorHandler:v15];
}

void __73__TransparencyDaemon_insertResultForElement_samplesAgo_success_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __73__TransparencyDaemon_insertResultForElement_samplesAgo_success_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending insertResultForElement:", v8, 2u);
  }

  [v5 insertResultForElement:*(a1 + 32) samplesAgo:*(a1 + 40) success:*(a1 + 56) complete:*(a1 + 48)];
}

uint64_t __73__TransparencyDaemon_insertResultForElement_samplesAgo_success_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)triggerReportAndMaybeOptInWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__TransparencyDaemon_triggerReportAndMaybeOptInWithCompletion___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = completionCopy;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__TransparencyDaemon_triggerReportAndMaybeOptInWithCompletion___block_invoke_562;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

void __63__TransparencyDaemon_triggerReportAndMaybeOptInWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __63__TransparencyDaemon_triggerReportAndMaybeOptInWithCompletion___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending transparencyTriggerMaybeReportEligibility", v8, 2u);
  }

  [v5 triggerReportAndMaybeOptInWithCompletion:*(a1 + 32)];
}

uint64_t __63__TransparencyDaemon_triggerReportAndMaybeOptInWithCompletion___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)successInfoForElement:(id)element samples:(int64_t)samples completion:(id)completion
{
  elementCopy = element;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__TransparencyDaemon_successInfoForElement_samples_completion___block_invoke;
  v13[3] = &unk_1E87019F8;
  v14 = elementCopy;
  samplesCopy = samples;
  v15 = completionCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__TransparencyDaemon_successInfoForElement_samples_completion___block_invoke_565;
  v11[3] = &unk_1E87013C8;
  v12 = v15;
  v9 = v15;
  v10 = elementCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v13 errorHandler:v11];
}

void __63__TransparencyDaemon_successInfoForElement_samples_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __63__TransparencyDaemon_successInfoForElement_samples_completion___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending successInfoForElement", v8, 2u);
  }

  [v5 successInfoForElement:a1[4] samples:a1[6] complete:a1[5]];
}

uint64_t __63__TransparencyDaemon_successInfoForElement_samples_completion___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)networkKTQuery:(id)query application:(id)application complete:(id)complete
{
  queryCopy = query;
  applicationCopy = application;
  completeCopy = complete;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = queryCopy;
  v17 = applicationCopy;
  v18 = completeCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke_2_570;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = applicationCopy;
  v12 = queryCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v15 errorHandler:v13];
}

void __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending networkKTQuery:application:complete:", buf, 2u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke_568;
  v10[3] = &unk_1E8701AC0;
  v11 = *(a1 + 48);
  [v5 networkKTQuery:v8 application:v9 traceUUID:0 timeout:v10 complete:0.0];
}

uint64_t __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke_568(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 request];
  v7 = [v6 response];

  (*(v4 + 16))(v4, v8, v7, v5);
}

- (void)networkKTQuery:(id)query application:(id)application traceUUID:(id)d timeout:(double)timeout complete:(id)complete
{
  queryCopy = query;
  applicationCopy = application;
  dCopy = d;
  completeCopy = complete;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke;
  v21[3] = &unk_1E8701AE8;
  v22 = queryCopy;
  v23 = applicationCopy;
  v24 = dCopy;
  timeoutCopy = timeout;
  v25 = completeCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke_2_574;
  v19[3] = &unk_1E87013C8;
  v20 = v25;
  v15 = v25;
  v16 = dCopy;
  v17 = applicationCopy;
  v18 = queryCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v21 errorHandler:v19];
}

void __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending networkKTQuery:application:traceUUID:timeout:complete:", buf, 2u);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke_573;
  v12[3] = &unk_1E8701AC0;
  v11 = *(a1 + 48);
  v13 = *(a1 + 56);
  [v5 networkKTQuery:v8 application:v9 traceUUID:v11 timeout:v12 complete:v10];
}

uint64_t __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

void __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke_573(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 request];
  v7 = [v6 response];

  (*(v4 + 16))(v4, v8, v7, v5);
}

- (void)networkKTQuery:(id)query application:(id)application trace:(id)trace timeout:(double)timeout complete:(id)complete
{
  queryCopy = query;
  applicationCopy = application;
  traceCopy = trace;
  completeCopy = complete;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__TransparencyDaemon_networkKTQuery_application_trace_timeout_complete___block_invoke;
  v21[3] = &unk_1E8701AE8;
  v22 = queryCopy;
  v23 = applicationCopy;
  v24 = traceCopy;
  timeoutCopy = timeout;
  v25 = completeCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__TransparencyDaemon_networkKTQuery_application_trace_timeout_complete___block_invoke_577;
  v19[3] = &unk_1E87013C8;
  v20 = v25;
  v15 = v25;
  v16 = traceCopy;
  v17 = applicationCopy;
  v18 = queryCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v21 errorHandler:v19];
}

void __72__TransparencyDaemon_networkKTQuery_application_trace_timeout_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __72__TransparencyDaemon_networkKTQuery_application_trace_timeout_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending networkKTQuery:application:traceUUID:timeout:complete:", v8, 2u);
  }

  [v5 networkKTQuery:*(a1 + 32) application:*(a1 + 40) traceUUID:*(a1 + 48) timeout:*(a1 + 56) complete:*(a1 + 64)];
}

uint64_t __72__TransparencyDaemon_networkKTQuery_application_trace_timeout_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)validateSelfForThisDeviceForApplication:(id)application pushToken:(id)token complete:(id)complete
{
  applicationCopy = application;
  tokenCopy = token;
  completeCopy = complete;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__TransparencyDaemon_validateSelfForThisDeviceForApplication_pushToken_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = applicationCopy;
  v17 = tokenCopy;
  v18 = completeCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__TransparencyDaemon_validateSelfForThisDeviceForApplication_pushToken_complete___block_invoke_580;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = tokenCopy;
  v12 = applicationCopy;
  [TransparencyXPCConnection invokeXPCAsynchronousCallWithBlock:v15 errorHandler:v13];
}

void __81__TransparencyDaemon_validateSelfForThisDeviceForApplication_pushToken_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __81__TransparencyDaemon_validateSelfForThisDeviceForApplication_pushToken_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending validateSelfForThisDeviceForApplication:pushToken:complete:", v8, 2u);
  }

  [v5 validateSelfForThisDeviceForApplication:a1[4] pushToken:a1[5] complete:a1[6]];
}

uint64_t __81__TransparencyDaemon_validateSelfForThisDeviceForApplication_pushToken_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)ktRepair:(id)repair complete:(id)complete
{
  repairCopy = repair;
  completeCopy = complete;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__TransparencyDaemon_ktRepair_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = repairCopy;
  v13 = completeCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__TransparencyDaemon_ktRepair_complete___block_invoke_583;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = repairCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v11 errorHandler:v9];
}

void __40__TransparencyDaemon_ktRepair_complete___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __40__TransparencyDaemon_ktRepair_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending ktRepair:complete:", v8, 2u);
  }

  [v5 ktRepair:*(a1 + 32) complete:*(a1 + 40)];
}

uint64_t __40__TransparencyDaemon_ktRepair_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)validateIDSData:(id)data ktQueryData:(id)queryData ktResponseData:(id)responseData complete:(id)complete
{
  dataCopy = data;
  completeCopy = complete;
  responseDataCopy = responseData;
  queryDataCopy = queryData;
  v13 = objc_alloc_init(KTNetworkResponse);
  [(KTNetworkResponse *)v13 setRequest:queryDataCopy];

  [(KTNetworkResponse *)v13 setResponse:responseDataCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__TransparencyDaemon_validateIDSData_ktQueryData_ktResponseData_complete___block_invoke;
  v19[3] = &unk_1E87019D0;
  v20 = dataCopy;
  v21 = v13;
  v22 = completeCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__TransparencyDaemon_validateIDSData_ktQueryData_ktResponseData_complete___block_invoke_588;
  v17[3] = &unk_1E87013C8;
  v18 = v22;
  v14 = v22;
  v15 = v13;
  v16 = dataCopy;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v19 errorHandler:v17];
}

void __74__TransparencyDaemon_validateIDSData_ktQueryData_ktResponseData_complete___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_5 != -1)
  {
    __74__TransparencyDaemon_validateIDSData_ktQueryData_ktResponseData_complete___block_invoke_cold_1();
  }

  v7 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_5;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E10DB000, v7, OS_LOG_TYPE_INFO, "Sending validateIDSData:ktQueryData:ktResponseData:application:complete:", v8, 2u);
  }

  [v5 validateIDSData:a1[4] ktData:a1[5] complete:a1[6]];
}

uint64_t __74__TransparencyDaemon_validateIDSData_ktQueryData_ktResponseData_complete___block_invoke_2()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_5 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

@end