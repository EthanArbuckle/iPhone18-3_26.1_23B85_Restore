@interface SDRDiagnosticReporter
+ (BOOL)isABCEnabled;
+ (id)newXPCConnection;
+ (void)initialize;
+ (void)isABCEnabled;
- (BOOL)addSignatureContentForSession:(id)session key:(id)key content:(id)content reply:(id)reply;
- (BOOL)addToSession:(id)session event:(id)event payload:(id)payload reply:(id)reply;
- (BOOL)addToSession:(id)session events:(id)events payload:(id)payload reply:(id)reply;
- (BOOL)cancelSession:(id)session;
- (BOOL)endSession:(id)session;
- (BOOL)getDiagnosticPayloadsForSignatures:(id)signatures reply:(id)reply;
- (BOOL)groupCaseIdentifierForSignature:(id)signature reply:(id)reply;
- (BOOL)snapshotWithSignature:(id)signature delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply;
- (BOOL)snapshotWithSignature:(id)signature duration:(double)duration event:(id)event payload:(id)payload reply:(id)reply;
- (BOOL)snapshotWithSignature:(id)signature withIDSDestinations:(id)destinations validFor:(double)for delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions reply:(id)self0;
- (BOOL)startSessionWithSignature:(id)signature duration:(double)duration event:(id)event payload:(id)payload reply:(id)reply;
- (BOOL)startSessionWithSignature:(id)signature duration:(double)duration events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply;
- (BOOL)startSessionWithSignature:(id)signature withIDSDestinations:(id)destinations validFor:(double)for duration:(double)duration events:(id)events payload:(id)payload actions:(id)actions reply:(id)self0;
- (BOOL)triggerRemoteSessionForSignature:(id)signature caseGroupID:(id)d reply:(id)reply;
- (SDRDiagnosticReporter)init;
- (SDRDiagnosticReporter)initWithQueue:(id)queue;
- (SDRDiagnosticReporterDelegate)delegate;
- (id)_payloadAugmentedWithSandboxExtensionTokensDict:(id)dict;
- (id)actionsDictionary:(id)dictionary withIDSDestinations:(id)destinations validFor:(double)for;
- (id)buildDiagnosticIncidentEventForCaseSignature:(id)signature handledResult:(unint64_t)result dampeningResult:(unint64_t)dampeningResult closureType:(unint64_t)type;
- (id)signatureWithDomain:(id)domain type:(id)type subType:(id)subType subtypeContext:(id)context detectedProcess:(id)process triggerThresholdValues:(id)values;
- (int)checkSignatureValidity:(id)validity;
- (void)_replyOnQueueToBlock:(void *)block withConfig:;
- (void)caseSummariesListCallbackWithResult:(id)result service:(id)service caseSummaryType:(id)type count:(unint64_t)count container:(id)container reply:(id)reply;
- (void)casesListCallbackWithResult:(id)result service:(id)service identifier:(id)identifier count:(unint64_t)count container:(id)container reply:(id)reply;
- (void)commonPreflightChecksForSignature:(id)signature payload:(id)payload callback:(id)callback;
- (void)dealloc;
- (void)getAllDiagnosticCasesWithReply:(id)reply;
- (void)getAutoBugCaptureConfiguration:(id)configuration;
- (void)getDiagnosticCaseSummariesOfType:(id)type reply:(id)reply;
- (void)getDiagnosticCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply;
- (void)parseCaseTriggerResponse:(id)response;
- (void)purgeAutoBugCaptureFilesWithSubPaths:(id)paths reply:(id)reply;
- (void)resetAPIRateLimit;
- (void)resetDailyCaseLimit;
- (void)setupXPCInterface;
- (void)submitDiagnosticIncidentEventForCaseSignature:(id)signature handledResult:(unint64_t)result dampeningResult:(unint64_t)dampeningResult closureType:(unint64_t)type;
@end

@implementation SDRDiagnosticReporter

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[SDRDiagnosticReporter initialize];
  }
}

uint64_t __35__SDRDiagnosticReporter_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.symptomdiagnosticreporter", "framework");
  v1 = logHandle;
  logHandle = v0;

  isEnabled = +[SDRDiagnosticReporter isABCEnabled];
  v2 = logHandle;

  return [CaseDampeningExceptions setLoggingHandle:v2];
}

+ (BOOL)isABCEnabled
{
  _MergedGlobals = os_variant_has_internal_diagnostics();
  v2 = dlopen("/usr/lib/libMobileGestalt.dylib", 261);
  if (v2)
  {
    v3 = v2;
    v4 = dlsym(v2, "MGGetStringAnswer");
    v5 = v4(@"ReleaseType");
    if (v5)
    {
      byte_280AE5FC9 = CFStringCompare(v5, @"Vendor", 0) == kCFCompareEqualTo;
    }

    dlclose(v3);
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    +[SDRDiagnosticReporter isABCEnabled];
  }

  return (_MergedGlobals | byte_280AE5FC9) & 1;
}

- (SDRDiagnosticReporter)init
{
  v3 = dispatch_get_global_queue(17, 0);
  v4 = [(SDRDiagnosticReporter *)self initWithQueue:v3];

  return v4;
}

- (void)setupXPCInterface
{
  if (isEnabled == 1)
  {
    v3 = +[SDRDiagnosticReporter newXPCConnection];
    connection = self->_connection;
    self->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287CEDE20];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];

    objc_initWeak(location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke;
    v12[3] = &unk_279D2CDE8;
    objc_copyWeak(&v13, location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v12];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_2;
    v10 = &unk_279D2CDE8;
    objc_copyWeak(&v11, location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&v7];
    [(NSXPCConnection *)self->_connection resume:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_26C35F000, v6, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter is disabled.", location, 2u);
    }
  }
}

+ (id)newXPCConnection
{
  v2 = objc_alloc(MEMORY[0x277CCAE80]);

  return [v2 initWithMachServiceName:@"com.apple.symptom_diagnostics" options:4096];
}

- (SDRDiagnosticReporter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SDRDiagnosticReporter;
  v5 = [(SDRDiagnosticReporter *)&v9 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
    }

    else
    {
      v6 = dispatch_get_global_queue(17, 0);
    }

    queue = v5->_queue;
    v5->_queue = v6;

    [(SDRDiagnosticReporter *)v5 setupXPCInterface];
  }

  return v5;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }

  v5.receiver = self;
  v5.super_class = SDRDiagnosticReporter;
  [(SDRDiagnosticReporter *)&v5 dealloc];
}

