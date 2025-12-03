@interface TRIAllocationStatusDefaultProvider
- (BOOL)enumerateActiveRolloutsWithError:(id *)error block:(id)block;
- (BOOL)enumerateSampledActiveRolloutsForCorrelationID:(id)d error:(id *)error block:(id)block;
- (BOOL)isOptedOutOfExperimentation;
- (BOOL)removeUpdateHandlerForToken:(id)token;
- (id)_defaultQueue;
- (id)activeExperimentInformationWithEnvironments:(id)environments error:(id *)error;
- (id)enumerateExperimentStatusesForEnvironment:(int)environment startingFromCursor:(id)cursor error:(id *)error block:(id)block;
- (id)initForTrialdSystem:(BOOL)system;
- (void)dealloc;
@end

@implementation TRIAllocationStatusDefaultProvider

- (id)initForTrialdSystem:(BOOL)system
{
  systemCopy = system;
  v50.receiver = self;
  v50.super_class = TRIAllocationStatusDefaultProvider;
  v4 = [(TRIAllocationStatusDefaultProvider *)&v50 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2843810F0];
    v6 = objc_autoreleasePoolPush();
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    [v5 setClasses:v7 forSelector:sel_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion_ argumentIndex:0 ofReply:1];

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    [v5 setClasses:v11 forSelector:sel_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion_ argumentIndex:1 ofReply:1];

    v12 = objc_autoreleasePoolPush();
    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    [v5 setClasses:v13 forSelector:sel_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion_ argumentIndex:2 ofReply:1];

    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    v16 = objc_opt_class();
    v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v14);
    [v5 setClasses:v17 forSelector:sel_experimentRecordsWithDeploymentEnvironments_completion_ argumentIndex:0 ofReply:1];

    v18 = objc_autoreleasePoolPush();
    v19 = objc_alloc(MEMORY[0x277CBEB98]);
    v20 = objc_opt_class();
    v21 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    [v5 setClasses:v21 forSelector:sel_rolloutRecordsWithCompletion_ argumentIndex:0 ofReply:1];

    v22 = objc_autoreleasePoolPush();
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    v24 = objc_opt_class();
    v25 = [v23 initWithObjects:{v24, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v22);
    [v5 setClasses:v25 forSelector:sel_rolloutAllocationStatusWithCompletion_ argumentIndex:0 ofReply:1];

    if (systemCopy)
    {
      v26 = 4096;
    }

    else
    {
      v26 = 0;
    }

    if (systemCopy)
    {
      v27 = @"com.apple.triald.system.internal";
    }

    else
    {
      v27 = @"com.apple.triald.internal";
    }

    if (systemCopy)
    {
      v28 = @"com.apple.trial.system.status";
    }

    else
    {
      v28 = @"com.apple.trial.status";
    }

    v29 = objc_alloc(MEMORY[0x277D42650]);
    v30 = TRILogCategory_ClientFramework();
    v31 = [v29 initWithServiceName:v28 connectionOptions:v26 allowlistedServerInterface:v5 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_15 invalidationHandler:&__block_literal_global_103 logHandle:v30];
    clientHelper = v4->_clientHelper;
    v4->_clientHelper = v31;

    v33 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284381150];
    v34 = objc_autoreleasePoolPush();
    v35 = objc_alloc(MEMORY[0x277CBEB98]);
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v35 initWithObjects:{v36, v37, v38, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v34);
    [v33 setClasses:v39 forSelector:sel_activeExperimentInformationWithEnvironments_completion_ argumentIndex:0 ofReply:1];

    v40 = objc_alloc(MEMORY[0x277D42650]);
    v41 = TRILogCategory_ClientFramework();
    v42 = [v40 initWithServiceName:v27 connectionOptions:v26 allowlistedServerInterface:v33 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_156 invalidationHandler:&__block_literal_global_158 logHandle:v41];
    internalHelper = v4->_internalHelper;
    v4->_internalHelper = v42;

    v44 = objc_opt_new();
    v45 = objc_opt_new();
    v46 = v44[1];
    v44[1] = v45;

    v47 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v44];
    lock = v4->_lock;
    v4->_lock = v47;
  }

  return v4;
}

