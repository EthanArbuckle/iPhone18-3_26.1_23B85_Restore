@interface TRIXPCNamespaceManagementClient
- (BOOL)deregisterNamespaceWithNamespaceName:(id)a3 error:(id *)a4;
- (BOOL)immediateDownloadForNamespaceNames:(id)a3 allowExpensiveNetworking:(BOOL)a4 error:(id *)a5;
- (BOOL)logSystemCovariatesWithError:(id *)a3;
- (BOOL)promoteFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6;
- (BOOL)rejectFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6;
- (BOOL)setProvisionalFactorPackId:(id)a3 forNamespaceName:(id)a4 error:(id *)a5;
- (BOOL)setPurgeabilityLevelsForFactors:(id)a3 forNamespaceName:(id)a4 error:(id *)a5;
- (BOOL)startNamespaceDownloadWithName:(id)a3 options:(id)a4 error:(id *)a5;
- (TRIXPCNamespaceManagementClient)init;
- (id)activeRolloutInformation:(id *)a3;
- (id)getOnDemandReferenceCountsPerUserAtGlobalPath:(id)a3 error:(id *)a4;
- (id)getSandboxExtensionTokensForIdentifierQueryWithError:(id *)a3;
- (id)loadNamespaceMetadataForNamespaceName:(id)a3 error:(id *)a4;
- (unint64_t)statusOfDownloadForFactors:(id)a3 withNamespace:(id)a4 factorsState:(id)a5 notificationKey:(id *)a6 error:(id *)a7;
- (void)downloadLevelsForFactors:(id)a3 withNamespace:(id)a4 queue:(id)a5 factorsState:(id)a6 options:(id)a7 progress:(id)a8 completion:(id)a9;
@end

@implementation TRIXPCNamespaceManagementClient

- (TRIXPCNamespaceManagementClient)init
{
  v25.receiver = self;
  v25.super_class = TRIXPCNamespaceManagementClient;
  v2 = [(TRIXPCNamespaceManagementClient *)&v25 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2843811B0];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284381150];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284381210];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v7 initWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    [v4 setClasses:v11 forSelector:sel_activeRolloutInformationWithCompletion_ argumentIndex:0 ofReply:1];

    v12 = objc_alloc(MEMORY[0x277D42650]);
    v13 = TRILogCategory_ClientFramework();
    v14 = [v12 initWithServiceName:@"com.apple.triald.namespace-management" connectionOptions:0 allowlistedServerInterface:v3 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_20 invalidationHandler:&__block_literal_global_150 logHandle:v13];
    helper = v2->_helper;
    v2->_helper = v14;

    v16 = objc_alloc(MEMORY[0x277D42650]);
    v17 = TRILogCategory_ClientFramework();
    v18 = [v16 initWithServiceName:@"com.apple.triald.internal" connectionOptions:0 allowlistedServerInterface:v4 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_152 invalidationHandler:&__block_literal_global_154 logHandle:v17];
    internalHelper = v2->_internalHelper;
    v2->_internalHelper = v18;

    v20 = objc_alloc(MEMORY[0x277D42650]);
    v21 = TRILogCategory_ClientFramework();
    v22 = [v20 initWithServiceName:@"com.apple.triald.system.from-agent" connectionOptions:0 allowlistedServerInterface:v5 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:0 interruptionHandler:&__block_literal_global_156_0 invalidationHandler:&__block_literal_global_158_0 logHandle:v21];
    internalAgentToSystemHelper = v2->_internalAgentToSystemHelper;
    v2->_internalAgentToSystemHelper = v22;
  }

  return v2;
}

