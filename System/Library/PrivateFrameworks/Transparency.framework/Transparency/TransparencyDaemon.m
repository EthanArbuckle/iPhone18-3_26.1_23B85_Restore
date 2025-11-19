@interface TransparencyDaemon
- (id)transparencyCheckIDSHealth:(id *)a3;
- (id)transparencyIDMSDeviceList:(id *)a3;
- (id)transparencySysDiagnoseData:(id *)a3;
- (void)changeOptInState:(unint64_t)a3 application:(id)a4 complete:(id)a5;
- (void)clearEligibilityOverrides:(id)a3;
- (void)clearOptInStateForURI:(id)a3 application:(id)a4 complete:(id)a5;
- (void)clearPeerState:(id)a3 uris:(id)a4 block:(id)a5;
- (void)clearTapToRadarNotification:(id)a3 complete:(id)a4;
- (void)configurationBagFetch:(id)a3;
- (void)getAggregateResult:(int64_t)a3 element:(id)a4 complete:(id)a5;
- (void)getAllOptInStates:(id)a3;
- (void)getOptInForURI:(id)a3 application:(id)a4 complete:(id)a5;
- (void)getOptInState:(id)a3 complete:(id)a4;
- (void)getOptInStateForApplication:(id)a3 complete:(id)a4;
- (void)insertResultForElement:(id)a3 samplesAgo:(id)a4 success:(BOOL)a5 complete:(id)a6;
- (void)ktRepair:(id)a3 complete:(id)a4;
- (void)networkKTQuery:(id)a3 application:(id)a4 complete:(id)a5;
- (void)networkKTQuery:(id)a3 application:(id)a4 trace:(id)a5 timeout:(double)a6 complete:(id)a7;
- (void)networkKTQuery:(id)a3 application:(id)a4 traceUUID:(id)a5 timeout:(double)a6 complete:(id)a7;
- (void)performAndWaitForSelfValidate:(id)a3;
- (void)replaySelfValidate:(id)a3 application:(id)a4 pcsAccountKey:(id)a5 queryRequest:(id)a6 queryResponse:(id)a7 responseTime:(id)a8 completionHandler:(id)a9;
- (void)reportEligibility:(id)a3 complete:(id)a4;
- (void)setOSVersion:(id)a3 complete:(id)a4;
- (void)setOptInForURI:(id)a3 application:(id)a4 state:(BOOL)a5 smtTimestamp:(id)a6 complete:(id)a7;
- (void)setOverrideTimeBetweenReports:(double)a3 completion:(id)a4;
- (void)successInfoForElement:(id)a3 samples:(int64_t)a4 completion:(id)a5;
- (void)transparencyCheckKTAccountKey:(id)a3 complete:(id)a4;
- (void)transparencyClearKTRegistrationData:(id)a3;
- (void)transparencyCloudDeviceAdd:(id)a3 clientData:(id)a4 complete:(id)a5;
- (void)transparencyCloudDeviceRemove:(id)a3 clientData:(id)a4 complete:(id)a5;
- (void)transparencyCloudDevices:(id)a3;
- (void)transparencyDumpKTRegistrationData:(id)a3;
- (void)transparencyFetchIDMS:(id)a3;
- (void)transparencyFetchPublicKeys:(id)a3;
- (void)transparencyFetchSelf:(id)a3;
- (void)transparencyGetKTSignatures:(id)a3 complete:(id)a4;
- (void)transparencyIDSRegistration:(id)a3;
- (void)transparencyIDSRepair:(id)a3;
- (void)transparencyPerformRegistrationSignature:(id)a3;
- (void)transparencySysDiagnose:(id)a3;
- (void)transparencyTriggerIDSRegistration:(id)a3;
- (void)transparencyTriggerOperation:(id)a3 complete:(id)a4;
- (void)transparencyTriggerTTR:(id)a3 handle:(id)a4 complete:(id)a5;
- (void)transparencyValidateSelf:(id)a3;
- (void)triggerReportAndMaybeOptInWithCompletion:(id)a3;
- (void)updateIDSRecommendation:(BOOL)a3 complete:(id)a4;
- (void)validateIDSData:(id)a3 ktQueryData:(id)a4 ktResponseData:(id)a5 complete:(id)a6;
- (void)validateSelfForThisDeviceForApplication:(id)a3 pushToken:(id)a4 complete:(id)a5;
@end