- (void)dealloc
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_164];
  v3.receiver = self;
  v3.super_class = TRIAllocationStatusDefaultProvider;
  [(TRIAllocationStatusDefaultProvider *)&v3 dealloc];
}

void __45__TRIAllocationStatusDefaultProvider_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a2 + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        notify_cancel([*(*(&v8 + 1) + 8 * v6++) intValue]);
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_defaultQueue
{
  if (qword_27DA7F9B8 != -1)
  {
    dispatch_once(&qword_27DA7F9B8, &__block_literal_global_168);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

void __51__TRIAllocationStatusDefaultProvider__defaultQueue__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.status" qosClass:17];
  v2 = _MergedGlobals_3;
  _MergedGlobals_3 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)enumerateExperimentStatusesForEnvironment:(int)environment startingFromCursor:(id)cursor error:(id *)error block:(id)block
{
  v110[1] = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    v8 = dispatch_semaphore_create(0);
    *v100 = 0;
    v101 = v100;
    v102 = 0x3032000000;
    v103 = __Block_byref_object_copy__7;
    v104 = __Block_byref_object_dispose__7;
    v105 = 0;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke;
    v97[3] = &unk_27885EE28;
    v99 = v100;
    v55 = v8;
    v98 = v55;
    v49 = MEMORY[0x2318F2490](v97);
    v56 = [(_PASXPCClientHelper *)self->_clientHelper remoteObjectProxyWithErrorHandler:v49];
    if (cursorCopy)
    {
      [cursorCopy date];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v58 = ;
    v11 = 0;
    v51 = *MEMORY[0x277CCA450];
    while (1)
    {
      if (v11)
      {
        v45 = [TRIAllocationStatusCursor alloc];
        [v58 timeIntervalSince1970];
        v10 = [(TRIAllocationStatusCursor *)v45 initWithSecondsFromEpoch:?];
        goto LABEL_52;
      }

      v91 = 0;
      v92 = &v91;
      v93 = 0x3032000000;
      v94 = __Block_byref_object_copy__7;
      v95 = __Block_byref_object_dispose__7;
      v96 = 0;
      v85 = 0;
      v86 = &v85;
      v87 = 0x3032000000;
      v88 = __Block_byref_object_copy__7;
      v89 = __Block_byref_object_dispose__7;
      v90 = 0;
      v79 = 0;
      v80 = &v79;
      v81 = 0x3032000000;
      v82 = __Block_byref_object_copy__7;
      v83 = __Block_byref_object_dispose__7;
      v84 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x3032000000;
      v76 = __Block_byref_object_copy__7;
      v77 = __Block_byref_object_dispose__7;
      v78 = 0;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke_2;
      v67[3] = &unk_27885EE50;
      v12 = v55;
      v68 = v12;
      v69 = &v91;
      v70 = &v85;
      v71 = &v79;
      v72 = &v73;
      [v56 experimentHistoryRecordsWithLimit:100 newerThanDate:v58 deploymentEnvironment:environment completion:v67];
      if ([MEMORY[0x277D425A0] waitForSemaphore:v12 timeoutSeconds:10.0])
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = NSStringFromSelector(a2);
        v15 = [v13 stringWithFormat:@"Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", v14];

        if (error)
        {
          v16 = objc_alloc(MEMORY[0x277CCA9B8]);
          v109 = v51;
          v110[0] = v15;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:&v109 count:1];
          *error = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:7 userInfo:v17];
        }

        v18 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v44 = NSStringFromSelector(a2);
          *buf = 138412290;
          v108 = v44;
          _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", buf, 0xCu);
        }
      }

      else
      {
        v20 = *(v101 + 5);
        if (v20)
        {
          if (error)
          {
            v21 = v20;
LABEL_25:
            v11 = 0;
            v19 = 0;
            *error = v21;
            goto LABEL_20;
          }
        }

        else
        {
          if (v92[5])
          {
            v22 = v74[5];
            if (v22)
            {
              v23 = v22;

              v58 = v23;
            }

            v62 = +[TRIAllocationStatus internalToExternalStatusMapping];
            buf[0] = 0;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            obj = v92[5];
            v24 = [obj countByEnumeratingWithState:&v63 objects:v106 count:16];
            if (!v24)
            {
LABEL_48:

              v42 = [v80[5] intValue] < 0x64;
              v43 = buf[0];

              v11 = v42 | v43;
              v19 = 1;
              goto LABEL_20;
            }

            v60 = *v64;
            while (2)
            {
              v25 = 0;
              v61 = v24;
LABEL_32:
              if (*v64 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v63 + 1) + 8 * v25);
              v27 = objc_autoreleasePoolPush();
              v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v26, "eventType")}];
              v29 = [v62 objectForKeyedSubscript:v28];
              intValue = [v29 intValue];

              if (!intValue)
              {
                goto LABEL_40;
              }

              namespaces = [v26 namespaces];
              if (!namespaces)
              {
                goto LABEL_40;
              }

              treatmentId = [v26 treatmentId];
              if (treatmentId == @"unspecified-or-default-treatment")
              {
                v41 = 7;
                goto LABEL_43;
              }

              v33 = [v26 deploymentId] == -1;

              if (!v33)
              {
                v34 = [TRIExperimentAllocationStatus alloc];
                eventDate = [v26 eventDate];
                experimentId = [v26 experimentId];
                deploymentId = [v26 deploymentId];
                treatmentId2 = [v26 treatmentId];
                namespaces2 = [v26 namespaces];
                namespaces = [(TRIExperimentAllocationStatus *)v34 initWithType:intValue date:eventDate experimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId2 namespaces:namespaces2];

                blockCopy[2](blockCopy, namespaces, buf);
                if (buf[0] == 1)
                {
                  eventDate2 = [v26 eventDate];

                  v41 = 6;
                  v58 = eventDate2;
                }

                else
                {
                  v41 = 0;
                }

LABEL_43:
              }

              else
              {
LABEL_40:
                v41 = 7;
              }

              objc_autoreleasePoolPop(v27);
              if (v41 != 7 && v41)
              {
                goto LABEL_48;
              }

              if (v61 == ++v25)
              {
                v24 = [obj countByEnumeratingWithState:&v63 objects:v106 count:16];
                if (!v24)
                {
                  goto LABEL_48;
                }

                continue;
              }

              goto LABEL_32;
            }
          }

          if (error)
          {
            v21 = v86[5];
            goto LABEL_25;
          }
        }
      }

      v11 = 0;
      v19 = 0;