- (BOOL)startNamespaceDownloadWithName:(id)a3 options:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:144 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v31 = buf;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__10;
    v34 = __Block_byref_object_dispose__10;
    v35 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __80__TRIXPCNamespaceManagementClient_startNamespaceDownloadWithName_options_error___block_invoke;
    v29[3] = &unk_27885EF10;
    v29[4] = buf;
    v11 = MEMORY[0x2318F2490](v29);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__10;
    v23 = __Block_byref_object_dispose__10;
    v24 = 0;
    v12 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v11];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__TRIXPCNamespaceManagementClient_startNamespaceDownloadWithName_options_error___block_invoke_2;
    v18[3] = &unk_27885F6A0;
    v18[4] = &v25;
    v18[5] = &v19;
    [v12 startDownloadNamespaceWithName:v9 options:v10 completion:v18];
    v13 = *(v31 + 5);
    if (v13)
    {
      if (a5)
      {
LABEL_6:
        v14 = 0;
        *a5 = v13;
LABEL_16:

        _Block_object_dispose(&v19, 8);
        _Block_object_dispose(&v25, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }
    }

    else
    {
      v13 = v20[5];
      if (!v13)
      {
        v14 = *(v26 + 24);
        goto LABEL_16;
      }

      if (a5)
      {
        goto LABEL_6;
      }
    }

    v14 = 0;
    goto LABEL_16;
  }

  v15 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "unable to start namespace download while device is class C locked", buf, 2u);
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  return v14 & 1;
}

- (void)downloadLevelsForFactors:(id)a3 withNamespace:(id)a4 queue:(id)a5 factorsState:(id)a6 options:(id)a7 progress:(id)a8 completion:(id)a9
{
  v70 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v44 = a5;
  v17 = a6;
  v43 = a7;
  v18 = a8;
  v42 = a9;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v39 = [MEMORY[0x277CCA890] currentHandler];
  [v39 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__10;
  v60[4] = __Block_byref_object_dispose__10;
  v61 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke;
  v59[3] = &unk_27885EF10;
  v59[4] = v60;
  v19 = MEMORY[0x2318F2490](v59);
  v20 = +[TRIMisc unsafeFirstAuthenticationState];
  v21 = qos_class_self();
  v22 = 2 * (v20 == 1);
  v23 = &stru_28435FC98;
  if (v20 == 2)
  {
    v23 = @"(unknown class C status) ";
  }

  if (!v20)
  {
    v23 = @"(before class C unlock) ";
  }

  v24 = v23;
  v25 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v25, v22))
  {
    *buf = 138413058;
    v63 = v24;
    v64 = 2112;
    v65 = v16;
    v66 = 2112;
    v67 = v15;
    v68 = 1024;
    v69 = v21;
    _os_log_impl(&dword_22EA6B000, v25, v22, "%@enqueuing downloadLevelsForFactors message for:%@ factors:%@ at qos:%u", buf, 0x26u);
  }

  v41 = v24;
  v26 = v20 == 2;

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke_185;
  v46[3] = &unk_27885F718;
  v58 = 2 * (v20 == 1);
  v27 = v16;
  v47 = v27;
  v57 = v21;
  v40 = v15;
  v48 = v40;
  v49 = self;
  v28 = v19;
  v53 = v28;
  v29 = v17;
  v50 = v29;
  v30 = v43;
  v51 = v30;
  v56 = v60;
  v31 = v42;
  v54 = v31;
  v32 = v18;
  v55 = v32;
  v33 = v44;
  v52 = v33;
  v34 = MEMORY[0x2318F2490](v46);
  v35 = v34;
  if (v26)
  {
    (*(v34 + 16))(v34);
  }

  else
  {
    [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlockedWithQoS:v21 block:v34];
  }

  v36 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v63 = v27;
    _os_log_debug_impl(&dword_22EA6B000, v36, OS_LOG_TYPE_DEBUG, "finished enqueuing post-unlock downloadLevelsForFactors for: %@", buf, 0xCu);
  }

  _Block_object_dispose(v60, 8);
  v37 = *MEMORY[0x277D85DE8];
}