@implementation TransparencyDaemon

- (void)configurationBagFetch:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_configurationBagFetch___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyIDSRepair:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_transparencyIDSRepair___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencySysDiagnose:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__TransparencyDaemon_transparencySysDiagnose___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (id)transparencySysDiagnoseData:(id *)a3
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
  v4 = [MEMORY[0x1E695DF90] dictionary];
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
  v5 = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__TransparencyDaemon_transparencySysDiagnoseData___block_invoke_3;
  v10[3] = &unk_1E87018C0;
  v12 = v15;
  v6 = v5;
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

  [v4 setObject:v18[5] forKeyedSubscript:@"stateMachine"];
  [v4 setObject:v6 forKeyedSubscript:@"registration"];
  if ([v4 count])
  {
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:a3];
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

- (void)transparencyFetchIDMS:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_transparencyFetchIDMS___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyValidateSelf:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__TransparencyDaemon_transparencyValidateSelf___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyFetchSelf:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__TransparencyDaemon_transparencyFetchSelf___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)performAndWaitForSelfValidate:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__TransparencyDaemon_performAndWaitForSelfValidate___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (id)transparencyIDMSDeviceList:(id *)a3
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
  if (a3)
  {
    v4 = v9[5];
    if (v4)
    {
      *a3 = v4;
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

- (void)replaySelfValidate:(id)a3 application:(id)a4 pcsAccountKey:(id)a5 queryRequest:(id)a6 queryResponse:(id)a7 responseTime:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __125__TransparencyDaemon_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler___block_invoke;
  v30[3] = &unk_1E8701930;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __125__TransparencyDaemon_replaySelfValidate_application_pcsAccountKey_queryRequest_queryResponse_responseTime_completionHandler___block_invoke_453;
  v28[3] = &unk_1E87013C8;
  v29 = v37;
  v21 = v37;
  v22 = v19;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v14;
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

- (void)transparencyFetchPublicKeys:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TransparencyDaemon_transparencyFetchPublicKeys___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyTriggerIDSRegistration:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__TransparencyDaemon_transparencyTriggerIDSRegistration___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyCheckKTAccountKey:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__TransparencyDaemon_transparencyCheckKTAccountKey_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__TransparencyDaemon_transparencyCheckKTAccountKey_complete___block_invoke_462;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)transparencyTriggerTTR:(id)a3 handle:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke;
  v15[3] = &unk_1E8701980;
  v17 = v8;
  v18 = v9;
  v16 = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__TransparencyDaemon_transparencyTriggerTTR_handle_complete___block_invoke_470;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
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

- (void)clearTapToRadarNotification:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TransparencyDaemon_clearTapToRadarNotification_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__TransparencyDaemon_clearTapToRadarNotification_complete___block_invoke_476;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (id)transparencyCheckIDSHealth:(id *)a3
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
  if (a3)
  {
    v4 = v10[5];
    if (v4)
    {
      *a3 = v4;
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

- (void)transparencyIDSRegistration:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TransparencyDaemon_transparencyIDSRegistration___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__TransparencyDaemon_transparencyIDSRegistration___block_invoke_2;
  v5[3] = &unk_1E87013C8;
  v6 = v8;
  v4 = v8;
  [TransparencyXPCConnection invokeXPCSynchronousCallWithBlock:v7 errorHandler:v5];
}

- (void)transparencyPerformRegistrationSignature:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__TransparencyDaemon_transparencyPerformRegistrationSignature___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyDumpKTRegistrationData:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__TransparencyDaemon_transparencyDumpKTRegistrationData___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyGetKTSignatures:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TransparencyDaemon_transparencyGetKTSignatures_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__TransparencyDaemon_transparencyGetKTSignatures_complete___block_invoke_493;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)transparencyClearKTRegistrationData:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__TransparencyDaemon_transparencyClearKTRegistrationData___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)transparencyCloudDevices:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__TransparencyDaemon_transparencyCloudDevices___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)clearPeerState:(id)a3 uris:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__TransparencyDaemon_clearPeerState_uris_block___block_invoke;
  v13[3] = &unk_1E87019D0;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v10 = v9;
  v11 = v7;
  v12 = v8;
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