void __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_cold_1();
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else if (!v2)
  {
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained queue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_121;
    v4[3] = &unk_279D2CDC0;
    v5 = v2;
    v6 = WeakRetained;
    dispatch_async(v3, v4);
  }

LABEL_5:
}

void __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_2_cold_1();
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else if (!v2)
  {
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained queue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_124;
    v4[3] = &unk_279D2CDC0;
    v5 = v2;
    v6 = WeakRetained;
    dispatch_async(v3, v4);
  }

LABEL_5:
}

- (int)checkSignatureValidity:(id)validity
{
  validityCopy = validity;
  v4 = [validityCopy objectForKeyedSubscript:@"domain"];
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v6 = &kSymptomDiagnosticErrorInvalidParameters;
    goto LABEL_6;
  }

  if ([v5 length] < 0x101)
  {
    v9 = [validityCopy objectForKeyedSubscript:@"type"];
    v10 = v9;
    if (v9 && [v9 length])
    {
      if ([v10 length] < 0x101)
      {
        v12 = [validityCopy objectForKeyedSubscript:@"subtype"];
        v13 = v12;
        if (v12 && [v12 length] >= 0x101)
        {
          v7 = 23;
        }

        else
        {
          v14 = [validityCopy objectForKeyedSubscript:@"additional"];
          v15 = v14;
          if (v14 && [v14 length] >= 0x101)
          {
            v7 = 23;
          }

          else
          {
            v16 = [validityCopy objectForKeyedSubscript:@"detected"];
            v17 = v16;
            if (v16 && [v16 length] > 0x100)
            {
              v18 = &kSymptomDiagnosticErrorInvalidSignature;
            }

            else
            {
              v18 = &kSymptomDiagnosticErrorNone;
            }

            v7 = *v18;
          }
        }

        goto LABEL_14;
      }

      v11 = &kSymptomDiagnosticErrorInvalidSignature;
    }

    else
    {
      v11 = &kSymptomDiagnosticErrorInvalidParameters;
    }

    v7 = *v11;
LABEL_14:

    goto LABEL_7;
  }

  v6 = &kSymptomDiagnosticErrorInvalidSignature;
LABEL_6:
  v7 = *v6;
LABEL_7:

  return v7;
}

- (id)actionsDictionary:(id)dictionary withIDSDestinations:(id)destinations validFor:(double)for
{
  dictionaryCopy = dictionary;
  destinationsCopy = destinations;
  if (dictionaryCopy)
  {
    dictionary = [dictionaryCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v10 = dictionary;
  allObjects = [destinationsCopy allObjects];
  [v10 setObject:allObjects forKey:@"idsdest"];

  forCopy = 3600.0;
  if (for >= 1.0)
  {
    forCopy = for;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:forCopy];
  [v10 setObject:v13 forKey:@"remotewindow"];

  return v10;
}

- (id)signatureWithDomain:(id)domain type:(id)type subType:(id)subType subtypeContext:(id)context detectedProcess:(id)process triggerThresholdValues:(id)values
{
  subTypeCopy = subType;
  contextCopy = context;
  valuesCopy = values;
  v16 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{domain, @"domain", type, @"type", process, @"detected", 0}];
  if ([subTypeCopy length])
  {
    [v16 setObject:subTypeCopy forKey:@"subtype"];
  }

  if ([contextCopy length])
  {
    [v16 setObject:contextCopy forKey:@"additional"];
  }

  if ([valuesCopy length])
  {
    [v16 setObject:valuesCopy forKey:@"threshval"];
  }

  return v16;
}

- (BOOL)groupCaseIdentifierForSignature:(id)signature reply:(id)reply
{
  signatureCopy = signature;
  replyCopy = reply;
  v8 = replyCopy;
  if (isEnabled == 1)
  {
    v9 = [(SDRDiagnosticReporter *)self checkSignatureValidity:signatureCopy];
    if (v9)
    {
      if (!v8)
      {
LABEL_13:
        v15 = v9 == 0;
        goto LABEL_14;
      }

      queue = self->_queue;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_4;
      v20[3] = &unk_279D2CEB0;
      v11 = &v21;
      v21 = v8;
      v22 = v9;
      dispatch_async(queue, v20);
    }

    else
    {
      connection = self->_connection;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke;
      v25[3] = &unk_279D2CE38;
      v11 = &v26;
      v12 = v8;
      v25[4] = self;
      v26 = v12;
      v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v25];
      if (v13)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_2;
        v23[3] = &unk_279D2CE88;
        v23[4] = self;
        v24 = v12;
        [v13 requestGroupCaseIdentifierForSignature:signatureCopy reply:v23];
      }

      else
      {
        v9 = 10;
      }
    }

    goto LABEL_13;
  }

  if (replyCopy)
  {
    v14 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_5;
    block[3] = &unk_279D2CE10;
    v19 = replyCopy;
    dispatch_async(v14, block);
  }

  v15 = 0;
LABEL_14:

  return v15;
}

