@interface TRIXPCStatusRequestHandler
- (TRIXPCStatusRequestHandler)initWithPromise:(id)promise auditToken:(id *)token;
- (void)experimentHistoryRecordsWithLimit:(unint64_t)limit newerThanDate:(id)date deploymentEnvironment:(int)environment completion:(id)completion;
- (void)experimentRecordsWithDeploymentEnvironments:(id)environments completion:(id)completion;
- (void)rolloutAllocationStatusWithCompletion:(id)completion;
- (void)rolloutRecordsWithCompletion:(id)completion;
@end

@implementation TRIXPCStatusRequestHandler

- (TRIXPCStatusRequestHandler)initWithPromise:(id)promise auditToken:(id *)token
{
  promiseCopy = promise;
  if (!promiseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCStatusService.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  v14.receiver = self;
  v14.super_class = TRIXPCStatusRequestHandler;
  v9 = [(TRIXPCStatusRequestHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_promise, promise);
    v11 = *&token->var0[4];
    *v10->_auditToken.val = *token->var0;
    *&v10->_auditToken.val[4] = v11;
  }

  return v10;
}

- (void)experimentHistoryRecordsWithLimit:(unint64_t)limit newerThanDate:(id)date deploymentEnvironment:(int)environment completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke;
  v23[3] = &unk_279DE1038;
  v23[4] = self;
  environmentCopy = environment;
  v12 = MEMORY[0x2743948D0](v23);
  v12[2](v12, 0);
  promise = self->_promise;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_58;
  v17[3] = &unk_279DE10B0;
  v19 = v12;
  v20 = completionCopy;
  environmentCopy2 = environment;
  v17[4] = self;
  v18 = dateCopy;
  limitCopy = limit;
  v14 = dateCopy;
  v15 = completionCopy;
  v16 = v12;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v17];
}