void __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke_185(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = TRILogCategory_ClientFramework();
  v3 = *(a1 + 116);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 112);
    *buf = 138412802;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 1024;
    LODWORD(v32) = v6;
    _os_log_impl(&dword_22EA6B000, v2, v3, "(after class C unlock) enqueuing downloadLevelsForFactors message for:%@ factors:%@ at qos:%u", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__10;
  v33 = __Block_byref_object_dispose__10;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v7 = [*(*(a1 + 48) + 8) synchronousRemoteObjectProxyWithErrorHandler:*(a1 + 80)];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke_186;
  v24[3] = &unk_27885F6C8;
  v24[4] = buf;
  v24[5] = &v25;
  [v7 startDownloadLevelsForFactors:v8 withNamespace:v9 factorsState:v10 options:v11 completion:v24];
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v12 = *(a1 + 88);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }

  else
  {
    if (*(*&buf[8] + 40))
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke_2;
      v21[3] = &unk_27885F318;
      v22 = *(a1 + 96);
      v23 = *(a1 + 88);
      v13 = MEMORY[0x2318F2490](v21);
      v14 = [TRIDownloadNotification registerDownloadNotificationForKey:*(*&buf[8] + 40) queue:*(a1 + 72) usingBlock:v13];

      v15 = &v22;
    }

    else
    {
      v17 = *(a1 + 88);
      if (!v17)
      {
        goto LABEL_9;
      }

      v18 = *(a1 + 72);
      if (!v18)
      {
        (v17)[2](v17, v26[5] == 0);
        goto LABEL_9;
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke_3;
      v19[3] = &unk_27885F6F0;
      v15 = v20;
      v20[0] = v17;
      v20[1] = &v25;
      dispatch_async(v18, v19);
    }
  }

LABEL_9:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke_186(uint64_t a1, void *a2, void *a3)
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

void __121__TRIXPCNamespaceManagementClient_downloadLevelsForFactors_withNamespace_queue_factorsState_options_progress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 type];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = [v5 error];
        v12 = [TRIDownloadNotification generalErrorFromDownloadNotificationError:v11];
        (*(v10 + 16))(v10, 0, v12);
      }

LABEL_15:
      [TRIDownloadNotification deregisterNotificationWithToken:v13];
      goto LABEL_16;
    }

    if (v6 != 3)
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_16;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 100);
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 1, 0);
    }

    goto LABEL_15;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, [v5 progress]);
  }

LABEL_16:
}

- (BOOL)immediateDownloadForNamespaceNames:(id)a3 allowExpensiveNetworking:(BOOL)a4 error:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!v9)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:289 description:{@"Invalid parameter not satisfying: %@", @"namespaceNames"}];
  }

  v10 = qos_class_self();
  v11 = +[TRIMisc unsafeFirstAuthenticationState];
  v12 = v11;
  v13 = 2 * (v11 == 1);
  v14 = &stru_28435FC98;
  if (v11 == 2)
  {
    v14 = @"(unknown class C status) ";
  }

  if (!v11)
  {
    v14 = @"(before class C unlock) ";
  }

  v15 = v14;
  v16 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v16, v13))
  {
    *buf = 138412802;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 1026;
    LODWORD(v40) = v10;
    _os_log_impl(&dword_22EA6B000, v16, v13, "%@enqueuing immediateDownloadForNamespaceNames for: %@ at qos:%{public}u", buf, 0x1Cu);
  }

  v17 = v12 == 2;

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__10;
  v41 = __Block_byref_object_dispose__10;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __101__TRIXPCNamespaceManagementClient_immediateDownloadForNamespaceNames_allowExpensiveNetworking_error___block_invoke;
  v27[3] = &unk_27885F740;
  v19 = v18;
  v28 = v19;
  v20 = v9;
  v33 = v10;
  v29 = v20;
  v30 = self;
  v34 = a4;
  v31 = buf;
  v32 = &v35;
  v21 = MEMORY[0x2318F2490](v27);
  v22 = v21;
  if (v17)
  {
    (*(v21 + 16))(v21);
  }

  else
  {
    [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlockedWithQoS:v10 block:v21];
  }

  dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = *(*&buf[8] + 40);
  }

  v23 = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