void __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_127;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_127(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 11, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_3;
    v6[3] = &unk_279D2CE60;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, *(a1 + 40), 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (id)_payloadAugmentedWithSandboxExtensionTokensDict:(id)dict
{
  v37 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = dictCopy;
  if (dictCopy)
  {
    v5 = [dictCopy objectForKeyedSubscript:@"path"];
    if ([v5 count])
    {
      v27 = v4;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v26 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        v11 = *MEMORY[0x277D861E8];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            [v13 UTF8String];
            v14 = sandbox_extension_issue_file();
            v15 = logHandle;
            if (v14)
            {
              v16 = v14;
              if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v33 = v13;
                _os_log_impl(&dword_26C35F000, v15, OS_LOG_TYPE_INFO, "SDRDiagnosticReporter: Granted Read sandbox extension for payload path '%{public}@'.", buf, 0xCu);
              }

              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v16, v26}];
              [dictionary setObject:v17 forKeyedSubscript:v13];

              free(v16);
            }

            else if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
            {
              v18 = v15;
              v19 = __error();
              v20 = strerror(*v19);
              *buf = 138543618;
              v33 = v13;
              v34 = 2080;
              v35 = v20;
              _os_log_error_impl(&dword_26C35F000, v18, OS_LOG_TYPE_ERROR, "SDRDiagnosticReporter: Failed to grant Read sandbox extension for payload path '%{public}@' with error: %s.", buf, 0x16u);
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v9);
      }

      v21 = [dictionary count];
      if (v21 == [v7 count])
      {
        v4 = v27;
        v22 = [v27 mutableCopy];
        [v22 setObject:dictionary forKeyedSubscript:@"sandbox_ext_token_dict"];
      }

      else
      {
        v23 = logHandle;
        v4 = v27;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [(SDRDiagnosticReporter *)v23 _payloadAugmentedWithSandboxExtensionTokensDict:v7, dictionary];
        }

        v22 = 0;
      }

      v5 = v26;
    }

    else
    {
      v22 = v4;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)commonPreflightChecksForSignature:(id)signature payload:(id)payload callback:(id)callback
{
  v26 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  payloadCopy = payload;
  callbackCopy = callback;
  v11 = callbackCopy;
  if (callbackCopy)
  {
    if (isEnabled)
    {
      v12 = [(SDRDiagnosticReporter *)self checkSignatureValidity:signatureCopy];
      if (!v12)
      {
        v13 = [(SDRDiagnosticReporter *)self _payloadAugmentedWithSandboxExtensionTokensDict:payloadCopy];
        v14 = v13;
        if (payloadCopy && !v13)
        {
          v15 = &kSymptomDiagnosticErrorPayloadSandboxTokenError;
LABEL_7:
          v11[2](v11, *v15, 0);
LABEL_16:

          goto LABEL_17;
        }

        if ([CaseDampeningExceptions allowDampeningExceptionFor:signatureCopy])
        {
          v17 = logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_26C35F000, v17, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: Signature matches dampening exception, will permit XPC call", &v24, 2u);
          }
        }

        else
        {
          date = [MEMORY[0x277CBEAA8] date];
          [date timeIntervalSince1970];
          v21 = v20;

          if (v21 < *&_dailyCaseLimitActiveUntil)
          {
            v22 = logHandle;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 134217984;
              v25 = _dailyCaseLimitActiveUntil;
              _os_log_impl(&dword_26C35F000, v22, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: A daily rate limit is in effect until %.0f. Rejecting case", &v24, 0xCu);
            }

            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
            {
              [SDRDiagnosticReporter commonPreflightChecksForSignature:payload:callback:];
            }

            [(SDRDiagnosticReporter *)self submitDiagnosticIncidentEventForCaseSignature:signatureCopy handledResult:2 dampeningResult:2 closureType:3];
            v15 = &kSymptomDiagnosticErrorDailyLimitExceeded;
            goto LABEL_7;
          }

          if (*&_dailyCaseLimitActiveUntil > 0.0)
          {
            [(SDRDiagnosticReporter *)self resetDailyCaseLimit];
          }

          if (v21 < *&_apiRateLimitActiveUntil)
          {
            v23 = logHandle;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 134217984;
              v25 = _apiRateLimitActiveUntil;
              _os_log_impl(&dword_26C35F000, v23, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: An API rate limit is in effect until %.0f. Rejecting case", &v24, 0xCu);
            }

            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
            {
              [SDRDiagnosticReporter commonPreflightChecksForSignature:payload:callback:];
            }

            [(SDRDiagnosticReporter *)self submitDiagnosticIncidentEventForCaseSignature:signatureCopy handledResult:2 dampeningResult:8 closureType:3];
            v15 = &kSymptomDiagnosticErrorRequestThrottled;
            goto LABEL_7;
          }

          if (*&_apiRateLimitActiveUntil > 0.0)
          {
            [(SDRDiagnosticReporter *)self resetAPIRateLimit];
          }
        }

        (v11)[2](v11, v12, v14);
        goto LABEL_16;
      }

      v16 = logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138477827;
        v25 = signatureCopy;
        _os_log_impl(&dword_26C35F000, v16, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: Failed signature validation check for %{private}@", &v24, 0xCu);
      }

      v11[2](v11, v12, 0);
    }

    else
    {
      (*(callbackCopy + 2))(callbackCopy, 1, 0);
    }
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)parseCaseTriggerResponse:(id)response
{
  v24 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v4 = [responseCopy objectForKeyedSubscript:@"success"];
  bOOLValue = [v4 BOOLValue];

  v6 = [responseCopy objectForKeyedSubscript:@"reason"];
  intValue = [v6 intValue];

  if ((bOOLValue & 1) == 0)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v9 = date;
    if (intValue == 31)
    {
      [date timeIntervalSince1970];
      v11 = v10;
      [v9 timeIntervalSince1970];
      *&_dailyCaseLimitActiveUntil = (v11 + 86400 + 86400 * (v12 / 0x15180) - v12);
      v13 = logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134217984;
        v21 = _dailyCaseLimitActiveUntil;
        _os_log_impl(&dword_26C35F000, v13, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: Received 'daily limit exceeded' response. Will reject all cases until %.0f", &v20, 0xCu);
      }
    }

    else if (intValue == 41)
    {
      v14 = [responseCopy objectForKeyedSubscript:@"expiresIn"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v14 doubleValue];
        v16 = v15;
        [v9 timeIntervalSince1970];
        *&_apiRateLimitActiveUntil = v16 + v17;
        v18 = logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 134218240;
          v21 = _apiRateLimitActiveUntil;
          v22 = 2048;
          v23 = v16;
          _os_log_impl(&dword_26C35F000, v18, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: Received 'API rate limit exceeded' response. Will reject all cases until %.0f (in %.0f s)", &v20, 0x16u);
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)resetDailyCaseLimit
{
  if (*&_dailyCaseLimitActiveUntil > 0.0)
  {
    v2 = logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_26C35F000, v2, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: Resetting daily case limiter", v3, 2u);
    }

    _dailyCaseLimitActiveUntil = 0;
  }
}

- (void)resetAPIRateLimit
{
  if (*&_apiRateLimitActiveUntil > 0.0)
  {
    v2 = logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_26C35F000, v2, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter: Resetting API rate limiter", v3, 2u);
    }

    _apiRateLimitActiveUntil = 0;
  }
}