void __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    if (a2)
    {
      v9 = "end";
    }

    else
    {
      v9 = "begin";
    }

    v10 = TRIDeploymentEnvironment_EnumDescriptor();
    v11 = [v10 textFormatNameForValue:*(a1 + 40)];
    v13[0] = 67110146;
    v13[1] = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s experimentHistoryRecordsWithLimit:newerThanDate:deploymentEnvironment:completion: with env %@", v13, 0x30u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_2;
  v62[3] = &unk_279DE0398;
  v63 = *(a1 + 48);
  v7 = MEMORY[0x2743948D0](v62);
  if (v5 && v6)
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_63;
    v60[3] = &unk_279DE0548;
    v61 = *(a1 + 56);
    v8 = MEMORY[0x2743948D0](v60);
    v9 = *MEMORY[0x277D73A98];
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *buf = *(v10 + 16);
    *&buf[16] = v11;
    v12 = [MEMORY[0x277D736B0] objectForEntitlement:v9 withAuditToken:buf];
    if (!v12)
    {
      v32 = TRILogCategory_Server();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v40;
        *&buf[8] = 2114;
        *&buf[10] = v9;
        _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) is missing entitlement %{public}@.", buf, 0x12u);
      }

      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is missing entitlement %@.", v9];
      (v8)[2](v8, 3, v13);
      goto LABEL_37;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v41 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v41;
        *&buf[8] = 2114;
        *&buf[10] = v9;
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) has ill-typed value for entitlement %{public}@ (expected array).", buf, 0x12u);
      }

      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v9];
      (v8)[2](v8, 3, v13);
      goto LABEL_37;
    }

    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
    v15 = [v13 containsObject:v14];

    if ((v15 & 1) == 0)
    {
      v34 = TRILogCategory_Server();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v42 = *(*(a1 + 32) + 36);
        v54 = TRIDeploymentEnvironment_EnumDescriptor();
        v43 = [v54 textFormatNameForValue:*(a1 + 72)];
        *buf = 67109378;
        *&buf[4] = v42;
        *&buf[8] = 2114;
        *&buf[10] = v43;
        _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) is not entitled for access to %{public}@.", buf, 0x12u);
      }

      v35 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = TRIDeploymentEnvironment_EnumDescriptor();
      v36 = [v19 textFormatNameForValue:*(a1 + 72)];
      v37 = [v35 initWithFormat:@"The calling process is not entitled for access to %@.", v36];
      (v8)[2](v8, 3, v37);

      goto LABEL_35;
    }

    if (*(a1 + 40))
    {
      if (*(a1 + 64))
      {
        v50 = objc_opt_new();
        v52 = [v5 experimentHistoryDatabase];
        v47 = *(a1 + 40);
        contexta = objc_autoreleasePoolPush();
        v16 = objc_alloc(MEMORY[0x277CBEB98]);
        v17 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
        v18 = [v16 initWithObjects:{v17, 0}];

        objc_autoreleasePoolPop(contexta);
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_84;
        v57[3] = &unk_279DE1060;
        v19 = v50;
        v20 = *(a1 + 64);
        v58 = v19;
        v59 = v20;
        LOBYTE(v17) = [v52 enumerateRecordsNewerThanDate:v47 matchingDeploymentEnvironments:v18 block:v57];

        if ((v17 & 1) == 0)
        {
          (v8)[2](v8, 12, @"The database query failed.");
          goto LABEL_34;
        }

        v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v19, "count")}];
        v53 = objc_opt_new();
        if ([v51 intValue] >= 1)
        {
          v21 = [v19 lastObject];
          v22 = [v21 eventDate];

          v53 = v22;
        }

        if (!*(a1 + 72))
        {
          v23 = *MEMORY[0x277D73AA0];
          v24 = *(a1 + 32);
          v25 = *(v24 + 32);
          *buf = *(v24 + 16);
          *&buf[16] = v25;
          context = [MEMORY[0x277D736B0] objectForEntitlement:v23 withAuditToken:buf];
          if (context)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v44 = TRILogCategory_Server();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                v46 = *(*(a1 + 32) + 36);
                *buf = 67109378;
                *&buf[4] = v46;
                *&buf[8] = 2112;
                *&buf[10] = v23;
                _os_log_error_impl(&dword_26F567000, v44, OS_LOG_TYPE_ERROR, "experimentHistoryRecordsWithLimit: the calling process (pid %d) has ill-typed value for entitlement %@ (expected array).", buf, 0x12u);
              }

              v45 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v23];
              (v8)[2](v8, 3, v45);

              goto LABEL_18;
            }

            v26 = MEMORY[0x277CCAC30];
            v55[0] = MEMORY[0x277D85DD0];
            v55[1] = 3221225472;
            v55[2] = __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_90;
            v55[3] = &unk_279DE1088;
            v56 = context;
            v27 = [v26 predicateWithBlock:v55];
            [v19 filterUsingPredicate:v27];
          }
        }

        v28 = *(a1 + 56);
        if (v28)
        {
          (*(v28 + 16))(v28, v51, v19, v53, 0);
        }

LABEL_18:

LABEL_34:
        v36 = v58;
LABEL_35:

        goto LABEL_36;
      }

      v38 = *(a1 + 56);
      if (v38)
      {
        v19 = objc_opt_new();
        (*(v38 + 16))(v38, &unk_287FC4738, MEMORY[0x277CBEBF8], v19, 0);
LABEL_36:
      }
    }

    else
    {
      (v8)[2](v8, 2, @"The 'date' parameter must be non-nil.");
    }

LABEL_37:

    v30 = v61;
    goto LABEL_38;
  }

  v29 = *(a1 + 56);
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = objc_opt_new();
  v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
  (*(v29 + 16))(v29, &unk_287FC4738, MEMORY[0x277CBEBF8], v30, v31);