LABEL_20:

      _Block_object_dispose(&v73, 8);
      _Block_object_dispose(&v79, 8);

      _Block_object_dispose(&v85, 8);
      _Block_object_dispose(&v91, 8);

      if ((v19 & 1) == 0)
      {
        v10 = 0;
LABEL_52:

        _Block_object_dispose(v100, 8);
        goto LABEL_53;
      }
    }
  }

  v9 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v100 = 0;
    _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "unable to enumerate experiment statuses while device is class C locked", v100, 2u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_53:

  v46 = *MEMORY[0x277D85DE8];

  return v10;
}

void __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __111__TRIAllocationStatusDefaultProvider_enumerateExperimentStatusesForEnvironment_startingFromCursor_error_block___block_invoke_3;
  v18[3] = &unk_27885E190;
  v19 = *(a1 + 32);
  v14 = MEMORY[0x2318F2490](v18);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v12;
  v17 = v12;

  if (v14)
  {
    v14[2](v14);
  }
}

void __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v31 = a3;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __91__TRIAllocationStatusDefaultProvider_enumerateActiveExperimentsForEnvironment_error_block___block_invoke_3;
  v49[3] = &unk_27885E190;
  v34 = a1;
  v50 = *(a1 + 32);
  v32 = MEMORY[0x2318F2490](v49);
  if (v33)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v33;
    v39 = [obj countByEnumeratingWithState:&v45 objects:v52 count:{16, v31}];
    if (v39)
    {
      v38 = *v46;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v45 + 1) + 8 * i);
          if ([v8 status] == 1)
          {
            v9 = [v8 treatmentId];
            v10 = v9 == 0;

            if (!v10)
            {
              v11 = objc_opt_new();
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v12 = [v8 namespaces];
              v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
              if (v13)
              {
                v14 = *v42;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v42 != v14)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v16 = *(*(&v41 + 1) + 8 * j);
                    v17 = [TRIVersionedNamespace alloc];
                    v18 = [v16 name];
                    v19 = -[TRIVersionedNamespace initWithName:compatibilityVersion:](v17, "initWithName:compatibilityVersion:", v18, [v16 compatibilityVersion]);
                    [v11 addObject:v19];
                  }

                  v13 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
                }

                while (v13);
              }

              v37 = *(*(*(v34 + 48) + 8) + 40);
              v20 = [TRIExperimentAllocationStatus alloc];
              v21 = [v8 startDate];
              v22 = v21;
              if (!v21)
              {
                v35 = objc_opt_new();
                v22 = v35;
              }

              v23 = [v8 experimentDeployment];
              v24 = [v23 experimentId];
              v25 = [v8 experimentDeployment];
              v26 = [v25 deploymentId];
              v27 = [v8 treatmentId];
              v28 = [(TRIExperimentAllocationStatus *)v20 initWithType:2 date:v22 experimentId:v24 deploymentId:v26 treatmentId:v27 namespaces:v11];
              [v37 addObject:v28];

              if (!v21)
              {
              }
            }
          }
        }

        v39 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v39);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v29 = v32;
  if (v32)
  {
    (*(v32 + 2))();
    v29 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)enumerateActiveRolloutsWithError:(id *)error block:(id)block
{
  v65[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    v8 = dispatch_semaphore_create(0);
    *v55 = 0;
    v56 = v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__7;
    v59 = __Block_byref_object_dispose__7;
    v60 = 0;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke;
    v52[3] = &unk_27885EE28;
    v54 = v55;
    v9 = v8;
    v53 = v9;
    v10 = MEMORY[0x2318F2490](v52);
    v11 = [(_PASXPCClientHelper *)self->_clientHelper remoteObjectProxyWithErrorHandler:v10];
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__7;
    v50 = __Block_byref_object_dispose__7;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__7;
    v44 = __Block_byref_object_dispose__7;
    v45 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke_2;
    v36[3] = &unk_27885EE78;
    v12 = v9;
    v37 = v12;
    v38 = &v40;
    v39 = &v46;
    [v11 rolloutAllocationStatusWithCompletion:v36];
    if ([MEMORY[0x277D425A0] waitForSemaphore:v12 timeoutSeconds:10.0])
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromSelector(a2);
      v15 = [v13 stringWithFormat:@"Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", v14];

      if (error)
      {
        v16 = objc_alloc(MEMORY[0x277CCA9B8]);
        v64 = *MEMORY[0x277CCA450];
        v65[0] = v15;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
        *error = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:7 userInfo:v17];
      }

      v18 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v30 = NSStringFromSelector(a2);
        *buf = 138412290;
        v63 = v30;
        _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "Timeout while attempting to invoke method on TRIXPCStatusServiceProtocol proxy object from: %@.", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v21 = *(v56 + 5);
    if (v21)
    {
      if (!error)
      {
LABEL_10:
        v19 = 0;
LABEL_11:

        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(&v46, 8);

        _Block_object_dispose(v55, 8);
        goto LABEL_21;
      }

      v22 = v21;
    }

    else
    {
      v25 = v47[5];
      if (v25)
      {
        buf[0] = 0;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v32 objects:v61 count:16];
        if (v27)
        {
          v28 = *v33;
LABEL_25:
          v29 = 0;
          while (1)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v26);
            }

            blockCopy[2](blockCopy, *(*(&v32 + 1) + 8 * v29), buf);
            if (buf[0])
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v26 countByEnumeratingWithState:&v32 objects:v61 count:16];
              if (v27)
              {
                goto LABEL_25;
              }

              break;
            }
          }
        }

        v19 = 1;
        goto LABEL_11;
      }

      if (!error)
      {
        goto LABEL_10;
      }

      v22 = v41[5];
    }

    v19 = 0;
    *error = v22;
    goto LABEL_11;
  }

  v20 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v55 = 0;
    _os_log_error_impl(&dword_22EA6B000, v20, OS_LOG_TYPE_ERROR, "unable to enumerate active rollouts while device is class C locked", v55, 2u);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