- (void)submitDiagnosticIncidentEventForCaseSignature:(id)signature handledResult:(unint64_t)result dampeningResult:(unint64_t)dampeningResult closureType:(unint64_t)type
{
  signatureCopy = signature;
  v13 = [(SDRDiagnosticReporter *)self buildDiagnosticIncidentEventForCaseSignature:signatureCopy handledResult:result dampeningResult:dampeningResult closureType:type];
  v11 = v13;
  v12 = signatureCopy;
  AnalyticsSendEventLazy();
}

id __113__SDRDiagnosticReporter_submitDiagnosticIncidentEventForCaseSignature_handledResult_dampeningResult_closureType___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 objectForKeyedSubscript:@"domain"];
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"type"];
    v7 = [*(a1 + 32) objectForKeyedSubscript:@"subtype"];
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"detected"];
    v12 = 138544130;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_26C35F000, v4, OS_LOG_TYPE_INFO, "Submitting analytics for case domain=%{public}@ type=%{public}@ subtype=%{public}@ process=%{public}@ to CoreAnalytics", &v12, 0x2Au);
  }

  v9 = *(a1 + 40);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)buildDiagnosticIncidentEventForCaseSignature:(id)signature handledResult:(unint64_t)result dampeningResult:(unint64_t)dampeningResult closureType:(unint64_t)type
{
  v9 = MEMORY[0x277CBEB38];
  signatureCopy = signature;
  v11 = objc_alloc_init(v9);
  v12 = [signatureCopy objectForKeyedSubscript:@"domain"];
  [v11 setObject:v12 forKeyedSubscript:@"caseDomain"];

  v13 = [signatureCopy objectForKeyedSubscript:@"type"];
  [v11 setObject:v13 forKeyedSubscript:@"caseType"];

  v14 = [signatureCopy objectForKeyedSubscript:@"subtype"];
  [v11 setObject:v14 forKeyedSubscript:@"caseSubtype"];

  v15 = [signatureCopy objectForKeyedSubscript:@"additional"];
  [v11 setObject:v15 forKeyedSubscript:@"caseSubtypeContext"];

  v16 = [signatureCopy objectForKeyedSubscript:@"detected"];

  [v11 setObject:v16 forKeyedSubscript:@"caseDetectedProcess"];
  [v11 setObject:&stru_287CE89F8 forKeyedSubscript:@"caseIdentifier"];
  [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasGroupIdentifier"];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:result];
  [v11 setObject:v17 forKeyedSubscript:@"handledResult"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:dampeningResult];
  [v11 setObject:v18 forKeyedSubscript:@"dampeningResult"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [v11 setObject:v19 forKeyedSubscript:@"closureType"];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [SDRDiagnosticReporter buildDiagnosticIncidentEventForCaseSignature:handledResult:dampeningResult:closureType:];
  }

  return v11;
}

- (BOOL)snapshotWithSignature:(id)signature duration:(double)duration event:(id)event payload:(id)payload reply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  eventCopy = event;
  payloadCopy = payload;
  replyCopy = reply;
  v16 = replyCopy;
  if (isEnabled == 1)
  {
    if (eventCopy)
    {
      v24[0] = eventCopy;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    }

    else
    {
      v17 = 0;
    }

    v19 = [(SDRDiagnosticReporter *)self snapshotWithSignature:signatureCopy delay:v17 events:payloadCopy payload:0 actions:0 wantsRemoteCase:v16 reply:duration];
  }

  else
  {
    if (!replyCopy)
    {
      v19 = 0;
      goto LABEL_9;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SDRDiagnosticReporter_snapshotWithSignature_duration_event_payload_reply___block_invoke;
    block[3] = &unk_279D2CE10;
    v23 = replyCopy;
    dispatch_async(queue, block);
    v19 = 0;
    v17 = v23;
  }

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __76__SDRDiagnosticReporter_snapshotWithSignature_duration_event_payload_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)snapshotWithSignature:(id)signature delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply
{
  signatureCopy = signature;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  replyCopy = reply;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke;
  v26[3] = &unk_279D2CF00;
  v26[4] = self;
  v31 = &v34;
  v21 = replyCopy;
  v30 = v21;
  v22 = signatureCopy;
  v27 = v22;
  delayCopy = delay;
  v23 = eventsCopy;
  v28 = v23;
  v24 = actionsCopy;
  v29 = v24;
  caseCopy = case;
  [(SDRDiagnosticReporter *)self commonPreflightChecksForSignature:v22 payload:payloadCopy callback:v26];
  LOBYTE(self) = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  return self;
}

void __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_cold_1(a1);
    }

    v6 = [*(*(a1 + 32) + 8) remoteObjectProxy];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_cold_2();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else if (v6)
    {
LABEL_6:
      v7 = *(a1 + 80);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 88);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_2;
      v20[3] = &unk_279D2CE88;
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v20[4] = *(a1 + 32);
      v21 = v12;
      [v6 snapshotWithSignature:v8 delay:v7 events:v9 payload:v5 actions:v11 wantsRemoteCase:v10 reply:v20];

LABEL_14:
      goto LABEL_15;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_cold_3();
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = *(*(a1 + 32) + 16);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_169;
      v22[3] = &unk_279D2CE10;
      v23 = v15;
      dispatch_async(v16, v22);
      v6 = v23;
    }

    goto LABEL_14;
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_4;
    block[3] = &unk_279D2CEB0;
    v18 = v13;
    v19 = a2;
    dispatch_async(v14, block);
    v6 = v18;
    goto LABEL_14;
  }

LABEL_15:
}

void __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_169(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 10, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_3;
    v9 = &unk_279D2CE60;
    v11 = v4;
    v10 = v3;
    dispatch_async(v5, &v6);
  }

  [*(a1 + 32) parseCaseTriggerResponse:{v3, v6, v7, v8, v9}];
}