void __101__TRIXPCNamespaceManagementClient_immediateDownloadForNamespaceNames_allowExpensiveNetworking_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__TRIXPCNamespaceManagementClient_immediateDownloadForNamespaceNames_allowExpensiveNetworking_error___block_invoke_2;
  v21[3] = &unk_27885E190;
  v22 = *(a1 + 32);
  v2 = MEMORY[0x2318F2490](v21);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__TRIXPCNamespaceManagementClient_immediateDownloadForNamespaceNames_allowExpensiveNetworking_error___block_invoke_3;
  v14[3] = &unk_27885EF10;
  v14[4] = &v15;
  v3 = MEMORY[0x2318F2490](v14);
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 72);
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 1026;
    *&buf[14] = v6;
    _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEFAULT, "(after class C unlock) enqueuing immediateDownloadForNamespaceNames for: %@ at qos:%{public}u", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v7 = [*(*(a1 + 48) + 8) synchronousRemoteObjectProxyWithErrorHandler:v3];
  v8 = *(a1 + 40);
  v9 = *(a1 + 76);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__TRIXPCNamespaceManagementClient_immediateDownloadForNamespaceNames_allowExpensiveNetworking_error___block_invoke_194;
  v13[3] = &unk_27885EF10;
  v13[4] = buf;
  [v7 immediateDownloadForNamespaceNames:v8 allowExpensiveNetworking:v9 completion:v13];
  v10 = v16[5];
  if (v10 || (v10 = *(*&buf[8] + 40)) != 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v11;

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v15, 8);

  if (v2)
  {
    v2[2](v2);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __109__TRIXPCNamespaceManagementClient_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_error___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  if ([v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2])
  {
    _MergedGlobals_16 = 1;
  }

  else
  {
    v3 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
    _MergedGlobals_16 = v3 != 0;
  }

  objc_autoreleasePoolPop(v0);
}

- (BOOL)deregisterNamespaceWithNamespaceName:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v28 = buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__10;
    v31 = __Block_byref_object_dispose__10;
    v32 = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __78__TRIXPCNamespaceManagementClient_deregisterNamespaceWithNamespaceName_error___block_invoke;
    v26[3] = &unk_27885EF10;
    v26[4] = buf;
    v8 = MEMORY[0x2318F2490](v26);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__10;
    v20 = __Block_byref_object_dispose__10;
    v21 = 0;
    v9 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__TRIXPCNamespaceManagementClient_deregisterNamespaceWithNamespaceName_error___block_invoke_2;
    v15[3] = &unk_27885F6A0;
    v15[4] = &v22;
    v15[5] = &v16;
    [v9 deregisterNamespaceWithNamespaceName:v7 completion:v15];
    v10 = *(v28 + 5);
    if (v10)
    {
      if (a4)
      {
LABEL_6:
        v11 = 0;
        *a4 = v10;
LABEL_16:

        _Block_object_dispose(&v16, 8);
        _Block_object_dispose(&v22, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = v17[5];
      if (!v10)
      {
        v11 = *(v23 + 24);
        goto LABEL_16;
      }

      if (a4)
      {
        goto LABEL_6;
      }
    }

    v11 = 0;
    goto LABEL_16;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "unable to de-register namespace while device is class C locked", buf, 2u);
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  return v11 & 1;
}