LABEL_38:
LABEL_39:
  if (v7)
  {
    v7[2](v7);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_63(uint64_t a1, uint64_t a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    v10 = *(a1 + 32);
    v11 = objc_opt_new();
    (*(v10 + 16))(v10, &unk_287FC4738, 0, v11, v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

unint64_t __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_84(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) addObject:a2];
  result = [*(a1 + 32) count];
  if (result >= *(a1 + 40))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __111__TRIXPCStatusRequestHandler_experimentHistoryRecordsWithLimit_newerThanDate_deploymentEnvironment_completion___block_invoke_90(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 namespaces];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        v9 = [*(*(&v13 + 1) + 8 * v7) name];
        LOBYTE(v8) = [v8 containsObject:v9];

        if (v8)
        {
          v10 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)experimentRecordsWithDeploymentEnvironments:(id)environments completion:(id)completion
{
  environmentsCopy = environments;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke;
  v17[3] = &unk_279DE0460;
  v17[4] = self;
  v8 = MEMORY[0x2743948D0](v17);
  v8[2](v8, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_93;
  v13[3] = &unk_279DE0610;
  v15 = completionCopy;
  v16 = v8;
  v13[4] = self;
  v14 = environmentsCopy;
  v9 = environmentsCopy;
  v10 = v8;
  v11 = completionCopy;
  v12 = MEMORY[0x2743948D0](v13);
  [(TRIXPCServerContextPromise *)self->_promise addBlockToExecuteAfterPromiseFullfillment:v12];
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s experimentRecordsWithDeploymentEnvironments:completion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_2;
    v52[3] = &unk_279DE0398;
    v53 = *(a1 + 56);
    v44 = MEMORY[0x2743948D0](v52);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_3;
    v50[3] = &unk_279DE0548;
    v51 = *(a1 + 48);
    v8 = MEMORY[0x2743948D0](v50);
    v9 = *MEMORY[0x277D73A98];
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *buf = *(v10 + 16);
    *&buf[16] = v11;
    v12 = [MEMORY[0x277D736B0] objectForEntitlement:v9 withAuditToken:buf];
    v13 = *(a1 + 32);
    v14 = *(v13 + 32);
    *buf = *(v13 + 16);
    *&buf[16] = v14;
    v15 = [MEMORY[0x277D736B0] objectForEntitlement:@"com.apple.triald.internal" withAuditToken:buf];
    v16 = v15 == 0;

    if (v16)
    {
      if (!v12)
      {
        v31 = TRILogCategory_Server();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v39 = *(*(a1 + 32) + 36);
          *buf = 67109378;
          *&buf[4] = v39;
          *&buf[8] = 2114;
          *&buf[10] = v9;
          _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) is missing entitlement %{public}@.", buf, 0x12u);
        }

        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is missing entitlement %@.", v9];
        (v8)[2](v8, 3, v12);
        goto LABEL_33;
      }
    }

    else
    {

      v12 = &unk_287FC4F48;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v36 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v36;
        *&buf[8] = 2114;
        *&buf[10] = v9;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) has ill-typed value for entitlement %{public}@ (expected array).", buf, 0x12u);
      }

      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v9];
      (v8)[2](v8, 3, v19);
      goto LABEL_32;
    }

    v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v12];
    v20 = *(a1 + 40);
    if (!v20)
    {
      (v8)[2](v8, 2, @"Parameter 'environments' must be non-nil.");
LABEL_32:

LABEL_33:
      v34 = v44;
      if (v44)
      {
        (*(v44 + 2))();
        v34 = v44;
      }

      goto LABEL_36;
    }

    if (([v20 isSubsetOfSet:v19] & 1) == 0)
    {
      v32 = TRILogCategory_Server();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 40);
        v41 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v41;
        *&buf[8] = 2114;
        *&buf[10] = v40;
        _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) is not entitled for access to deployment environments %{public}@.", buf, 0x12u);
      }

      v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is not entitled for access to deployment environments %@.", *(a1 + 40)];
      (v8)[2](v8, 3, v33);
      goto LABEL_31;
    }

    v21 = objc_opt_new();
    v22 = [v5 experimentDatabase];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_108;
    v47[3] = &unk_279DE08A8;
    v48 = *(a1 + 40);
    v43 = v21;
    v49 = v43;
    LOBYTE(v21) = [v22 enumerateExperimentRecordsWithBlock:v47];

    if (v21)
    {
      if ([*(a1 + 40) containsObject:&unk_287FC4750])
      {
        v23 = *MEMORY[0x277D73AA0];
        v24 = *(a1 + 32);
        v25 = *(v24 + 32);
        *buf = *(v24 + 16);
        *&buf[16] = v25;
        v26 = [MEMORY[0x277D736B0] objectForEntitlement:v23 withAuditToken:buf];
        if (v26)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v37 = TRILogCategory_Server();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v42 = *(*(a1 + 32) + 36);
              *buf = 67109378;
              *&buf[4] = v42;
              *&buf[8] = 2112;
              *&buf[10] = v23;
              _os_log_error_impl(&dword_26F567000, v37, OS_LOG_TYPE_ERROR, "experimentRecordsWithDeploymentEnvironments: the calling process (pid %d) has ill-typed value for entitlement %@ (expected array).", buf, 0x12u);
            }

            v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v23];
            (v8)[2](v8, 3, v38);

            goto LABEL_30;
          }

          v27 = MEMORY[0x277CCAC30];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_111;
          v45[3] = &unk_279DE1088;
          v46 = v26;
          v28 = [v27 predicateWithBlock:v45];
          [v43 filterUsingPredicate:v28];
        }
      }

      v29 = *(a1 + 48);
      if (v29)
      {
        (*(v29 + 16))(v29, v43, 0);
      }
    }

    else
    {
      (v8)[2](v8, 12, @"The database query failed.");
    }