void __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__TRIAllocationStatusDefaultProvider_enumerateActiveRolloutsWithError_block___block_invoke_3;
  v13[3] = &unk_27885E190;
  v14 = *(a1 + 32);
  v7 = MEMORY[0x2318F2490](v13);
  v8 = 40;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v8 = 48;
    v9 = v5;
  }

  v10 = *(*(a1 + v8) + 8);
  v11 = v9;
  v12 = *(v10 + 40);
  *(v10 + 40) = v11;

  if (v7)
  {
    v7[2](v7);
  }
}

- (BOOL)enumerateSampledActiveRolloutsForCorrelationID:(id)d error:(id *)error block:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:497 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = objc_opt_new();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __97__TRIAllocationStatusDefaultProvider_enumerateSampledActiveRolloutsForCorrelationID_error_block___block_invoke;
  v26[3] = &unk_27885EEC8;
  v26[4] = &v27;
  [(TRIAllocationStatusDefaultProvider *)self enumerateActiveRolloutsWithError:error block:v26];
  if ([MEMORY[0x277D42590] isInternalBuild])
  {
    v11 = v28[5];
  }

  else
  {
    v11 = [TRIAllocationStatus sampleAllocationStatuses:v28[5] correlationId:dCopy nrSamples:2];
  }

  v25 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v13)
  {
    v14 = *v22;
LABEL_8:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v21 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v16, &v25);
      LOBYTE(v16) = v25;
      objc_autoreleasePoolPop(v17);
      if (v16)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v13)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