- (BOOL)setPurgeabilityLevelsForFactors:(id)a3 forNamespaceName:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"factorsWithPurgeabilityLevels"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:467 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v29 = buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__10;
    v32 = __Block_byref_object_dispose__10;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __90__TRIXPCNamespaceManagementClient_setPurgeabilityLevelsForFactors_forNamespaceName_error___block_invoke;
    v27[3] = &unk_27885EF10;
    v27[4] = buf;
    v12 = MEMORY[0x2318F2490](v27);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__10;
    v25 = __Block_byref_object_dispose__10;
    v26 = 0;
    v13 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v12];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __90__TRIXPCNamespaceManagementClient_setPurgeabilityLevelsForFactors_forNamespaceName_error___block_invoke_2;
    v20[3] = &unk_27885EF10;
    v20[4] = &v21;
    [v13 setPurgeabilityLevelsForFactors:v9 forNamespaceName:v11 completion:v20];
    v14 = *(v29 + 5);
    if (v14)
    {
      if (a5)
      {
LABEL_6:
        v15 = 0;
        *a5 = v14;
LABEL_16:

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_17;
      }
    }

    else
    {
      v14 = v22[5];
      if (!v14)
      {
        v15 = 1;
        goto LABEL_16;
      }

      if (a5)
      {
        goto LABEL_6;
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

  v16 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "unable to set purgeability levels while device is class C locked", buf, 2u);
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_17:

  return v15;
}

- (id)loadNamespaceMetadataForNamespaceName:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__10;
    v33 = __Block_byref_object_dispose__10;
    v34 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __79__TRIXPCNamespaceManagementClient_loadNamespaceMetadataForNamespaceName_error___block_invoke;
    v28[3] = &unk_27885EF10;
    v28[4] = buf;
    v8 = MEMORY[0x2318F2490](v28);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__10;
    v26 = __Block_byref_object_dispose__10;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__10;
    v20 = __Block_byref_object_dispose__10;
    v21 = 0;
    v9 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__TRIXPCNamespaceManagementClient_loadNamespaceMetadataForNamespaceName_error___block_invoke_2;
    v15[3] = &unk_27885F768;
    v15[4] = &v16;
    v15[5] = &v22;
    [v9 loadNamespaceMetadataForNamespaceName:v7 completion:v15];
    v10 = *(v30 + 5);
    if (v10)
    {
      if (a4)
      {
LABEL_6:
        v11 = 0;
        *a4 = v10;
LABEL_16:

        _Block_object_dispose(&v16, 8);
        _Block_object_dispose(&v22, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = v23[5];
      if (!v10)
      {
        v11 = v17[5];
        goto LABEL_16;
      }

      if (a4)
      {
        goto LABEL_6;
      }
    }

    v11 = 0;
    goto LABEL_16;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "unable to load namespace metadata while device is class C locked", buf, 2u);
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_17:

  return v11;
}

void __79__TRIXPCNamespaceManagementClient_loadNamespaceMetadataForNamespaceName_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)setProvisionalFactorPackId:(id)a3 forNamespaceName:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:555 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:556 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    v37 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __85__TRIXPCNamespaceManagementClient_setProvisionalFactorPackId_forNamespaceName_error___block_invoke;
    v31[3] = &unk_27885EF10;
    v31[4] = buf;
    v12 = MEMORY[0x2318F2490](v31);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__10;
    v25 = __Block_byref_object_dispose__10;
    v26 = 0;
    v13 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v12];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__TRIXPCNamespaceManagementClient_setProvisionalFactorPackId_forNamespaceName_error___block_invoke_2;
    v20[3] = &unk_27885F6A0;
    v20[4] = &v27;
    v20[5] = &v21;
    [v13 setProvisionalFactorPackId:v9 forNamespaceName:v11 completion:v20];
    v14 = *(v33 + 5);
    if (v14)
    {
      if (a5)
      {
LABEL_6:
        v15 = 0;
        *a5 = v14;
LABEL_16:

        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&v27, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = v22[5];
      if (!v14)
      {
        v15 = *(v28 + 24);
        goto LABEL_16;
      }

      if (a5)
      {
        goto LABEL_6;
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

  v16 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "unable to set factor pack provisional while device is class C locked", buf, 2u);
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_17:

  return v15 & 1;
}

- (BOOL)rejectFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:603 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:604 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v35 = buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__10;
    v38 = __Block_byref_object_dispose__10;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__TRIXPCNamespaceManagementClient_rejectFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke;
    v33[3] = &unk_27885EF10;
    v33[4] = buf;
    v14 = MEMORY[0x2318F2490](v33);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__10;
    v27 = __Block_byref_object_dispose__10;
    v28 = 0;
    v15 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v14];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__TRIXPCNamespaceManagementClient_rejectFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke_2;
    v22[3] = &unk_27885F6A0;
    v22[4] = &v29;
    v22[5] = &v23;
    [v15 rejectFactorPackId:v11 forNamespaceName:v12 rolloutDeployment:v13 completion:v22];
    v16 = *(v35 + 5);
    if (v16)
    {
      if (a6)
      {
LABEL_6:
        v17 = 0;
        *a6 = v16;
LABEL_16:

        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v29, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24[5];
      if (!v16)
      {
        v17 = *(v30 + 24);
        goto LABEL_16;
      }

      if (a6)
      {
        goto LABEL_6;
      }
    }

    v17 = 0;
    goto LABEL_16;
  }

  v18 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "unable to reject factor pack provisional while device is class C locked", buf, 2u);
  }

  if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_17:

  return v17 & 1;
}