void __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, *(a1 + 40), 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)snapshotWithSignature:(id)signature withIDSDestinations:(id)destinations validFor:(double)for delay:(double)delay events:(id)events payload:(id)payload actions:(id)actions reply:(id)self0
{
  signatureCopy = signature;
  destinationsCopy = destinations;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  replyCopy = reply;
  v24 = replyCopy;
  if (isEnabled == 1)
  {
    v25 = [destinationsCopy count];
    if (v25)
    {
      v26 = [(SDRDiagnosticReporter *)self actionsDictionary:actionsCopy withIDSDestinations:destinationsCopy validFor:for];
    }

    else
    {
      v26 = actionsCopy;
    }

    v29 = v26;
    v28 = [(SDRDiagnosticReporter *)self snapshotWithSignature:signatureCopy delay:eventsCopy events:payloadCopy payload:v26 actions:v25 != 0 wantsRemoteCase:v24 reply:delay];
  }

  else
  {
    if (replyCopy)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __111__SDRDiagnosticReporter_snapshotWithSignature_withIDSDestinations_validFor_delay_events_payload_actions_reply___block_invoke;
      block[3] = &unk_279D2CE10;
      v32 = replyCopy;
      dispatch_async(queue, block);
    }

    v28 = 0;
  }

  return v28;
}

void __111__SDRDiagnosticReporter_snapshotWithSignature_withIDSDestinations_validFor_delay_events_payload_actions_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)startSessionWithSignature:(id)signature duration:(double)duration event:(id)event payload:(id)payload reply:(id)reply
{
  v24[1] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  eventCopy = event;
  payloadCopy = payload;
  replyCopy = reply;
  v16 = replyCopy;
  if (isEnabled == 1)
  {
    if (eventCopy)
    {
      v24[0] = eventCopy;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    }

    else
    {
      v17 = 0;
    }

    v19 = [(SDRDiagnosticReporter *)self startSessionWithSignature:signatureCopy duration:v17 events:payloadCopy payload:0 actions:0 wantsRemoteCase:v16 reply:duration];
  }

  else
  {
    if (!replyCopy)
    {
      v19 = 0;
      goto LABEL_9;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SDRDiagnosticReporter_startSessionWithSignature_duration_event_payload_reply___block_invoke;
    block[3] = &unk_279D2CE10;
    v23 = replyCopy;
    dispatch_async(queue, block);
    v19 = 0;
    v17 = v23;
  }

LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __80__SDRDiagnosticReporter_startSessionWithSignature_duration_event_payload_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)startSessionWithSignature:(id)signature duration:(double)duration events:(id)events payload:(id)payload actions:(id)actions wantsRemoteCase:(BOOL)case reply:(id)reply
{
  signatureCopy = signature;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  replyCopy = reply;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke;
  v26[3] = &unk_279D2CF28;
  v26[4] = self;
  v21 = replyCopy;
  v30 = v21;
  v31 = &v34;
  v22 = signatureCopy;
  v27 = v22;
  durationCopy = duration;
  v23 = eventsCopy;
  v28 = v23;
  v24 = actionsCopy;
  v29 = v24;
  caseCopy = case;
  [(SDRDiagnosticReporter *)self commonPreflightChecksForSignature:v22 payload:payloadCopy callback:v26];
  LOBYTE(self) = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  return self;
}

void __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = *(*(a1 + 32) + 8);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_2;
    v27[3] = &unk_279D2CE38;
    v7 = &v28;
    v8 = *(a1 + 64);
    v27[4] = *(a1 + 32);
    v28 = v8;
    v9 = [v6 remoteObjectProxyWithErrorHandler:v27];
    if (v9)
    {
      v10 = *(a1 + 80);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 88);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_2_173;
      v23[3] = &unk_279D2CE88;
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v23[4] = *(a1 + 32);
      v24 = v15;
      [v9 startSessionWithSignature:v11 duration:v10 events:v12 payload:v5 actions:v14 wantsRemoteCase:v13 reply:v23];
    }

    else
    {
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_cold_1();
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
      v18 = *(a1 + 64);
      if (v18)
      {
        v19 = *(*(a1 + 32) + 16);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_172;
        v25[3] = &unk_279D2CE10;
        v26 = v18;
        dispatch_async(v19, v25);

        goto LABEL_11;
      }
    }

LABEL_11:
    goto LABEL_12;
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_4;
    block[3] = &unk_279D2CEB0;
    v7 = &v21;
    v21 = v16;
    v22 = a2;
    dispatch_async(v17, block);
    goto LABEL_11;
  }

LABEL_12:
}

void __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_2_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_171;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_171(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 11, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_172(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 10, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_2_173(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_3;
    v9 = &unk_279D2CE60;
    v11 = v4;
    v10 = v3;
    dispatch_async(v5, &v6);
  }

  [*(a1 + 32) parseCaseTriggerResponse:{v3, v6, v7, v8, v9}];
}

void __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, *(a1 + 40), 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)startSessionWithSignature:(id)signature withIDSDestinations:(id)destinations validFor:(double)for duration:(double)duration events:(id)events payload:(id)payload actions:(id)actions reply:(id)self0
{
  signatureCopy = signature;
  destinationsCopy = destinations;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  replyCopy = reply;
  v24 = replyCopy;
  if (isEnabled == 1)
  {
    v25 = [destinationsCopy count];
    if (v25)
    {
      v26 = [(SDRDiagnosticReporter *)self actionsDictionary:actionsCopy withIDSDestinations:destinationsCopy validFor:for];
    }

    else
    {
      v26 = actionsCopy;
    }

    v29 = v26;
    v28 = [(SDRDiagnosticReporter *)self startSessionWithSignature:signatureCopy duration:eventsCopy events:payloadCopy payload:v26 actions:v25 != 0 wantsRemoteCase:v24 reply:duration];
  }

  else
  {
    if (replyCopy)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __118__SDRDiagnosticReporter_startSessionWithSignature_withIDSDestinations_validFor_duration_events_payload_actions_reply___block_invoke;
      block[3] = &unk_279D2CE10;
      v32 = replyCopy;
      dispatch_async(queue, block);
    }

    v28 = 0;
  }

  return v28;
}

void __118__SDRDiagnosticReporter_startSessionWithSignature_withIDSDestinations_validFor_duration_events_payload_actions_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)endSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (isEnabled == 1 && [sessionCopy length])
  {
    v6 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_175];
    v7 = v6;
    v8 = v6 != 0;
    if (v6)
    {
      [v6 endSession:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __36__SDRDiagnosticReporter_endSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __36__SDRDiagnosticReporter_endSession___block_invoke_cold_1();
  }
}