LABEL_30:

    v33 = v43;
LABEL_31:

    goto LABEL_32;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v17 + 16))(v17, MEMORY[0x277CBEBF8], v18);
  }

LABEL_36:

  v35 = *MEMORY[0x277D85DE8];
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v22 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "deploymentEnvironment")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x277D73798]);
    v7 = [v22 deploymentEnvironment];
    v20 = [v22 experimentDeployment];
    v19 = [v22 treatmentId];
    [v22 factorPackSetId];
    v8 = v21 = a1;
    v18 = [v22 type];
    v9 = [v22 status];
    v10 = [v22 startDate];
    v11 = [v22 endDate];
    v12 = [v22 namespaces];
    v13 = [v22 experimentType];
    v14 = [v22 counterfactualsTreatmentsToFactorPackSetIds];
    v15 = [v14 allKeys];
    LODWORD(v17) = v13;
    v16 = [v6 initWithDeploymentEnvironment:v7 experimentDeployment:v20 treatmentId:v19 factorPackSetId:v8 type:v18 status:v9 startDate:v10 endDate:v11 namespaces:v12 experimentType:v17 counterfactualTreatmentIds:v15];

    [*(v21 + 40) addObject:v16];
  }
}

uint64_t __85__TRIXPCStatusRequestHandler_experimentRecordsWithDeploymentEnvironments_completion___block_invoke_111(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 deploymentEnvironment])
  {
    v4 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 namespaces];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(a1 + 32);
          v11 = [*(*(&v14 + 1) + 8 * v9) name];
          LOBYTE(v10) = [v10 containsObject:v11];

          if (v10)
          {
            v4 = 1;
            goto LABEL_13;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)rolloutRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke;
  v16[3] = &unk_279DE0460;
  v16[4] = self;
  v5 = MEMORY[0x2743948D0](v16);
  v5[2](v5, 0);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_112;
  v12 = &unk_279DE0638;
  v14 = completionCopy;
  v15 = v5;
  selfCopy = self;
  v6 = v5;
  v7 = completionCopy;
  v8 = MEMORY[0x2743948D0](&v9);
  [(TRIXPCServerContextPromise *)self->_promise addBlockToExecuteAfterPromiseFullfillment:v8, v9, v10, v11, v12, selfCopy];
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s rolloutRecordsWithCompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_2;
    v35[3] = &unk_279DE0398;
    v36 = *(a1 + 48);
    v8 = MEMORY[0x2743948D0](v35);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_3;
    v33[3] = &unk_279DE0548;
    v34 = *(a1 + 40);
    v9 = MEMORY[0x2743948D0](v33);
    v10 = *MEMORY[0x277D73A98];
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    *buf = *(v11 + 16);
    *&buf[16] = v12;
    v13 = [MEMORY[0x277D736B0] objectForEntitlement:v10 withAuditToken:buf];
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v13];
        if ([v14 containsObject:&unk_287FC4750])
        {
          v15 = objc_opt_new();
          v16 = [v5 rolloutDatabase];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_113;
          v31[3] = &unk_279DE0700;
          v17 = v15;
          v32 = v17;
          v18 = [v16 enumerateRecordsUsingTransaction:0 block:v31];

          if (v18)
          {
            v19 = *(a1 + 40);
            if (v19)
            {
              (*(v19 + 16))(v19, v17, 0);
            }
          }

          else
          {
            (v9)[2](v9, 12, @"The database query failed.");
          }

          v26 = v32;
        }

        else
        {
          v24 = TRIDeploymentEnvironment_EnumDescriptor();
          v17 = [v24 textFormatNameForValue:0];

          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v30 = *(*(a1 + 32) + 36);
            *buf = 67109378;
            *&buf[4] = v30;
            *&buf[8] = 2112;
            *&buf[10] = v17;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "rolloutRecordsWithCompletion: the calling process (pid %d) is not entitled for access to deployment environment %@.", buf, 0x12u);
          }

          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is not entitled for access to deployment environments %@.", v17];
          (v9)[2](v9, 3, v26);
        }
      }

      else
      {
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = *(*(a1 + 32) + 36);
          *buf = 67109378;
          *&buf[4] = v29;
          *&buf[8] = 2114;
          *&buf[10] = v10;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "rolloutRecordsWithCompletion: the calling process (pid %d) has ill-typed value for entitlement %{public}@ (expected array).", buf, 0x12u);
        }

        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process has a value for entitlement %@ which is not array-valued.", v10];
        (v9)[2](v9, 3, v14);
      }
    }

    else
    {
      v22 = TRILogCategory_Server();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = *(*(a1 + 32) + 36);
        *buf = 67109378;
        *&buf[4] = v28;
        *&buf[8] = 2114;
        *&buf[10] = v10;
        _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "rolloutRecordsWithCompletion: the calling process (pid %d) is missing entitlement %{public}@.", buf, 0x12u);
      }

      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is missing entitlement %@.", v10];
      (v9)[2](v9, 3, v14);
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v20 + 16))(v20, 0, v21);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __59__TRIXPCStatusRequestHandler_rolloutRecordsWithCompletion___block_invoke_113(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D737A0] partialRecordWithFullRecord:a2];
  [*(a1 + 32) addObject:v3];
}