- (BOOL)promoteFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:652 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:653 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v35 = buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__10;
    v38 = __Block_byref_object_dispose__10;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __96__TRIXPCNamespaceManagementClient_promoteFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke;
    v33[3] = &unk_27885EF10;
    v33[4] = buf;
    v14 = MEMORY[0x2318F2490](v33);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__10;
    v27 = __Block_byref_object_dispose__10;
    v28 = 0;
    v15 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v14];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __96__TRIXPCNamespaceManagementClient_promoteFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke_2;
    v22[3] = &unk_27885F6A0;
    v22[4] = &v29;
    v22[5] = &v23;
    [v15 promoteFactorPackId:v11 forNamespaceName:v12 rolloutDeployment:v13 completion:v22];
    v16 = *(v35 + 5);
    if (v16)
    {
      if (a6)
      {
LABEL_6:
        v17 = 0;
        *a6 = v16;
LABEL_16:

        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v29, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }
    }

    else
    {
      v16 = v24[5];
      if (!v16)
      {
        v17 = *(v30 + 24);
        goto LABEL_16;
      }

      if (a6)
      {
        goto LABEL_6;
      }
    }

    v17 = 0;
    goto LABEL_16;
  }

  v18 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "unable to promote factor pack while device is class C locked", buf, 2u);
  }

  if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_17:

  return v17 & 1;
}

- (unint64_t)statusOfDownloadForFactors:(id)a3 withNamespace:(id)a4 factorsState:(id)a5 notificationKey:(id *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"factorNames"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"TRIXPCClient.m" lineNumber:703 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v44 = buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__10;
    v47 = __Block_byref_object_dispose__10;
    v48 = 0;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __111__TRIXPCNamespaceManagementClient_statusOfDownloadForFactors_withNamespace_factorsState_notificationKey_error___block_invoke;
    v42[3] = &unk_27885EF10;
    v42[4] = buf;
    v16 = MEMORY[0x2318F2490](v42);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__10;
    v30 = __Block_byref_object_dispose__10;
    v31 = 0;
    v17 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v16];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __111__TRIXPCNamespaceManagementClient_statusOfDownloadForFactors_withNamespace_factorsState_notificationKey_error___block_invoke_2;
    v25[3] = &unk_27885F790;
    v25[4] = &v38;
    v25[5] = &v32;
    v25[6] = &v26;
    [v17 statusOfDownloadForFactors:v13 withNamespace:v14 factorsState:v15 completion:v25];
    v18 = *(v44 + 5);
    if (v18 || (v18 = v27[5]) != 0)
    {
      if (a7)
      {
        objc_storeStrong(a7, v18);
        a7 = 0;
      }
    }

    else
    {
      if (a6)
      {
        objc_storeStrong(a6, v33[5]);
      }

      a7 = v39[3];
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_DEFAULT, "device is class C locked - download status cannot be determined", buf, 2u);
    }

    if (a7)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
      v21 = *a7;
      *a7 = v20;

      a7 = 0;
    }
  }

  return a7;
}