- (BOOL)cancelSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (isEnabled == 1 && [sessionCopy length])
  {
    v6 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_177];
    v7 = v6;
    v8 = v6 != 0;
    if (v6)
    {
      [v6 cancelSession:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __39__SDRDiagnosticReporter_cancelSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __39__SDRDiagnosticReporter_cancelSession___block_invoke_cold_1();
  }
}

- (BOOL)addToSession:(id)session event:(id)event payload:(id)payload reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  payloadCopy = payload;
  replyCopy = reply;
  if (event)
  {
    eventCopy = event;
    v13 = MEMORY[0x277CBEA60];
    eventCopy2 = event;
    event = [v13 arrayWithObjects:&eventCopy count:1];
  }

  v15 = [(SDRDiagnosticReporter *)self addToSession:sessionCopy events:event payload:payloadCopy reply:replyCopy, eventCopy, v19];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)addToSession:(id)session events:(id)events payload:(id)payload reply:(id)reply
{
  sessionCopy = session;
  eventsCopy = events;
  payloadCopy = payload;
  replyCopy = reply;
  v14 = replyCopy;
  if (isEnabled == 1)
  {
    if (eventsCopy | payloadCopy && [sessionCopy length])
    {
      connection = self->_connection;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke;
      v29[3] = &unk_279D2CE38;
      v16 = &v30;
      v17 = v14;
      v29[4] = self;
      v30 = v17;
      v18 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v29];
      v19 = v18 != 0;
      if (v18)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_2;
        v27[3] = &unk_279D2CE88;
        v27[4] = self;
        v28 = v17;
        [v18 addToSession:sessionCopy events:eventsCopy payload:payloadCopy reply:v27];
      }

      goto LABEL_12;
    }

    if (v14)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_4;
      block[3] = &unk_279D2CE10;
      v16 = &v26;
      v26 = v14;
      v21 = block;
      goto LABEL_11;
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  if (!replyCopy)
  {
    goto LABEL_13;
  }

  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_5;
  v23[3] = &unk_279D2CE10;
  v16 = &v24;
  v24 = replyCopy;
  v21 = v23;
LABEL_11:
  dispatch_async(queue, v21);
  v19 = 0;
LABEL_12:

LABEL_14:
  return v19;
}

void __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_178;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_178(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 11, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_3;
    v6[3] = &unk_279D2CE60;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 20, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)addSignatureContentForSession:(id)session key:(id)key content:(id)content reply:(id)reply
{
  sessionCopy = session;
  keyCopy = key;
  contentCopy = content;
  replyCopy = reply;
  v14 = replyCopy;
  if (isEnabled == 1)
  {
    if ([keyCopy length] && objc_msgSend(contentCopy, "length") && objc_msgSend(sessionCopy, "length"))
    {
      connection = self->_connection;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke;
      v29[3] = &unk_279D2CE38;
      v16 = &v30;
      v17 = v14;
      v29[4] = self;
      v30 = v17;
      v18 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v29];
      v19 = v18 != 0;
      if (v18)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_2;
        v27[3] = &unk_279D2CE88;
        v27[4] = self;
        v28 = v17;
        [v18 addSignatureContentForSession:sessionCopy key:keyCopy content:contentCopy reply:v27];
      }

      goto LABEL_13;
    }

    if (v14)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_4;
      block[3] = &unk_279D2CE10;
      v16 = &v26;
      v26 = v14;
      v21 = block;
      goto LABEL_12;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (!replyCopy)
  {
    goto LABEL_14;
  }

  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_5;
  v23[3] = &unk_279D2CE10;
  v16 = &v24;
  v24 = replyCopy;
  v21 = v23;
LABEL_12:
  dispatch_async(queue, v21);
  v19 = 0;
LABEL_13:

LABEL_15:
  return v19;
}

void __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_179;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_179(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 11, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_3;
    v6[3] = &unk_279D2CE60;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 20, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (BOOL)getDiagnosticPayloadsForSignatures:(id)signatures reply:(id)reply
{
  signaturesCopy = signatures;
  replyCopy = reply;
  v8 = replyCopy;
  if (isEnabled == 1)
  {
    connection = self->_connection;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke;
    v24[3] = &unk_279D2CE38;
    v10 = &v25;
    v11 = replyCopy;
    v24[4] = self;
    v25 = v11;
    v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v24];
    v13 = v12 != 0;
    if (v12)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_2;
      v22[3] = &unk_279D2CF98;
      v14 = &v23;
      v22[4] = self;
      v23 = v11;
      [v12 getDiagnosticPayloadsForSignatures:signaturesCopy reply:v22];
    }

    else
    {
      if (!v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_4;
      block[3] = &unk_279D2CE10;
      v14 = &v21;
      v21 = v11;
      dispatch_async(queue, block);
    }

    goto LABEL_9;
  }

  if (!replyCopy)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_5;
  v18[3] = &unk_279D2CE10;
  v10 = &v19;
  v19 = replyCopy;
  dispatch_async(v15, v18);
  v13 = 0;
LABEL_10:

LABEL_11:
  return v13;
}

void __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_180;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_180(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:32 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_3;
    block[3] = &unk_279D2CF70;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (BOOL)triggerRemoteSessionForSignature:(id)signature caseGroupID:(id)d reply:(id)reply
{
  signatureCopy = signature;
  dCopy = d;
  replyCopy = reply;
  v11 = replyCopy;
  if (isEnabled != 1)
  {
    if (replyCopy)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_4;
      block[3] = &unk_279D2CE10;
      v20 = replyCopy;
      dispatch_async(queue, block);
    }

    goto LABEL_11;
  }

  if (![signatureCopy count] || !objc_msgSend(dCopy, "length"))
  {
    if (v11)
    {
      v17 = responseDict(0, 20, 0, 0, 0);
      (v11)[2](v11, v17);
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  connection = self->_connection;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke;
  v23[3] = &unk_279D2CE38;
  v13 = v11;
  v23[4] = self;
  v24 = v13;
  v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v23];
  v15 = v14 != 0;
  if (v14)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_2;
    v21[3] = &unk_279D2CE88;
    v21[4] = self;
    v22 = v13;
    [v14 triggerRemoteSessionForSignature:signatureCopy groupIdentifier:dCopy reply:v21];
  }

LABEL_12:
  return v15;
}