- (void)transparencyTriggerOperation:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__TransparencyDaemon_transparencyTriggerOperation_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__TransparencyDaemon_transparencyTriggerOperation_complete___block_invoke_510;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)changeOptInState:(unint64_t)a3 application:(id)a4 complete:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__TransparencyDaemon_changeOptInState_application_complete___block_invoke;
  v13[3] = &unk_1E87019F8;
  v16 = a3;
  v14 = v7;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__TransparencyDaemon_changeOptInState_application_complete___block_invoke_513;
  v11[3] = &unk_1E87013C8;
  v12 = v15;
  v9 = v15;
  v10 = v7;
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

- (void)getOptInState:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__TransparencyDaemon_getOptInState_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__TransparencyDaemon_getOptInState_complete___block_invoke_516;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)getOptInForURI:(id)a3 application:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__TransparencyDaemon_getOptInForURI_application_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__TransparencyDaemon_getOptInForURI_application_complete___block_invoke_519;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
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

- (void)setOptInForURI:(id)a3 application:(id)a4 state:(BOOL)a5 smtTimestamp:(id)a6 complete:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__TransparencyDaemon_setOptInForURI_application_state_smtTimestamp_complete___block_invoke;
  v21[3] = &unk_1E8701A20;
  v22 = v11;
  v23 = v12;
  v26 = a5;
  v24 = v13;
  v25 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__TransparencyDaemon_setOptInForURI_application_state_smtTimestamp_complete___block_invoke_522;
  v19[3] = &unk_1E87013C8;
  v20 = v25;
  v15 = v25;
  v16 = v13;
  v17 = v12;
  v18 = v11;
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

- (void)getAllOptInStates:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__TransparencyDaemon_getAllOptInStates___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)getOptInStateForApplication:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__TransparencyDaemon_getOptInStateForApplication_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__TransparencyDaemon_getOptInStateForApplication_complete___block_invoke_528;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)clearOptInStateForURI:(id)a3 application:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__TransparencyDaemon_clearOptInStateForURI_application_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__TransparencyDaemon_clearOptInStateForURI_application_complete___block_invoke_531;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
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

- (void)transparencyCloudDeviceAdd:(id)a3 clientData:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__TransparencyDaemon_transparencyCloudDeviceAdd_clientData_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__TransparencyDaemon_transparencyCloudDeviceAdd_clientData_complete___block_invoke_534;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
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

- (void)transparencyCloudDeviceRemove:(id)a3 clientData:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__TransparencyDaemon_transparencyCloudDeviceRemove_clientData_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__TransparencyDaemon_transparencyCloudDeviceRemove_clientData_complete___block_invoke_537;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
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

- (void)updateIDSRecommendation:(BOOL)a3 complete:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__TransparencyDaemon_updateIDSRecommendation_complete___block_invoke;
  v9[3] = &unk_1E8701618;
  v11 = a3;
  v10 = v5;
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

- (void)setOSVersion:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__TransparencyDaemon_setOSVersion_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__TransparencyDaemon_setOSVersion_complete___block_invoke_2_544;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)setOverrideTimeBetweenReports:(double)a3 completion:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__TransparencyDaemon_setOverrideTimeBetweenReports_completion___block_invoke;
  v9[3] = &unk_1E8701A70;
  v11 = a3;
  v10 = v5;
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

- (void)clearEligibilityOverrides:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TransparencyDaemon_clearEligibilityOverrides___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)reportEligibility:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__TransparencyDaemon_reportEligibility_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__TransparencyDaemon_reportEligibility_complete___block_invoke_553;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)getAggregateResult:(int64_t)a3 element:(id)a4 complete:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__TransparencyDaemon_getAggregateResult_element_complete___block_invoke;
  v13[3] = &unk_1E87019F8;
  v16 = a3;
  v14 = v7;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__TransparencyDaemon_getAggregateResult_element_complete___block_invoke_556;
  v11[3] = &unk_1E87013C8;
  v12 = v15;
  v9 = v15;
  v10 = v7;
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