- (void)rolloutAllocationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TRIXPCStatusRequestHandler_rolloutAllocationStatusWithCompletion___block_invoke;
  v6[3] = &unk_279DE10D8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(TRIXPCStatusRequestHandler *)self rolloutRecordsWithCompletion:v6];
}

void __68__TRIXPCStatusRequestHandler_rolloutAllocationStatusWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v28 = a1;
    v6 = objc_alloc(MEMORY[0x277D73690]);
    v7 = [MEMORY[0x277D737E0] sharedPaths];
    v8 = [v6 initWithPaths:v7 factorsState:0];

    v31 = [MEMORY[0x277CBEB18] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v5;
    obj = v5;
    v33 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v33)
    {
      v32 = *v39;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          v11 = [v10 activeFactorPackSetId];

          if (v11)
          {
            v12 = objc_opt_new();
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v13 = [v10 namespaces];
            v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v35;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v35 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v34 + 1) + 8 * j);
                  v19 = [v8 factorPackIdForRolloutWithNamespaceName:v18];
                  [v12 setObject:v19 forKeyedSubscript:v18];
                }

                v15 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v15);
            }

            v20 = objc_alloc(MEMORY[0x277D737C0]);
            v21 = [v10 deployment];
            v22 = [v21 rolloutId];
            v23 = [v10 deployment];
            v24 = [v23 deploymentId];
            v25 = [v10 rampId];
            v26 = [v20 initWithRolloutId:v22 deploymentId:v24 rampId:v25 factorPackIds:v12];
            [v31 addObject:v26];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v33);
    }

    (*(*(v28 + 32) + 16))();
    v5 = v29;
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end