void __111__TRIXPCNamespaceManagementClient_statusOfDownloadForFactors_withNamespace_factorsState_notificationKey_error___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(a1[4] + 8) + 24) = a2;
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v13 = v7;

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

- (id)activeRolloutInformation:(id *)a3
{
  if (+[TRIMisc unsafeFirstAuthenticationState])
  {
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__10;
    v29 = __Block_byref_object_dispose__10;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__TRIXPCNamespaceManagementClient_activeRolloutInformation___block_invoke;
    v24[3] = &unk_27885EF10;
    v24[4] = buf;
    v5 = MEMORY[0x2318F2490](v24);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__10;
    v22 = __Block_byref_object_dispose__10;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__10;
    v16 = __Block_byref_object_dispose__10;
    v17 = 0;
    v6 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__TRIXPCNamespaceManagementClient_activeRolloutInformation___block_invoke_2;
    v11[3] = &unk_27885F7B8;
    v11[4] = &v18;
    v11[5] = &v12;
    [v6 activeRolloutInformationWithCompletion:v11];
    v7 = *(v26 + 5);
    if (v7)
    {
      if (a3)
      {
LABEL_4:
        v8 = 0;
        *a3 = v7;
LABEL_14:

        _Block_object_dispose(&v12, 8);
        _Block_object_dispose(&v18, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_15;
      }
    }

    else
    {
      v7 = v13[5];
      if (!v7)
      {
        v8 = v19[5];
        goto LABEL_14;
      }

      if (a3)
      {
        goto LABEL_4;
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v9 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "device is class C locked - cannot fetch rollout information", buf, 2u);
  }

  if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    *a3 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_15:

  return v8;
}

void __60__TRIXPCNamespaceManagementClient_activeRolloutInformation___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (BOOL)logSystemCovariatesWithError:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__TRIXPCNamespaceManagementClient_logSystemCovariatesWithError___block_invoke;
  v9[3] = &unk_27885EF10;
  v9[4] = &v10;
  v5 = MEMORY[0x2318F2490](v9, a2);
  v6 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v5];
  [v6 logSystemCovariates];
  if (a3)
  {
    v7 = v11[5];
    if (v7)
    {
      objc_storeStrong(a3, v7);
    }
  }

  _Block_object_dispose(&v10, 8);
  return a3 == 0;
}

- (id)getSandboxExtensionTokensForIdentifierQueryWithError:(id *)a3
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __88__TRIXPCNamespaceManagementClient_getSandboxExtensionTokensForIdentifierQueryWithError___block_invoke;
  v24[3] = &unk_27885EF10;
  v24[4] = &v25;
  v5 = MEMORY[0x2318F2490](v24, a2);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v6 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__TRIXPCNamespaceManagementClient_getSandboxExtensionTokensForIdentifierQueryWithError___block_invoke_2;
  v11[3] = &unk_27885F7B8;
  v11[4] = &v18;
  v11[5] = &v12;
  [v6 getSandboxExtensionTokensForIdentifierQueryWithCompletion:v11];
  v7 = v26[5];
  if (v7 || (v7 = v13[5]) != 0)
  {
    if (a3)
    {
      *a3 = v7;
    }

    v8 = objc_opt_new();
  }

  else
  {
    v8 = v19[5];
  }

  v9 = v8;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v25, 8);

  return v9;
}

void __88__TRIXPCNamespaceManagementClient_getSandboxExtensionTokensForIdentifierQueryWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
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

- (id)getOnDemandReferenceCountsPerUserAtGlobalPath:(id)a3 error:(id *)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"On-demand reference counts are not available on non-macOS platforms.";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a4 = [v5 initWithDomain:@"TRIGeneralErrorDomain" code:17 userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

@end