void __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_183;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_183(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 11, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

void __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_3;
    v6[3] = &unk_279D2CE60;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = responseDict(0, 1, 0, 0, 0);
  (*(v1 + 16))(v1, v2);
}

- (void)casesListCallbackWithResult:(id)result service:(id)service identifier:(id)identifier count:(unint64_t)count container:(id)container reply:(id)reply
{
  resultCopy = result;
  serviceCopy = service;
  identifierCopy = identifier;
  containerCopy = container;
  replyCopy = reply;
  if ([resultCopy count])
  {
    [containerCopy addObjectsFromArray:resultCopy];
    lastObject = [containerCopy lastObject];
    v20 = [lastObject objectForKeyedSubscript:@"case_identifier"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __94__SDRDiagnosticReporter_casesListCallbackWithResult_service_identifier_count_container_reply___block_invoke;
    v25[3] = &unk_279D2CFC0;
    v25[4] = self;
    v26 = serviceCopy;
    v27 = identifierCopy;
    countCopy = count;
    v28 = containerCopy;
    v29 = replyCopy;
    [v26 getCasesListFromIdentifier:v20 count:count reply:v25];

LABEL_5:
    goto LABEL_6;
  }

  if (replyCopy)
  {
    queue = self->_queue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__SDRDiagnosticReporter_casesListCallbackWithResult_service_identifier_count_container_reply___block_invoke_2;
    v22[3] = &unk_279D2CE60;
    v24 = replyCopy;
    v23 = containerCopy;
    dispatch_async(queue, v22);

    lastObject = v24;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)getAllDiagnosticCasesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = replyCopy;
  if (isEnabled == 1)
  {
    connection = self->_connection;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke;
    v23[3] = &unk_279D2CE38;
    v7 = &v24;
    v8 = replyCopy;
    v23[4] = self;
    v24 = v8;
    v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v23];
    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_2;
      v18[3] = &unk_279D2CFE8;
      v18[4] = self;
      v22 = 10;
      v19 = v9;
      v20 = v10;
      v21 = v8;
      v11 = v10;
      [v19 getCasesListFromIdentifier:0 count:10 reply:v18];
    }

    else
    {
      if (!v8)
      {
LABEL_9:

        goto LABEL_10;
      }

      queue = self->_queue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_3;
      v16[3] = &unk_279D2CE10;
      v17 = v8;
      dispatch_async(queue, v16);
      v11 = v17;
    }

    goto LABEL_9;
  }

  if (replyCopy)
  {
    v12 = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_4;
    block[3] = &unk_279D2CE10;
    v7 = &v15;
    v15 = replyCopy;
    dispatch_async(v12, block);
LABEL_10:
  }
}

void __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_185;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_185(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:53 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)caseSummariesListCallbackWithResult:(id)result service:(id)service caseSummaryType:(id)type count:(unint64_t)count container:(id)container reply:(id)reply
{
  resultCopy = result;
  serviceCopy = service;
  typeCopy = type;
  containerCopy = container;
  replyCopy = reply;
  if ([resultCopy count])
  {
    [containerCopy addObjectsFromArray:resultCopy];
    lastObject = [resultCopy lastObject];
    v20 = [lastObject objectForKeyedSubscript:@"caseID"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __107__SDRDiagnosticReporter_caseSummariesListCallbackWithResult_service_caseSummaryType_count_container_reply___block_invoke;
    v25[3] = &unk_279D2CFC0;
    v25[4] = self;
    v26 = serviceCopy;
    v27 = typeCopy;
    countCopy = count;
    v28 = containerCopy;
    v29 = replyCopy;
    [v26 listCaseSummariesOfType:v27 fromIdentifier:v20 count:count reply:v25];

LABEL_5:
    goto LABEL_6;
  }

  if (replyCopy)
  {
    queue = self->_queue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __107__SDRDiagnosticReporter_caseSummariesListCallbackWithResult_service_caseSummaryType_count_container_reply___block_invoke_2;
    v22[3] = &unk_279D2CE60;
    v24 = replyCopy;
    v23 = containerCopy;
    dispatch_async(queue, v22);

    lastObject = v24;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)getDiagnosticCaseSummariesOfType:(id)type reply:(id)reply
{
  typeCopy = type;
  replyCopy = reply;
  v8 = replyCopy;
  if (isEnabled == 1)
  {
    connection = self->_connection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke;
    v28[3] = &unk_279D2CE38;
    v10 = replyCopy;
    v28[4] = self;
    v29 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v28];
    if (v11)
    {
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy_;
      v26[4] = __Block_byref_object_dispose_;
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_2;
      v20[3] = &unk_279D2D010;
      v20[4] = self;
      v21 = v11;
      v24 = v26;
      v25 = 10;
      v22 = typeCopy;
      v23 = v10;
      [v21 listCaseSummariesOfType:v22 fromIdentifier:0 count:10 reply:v20];

      _Block_object_dispose(v26, 8);
      v12 = v27;
    }

    else
    {
      if (!v10)
      {
LABEL_9:
        v14 = &v29;

        goto LABEL_10;
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_3;
      block[3] = &unk_279D2CE10;
      v19 = v10;
      dispatch_async(queue, block);
      v12 = v19;
    }

    goto LABEL_9;
  }

  if (replyCopy)
  {
    v13 = self->_queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_4;
    v16[3] = &unk_279D2CE10;
    v14 = &v17;
    v17 = replyCopy;
    dispatch_async(v13, v16);
LABEL_10:
  }
}

void __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_190;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_190(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:53 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)getDiagnosticCaseSummariesWithIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  v8 = replyCopy;
  if (isEnabled == 1)
  {
    connection = self->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke;
    v22[3] = &unk_279D2CE38;
    v10 = &v23;
    v11 = replyCopy;
    v22[4] = self;
    v23 = v11;
    v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
    if (v12)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_2;
      v20[3] = &unk_279D2D038;
      v13 = &v21;
      v20[4] = self;
      v21 = v11;
      [v12 listCaseSummariesWithIdentifiers:identifiersCopy reply:v20];
    }

    else
    {
      if (!v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_4;
      block[3] = &unk_279D2CE10;
      v13 = &v19;
      v19 = v11;
      dispatch_async(queue, block);
    }

    goto LABEL_9;
  }

  if (replyCopy)
  {
    v14 = self->_queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_5;
    v16[3] = &unk_279D2CE10;
    v10 = &v17;
    v17 = replyCopy;
    dispatch_async(v14, v16);
LABEL_10:
  }
}

void __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_191;
    block[3] = &unk_279D2CE10;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_191(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:53 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_3;
    v6[3] = &unk_279D2CE60;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)purgeAutoBugCaptureFilesWithSubPaths:(id)paths reply:(id)reply
{
  pathsCopy = paths;
  replyCopy = reply;
  v8 = replyCopy;
  if (isEnabled == 1)
  {
    connection = self->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__SDRDiagnosticReporter_purgeAutoBugCaptureFilesWithSubPaths_reply___block_invoke;
    v14[3] = &unk_279D2D060;
    v10 = replyCopy;
    v15 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
    if (v11)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __68__SDRDiagnosticReporter_purgeAutoBugCaptureFilesWithSubPaths_reply___block_invoke_192;
      v12[3] = &unk_279D2D088;
      v13 = v10;
      [v11 purgeAutoBugCaptureFilesWithSubPaths:pathsCopy reply:v12];

LABEL_9:
      goto LABEL_10;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [SDRDiagnosticReporter purgeAutoBugCaptureFilesWithSubPaths:reply:];
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    else if (!v10)
    {
      goto LABEL_9;
    }

    (*(v10 + 2))(v10, 0);
    goto LABEL_9;
  }

  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 0);
  }