- (void)insertResultForElement:(id)a3 samplesAgo:(id)a4 success:(BOOL)a5 complete:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__TransparencyDaemon_insertResultForElement_samplesAgo_success_complete___block_invoke;
  v17[3] = &unk_1E8701A98;
  v18 = v9;
  v19 = v10;
  v21 = a5;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__TransparencyDaemon_insertResultForElement_samplesAgo_success_complete___block_invoke_559;
  v15[3] = &unk_1E87013C8;
  v16 = v20;
  v12 = v20;
  v13 = v10;
  v14 = v9;
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

- (void)triggerReportAndMaybeOptInWithCompletion:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__TransparencyDaemon_triggerReportAndMaybeOptInWithCompletion___block_invoke;
  v7[3] = &unk_1E8701848;
  v8 = v3;
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

- (void)successInfoForElement:(id)a3 samples:(int64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__TransparencyDaemon_successInfoForElement_samples_completion___block_invoke;
  v13[3] = &unk_1E87019F8;
  v14 = v7;
  v16 = a4;
  v15 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__TransparencyDaemon_successInfoForElement_samples_completion___block_invoke_565;
  v11[3] = &unk_1E87013C8;
  v12 = v15;
  v9 = v15;
  v10 = v7;
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

- (void)networkKTQuery:(id)a3 application:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__TransparencyDaemon_networkKTQuery_application_complete___block_invoke_2_570;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
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

- (void)networkKTQuery:(id)a3 application:(id)a4 traceUUID:(id)a5 timeout:(double)a6 complete:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke;
  v21[3] = &unk_1E8701AE8;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v26 = a6;
  v25 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__TransparencyDaemon_networkKTQuery_application_traceUUID_timeout_complete___block_invoke_2_574;
  v19[3] = &unk_1E87013C8;
  v20 = v25;
  v15 = v25;
  v16 = v13;
  v17 = v12;
  v18 = v11;
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

- (void)networkKTQuery:(id)a3 application:(id)a4 trace:(id)a5 timeout:(double)a6 complete:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__TransparencyDaemon_networkKTQuery_application_trace_timeout_complete___block_invoke;
  v21[3] = &unk_1E8701AE8;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v26 = a6;
  v25 = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__TransparencyDaemon_networkKTQuery_application_trace_timeout_complete___block_invoke_577;
  v19[3] = &unk_1E87013C8;
  v20 = v25;
  v15 = v25;
  v16 = v13;
  v17 = v12;
  v18 = v11;
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

- (void)validateSelfForThisDeviceForApplication:(id)a3 pushToken:(id)a4 complete:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__TransparencyDaemon_validateSelfForThisDeviceForApplication_pushToken_complete___block_invoke;
  v15[3] = &unk_1E87019D0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__TransparencyDaemon_validateSelfForThisDeviceForApplication_pushToken_complete___block_invoke_580;
  v13[3] = &unk_1E87013C8;
  v14 = v18;
  v10 = v18;
  v11 = v8;
  v12 = v7;
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

- (void)ktRepair:(id)a3 complete:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__TransparencyDaemon_ktRepair_complete___block_invoke;
  v11[3] = &unk_1E8701958;
  v12 = v5;
  v13 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__TransparencyDaemon_ktRepair_complete___block_invoke_583;
  v9[3] = &unk_1E87013C8;
  v10 = v13;
  v7 = v13;
  v8 = v5;
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

- (void)validateIDSData:(id)a3 ktQueryData:(id)a4 ktResponseData:(id)a5 complete:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = objc_alloc_init(KTNetworkResponse);
  [(KTNetworkResponse *)v13 setRequest:v12];

  [(KTNetworkResponse *)v13 setResponse:v11];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__TransparencyDaemon_validateIDSData_ktQueryData_ktResponseData_complete___block_invoke;
  v19[3] = &unk_1E87019D0;
  v20 = v9;
  v21 = v13;
  v22 = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__TransparencyDaemon_validateIDSData_ktQueryData_ktResponseData_complete___block_invoke_588;
  v17[3] = &unk_1E87013C8;
  v18 = v22;
  v14 = v22;
  v15 = v13;
  v16 = v9;
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