void __87__TRIAllocationStatusDefaultProvider_addStatusUpdateHandlerForEnvironment_queue_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 addObject:v3];
}

- (BOOL)removeUpdateHandlerForToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    token = [tokenCopy token];
    if (!notify_cancel(token))
    {
      lock = self->_lock;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __66__TRIAllocationStatusDefaultProvider_removeUpdateHandlerForToken___block_invoke;
      v9[3] = &__block_descriptor_36_e48_v16__0__TRIAllocationStatusProviderGuardedData_8l;
      v10 = token;
      [(_PASLock *)lock runWithLockAcquired:v9];
LABEL_6:
      v6 = 1;
      goto LABEL_7;
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

void __66__TRIAllocationStatusDefaultProvider_removeUpdateHandlerForToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  [v2 removeObject:v3];
}

- (id)activeExperimentInformationWithEnvironments:(id)environments error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  environmentsCopy = environments;
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__7;
    v26 = __Block_byref_object_dispose__7;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __88__TRIAllocationStatusDefaultProvider_activeExperimentInformationWithEnvironments_error___block_invoke;
    v21[3] = &unk_27885EF10;
    v21[4] = buf;
    v7 = MEMORY[0x2318F2490](v21);
    v8 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v7];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__7;
    v19 = __Block_byref_object_dispose__7;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__TRIAllocationStatusDefaultProvider_activeExperimentInformationWithEnvironments_error___block_invoke_2;
    v14[3] = &unk_27885EF38;
    v14[4] = &v15;
    [v8 activeExperimentInformationWithEnvironments:environmentsCopy completion:v14];
    v9 = *(v23 + 5);
    if (v9)
    {
      v10 = 0;
      if (error)
      {
        *error = v9;
      }
    }

    else
    {
      v10 = v16[5];
    }

    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = qos_class_self();
      _os_log_error_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_ERROR, "unable to fetch active experiments while device is class C locked qos:%{public}u", buf, 8u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isOptedOutOfExperimentation
{
  v21 = *MEMORY[0x277D85DE8];
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__7;
    v19 = __Block_byref_object_dispose__7;
    v20 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__TRIAllocationStatusDefaultProvider_isOptedOutOfExperimentation__block_invoke;
    v14[3] = &unk_27885EF10;
    v14[4] = buf;
    v3 = MEMORY[0x2318F2490](v14);
    v4 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v3];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__TRIAllocationStatusDefaultProvider_isOptedOutOfExperimentation__block_invoke_2;
    v9[3] = &unk_27885EF60;
    v9[4] = &v10;
    [v4 isOptedOutOfExperimentationWithCompletion:v9];
    if (*(v16 + 5))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v11 + 24);
    }

    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = qos_class_self();
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "unable to check opt-out status while device is class C locked qos:%{public}u", buf, 8u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

@end