LABEL_10:
}

void __68__SDRDiagnosticReporter_purgeAutoBugCaptureFilesWithSubPaths_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __68__SDRDiagnosticReporter_purgeAutoBugCaptureFilesWithSubPaths_reply___block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }
}

uint64_t __68__SDRDiagnosticReporter_purgeAutoBugCaptureFilesWithSubPaths_reply___block_invoke_192(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getAutoBugCaptureConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (isEnabled == 1)
  {
    objc_initWeak(&location, self);
    connection = self->_connection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__SDRDiagnosticReporter_getAutoBugCaptureConfiguration___block_invoke;
    v11[3] = &unk_279D2D0B0;
    objc_copyWeak(&v13, &location);
    v6 = configurationCopy;
    v12 = v6;
    v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __56__SDRDiagnosticReporter_getAutoBugCaptureConfiguration___block_invoke_195;
        v8[3] = &unk_279D2D0D8;
        objc_copyWeak(&v10, &location);
        v9 = v6;
        [v7 getAutoBugCaptureConfiguration:v8];

        objc_destroyWeak(&v10);
      }
    }

    else
    {
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        [SDRDiagnosticReporter getAutoBugCaptureConfiguration:];
      }

      [(SDRDiagnosticReporter *)self _replyOnQueueToBlock:v6 withConfig:0];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [SDRDiagnosticReporter getAutoBugCaptureConfiguration:];
    }

    [(SDRDiagnosticReporter *)self _replyOnQueueToBlock:configurationCopy withConfig:0];
  }
}

void __56__SDRDiagnosticReporter_getAutoBugCaptureConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __56__SDRDiagnosticReporter_getAutoBugCaptureConfiguration___block_invoke_cold_1();
  }

  [(SDRDiagnosticReporter *)WeakRetained _replyOnQueueToBlock:0 withConfig:?];
}

- (void)_replyOnQueueToBlock:(void *)block withConfig:
{
  v5 = a2;
  blockCopy = block;
  if (self && v5)
  {
    queue = [self queue];

    if (queue)
    {
      queue2 = [self queue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __57__SDRDiagnosticReporter__replyOnQueueToBlock_withConfig___block_invoke;
      v9[3] = &unk_279D2CE60;
      v11 = v5;
      v10 = blockCopy;
      dispatch_async(queue2, v9);
    }

    else
    {
      (*(v5 + 2))(v5, blockCopy);
    }
  }
}

void __56__SDRDiagnosticReporter_getAutoBugCaptureConfiguration___block_invoke_195(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(SDRDiagnosticReporter *)WeakRetained _replyOnQueueToBlock:v3 withConfig:?];
}

- (SDRDiagnosticReporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)isABCEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x14u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__SDRDiagnosticReporter_setupXPCInterface__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__SDRDiagnosticReporter_groupCaseIdentifierForSignature_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_payloadAugmentedWithSandboxExtensionTokensDict:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 134218240;
  v8 = [a2 count];
  v9 = 2048;
  v10 = [a3 count];
  _os_log_error_impl(&dword_26C35F000, v5, OS_LOG_TYPE_ERROR, "SDRDiagnosticReporter: Failed to grant sandbox extensions for all payloads (%ld required, %ld granted)", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)commonPreflightChecksForSignature:payload:callback:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)commonPreflightChecksForSignature:payload:callback:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)buildDiagnosticIncidentEventForCaseSignature:handledResult:dampeningResult:closureType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__SDRDiagnosticReporter_snapshotWithSignature_delay_events_payload_actions_wantsRemoteCase_reply___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __105__SDRDiagnosticReporter_startSessionWithSignature_duration_events_payload_actions_wantsRemoteCase_reply___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_26C35F000, v0, OS_LOG_TYPE_ERROR, "SDRDiagnosticReporter: (startSessionWithSignature:) Remote XPC error %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __36__SDRDiagnosticReporter_endSession___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __39__SDRDiagnosticReporter_cancelSession___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__SDRDiagnosticReporter_addToSession_events_payload_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SDRDiagnosticReporter_addSignatureContentForSession_key_content_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __66__SDRDiagnosticReporter_getDiagnosticPayloadsForSignatures_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__SDRDiagnosticReporter_triggerRemoteSessionForSignature_caseGroupID_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__SDRDiagnosticReporter_getAllDiagnosticCasesWithReply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__SDRDiagnosticReporter_getDiagnosticCaseSummariesOfType_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SDRDiagnosticReporter_getDiagnosticCaseSummariesWithIdentifiers_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeAutoBugCaptureFilesWithSubPaths:reply:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __68__SDRDiagnosticReporter_purgeAutoBugCaptureFilesWithSubPaths_reply___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getAutoBugCaptureConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getAutoBugCaptureConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__SDRDiagnosticReporter_getAutoBugCaptureConfiguration___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end