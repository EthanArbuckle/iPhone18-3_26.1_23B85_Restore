@interface TRIXPCNamespaceManagementRequestHandler
+ (id)_deploymentsWithUnexpectedExperimentDataInContainer:(id)container dynamicNamespaceName:(id)name serverContext:(id)context;
+ (id)_notificationKeyWithNamespace:(id)namespace assetIndexesByTreatment:(id)treatment assetIdsByFactorPack:(id)pack;
+ (void)_immediateDownloadForNamespaceNames:(id)names usingEntitlementWitness:(id)witness serverContext:(id)context taskQueue:(id)queue allowExpensiveNetworking:(BOOL)networking taskAttribution:(id)attribution completion:(id)completion;
+ (void)_promoteFactorPackId:(id)id usingEntitlementWitness:(id)witness serverContext:(id)context forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion;
+ (void)_purgeMismatchedDataForDynamicNamespaceName:(id)name appContainer:(id)container serverContext:(id)context;
+ (void)_rejectFactorPackId:(id)id usingEntitlementWitness:(id)witness serverContext:(id)context forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion;
+ (void)_removeAssetFactors:(id)factors usingEntitlementWitness:(id)witness serverContext:(id)context taskQueue:(id)queue namespace:(id)namespace factorsState:(id)state removeImmediately:(BOOL)immediately completion:(id)self0;
+ (void)_reregisterOneShotXPCActivityWithDescriptor:(id)descriptor resumingTaskQueue:(id)queue;
+ (void)_resumeTaskQueueForDiscretionaryCellularWithQueue:(id)queue;
+ (void)_resumeTaskQueueForDiscretionaryWifiWithQueue:(id)queue;
+ (void)_setProvisionalFactorPackId:(id)id usingEntitlementWitness:(id)witness serverContext:(id)context forNamespaceName:(id)name completion:(id)completion;
+ (void)_startDownloadAssetIndexesByTreatment:(id)treatment usingEntitlementWitness:(id)witness serverContext:(id)context taskQueue:(id)queue experimentIds:(id)ids assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployments:(id)self0 namespace:(id)self1 taskAttribution:(id)self2 factorsState:(id)self3 notificationKey:(id)self4;
+ (void)resumeTaskQueue:(id)queue forNetworkOptions:(id)options;
+ (void)usingServerContext:(id)context deregisterNamespaceWithName:(id)name teamId:(id)id taskQueue:(id)queue completion:(id)completion;
+ (void)usingServerContext:(id)context taskQueue:(id)queue startDownloadNamespaceWithName:(id)name attribution:(id)attribution completion:(id)completion;
- (BOOL)_validateNamespaceName:(id)name error:(id *)error;
- (BOOL)_validateSetPurgeabilityLevelRequestUsingFactorProviderChain:(id)chain paths:(id)paths purgeabilityLevelsForFactors:(id)factors error:(id *)error;
- (TRIXPCNamespaceManagementRequestHandler)initWithServerContextPromise:(id)promise auditToken:(id *)token;
- (id)_factorProviderChainForNamespace:(id)namespace paths:(id)paths;
- (int)_namespacePurgeabilityLevelForNamespaceName:(id)name paths:(id)paths;
- (void)_loadNamespaceMetadataForNamespace:(id)namespace usingEntitlementWitness:(id)witness withPaths:(id)paths completion:(id)completion;
- (void)_setPurgeabilityLevelsForFactors:(id)factors usingEntitlementWitness:(id)witness namespace:(id)namespace paths:(id)paths completion:(id)completion;
- (void)deregisterNamespaceWithNamespaceName:(id)name completion:(id)completion;
- (void)getSandboxExtensionTokensForIdentifierQueryWithCompletion:(id)completion;
- (void)loadNamespaceMetadataForNamespaceName:(id)name completion:(id)completion;
- (void)promoteFactorPackId:(id)id forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion;
- (void)registerNamespaceWithNamespaceName:(id)name compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l applicationGroup:(id)group cloudKitContainerId:(int)id completion:(id)completion;
- (void)rejectFactorPackId:(id)id forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion;
- (void)removeLevelsForFactors:(id)factors withNamespace:(id)namespace factorsState:(id)state removeImmediately:(BOOL)immediately completion:(id)completion;
- (void)setProvisionalFactorPackId:(id)id forNamespaceName:(id)name completion:(id)completion;
- (void)setPurgeabilityLevelsForFactors:(id)factors forNamespaceName:(id)name completion:(id)completion;
- (void)startDownloadLevelsForFactors:(id)factors withNamespace:(id)namespace factorsState:(id)state options:(id)options completion:(id)completion;
- (void)startDownloadNamespaceWithName:(id)name options:(id)options completion:(id)completion;
- (void)statusOfDownloadForFactors:(id)factors withNamespace:(id)namespace factorsState:(id)state completion:(id)completion;
@end

@implementation TRIXPCNamespaceManagementRequestHandler

- (TRIXPCNamespaceManagementRequestHandler)initWithServerContextPromise:(id)promise auditToken:(id *)token
{
  promiseCopy = promise;
  if (!promiseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"serverContextPromise"}];
  }

  v14.receiver = self;
  v14.super_class = TRIXPCNamespaceManagementRequestHandler;
  v9 = [(TRIXPCNamespaceManagementRequestHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serverContextPromise, promise);
    v11 = *&token->var0[4];
    *v10->_auditToken.val = *token->var0;
    *&v10->_auditToken.val[4] = v11;
  }

  return v10;
}

- (void)registerNamespaceWithNamespaceName:(id)name compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l applicationGroup:(id)group cloudKitContainerId:(int)id completion:(id)completion
{
  nameCopy = name;
  lCopy = l;
  groupCopy = group;
  completionCopy = completion;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke;
  v89[3] = &unk_279DE0BF8;
  v89[4] = self;
  v18 = nameCopy;
  v90 = v18;
  versionCopy = version;
  versionCopy2 = version;
  v19 = lCopy;
  v91 = v19;
  v20 = groupCopy;
  v92 = v20;
  idCopy = id;
  idCopy2 = id;
  v21 = MEMORY[0x2743948D0](v89);
  v21[2](v21, 0);
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 0;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke_109;
  v82[3] = &unk_279DE0C20;
  v84 = &v85;
  v22 = v21;
  v83 = v22;
  v23 = MEMORY[0x2743948D0](v82);
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke_2;
  v79[3] = &unk_279DE0778;
  v24 = completionCopy;
  v81 = v24;
  v25 = v18;
  v80 = v25;
  v26 = MEMORY[0x2743948D0](v79);
  v27 = v26;
  if (!v25)
  {
    (*(v26 + 16))(v26, 2, @"Namespace name must not be nil.");
    goto LABEL_34;
  }

  v28 = *&self->_auditToken.val[4];
  v77 = *self->_auditToken.val;
  v78 = v28;
  v65 = [MEMORY[0x277D736B0] applicationBundleIdentifierWithAuditToken:&v77];
  if (v65)
  {
    if (v20)
    {
      v29 = *&self->_auditToken.val[4];
      v77 = *self->_auditToken.val;
      v78 = v29;
      if ([MEMORY[0x277D736B0] isEntitledToApplicationGroup:v20 withAuditToken:&v77])
      {
        v58 = v20;
        v30 = 3;
LABEL_10:
        v57 = v30;
        if (!v19 || ![v19 isFileURL])
        {
          goto LABEL_28;
        }

        v32 = *&self->_auditToken.val[4];
        v77 = *self->_auditToken.val;
        v78 = v32;
        v33 = [MEMORY[0x277D736B0] codeSignIdentifierWithAuditToken:&v77];
        v54 = v33;
        if (v33)
        {
          v56 = [MEMORY[0x277D73650] containerWithIdentifier:v33 type:1];
          containerURL = [v56 containerURL];
        }

        else
        {
          containerURL = 0;
          v56 = 0;
        }

        relativePath = [v19 relativePath];
        isAbsolutePath = [relativePath isAbsolutePath];

        if (isAbsolutePath)
        {
          relativePath2 = [containerURL relativePath];
          if (!relativePath2)
          {
            goto LABEL_27;
          }

          relativePath3 = [v19 relativePath];
          relativePath4 = [containerURL relativePath];
          v51 = [relativePath3 hasPrefix:relativePath4];

          if (!v51)
          {
            goto LABEL_27;
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          relativePath5 = [v19 relativePath];
          relativePath6 = [containerURL relativePath];
          v61 = [defaultManager triPath:relativePath5 relativeToParentPath:relativePath6];

          v40 = MEMORY[0x277CBEBC0];
          identifier = [v56 identifier];
          v41 = [v40 triContainerURLWithPath:v61 containerId:identifier containerType:{objc_msgSend(v56, "type")}];

          if (v41)
          {

LABEL_26:
            v19 = v41;
LABEL_27:

LABEL_28:
            v43 = *&self->_auditToken.val[4];
            v77 = *self->_auditToken.val;
            v78 = v43;
            v44 = [MEMORY[0x277D736B0] teamIdWithAuditToken:&v77];
            if (!v44)
            {
              (v27)[2](v27, 3, @"Unable to determine teamId for calling process.");
              v45 = 0;
              goto LABEL_32;
            }

            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke_146;
            v66[3] = &unk_279DE0C48;
            v72 = v22;
            v73 = v24;
            v66[4] = self;
            v67 = v25;
            v75 = versionCopy;
            v19 = v19;
            v68 = v19;
            v45 = v44;
            v69 = v45;
            v70 = v58;
            v74 = v57;
            v76 = idCopy;
            v71 = v65;
            v46 = MEMORY[0x2743948D0](v66);
            [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v46];
            *(v86 + 24) = 1;

            v47 = v72;
LABEL_30:

LABEL_32:
            goto LABEL_33;
          }

          v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to process defaults with path %@", v61];
          (v27)[2](v27, 2, v49);

          v48 = v61;
        }

        else
        {
          if (!v56)
          {
            (v27)[2](v27, 1, @"Unable to determine app container for calling process.");
LABEL_41:

            v45 = v54;
            v47 = v56;
            goto LABEL_30;
          }

          defaultManager = [v19 relativePath];
          if (!defaultManager)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"relativePath"}];
          }

          v42 = MEMORY[0x277CBEBC0];
          identifier2 = [v56 identifier];
          v41 = [v42 triContainerURLWithPath:defaultManager containerId:identifier2 containerType:{objc_msgSend(v56, "type")}];

          if (v41)
          {
            goto LABEL_26;
          }

          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to process defaults with URL %@", 0];
          (v27)[2](v27, 2, v48);
        }

        v19 = 0;
        goto LABEL_41;
      }

      (v27)[2](v27, 3, @"Calling process not entitled to specified application group.");
    }

    else
    {
      v31 = *&self->_auditToken.val[4];
      v77 = *self->_auditToken.val;
      v78 = v31;
      v58 = [MEMORY[0x277D736B0] codeSignIdentifierWithAuditToken:&v77];
      if (v58)
      {
        v30 = 2;
        goto LABEL_10;
      }

      (v27)[2](v27, 3, @"Unable to determine code sign identifier for calling process.");
    }
  }

  else
  {
    (v27)[2](v27, 2, @"Invalid application bundle identifier provided");
  }

LABEL_33:

LABEL_34:
  if (v23)
  {
    v23[2](v23);
  }

  _Block_object_dispose(&v85, 8);
}

void __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(a1 + 32) + 36);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (a2)
    {
      v7 = "end";
    }

    else
    {
      v7 = "begin";
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 64);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13 = TRICloudKitSupport_Container_EnumDescriptor();
    v14 = [v13 enumNameForValue:*(a1 + 68)];
    *buf = 67111170;
    v18 = v16;
    v19 = 2114;
    v20 = v6;
    v21 = 2048;
    v22 = v8;
    v23 = 2080;
    v24 = v7;
    v25 = 2114;
    v26 = v9;
    v27 = 1024;
    v28 = v10;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v11;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s registerNamespaceWithNamespaceName:%{public}@ compatibilityVersion:%u defaultsFileURL:%@ applicationGroup:%@ cloudKitContainerId:%@ completion:", buf, 0x54u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke_109(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to register namespace %{public}@: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277CCA450];
    v13 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke_146(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __163__TRIXPCNamespaceManagementRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_applicationGroup_cloudKitContainerId_completion___block_invoke_2_147;
  v14[3] = &unk_279DE0398;
  v15 = *(a1 + 80);
  v7 = MEMORY[0x2743948D0](v14);
  if (v5 && v6)
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = *(a1 + 72);
    LODWORD(v13) = *(a1 + 108);
    [v9 usingServerContext:v5 registerNamespaceWithNamespaceName:*(a1 + 40) compatibilityVersion:*(a1 + 104) defaultsFileURL:*(a1 + 48) teamId:*(a1 + 56) appContainerId:*(a1 + 64) appContainerType:*(a1 + 96) cloudKitContainerId:v13 bundleId:v10 completion:*(a1 + 88)];
  }

  else
  {
    v11 = *(a1 + 88);
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v11 + 16))(v11, 0, v12);
    }
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)deregisterNamespaceWithNamespaceName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke;
  v35[3] = &unk_279DE0208;
  v35[4] = self;
  v8 = nameCopy;
  v36 = v8;
  v9 = MEMORY[0x2743948D0](v35);
  v9[2](v9, 0);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke_149;
  v28[3] = &unk_279DE0C20;
  v30 = &v31;
  v10 = v9;
  v29 = v10;
  v11 = MEMORY[0x2743948D0](v28);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke_2;
  v25[3] = &unk_279DE0C70;
  v12 = v8;
  v26 = v12;
  v13 = completionCopy;
  v27 = v13;
  v14 = MEMORY[0x2743948D0](v25);
  v15 = v14;
  if (v12)
  {
    v16 = *&self->_auditToken.val[4];
    v24[0] = *self->_auditToken.val;
    v24[1] = v16;
    v17 = [MEMORY[0x277D736B0] teamIdWithAuditToken:v24];
    if (v17)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke_150;
      v19[3] = &unk_279DE07C8;
      v22 = v10;
      v23 = v13;
      v19[4] = self;
      v20 = v12;
      v21 = v17;
      v18 = MEMORY[0x2743948D0](v19);
      [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v18];
      *(v32 + 24) = 1;
    }

    else
    {
      (v15)[2](v15, 3, @"Unable to determine teamId for calling process.");
    }
  }

  else
  {
    (*(v14 + 16))(v14, 2, @"Namespace name must not be nil.");
  }

  if (v11)
  {
    v11[2](v11);
  }

  _Block_object_dispose(&v31, 8);
}

void __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = 67110146;
    if (!a2)
    {
      v9 = "begin";
    }

    v13[1] = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v10;
    v18 = 2080;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s deregisterNamespaceWithNamespaceName:%{public}@ completion:", v13, 0x30u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke_149(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to deregister namespace %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke_150(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__TRIXPCNamespaceManagementRequestHandler_deregisterNamespaceWithNamespaceName_completion___block_invoke_2_151;
  v11[3] = &unk_279DE0398;
  v12 = *(a1 + 56);
  v7 = MEMORY[0x2743948D0](v11);
  if (v5 && v6)
  {
    v8 = *(a1 + 32);
    [objc_opt_class() usingServerContext:v5 deregisterNamespaceWithName:*(a1 + 40) teamId:*(a1 + 48) taskQueue:v6 completion:*(a1 + 64)];
  }

  else
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)startDownloadNamespaceWithName:(id)name options:(id)options completion:(id)completion
{
  nameCopy = name;
  optionsCopy = options;
  completionCopy = completion;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke;
  v47[3] = &unk_279DE05E8;
  v47[4] = self;
  v11 = nameCopy;
  v48 = v11;
  v12 = optionsCopy;
  v49 = v12;
  v13 = MEMORY[0x2743948D0](v47);
  v13[2](v13, 0);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke_152;
  v40[3] = &unk_279DE0C20;
  v42 = &v43;
  v14 = v13;
  v41 = v14;
  v15 = MEMORY[0x2743948D0](v40);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke_2;
  v37[3] = &unk_279DE0C70;
  v16 = v11;
  v38 = v16;
  v17 = completionCopy;
  v39 = v17;
  v18 = MEMORY[0x2743948D0](v37);
  v19 = v18;
  if (v16)
  {
    if ([MEMORY[0x277D73810] validateSafeASCIISubsetIdentifier:v16])
    {
      v20 = *&self->_auditToken.val[4];
      v35 = *self->_auditToken.val;
      v36 = v20;
      v21 = [MEMORY[0x277D736B0] applicationBundleIdentifierWithAuditToken:&v35];
      if (v21)
      {
        if ([MEMORY[0x277D73810] validateSafeASCIISubsetIdentifier:v21])
        {
          v22 = *&self->_auditToken.val[4];
          v35 = *self->_auditToken.val;
          v36 = v22;
          v23 = [MEMORY[0x277D736B0] teamIdWithAuditToken:&v35];
          if (v23)
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke_166;
            v26[3] = &unk_279DE0CE0;
            v32 = v14;
            v33 = v17;
            v27 = v16;
            v34 = v19;
            v24 = v23;
            v28 = v24;
            v29 = v21;
            v30 = v12;
            selfCopy = self;
            v25 = MEMORY[0x2743948D0](v26);
            [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v25];
            *(v44 + 24) = 1;
          }

          else
          {
            (v19)[2](v19, 3, @"Unable to determine teamId for calling process.");
            v24 = 0;
          }
        }

        else
        {
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"appContainerId(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", v21];
          (v19)[2](v19, 2, v24);
        }
      }

      else
      {
        (v19)[2](v19, 3, @"Unable to determine applicationBundleId for calling process.");
        v21 = 0;
      }
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"namespaceName(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", v16];
      (v19)[2](v19, 2, v21);
    }
  }

  else
  {
    (*(v18 + 16))(v18, 2, @"Namespace name must be non-nil.");
  }

  if (v15)
  {
    v15[2](v15);
  }

  _Block_object_dispose(&v43, 8);
}

void __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    if (!a2)
    {
      v9 = "begin";
    }

    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s startDownloadNamespaceWithName:%{public}@ options:%{public}@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke_152(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to start download of namespace %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke_166(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__TRIXPCNamespaceManagementRequestHandler_startDownloadNamespaceWithName_options_completion___block_invoke_2_167;
  v19[3] = &unk_279DE0398;
  v20 = *(a1 + 72);
  v7 = MEMORY[0x2743948D0](v19);
  if (v5 && v6)
  {
    v8 = [v5 namespaceDatabase];
    v9 = [v8 dynamicNamespaceRecordWithNamespaceName:*(a1 + 32)];

    if (v9)
    {
      v18 = [TRITaskAttributionInternalInsecure alloc];
      v10 = *(a1 + 40);
      v11 = [v9 cloudKitContainer];
      v13 = *(a1 + 48);
      v12 = *(a1 + 56);
      v14 = v12;
      if (!v12)
      {
        v14 = [MEMORY[0x277D736A0] inexpensiveOptions];
      }

      v15 = [(TRITaskAttributionInternalInsecure *)v18 initWithTeamIdentifier:v10 triCloudKitContainer:v11 applicationBundleIdentifier:v13 networkOptions:v14];
      if (!v12)
      {
      }

      v16 = *(a1 + 64);
      [objc_opt_class() usingServerContext:v5 taskQueue:v6 startDownloadNamespaceWithName:*(a1 + 32) attribution:v15 completion:*(a1 + 80)];
    }

    else
    {
      (*(*(a1 + 88) + 16))();
      v9 = 0;
    }
  }

  else
  {
    v17 = *(a1 + 80);
    if (!v17)
    {
      goto LABEL_13;
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v17 + 16))(v17, 0, v9);
  }

LABEL_13:
  if (v7)
  {
    v7[2](v7);
  }
}

+ (id)_notificationKeyWithNamespace:(id)namespace assetIndexesByTreatment:(id)treatment assetIdsByFactorPack:(id)pack
{
  v64 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  treatmentCopy = treatment;
  packCopy = pack;
  context = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v45 = treatmentCopy;
  allKeys = [treatmentCopy allKeys];
  v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v11 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v58;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v57 + 1) + 8 * i);
        [v8 addObject:v15];
        v16 = [v45 objectForKeyedSubscript:v15];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __118__TRIXPCNamespaceManagementRequestHandler__notificationKeyWithNamespace_assetIndexesByTreatment_assetIdsByFactorPack___block_invoke;
        v55[3] = &unk_279DE0C98;
        v56 = v8;
        [v16 enumerateIndexesUsingBlock:v55];
      }

      v12 = [v10 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v12);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  allKeys2 = [packCopy allKeys];
  v18 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

  obj = v18;
  v19 = [v18 countByEnumeratingWithState:&v51 objects:v62 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v52;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v51 + 1) + 8 * j);
        [v8 addObject:v23];
        v24 = objc_autoreleasePoolPush();
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v25 = [packCopy objectForKeyedSubscript:v23];
        allObjects = [v25 allObjects];
        v27 = [allObjects sortedArrayUsingComparator:&__block_literal_global_11];

        v28 = [v27 countByEnumeratingWithState:&v47 objects:v61 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v48;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v48 != v30)
              {
                objc_enumerationMutation(v27);
              }

              assetId = [*(*(&v47 + 1) + 8 * k) assetId];
              [v8 addObject:assetId];
            }

            v29 = [v27 countByEnumeratingWithState:&v47 objects:v61 count:16];
          }

          while (v29);
        }

        objc_autoreleasePoolPop(v24);
      }

      v20 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
    }

    while (v20);
  }

  v33 = [MEMORY[0x277CCACA8] triHashStrings:v8 withDataSalt:0];
  v34 = objc_alloc(MEMORY[0x277CCACA8]);
  v35 = [v33 length];
  if (v35 >= 8)
  {
    v36 = 8;
  }

  else
  {
    v36 = v35;
  }

  v37 = [v33 subdataWithRange:{0, v36}];
  triHexlify = [v37 triHexlify];
  v39 = [v34 initWithFormat:@"%@.%@", namespaceCopy, triHexlify];

  objc_autoreleasePoolPop(context);
  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

void __118__TRIXPCNamespaceManagementRequestHandler__notificationKeyWithNamespace_assetIndexesByTreatment_assetIdsByFactorPack___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%tu", a2];
  [v2 addObject:v3];
}

uint64_t __118__TRIXPCNamespaceManagementRequestHandler__notificationKeyWithNamespace_assetIndexesByTreatment_assetIdsByFactorPack___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 assetId];
  v6 = [v4 assetId];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)startDownloadLevelsForFactors:(id)factors withNamespace:(id)namespace factorsState:(id)state options:(id)options completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  stateCopy = state;
  optionsCopy = options;
  completionCopy = completion;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke;
  v56[3] = &unk_279DE0410;
  v56[4] = self;
  v36 = factorsCopy;
  v57 = v36;
  v37 = namespaceCopy;
  v58 = v37;
  v17 = stateCopy;
  v59 = v17;
  v18 = optionsCopy;
  v60 = v18;
  v19 = MEMORY[0x2743948D0](v56);
  v19[2](v19, 0);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke_184;
  v49[3] = &unk_279DE0C20;
  v51 = &v52;
  v20 = v19;
  v50 = v20;
  v21 = MEMORY[0x2743948D0](v49);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke_2;
  v47[3] = &unk_279DE0548;
  v22 = completionCopy;
  v48 = v22;
  v23 = MEMORY[0x2743948D0](v47);
  v24 = MEMORY[0x277D425B0];
  v25 = *MEMORY[0x277D73AC0];
  v26 = TRILogCategory_Server();
  v27 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v27;
  if ([v24 taskWithAuditToken:buf hasTrueBooleanEntitlement:v25 logHandle:v26])
  {

LABEL_4:
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke_189;
    v38[3] = &unk_279DE0CE0;
    v44 = v20;
    v45 = v22;
    v39 = v36;
    v40 = v37;
    v41 = v17;
    selfCopy = self;
    v46 = v23;
    v43 = v18;
    v32 = MEMORY[0x2743948D0](v38);
    [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v32];
    *(v53 + 24) = 1;

    v33 = v44;
    goto LABEL_5;
  }

  v28 = *MEMORY[0x277D73AC8];
  v29 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v29;
  v30 = [MEMORY[0x277D736B0] objectForEntitlement:v28 withAuditToken:{buf, v36, v37}];
  v31 = v30 == 0;

  if (!v31)
  {
    goto LABEL_4;
  }

  (v23)[2](v23, 3, @"Calling process is not entitled to request on-demand factors.");
  v33 = TRILogCategory_Server();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v35 = self->_auditToken.val[5];
    *buf = 67109378;
    *&buf[4] = v35;
    *&buf[8] = 2112;
    *&buf[10] = v28;
    _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required for on-demand factor download: %@", buf, 0x12u);
  }

LABEL_5:

  if (v21)
  {
    v21[2](v21);
  }

  _Block_object_dispose(&v52, 8);
  v34 = *MEMORY[0x277D85DE8];
}

void __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = a1[6];
    v13 = a1[7];
    v14 = a1[8];
    v16[0] = 67110914;
    v16[1] = v5;
    v17 = 2114;
    v18 = v7;
    v19 = 2048;
    v20 = v10;
    v21 = 2080;
    v22 = v9;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v14;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s startDownloadLevelsForFactors:%{public}@ withNamespace:%{public}@ fstate:%{public}@ options:%{public}@ completion:", v16, 0x4Eu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke_184(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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

void __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke_189(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __119__TRIXPCNamespaceManagementRequestHandler_startDownloadLevelsForFactors_withNamespace_factorsState_options_completion___block_invoke_2_190;
  v67[3] = &unk_279DE0398;
  v68 = *(a1 + 72);
  v7 = MEMORY[0x2743948D0](v67);
  if (v5 && v6)
  {
    v8 = [v5 paths];
    v9 = v8 == 0;

    if (v9)
    {
      v53 = [MEMORY[0x277CCA890] currentHandler];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIXPCNamespaceManagementRequestHandler startDownloadLevelsForFactors:withNamespace:factorsState:options:completion:]_block_invoke"];
      [v53 handleFailureInFunction:v54 file:@"TRIXPCNamespaceManagementService.m" lineNumber:441 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v10 = [v5 keyValueStore];
    v11 = v10 == 0;

    if (v11)
    {
      v55 = [MEMORY[0x277CCA890] currentHandler];
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIXPCNamespaceManagementRequestHandler startDownloadLevelsForFactors:withNamespace:factorsState:options:completion:]_block_invoke"];
      [v55 handleFailureInFunction:v56 file:@"TRIXPCNamespaceManagementService.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    v66 = 0;
    v65 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v60 = 0;
    v12 = MEMORY[0x277D73718];
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = [v5 paths];
    v16 = [v12 validateDownloadForFactors:v13 withNamespace:v14 paths:v15 container:&v65 factorsState:*(a1 + 48) assetIndexesByTreatment:&v64 experimentIds:&v63 assetIdsByFactorPack:&v62 rolloutFactorNames:&v61 rolloutDeployments:&v60 error:&v66];

    v17 = *(a1 + 56);
    v18 = [objc_opt_class() _notificationKeyWithNamespace:*(a1 + 40) assetIndexesByTreatment:v64 assetIdsByFactorPack:v62];
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v64;
      _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_INFO, "Notification key is %{public}@, asset index: %@", buf, 0x16u);
    }

    if (!v16)
    {
      v37 = *(a1 + 80);
      if (v37)
      {
        (*(v37 + 16))(v37, 0, v66);
      }

      goto LABEL_41;
    }

    if ([v64 count] || objc_msgSend(v62, "count"))
    {
      v57 = objc_opt_new();
      v20 = *(a1 + 56);
      v21 = *(v20 + 32);
      *buf = *(v20 + 16);
      *&buf[16] = v21;
      v22 = [MEMORY[0x277D736B0] applicationBundleIdentifierWithAuditToken:buf];
      if (!v22)
      {
        v38 = objc_alloc(MEMORY[0x277CCACA8]);
        v39 = [MEMORY[0x277D736B0] entitlementKeyForApplicationBundleIdentifier];
        v28 = [v38 initWithFormat:@"Process is missing entitlement %@; you must declare the application bundle identifier explicitly in entitlements.", v39];

        (*(*(a1 + 88) + 16))();
        v24 = TRILogCategory_Server();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v40 = *(*(a1 + 56) + 36);
          v41 = [MEMORY[0x277D736B0] entitlementKeyForApplicationBundleIdentifier];
          *buf = 67109378;
          *&buf[4] = v40;
          *&buf[8] = 2114;
          *&buf[10] = v41;
          _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement %{public}@.", buf, 0x12u);
        }

LABEL_39:

        goto LABEL_40;
      }

      if ([MEMORY[0x277D73810] validateSafeASCIISubsetIdentifier:v22])
      {
        v23 = [v5 keyValueStore];
        v24 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:v23];

        v25 = [v24 subscribedFactorsForNamespaceName:*(a1 + 40)];
        v26 = [v25 mutableCopy];

        [v26 addObjectsFromArray:*(a1 + 32)];
        v27 = *(a1 + 40);
        v58 = 0;
        LOBYTE(v25) = [v24 setSubscriptionWithFactorNames:v26 inNamespaceName:v27 error:&v58];
        v28 = v58;
        if (v25)
        {

          v29 = [TRITaskAttributionInternalInsecure alloc];
          v30 = v65;
          v31 = *(a1 + 64);
          v32 = v31;
          if (!v31)
          {
            v32 = [MEMORY[0x277D736A0] inexpensiveOptions];
          }

          v28 = [(TRITaskAttributionInternalInsecure *)v29 initWithTeamIdentifier:0 triCloudKitContainer:v30 applicationBundleIdentifier:v22 networkOptions:v32];
          if (!v31)
          {
          }

          v33 = *(a1 + 56);
          [objc_opt_class() _startDownloadAssetIndexesByTreatment:v64 usingEntitlementWitness:v57 serverContext:v5 taskQueue:v6 experimentIds:v63 assetIdsByFactorPack:v62 rolloutFactorNames:v61 rolloutDeployments:v60 namespace:*(a1 + 40) taskAttribution:v28 factorsState:*(a1 + 48) notificationKey:v18];
          v34 = *(a1 + 80);
          if (v34)
          {
            (*(v34 + 16))(v34, v18, 0);
          }

          goto LABEL_40;
        }

        v48 = TRILogCategory_Server();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v28;
          _os_log_error_impl(&dword_26F567000, v48, OS_LOG_TYPE_ERROR, "Unable to update on-demand asset subscription, error: %{public}@", buf, 0xCu);
        }

        v49 = *(a1 + 80);
        if (v49)
        {
          (*(v49 + 16))(v49, 0, v28);
        }

        goto LABEL_39;
      }

      v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"appContainerId(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", v22];
      (*(*(a1 + 88) + 16))();
    }

    else
    {
      v42 = TRILogCategory_Server();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = *(a1 + 40);
        *buf = 138543362;
        *&buf[4] = v43;
        _os_log_impl(&dword_26F567000, v42, OS_LOG_TYPE_INFO, "Completing on-demand factor request for namespace %{public}@ without actually downloading assets.", buf, 0xCu);
      }

      v44 = [v5 keyValueStore];
      v22 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:v44];

      v45 = [v22 subscribedFactorsForNamespaceName:*(a1 + 40)];
      v28 = [v45 mutableCopy];

      [(TRITaskAttributionInternalInsecure *)v28 addObjectsFromArray:*(a1 + 32)];
      v46 = *(a1 + 40);
      v59 = 0;
      LOBYTE(v45) = [v22 setSubscriptionWithFactorNames:v28 inNamespaceName:v46 error:&v59];
      v57 = v59;
      if (v45)
      {

        v47 = *(a1 + 80);
        if (v47)
        {
          (*(v47 + 16))(v47, 0, 0);
        }

        [MEMORY[0x277D73698] notifyDownloadCompletedForKey:v18];
        goto LABEL_41;
      }

      v51 = TRILogCategory_Server();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v57;
        _os_log_error_impl(&dword_26F567000, v51, OS_LOG_TYPE_ERROR, "Unable to update on-demand asset subscription, error: %@", buf, 0xCu);
      }

      v52 = *(a1 + 80);
      if (v52)
      {
        (*(v52 + 16))(v52, 0, v57);
      }
    }

LABEL_40:

LABEL_41:
    goto LABEL_42;
  }

  v35 = *(a1 + 80);
  if (v35)
  {
    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v35 + 16))(v35, 0, v36);
  }

LABEL_42:
  if (v7)
  {
    v7[2](v7);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __114__TRIXPCNamespaceManagementRequestHandler_immediateDownloadForNamespaceNames_allowExpensiveNetworking_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (a2)
    {
      v8 = "end";
    }

    else
    {
      v8 = "begin";
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    v13[0] = 67110658;
    v13[1] = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v9;
    v18 = 2080;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    v22 = 2080;
    v23 = v11;
    v24 = 1026;
    v25 = qos_class_self();
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s immediateDownloadForNamespaceNames:%{public}@ allowExpensiveNetworking:%s qos:%{public}u completion:", v13, 0x40u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __114__TRIXPCNamespaceManagementRequestHandler_immediateDownloadForNamespaceNames_allowExpensiveNetworking_completion___block_invoke_205(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __114__TRIXPCNamespaceManagementRequestHandler_immediateDownloadForNamespaceNames_allowExpensiveNetworking_completion___block_invoke_207(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to start immediateDownloadForNamespaceNames %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __114__TRIXPCNamespaceManagementRequestHandler_immediateDownloadForNamespaceNames_allowExpensiveNetworking_completion___block_invoke_214(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9 && v5)
  {
    v6 = *(a1 + 32);
    [objc_opt_class() _immediateDownloadForNamespaceNames:*(a1 + 40) usingEntitlementWitness:*(a1 + 48) serverContext:v9 taskQueue:v5 allowExpensiveNetworking:*(a1 + 72) taskAttribution:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v7 + 16))(v7, v8);
    }
  }
}

- (void)removeLevelsForFactors:(id)factors withNamespace:(id)namespace factorsState:(id)state removeImmediately:(BOOL)immediately completion:(id)completion
{
  v62 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  stateCopy = state;
  completionCopy = completion;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke;
  v57[3] = &unk_279DE0438;
  v57[4] = self;
  v38 = factorsCopy;
  v58 = v38;
  v15 = namespaceCopy;
  v59 = v15;
  v16 = stateCopy;
  v60 = v16;
  v17 = MEMORY[0x2743948D0](v57);
  v17[2](v17, 0);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke_215;
  v50[3] = &unk_279DE0C20;
  v52 = &v53;
  v18 = v17;
  v51 = v18;
  v19 = MEMORY[0x2743948D0](v50);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke_2;
  v47[3] = &unk_279DE0C70;
  v20 = v15;
  v48 = v20;
  v21 = completionCopy;
  v49 = v21;
  v22 = MEMORY[0x2743948D0](v47);
  v23 = v22;
  if (!v20)
  {
    (*(v22 + 16))(v22, 2, @"Namespace name must not be nil.");
    goto LABEL_8;
  }

  v24 = MEMORY[0x277D425B0];
  v25 = *MEMORY[0x277D73AC0];
  v26 = TRILogCategory_Server();
  v27 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v27;
  if ([v24 taskWithAuditToken:buf hasTrueBooleanEntitlement:v25 logHandle:v26])
  {
  }

  else
  {
    v28 = *MEMORY[0x277D73AC8];
    v29 = *&self->_auditToken.val[4];
    *buf = *self->_auditToken.val;
    *&buf[16] = v29;
    v30 = [MEMORY[0x277D736B0] objectForEntitlement:v28 withAuditToken:buf];
    v31 = v30 == 0;

    if (v31)
    {
      (v23)[2](v23, 3, @"Calling process is not entitled to remove on-demand factors.");
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v36 = self->_auditToken.val[5];
        *buf = 67109378;
        *&buf[4] = v36;
        *&buf[8] = 2114;
        *&buf[10] = v28;
        _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required for on-demand factor removal: %{public}@", buf, 0x12u);
      }

      goto LABEL_7;
    }
  }

  v32 = objc_opt_new();
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke_219;
  v39[3] = &unk_279DE0D58;
  v44 = v18;
  v45 = v21;
  v39[4] = self;
  v40 = v38;
  v33 = v32;
  v41 = v33;
  v42 = v20;
  v43 = v16;
  immediatelyCopy = immediately;
  v34 = MEMORY[0x2743948D0](v39);
  [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v34];
  *(v54 + 24) = 1;

LABEL_7:
LABEL_8:

  if (v19)
  {
    v19[2](v19);
  }

  _Block_object_dispose(&v53, 8);
  v35 = *MEMORY[0x277D85DE8];
}

void __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = a1[6];
    v13 = a1[7];
    v15[0] = 67110658;
    v15[1] = v5;
    v16 = 2114;
    v17 = v7;
    v18 = 2048;
    v19 = v10;
    v20 = 2080;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s removeLevelsForFactors:%{public}@ namespace:%{public}@ fstate:%{public}@ completion:", v15, 0x44u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke_215(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to removeLevelsForFactors %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke_219(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __122__TRIXPCNamespaceManagementRequestHandler_removeLevelsForFactors_withNamespace_factorsState_removeImmediately_completion___block_invoke_2_220;
  v13[3] = &unk_279DE0398;
  v14 = *(a1 + 72);
  v7 = MEMORY[0x2743948D0](v13);
  if (v5 && v6)
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    LOBYTE(v12) = *(a1 + 88);
    [v9 _removeAssetFactors:*(a1 + 40) usingEntitlementWitness:*(a1 + 48) serverContext:v5 taskQueue:v6 namespace:*(a1 + 56) factorsState:*(a1 + 64) removeImmediately:v12 completion:*(a1 + 80)];
  }

  else
  {
    v10 = *(a1 + 80);
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v10 + 16))(v10, v11);
    }
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)setPurgeabilityLevelsForFactors:(id)factors forNamespaceName:(id)name completion:(id)completion
{
  factorsCopy = factors;
  nameCopy = name;
  completionCopy = completion;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke;
  v37[3] = &unk_279DE05E8;
  v37[4] = self;
  v11 = factorsCopy;
  v38 = v11;
  v12 = nameCopy;
  v39 = v12;
  v13 = MEMORY[0x2743948D0](v37);
  v13[2](v13, 0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke_221;
  v30[3] = &unk_279DE0C20;
  v32 = &v33;
  v14 = v13;
  v31 = v14;
  v15 = MEMORY[0x2743948D0](v30);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke_2;
  v24 = &unk_279DE07C8;
  v16 = v14;
  v28 = v16;
  v17 = completionCopy;
  v29 = v17;
  selfCopy = self;
  v18 = v12;
  v26 = v18;
  v19 = v11;
  v27 = v19;
  v20 = MEMORY[0x2743948D0](&v21);
  [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v20, v21, v22, v23, v24, selfCopy];
  *(v34 + 24) = 1;

  if (v15)
  {
    v15[2](v15);
  }

  _Block_object_dispose(&v33, 8);
}

void __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    if (!a2)
    {
      v9 = "begin";
    }

    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s setPurgeabilityLevelsForFactors:%{public}@ forNamespace:%{public}@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke_221(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke_3;
  v36[3] = &unk_279DE0398;
  v37 = *(a1 + 56);
  v7 = MEMORY[0x2743948D0](v36);
  if (v5 && v6)
  {
    v8 = [v5 paths];
    v9 = v8 == 0;

    if (v9)
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIXPCNamespaceManagementRequestHandler setPurgeabilityLevelsForFactors:forNamespaceName:completion:]_block_invoke_2"];
      [v31 handleFailureInFunction:v32 file:@"TRIXPCNamespaceManagementService.m" lineNumber:789 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke_4;
    v34[3] = &unk_279DE0548;
    v35 = *(a1 + 64);
    v10 = MEMORY[0x2743948D0](v34);
    v33 = 0;
    [*(a1 + 32) _validateNamespaceName:*(a1 + 40) error:&v33];
    if (v33)
    {
      v11 = *(a1 + 64);
      if (v11)
      {
        (*(v11 + 16))();
      }

      goto LABEL_15;
    }

    v14 = MEMORY[0x277D425B0];
    v15 = *(a1 + 32);
    v16 = *MEMORY[0x277D73AC0];
    v17 = TRILogCategory_Server();
    v18 = *(v15 + 32);
    *buf = *(v15 + 16);
    *&buf[16] = v18;
    if ([v14 taskWithAuditToken:buf hasTrueBooleanEntitlement:v16 logHandle:v17])
    {
    }

    else
    {
      v19 = *MEMORY[0x277D73AC8];
      v20 = *(a1 + 32);
      v21 = *(v20 + 32);
      *buf = *(v20 + 16);
      *&buf[16] = v21;
      v22 = [MEMORY[0x277D736B0] objectForEntitlement:v19 withAuditToken:buf];
      v23 = v22 == 0;

      if (v23)
      {
        (v10)[2](v10, 3, @"Calling process is not entitled to set purgeability factor levels.");
        v24 = TRILogCategory_Server();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = *(*(a1 + 32) + 36);
          *buf = 67109378;
          *&buf[4] = v30;
          *&buf[8] = 2114;
          *&buf[10] = v19;
          _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required to set purgeability factor levels: %{public}@", buf, 0x12u);
        }

        goto LABEL_14;
      }
    }

    v24 = objc_opt_new();
    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    v27 = *(a1 + 32);
    v28 = [v5 paths];
    [v27 _setPurgeabilityLevelsForFactors:v25 usingEntitlementWitness:v24 namespace:v26 paths:v28 completion:*(a1 + 64)];

LABEL_14:
LABEL_15:

    v13 = v35;
    goto LABEL_16;
  }

  v12 = *(a1 + 64);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
  (*(v12 + 16))(v12, v13);
LABEL_16:

LABEL_17:
  if (v7)
  {
    v7[2](v7);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __103__TRIXPCNamespaceManagementRequestHandler_setPurgeabilityLevelsForFactors_forNamespaceName_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
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

- (void)loadNamespaceMetadataForNamespaceName:(id)name completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke;
  v42[3] = &unk_279DE0208;
  v42[4] = self;
  v8 = nameCopy;
  v43 = v8;
  v9 = MEMORY[0x2743948D0](v42);
  v9[2](v9, 0);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke_225;
  v37[3] = &unk_279DE0C20;
  v39 = v40;
  v10 = v9;
  v38 = v10;
  v11 = MEMORY[0x2743948D0](v37);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke_2;
  v35[3] = &unk_279DE0548;
  v12 = completionCopy;
  v36 = v12;
  v13 = MEMORY[0x2743948D0](v35);
  v34 = 0;
  [(TRIXPCNamespaceManagementRequestHandler *)self _validateNamespaceName:v8 error:&v34];
  if (!v34)
  {
    v14 = MEMORY[0x277D425B0];
    v15 = *MEMORY[0x277D73AC0];
    v16 = TRILogCategory_Server();
    v17 = *&self->_auditToken.val[4];
    *buf = *self->_auditToken.val;
    *&buf[16] = v17;
    if ([v14 taskWithAuditToken:buf hasTrueBooleanEntitlement:v15 logHandle:v16])
    {
    }

    else
    {
      v18 = *MEMORY[0x277D73AC8];
      v19 = *&self->_auditToken.val[4];
      *buf = *self->_auditToken.val;
      *&buf[16] = v19;
      v20 = [MEMORY[0x277D736B0] objectForEntitlement:v18 withAuditToken:buf];
      v21 = v20 == 0;

      if (v21)
      {
        (v13)[2](v13, 3, @"Calling process is not entitled to load purgeability factor levels.");
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v25 = self->_auditToken.val[5];
          *buf = 67109378;
          *&buf[4] = v25;
          *&buf[8] = 2114;
          *&buf[10] = v18;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required to load purgeability factor levels: %{public}@", buf, 0x12u);
        }

        goto LABEL_8;
      }
    }

    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke_229;
    v29 = &unk_279DE0610;
    v32 = v10;
    v33 = v12;
    selfCopy = self;
    v31 = v8;
    v22 = MEMORY[0x2743948D0](&v26);
    [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v22, v26, v27, v28, v29, selfCopy];

    v23 = v32;
LABEL_8:

    goto LABEL_9;
  }

  if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }

LABEL_9:

  if (v11)
  {
    v11[2](v11);
  }

  _Block_object_dispose(v40, 8);
  v24 = *MEMORY[0x277D85DE8];
}

void __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = 67110146;
    if (!a2)
    {
      v9 = "begin";
    }

    v13[1] = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v10;
    v18 = 2080;
    v19 = v9;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s loadNamespaceMetadataForNamespaceName:%{public}@ completion:", v13, 0x30u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke_225(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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

void __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke_229(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __92__TRIXPCNamespaceManagementRequestHandler_loadNamespaceMetadataForNamespaceName_completion___block_invoke_2_230;
  v19 = &unk_279DE0398;
  v20 = *(a1 + 48);
  v7 = MEMORY[0x2743948D0](&v16);
  if (v5 && v6)
  {
    v8 = [v5 paths];

    if (!v8)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIXPCNamespaceManagementRequestHandler loadNamespaceMetadataForNamespaceName:completion:]_block_invoke"];
      [v14 handleFailureInFunction:v15 file:@"TRIXPCNamespaceManagementService.m" lineNumber:893 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths", v16, v17, v18, v19}];
    }

    v9 = objc_opt_new();
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = [v5 paths];
    [v10 _loadNamespaceMetadataForNamespace:v11 usingEntitlementWitness:v9 withPaths:v12 completion:*(a1 + 56)];
  }

  else
  {
    v13 = *(a1 + 56);
    if (!v13)
    {
      goto LABEL_9;
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v13 + 16))(v13, 0, v9);
  }

LABEL_9:
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)setProvisionalFactorPackId:(id)id forNamespaceName:(id)name completion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  completionCopy = completion;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke;
  v51[3] = &unk_279DE05E8;
  v51[4] = self;
  v11 = idCopy;
  v52 = v11;
  v12 = nameCopy;
  v53 = v12;
  v13 = MEMORY[0x2743948D0](v51);
  v13[2](v13, 0);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke_231;
  v44[3] = &unk_279DE0C20;
  v46 = &v47;
  v14 = v13;
  v45 = v14;
  v15 = MEMORY[0x2743948D0](v44);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke_2;
  v41[3] = &unk_279DE0C70;
  v16 = v12;
  v42 = v16;
  v17 = completionCopy;
  v43 = v17;
  v18 = MEMORY[0x2743948D0](v41);
  v19 = v18;
  if (!v16)
  {
    (*(v18 + 16))(v18, 2, @"Namespace name must not be nil.");
    goto LABEL_8;
  }

  v20 = MEMORY[0x277D425B0];
  v21 = *MEMORY[0x277D73AC0];
  v22 = TRILogCategory_Server();
  v23 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v23;
  if ([v20 taskWithAuditToken:buf hasTrueBooleanEntitlement:v21 logHandle:v22])
  {
  }

  else
  {
    v24 = *MEMORY[0x277D73AC8];
    v25 = *&self->_auditToken.val[4];
    *buf = *self->_auditToken.val;
    *&buf[16] = v25;
    v26 = [MEMORY[0x277D736B0] objectForEntitlement:v24 withAuditToken:buf];
    v27 = v26 == 0;

    if (v27)
    {
      (v19)[2](v19, 3, @"Calling process is not entitled to set factor pack id provisional.");
      v29 = TRILogCategory_Server();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v31 = self->_auditToken.val[5];
        *buf = 67109378;
        *&buf[4] = v31;
        *&buf[8] = 2114;
        *&buf[10] = v24;
        _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required set factor pack id provisional: %{public}@", buf, 0x12u);
      }

      goto LABEL_7;
    }
  }

  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke_235;
  v35 = &unk_279DE07C8;
  v39 = v14;
  v40 = v17;
  selfCopy = self;
  v37 = v11;
  v38 = v16;
  v28 = MEMORY[0x2743948D0](&v32);
  [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v28, v32, v33, v34, v35, selfCopy];
  *(v48 + 24) = 1;

  v29 = v39;
LABEL_7:

LABEL_8:
  if (v15)
  {
    v15[2](v15);
  }

  _Block_object_dispose(&v47, 8);
  v30 = *MEMORY[0x277D85DE8];
}

void __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (a2)
    {
      v8 = "end";
    }

    else
    {
      v8 = "begin";
    }

    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    v13[0] = 67110658;
    v13[1] = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v9;
    v18 = 2080;
    v19 = v8;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    v24 = 1024;
    v25 = qos_class_self();
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s setProvisionalFactorPackId:%{public}@ forNamespaceName:%{public}@ completion: qos:%u", v13, 0x40u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke_231(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to setProvisionalFactorPackId %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke_235(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__TRIXPCNamespaceManagementRequestHandler_setProvisionalFactorPackId_forNamespaceName_completion___block_invoke_2_236;
  v11[3] = &unk_279DE0398;
  v12 = *(a1 + 56);
  v7 = MEMORY[0x2743948D0](v11);
  if (v5 && v6)
  {
    v8 = objc_opt_new();
    v9 = *(a1 + 32);
    [objc_opt_class() _setProvisionalFactorPackId:*(a1 + 40) usingEntitlementWitness:v8 serverContext:v5 forNamespaceName:*(a1 + 48) completion:*(a1 + 64)];
  }

  else
  {
    v10 = *(a1 + 64);
    if (!v10)
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v10 + 16))(v10, 0, v8);
  }

LABEL_7:
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)rejectFactorPackId:(id)id forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  deploymentCopy = deployment;
  completionCopy = completion;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke;
  v53[3] = &unk_279DE05E8;
  v53[4] = self;
  v13 = idCopy;
  v54 = v13;
  v14 = nameCopy;
  v55 = v14;
  v15 = MEMORY[0x2743948D0](v53);
  v15[2](v15, 0);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_237;
  v46[3] = &unk_279DE0C20;
  v48 = &v49;
  v16 = v15;
  v47 = v16;
  v17 = MEMORY[0x2743948D0](v46);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_2;
  v43[3] = &unk_279DE0C70;
  v18 = v14;
  v44 = v18;
  v19 = completionCopy;
  v45 = v19;
  v20 = MEMORY[0x2743948D0](v43);
  v21 = v20;
  if (!v18)
  {
    (*(v20 + 16))(v20, 2, @"Namespace name must not be nil.");
    goto LABEL_8;
  }

  v22 = MEMORY[0x277D425B0];
  v23 = *MEMORY[0x277D73AC0];
  v24 = TRILogCategory_Server();
  v25 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v25;
  if ([v22 taskWithAuditToken:buf hasTrueBooleanEntitlement:v23 logHandle:v24])
  {
  }

  else
  {
    v26 = *MEMORY[0x277D73AC8];
    v27 = *&self->_auditToken.val[4];
    *buf = *self->_auditToken.val;
    *&buf[16] = v27;
    v28 = [MEMORY[0x277D736B0] objectForEntitlement:v26 withAuditToken:buf];
    v29 = v28 == 0;

    if (v29)
    {
      (v21)[2](v21, 3, @"Calling process is not entitled to reject factor pack id.");
      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v34 = self->_auditToken.val[5];
        *buf = 67109378;
        *&buf[4] = v34;
        *&buf[8] = 2114;
        *&buf[10] = v26;
        _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required reject factor pack id: %{public}@", buf, 0x12u);
      }

      goto LABEL_7;
    }
  }

  v30 = objc_opt_new();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_241;
  v36[3] = &unk_279DE0D80;
  v41 = v16;
  v42 = v19;
  v36[4] = self;
  v37 = v13;
  v31 = v30;
  v38 = v31;
  v39 = v18;
  v40 = deploymentCopy;
  v32 = MEMORY[0x2743948D0](v36);
  [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v32];
  *(v50 + 24) = 1;

LABEL_7:
LABEL_8:

  if (v17)
  {
    v17[2](v17);
  }

  _Block_object_dispose(&v49, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    if (!a2)
    {
      v9 = "begin";
    }

    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s rejectFactorPackId:%{public}@ forNamespaceName:%{public}@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_237(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to rejectFactorPackId %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_241(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__TRIXPCNamespaceManagementRequestHandler_rejectFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_2_242;
  v11[3] = &unk_279DE0398;
  v12 = *(a1 + 72);
  v7 = MEMORY[0x2743948D0](v11);
  if (v5 && v6)
  {
    v8 = *(a1 + 32);
    [objc_opt_class() _rejectFactorPackId:*(a1 + 40) usingEntitlementWitness:*(a1 + 48) serverContext:v5 forNamespaceName:*(a1 + 56) rolloutDeployment:*(a1 + 64) completion:*(a1 + 80)];
  }

  else
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)promoteFactorPackId:(id)id forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  deploymentCopy = deployment;
  completionCopy = completion;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke;
  v53[3] = &unk_279DE05E8;
  v53[4] = self;
  v13 = idCopy;
  v54 = v13;
  v14 = nameCopy;
  v55 = v14;
  v15 = MEMORY[0x2743948D0](v53);
  v15[2](v15, 0);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_243;
  v46[3] = &unk_279DE0C20;
  v48 = &v49;
  v16 = v15;
  v47 = v16;
  v17 = MEMORY[0x2743948D0](v46);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_2;
  v43[3] = &unk_279DE0C70;
  v18 = v14;
  v44 = v18;
  v19 = completionCopy;
  v45 = v19;
  v20 = MEMORY[0x2743948D0](v43);
  v21 = v20;
  if (!v18)
  {
    (*(v20 + 16))(v20, 2, @"Namespace name must not be nil.");
    goto LABEL_8;
  }

  v22 = MEMORY[0x277D425B0];
  v23 = *MEMORY[0x277D73AC0];
  v24 = TRILogCategory_Server();
  v25 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v25;
  if ([v22 taskWithAuditToken:buf hasTrueBooleanEntitlement:v23 logHandle:v24])
  {
  }

  else
  {
    v26 = *MEMORY[0x277D73AC8];
    v27 = *&self->_auditToken.val[4];
    *buf = *self->_auditToken.val;
    *&buf[16] = v27;
    v28 = [MEMORY[0x277D736B0] objectForEntitlement:v26 withAuditToken:buf];
    v29 = v28 == 0;

    if (v29)
    {
      (v21)[2](v21, 3, @"Calling process is not entitled to remove on-demand factors.");
      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v34 = self->_auditToken.val[5];
        *buf = 67109378;
        *&buf[4] = v34;
        *&buf[8] = 2114;
        *&buf[10] = v26;
        _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required for on-demand factor removal: %{public}@", buf, 0x12u);
      }

      goto LABEL_7;
    }
  }

  v30 = objc_opt_new();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_244;
  v36[3] = &unk_279DE0D80;
  v41 = v16;
  v42 = v19;
  v36[4] = self;
  v37 = v13;
  v31 = v30;
  v38 = v31;
  v39 = v18;
  v40 = deploymentCopy;
  v32 = MEMORY[0x2743948D0](v36);
  [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v32];
  *(v50 + 24) = 1;

LABEL_7:
LABEL_8:

  if (v17)
  {
    v17[2](v17);
  }

  _Block_object_dispose(&v49, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    if (!a2)
    {
      v9 = "begin";
    }

    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s promoteFactorPackId:%{public}@ forNamespaceName:%{public}@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_243(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to promoteFactorPackId for %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_244(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__TRIXPCNamespaceManagementRequestHandler_promoteFactorPackId_forNamespaceName_rolloutDeployment_completion___block_invoke_2_245;
  v11[3] = &unk_279DE0398;
  v12 = *(a1 + 72);
  v7 = MEMORY[0x2743948D0](v11);
  if (v5 && v6)
  {
    v8 = *(a1 + 32);
    [objc_opt_class() _promoteFactorPackId:*(a1 + 40) usingEntitlementWitness:*(a1 + 48) serverContext:v5 forNamespaceName:*(a1 + 56) rolloutDeployment:*(a1 + 64) completion:*(a1 + 80)];
  }

  else
  {
    v9 = *(a1 + 80);
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)statusOfDownloadForFactors:(id)factors withNamespace:(id)namespace factorsState:(id)state completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  stateCopy = state;
  completionCopy = completion;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke;
  v47[3] = &unk_279DE0438;
  v47[4] = self;
  v14 = factorsCopy;
  v48 = v14;
  v15 = namespaceCopy;
  v49 = v15;
  v16 = stateCopy;
  v50 = v16;
  v17 = MEMORY[0x2743948D0](v47);
  v17[2](v17, 0);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_246;
  v40[3] = &unk_279DE0C20;
  v42 = &v43;
  v18 = v17;
  v41 = v18;
  v19 = MEMORY[0x2743948D0](v40);
  if ([MEMORY[0x277D73748] unsafeFirstAuthenticationState])
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_247;
    v38[3] = &unk_279DE0548;
    v20 = completionCopy;
    v39 = v20;
    v21 = MEMORY[0x2743948D0](v38);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_2;
    v30 = &unk_279DE0DD0;
    v35 = v18;
    v36 = v20;
    selfCopy = self;
    v22 = v21;
    v37 = v22;
    v32 = v14;
    v33 = v15;
    v34 = v16;
    v23 = MEMORY[0x2743948D0](&v27);
    [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v23, v27, v28, v29, v30, selfCopy];
    *(v44 + 24) = 1;

    v24 = v39;
LABEL_7:

    goto LABEL_8;
  }

  v25 = TRILogCategory_Server();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v15;
    _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "cannot determine download status of factors for %@", buf, 0xCu);
  }

  if (completionCopy)
  {
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, v24);
    goto LABEL_7;
  }

LABEL_8:
  if (v19)
  {
    v19[2](v19);
  }

  _Block_object_dispose(&v43, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke(void *a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 36);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (a2)
    {
      v8 = "end";
    }

    else
    {
      v8 = "begin";
    }

    v9 = a1[4];
    v10 = a1[5];
    v12 = a1[6];
    v11 = a1[7];
    v14[0] = 67110914;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v9;
    v19 = 2080;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v11;
    v27 = 1026;
    v28 = qos_class_self();
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s statusOfDownloadForFactors:%{public}@ withNamespace:%{public}@ fstate:%{public}@ qos:%{public}u completion:", v14, 0x4Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_246(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_247(uint64_t a1, uint64_t a2, void *a3)
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

void __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_3;
  v47[3] = &unk_279DE0398;
  v48 = *(a1 + 64);
  v7 = MEMORY[0x2743948D0](v47);
  if (v5 && v6)
  {
    v8 = [v5 paths];
    v9 = v8 == 0;

    if (v9)
    {
      v40 = [MEMORY[0x277CCA890] currentHandler];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIXPCNamespaceManagementRequestHandler statusOfDownloadForFactors:withNamespace:factorsState:completion:]_block_invoke_2"];
      [v40 handleFailureInFunction:v41 file:@"TRIXPCNamespaceManagementService.m" lineNumber:1157 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v10 = MEMORY[0x277D425B0];
    v11 = *(a1 + 32);
    v12 = *MEMORY[0x277D73AC0];
    v13 = TRILogCategory_Server();
    v14 = *(v11 + 32);
    *buf = *(v11 + 16);
    *&buf[16] = v14;
    if ([v10 taskWithAuditToken:buf hasTrueBooleanEntitlement:v12 logHandle:v13])
    {

LABEL_10:
      v46 = 0;
      v45 = 0;
      v43 = 0;
      v44 = 0;
      v22 = MEMORY[0x277D73718];
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v25 = [v5 paths];
      v26 = [v22 validateDownloadForFactors:v23 withNamespace:v24 paths:v25 container:&v45 factorsState:*(a1 + 56) assetIndexesByTreatment:&v44 experimentIds:0 assetIdsByFactorPack:&v43 rolloutFactorNames:0 rolloutDeployments:0 error:&v46];

      v27 = *(a1 + 32);
      v28 = [objc_opt_class() _notificationKeyWithNamespace:*(a1 + 48) assetIndexesByTreatment:v44 assetIdsByFactorPack:v43];
      v29 = TRILogCategory_Server();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v44;
        _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_INFO, "Notification key is %@, asset index: %@", buf, 0x16u);
      }

      if (v26)
      {
        if ([v44 count] || objc_msgSend(v43, "count"))
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          *&buf[24] = 1;
          v30 = objc_autoreleasePoolPush();
          v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v28, 0}];
          objc_autoreleasePoolPop(v30);
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_252;
          v42[3] = &unk_279DE0DA8;
          v42[4] = buf;
          [v6 enumerateTasksWithTagsIntersectingTagSet:v31 block:v42];

          v32 = *(a1 + 72);
          if (v32)
          {
            *(*&buf[8] + 24);
            (*(v32 + 16))();
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v36 = TRILogCategory_Server();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = *(a1 + 48);
            *buf = 138412290;
            *&buf[4] = v37;
            _os_log_impl(&dword_26F567000, v36, OS_LOG_TYPE_INFO, "Got on-demand factor status for namespace %@ with all assets already downloaded.", buf, 0xCu);
          }

          v38 = *(a1 + 72);
          if (v38)
          {
            (*(v38 + 16))(v38, 4, 0, 0);
          }

          [MEMORY[0x277D73698] notifyDownloadCompletedForKey:v28];
        }
      }

      else
      {
        v33 = *(a1 + 72);
        if (v33)
        {
          (*(v33 + 16))(v33, 0, 0, v46);
        }
      }

      goto LABEL_21;
    }

    v17 = *MEMORY[0x277D73AC8];
    v18 = *(a1 + 32);
    v19 = *(v18 + 32);
    *buf = *(v18 + 16);
    *&buf[16] = v19;
    v20 = [MEMORY[0x277D736B0] objectForEntitlement:v17 withAuditToken:buf];
    v21 = v20 == 0;

    if (!v21)
    {
      goto LABEL_10;
    }

    (*(*(a1 + 80) + 16))();
    v35 = TRILogCategory_Server();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v39 = *(*(a1 + 32) + 36);
      *buf = 67109378;
      *&buf[4] = v39;
      *&buf[8] = 2114;
      *&buf[10] = v17;
      _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "XPC client process with pid %d is missing entitlement required for seeing download status of on-demand factors: %{public}@", buf, 0x12u);
    }
  }

  else
  {
    v15 = *(a1 + 72);
    if (v15)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v15 + 16))(v15, 0, 0, v16);
    }
  }

LABEL_21:
  if (v7)
  {
    v7[2](v7);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __108__TRIXPCNamespaceManagementRequestHandler_statusOfDownloadForFactors_withNamespace_factorsState_completion___block_invoke_252(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 task];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v10 task];
    v8 = [v7 isCurrentlyExecuting];
    v9 = 2;
    if (!v8)
    {
      v9 = 3;
    }

    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  *a3 = 1;
}

- (void)getSandboxExtensionTokensForIdentifierQueryWithCompletion:(id)completion
{
  completionCopy = completion;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __101__TRIXPCNamespaceManagementRequestHandler_getSandboxExtensionTokensForIdentifierQueryWithCompletion___block_invoke;
  v26[3] = &unk_279DE0460;
  v26[4] = self;
  v5 = MEMORY[0x2743948D0](v26);
  v5[2](v5, 0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__TRIXPCNamespaceManagementRequestHandler_getSandboxExtensionTokensForIdentifierQueryWithCompletion___block_invoke_255;
  v19[3] = &unk_279DE0C20;
  v21 = &v22;
  v6 = v5;
  v20 = v6;
  v7 = MEMORY[0x2743948D0](v19);
  if ([MEMORY[0x277D42598] isClassCLocked])
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to obtain sandbox extension tokens while device is Class C locked (device has not been unlocked since boot)", &v18, 2u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIGeneralErrorDomain" code:5 userInfo:0];
    mEMORY[0x277D737E0] = objc_opt_new();
    completionCopy[2](completionCopy, mEMORY[0x277D737E0], v9);
  }

  else
  {
    v9 = objc_opt_new();
    mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
    treatmentsDir = [mEMORY[0x277D737E0] treatmentsDir];
    v12 = [TRISandboxExtensionFactory extensionTokenForPath:treatmentsDir extensionClass:0];

    if (v12)
    {
      [v9 addObject:v12];
    }

    namespaceDescriptorsDir = [mEMORY[0x277D737E0] namespaceDescriptorsDir];
    v14 = [TRISandboxExtensionFactory extensionTokenForPath:namespaceDescriptorsDir extensionClass:0];

    if (v14)
    {
      [v9 addObject:v14];
    }

    if ([v9 count] == 2)
    {
      v15 = [v9 copy];
      completionCopy[2](completionCopy, v15, 0);
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Could not obtain sandbox extension tokens", &v18, 2u);
      }

      v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIGeneralErrorDomain" code:16 userInfo:0];
      v17 = objc_opt_new();
      completionCopy[2](completionCopy, v17, v15);
    }

    *(v23 + 24) = 1;
  }

  if (v7)
  {
    v7[2](v7);
  }

  _Block_object_dispose(&v22, 8);
}

void __101__TRIXPCNamespaceManagementRequestHandler_getSandboxExtensionTokensForIdentifierQueryWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
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
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s getSandboxExtensionTokensForIdentifierQueryWithCompletioncompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __101__TRIXPCNamespaceManagementRequestHandler_getSandboxExtensionTokensForIdentifierQueryWithCompletion___block_invoke_255(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_setPurgeabilityLevelsForFactors:(id)factors usingEntitlementWitness:(id)witness namespace:(id)namespace paths:(id)paths completion:(id)completion
{
  factorsCopy = factors;
  witnessCopy = witness;
  namespaceCopy = namespace;
  pathsCopy = paths;
  completionCopy = completion;
  if (witnessCopy)
  {
    if (factorsCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1286 description:{@"Invalid parameter not satisfying: %@", @"purgeabilityLevelsForFactors"}];

    if (namespaceCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1287 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1285 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

  if (!factorsCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!namespaceCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __127__TRIXPCNamespaceManagementRequestHandler__setPurgeabilityLevelsForFactors_usingEntitlementWitness_namespace_paths_completion___block_invoke;
  v26[3] = &unk_279DE0DF8;
  v29 = factorsCopy;
  v30 = completionCopy;
  v26[4] = self;
  v27 = namespaceCopy;
  v28 = pathsCopy;
  v18 = factorsCopy;
  v19 = pathsCopy;
  v20 = namespaceCopy;
  v21 = completionCopy;
  v22 = MEMORY[0x2743948D0](v26);
  [(TRIXPCNamespaceManagementRequestHandler *)self runBlockWhenServerAvailable:v22];
}

void __127__TRIXPCNamespaceManagementRequestHandler__setPurgeabilityLevelsForFactors_usingEntitlementWitness_namespace_paths_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 paths];

    if (!v8)
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIXPCNamespaceManagementRequestHandler _setPurgeabilityLevelsForFactors:usingEntitlementWitness:namespace:paths:completion:]_block_invoke"];
      [v31 handleFailureInFunction:v32 file:@"TRIXPCNamespaceManagementService.m" lineNumber:1294 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = [v5 paths];
    v12 = [v9 _factorProviderChainForNamespace:v10 paths:v11];

    v39 = 0;
    if ([*(a1 + 32) _validateSetPurgeabilityLevelRequestUsingFactorProviderChain:v12 paths:*(a1 + 48) purgeabilityLevelsForFactors:*(a1 + 56) error:&v39])
    {
      v34 = v7;
      v13 = objc_opt_new();
      v33 = v12;
      [v13 setCompatibilityVersion:{objc_msgSend(v12, "namespaceCompatibilityVersion")}];
      v14 = objc_alloc_init(MEMORY[0x277D73B80]);
      [v13 setFactorNamePurgeabilityLevels:v14];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = *(a1 + 56);
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v35 + 1) + 8 * i);
            v21 = [*(a1 + 56) objectForKey:v20];
            v22 = [v21 intValue];

            v23 = [v13 factorNamePurgeabilityLevels];
            [v23 setEnum:v22 forKey:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v17);
      }

      v24 = objc_alloc(MEMORY[0x277D73688]);
      v25 = [v5 paths];
      v26 = [v24 initWithPaths:v25];

      [v26 mergeNamespaceMetadata:v13 forNamespaceName:*(a1 + 40)];
      v27 = *(a1 + 64);
      if (v27)
      {
        (*(v27 + 16))(v27, 0);
      }

      v12 = v33;
      v7 = v34;
    }

    else
    {
      v29 = *(a1 + 64);
      if (v29)
      {
        (*(v29 + 16))(v29, v39);
      }
    }

    goto LABEL_21;
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v28 + 16))(v28, v12);
LABEL_21:
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validateSetPurgeabilityLevelRequestUsingFactorProviderChain:(id)chain paths:(id)paths purgeabilityLevelsForFactors:(id)factors error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  chainCopy = chain;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  factorsCopy = factors;
  v10 = [factorsCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v10)
  {
    v19 = 1;
    goto LABEL_17;
  }

  v11 = v10;
  errorCopy = error;
  v12 = *v31;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(factorsCopy);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
      v15 = [chainCopy levelForFactor:v14];
      v16 = [v15 fileOrDirectoryLevelWithIsDir:0];
      if (!v16)
      {
        v20 = @"Found invalid factor name %@";
LABEL_14:
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v20, v14];
        v22 = TRILogCategory_Server();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v21;
          _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v23 = objc_alloc(MEMORY[0x277CCA9B8]);
        v35 = *MEMORY[0x277CCA450];
        *buf = v21;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v35 count:1];
        v25 = [v23 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v24];

        v26 = *errorCopy;
        *errorCopy = v25;

        v19 = 0;
        goto LABEL_17;
      }

      v17 = [factorsCopy objectForKeyedSubscript:v14];
      [v17 intValue];
      IsValidValue = TRIPurgeabilityLevel_IsValidValue();

      if (!IsValidValue)
      {
        v20 = @"Found invalid purgeability level for factorName %@";
        goto LABEL_14;
      }
    }

    v11 = [factorsCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
    v19 = 1;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

- (int)_namespacePurgeabilityLevelForNamespaceName:(id)name paths:(id)paths
{
  nameCopy = name;
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v7 = [MEMORY[0x277D73750] loadWithNamespaceName:nameCopy fromDirectory:namespaceDescriptorsDefaultDir];

  LODWORD(nameCopy) = [v7 purgeabilityLevel];
  return nameCopy;
}

- (void)_loadNamespaceMetadataForNamespace:(id)namespace usingEntitlementWitness:(id)witness withPaths:(id)paths completion:(id)completion
{
  namespaceCopy = namespace;
  witnessCopy = witness;
  pathsCopy = paths;
  completionCopy = completion;
  if (witnessCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1363 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

    if (namespaceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1364 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  v15 = [objc_alloc(MEMORY[0x277D73688]) initWithPaths:pathsCopy];
  v23 = 0;
  v16 = [v15 loadNamespaceMetadataForNamespaceName:namespaceCopy error:&v23];
  v17 = v23;
  if (!v17)
  {
    v18 = [(TRIXPCNamespaceManagementRequestHandler *)self _factorProviderChainForNamespace:namespaceCopy paths:pathsCopy];
    compatibilityVersion = [v16 compatibilityVersion];
    if (compatibilityVersion == [v18 namespaceCompatibilityVersion])
    {
      v20 = v16;
      if (!completionCopy)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v20 = 0;
      if (!completionCopy)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    completionCopy[2](completionCopy, v20, 0);
    goto LABEL_11;
  }

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, 0, v17);
  }

LABEL_12:
}

- (id)_factorProviderChainForNamespace:(id)namespace paths:(id)paths
{
  namespaceCopy = namespace;
  pathsCopy = paths;
  v7 = [objc_alloc(MEMORY[0x277D73778]) initWithPaths:pathsCopy];
  v13 = 0;
  v8 = [v7 resolveFactorProviderChainForNamespaceName:namespaceCopy faultOnMissingInstalledFactors:0 installedFactorsAccessible:&v13];
  v9 = v8;
  if ((v13 & 1) == 0)
  {
    v10 = [v8 _pas_filteredArrayWithTest:&__block_literal_global_285];

    v9 = v10;
  }

  v11 = [objc_alloc(MEMORY[0x277D73760]) initWithNamespaceName:namespaceCopy typedProviderChain:v9 paths:pathsCopy];

  return v11;
}

- (BOOL)_validateNamespaceName:(id)name error:(id *)error
{
  nameCopy = name;
  if (!nameCopy)
  {
    v7 = __72__TRIXPCNamespaceManagementRequestHandler__validateNamespaceName_error___block_invoke(@"namespaceName must be non-nil.");
    nameCopy = *error;
    *error = v7;
LABEL_6:

    v6 = 0;
    goto LABEL_7;
  }

  if (([MEMORY[0x277D73810] validateSafeASCIISubsetIdentifier:nameCopy] & 1) == 0)
  {
    nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"namespaceName(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", nameCopy];
    v9 = __72__TRIXPCNamespaceManagementRequestHandler__validateNamespaceName_error___block_invoke(nameCopy);
    v10 = *error;
    *error = v9;

    goto LABEL_6;
  }

  v6 = 1;
LABEL_7:

  return v6;
}

id __72__TRIXPCNamespaceManagementRequestHandler__validateNamespaceName_error___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v2 = a1;
  v3 = [v1 alloc];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = v2;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v5 = [v3 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v4];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)_purgeMismatchedDataForDynamicNamespaceName:(id)name appContainer:(id)container serverContext:(id)context
{
  v41 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  containerCopy = container;
  contextCopy = context;
  v11 = objc_autoreleasePoolPush();
  v12 = [self _deploymentsWithUnexpectedExperimentDataInContainer:containerCopy dynamicNamespaceName:nameCopy serverContext:contextCopy];
  if ([v12 count])
  {
    v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_294];
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v38 = nameCopy;
      v39 = 2114;
      v40 = v15;
      _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Mismatch in experiments for dynamic namespace %{public}@: %{public}@", buf, 0x16u);
    }

    v30 = v13;
    v31 = v11;

    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Purging data for these deployments...", buf, 2u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          experimentDatabase = [contextCopy experimentDatabase];
          [experimentDatabase removeExperimentRecordWithExperimentDeployment:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }

    paths = [contextCopy paths];
    if (paths)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      trialRootDir = [paths trialRootDir];
      [defaultManager triForceRemoveItemAtPath:trialRootDir error:0];

      v27 = v30;
      v11 = v31;
    }

    else
    {
      defaultManager = TRILogCategory_Server();
      v27 = v30;
      v11 = v31;
      if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [containerCopy identifier];
        *buf = 138543362;
        v38 = identifier;
        _os_log_impl(&dword_26F567000, defaultManager, OS_LOG_TYPE_DEFAULT, "Skipping purge of Trial data in missing container: %{public}@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v11);
  v29 = *MEMORY[0x277D85DE8];
}

+ (id)_deploymentsWithUnexpectedExperimentDataInContainer:(id)container dynamicNamespaceName:(id)name serverContext:(id)context
{
  containerCopy = container;
  nameCopy = name;
  contextCopy = context;
  v10 = objc_opt_new();
  experimentDatabase = [contextCopy experimentDatabase];
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_287FC4720, 0}];
  objc_autoreleasePoolPop(v12);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __130__TRIXPCNamespaceManagementRequestHandler__deploymentsWithUnexpectedExperimentDataInContainer_dynamicNamespaceName_serverContext___block_invoke;
  v19[3] = &unk_279DE08A8;
  v20 = nameCopy;
  v14 = v10;
  v21 = v14;
  v15 = nameCopy;
  [experimentDatabase enumerateExperimentRecordsMatchingStatuses:v13 block:v19];

  v16 = v21;
  v17 = v14;

  return v14;
}

void __130__TRIXPCNamespaceManagementRequestHandler__deploymentsWithUnexpectedExperimentDataInContainer_dynamicNamespaceName_serverContext___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 namespaces];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 name];
        if ([v10 isEqualToString:*(a1 + 32)])
        {
          v11 = [v9 treatmentURL];

          if (v11)
          {
            v12 = [v9 treatmentURL];
            v13 = [v12 checkResourceIsReachableAndReturnError:0];

            if ((v13 & 1) == 0)
            {
              v14 = *(a1 + 40);
              v15 = [v3 experimentDeployment];
              [v14 addObject:v15];

              goto LABEL_13;
            }
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

void __213__TRIXPCNamespaceManagementRequestHandler_usingServerContext_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_bundleId_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to register namespace %{public}@: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277CCA450];
    v13 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)usingServerContext:(id)context deregisterNamespaceWithName:(id)name teamId:(id)id taskQueue:(id)queue completion:(id)completion
{
  v112 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  nameCopy = name;
  idCopy = id;
  queueCopy = queue;
  completionCopy = completion;
  if (contextCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1579 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1580 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __118__TRIXPCNamespaceManagementRequestHandler_usingServerContext_deregisterNamespaceWithName_teamId_taskQueue_completion___block_invoke;
  v103[3] = &unk_279DE0C70;
  v17 = nameCopy;
  v104 = v17;
  v18 = completionCopy;
  v105 = v18;
  v19 = MEMORY[0x2743948D0](v103);
  namespaceDatabase = [contextCopy namespaceDatabase];
  v21 = [namespaceDatabase dynamicNamespaceRecordWithNamespaceName:v17];

  v90 = v21;
  if (v21)
  {
    v77 = v18;
    v78 = v19;
    v22 = objc_opt_new();
    experimentDatabase = [contextCopy experimentDatabase];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __118__TRIXPCNamespaceManagementRequestHandler_usingServerContext_deregisterNamespaceWithName_teamId_taskQueue_completion___block_invoke_325;
    v100[3] = &unk_279DE08A8;
    v87 = v17;
    v101 = v87;
    v24 = v22;
    v102 = v24;
    LOBYTE(v22) = [experimentDatabase enumerateExperimentRecordsWithBlock:v100];

    if ((v22 & 1) == 0)
    {
      v71 = v78;
      v78[2](v78, 1, @"Unable to check for pending updates");
      v70 = idCopy;
      v18 = v77;
LABEL_59:

      goto LABEL_60;
    }

    v76 = v17;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = v24;
    v25 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v97;
      v89 = contextCopy;
      v81 = v24;
      v82 = queueCopy;
      v80 = *v97;
      do
      {
        v28 = 0;
        v83 = v26;
        do
        {
          if (*v97 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v96 + 1) + 8 * v28);
          context = objc_autoreleasePoolPush();
          experimentDeployment = [v29 experimentDeployment];
          taskTag = [experimentDeployment taskTag];
          [queueCopy cancelTasksWithTag:taskTag];

          if ([v29 type] == 1)
          {
            v85 = v28;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            namespaces = [v29 namespaces];
            v32 = [namespaces countByEnumeratingWithState:&v92 objects:v110 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v93;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v93 != v34)
                  {
                    objc_enumerationMutation(namespaces);
                  }

                  name = [*(*(&v92 + 1) + 8 * i) name];
                  name2 = [v21 name];
                  if ([name isEqualToString:name2])
                  {
                    v38 = v21;
                  }

                  else
                  {
                    namespaceDatabase2 = [contextCopy namespaceDatabase];
                    v38 = [namespaceDatabase2 dynamicNamespaceRecordWithNamespaceName:v87];
                  }

                  paths = [contextCopy paths];
                  if (paths)
                  {
                    v41 = v21;
                    v42 = MEMORY[0x277D73750];
                    name3 = [v41 name];
                    namespaceDescriptorsExperimentDir = [paths namespaceDescriptorsExperimentDir];
                    v45 = [v42 loadWithNamespaceName:name3 fromDirectory:namespaceDescriptorsExperimentDir];

                    if (v45)
                    {
                      namespaceDescriptorsExperimentDir2 = [paths namespaceDescriptorsExperimentDir];
                      [v45 removeFromDirectory:namespaceDescriptorsExperimentDir2];
                    }

                    treatmentId = [v29 treatmentId];

                    if (treatmentId)
                    {
                      v48 = [[TRIClientTreatmentStorage alloc] initWithPaths:paths];
                      treatmentId2 = [v29 treatmentId];
                      [(TRIClientTreatmentStorage *)v48 removeTreatmentWithTreatmentId:treatmentId2];
                    }

                    contextCopy = v89;
                    v21 = v90;
                  }

                  else
                  {
                    v45 = TRILogCategory_Server();
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      appContainer = [v38 appContainer];
                      identifier = [appContainer identifier];
                      name4 = [v21 name];
                      *buf = 138543618;
                      v107 = identifier;
                      v108 = 2114;
                      v109 = name4;
                      _os_log_impl(&dword_26F567000, v45, OS_LOG_TYPE_DEFAULT, "Missing container %{public}@ for namespace %{public}@.", buf, 0x16u);

                      v21 = v90;
                      contextCopy = v89;
                    }
                  }
                }

                v33 = [namespaces countByEnumeratingWithState:&v92 objects:v110 count:16];
              }

              while (v33);
            }

            v24 = v81;
            queueCopy = v82;
            v27 = v80;
            v26 = v83;
            v28 = v85;
          }

          experimentDatabase2 = [contextCopy experimentDatabase];
          experimentDeployment2 = [v29 experimentDeployment];
          v55 = [experimentDatabase2 removeExperimentRecordWithExperimentDeployment:experimentDeployment2];

          if (!v55)
          {
            v56 = TRILogCategory_Server();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              experimentDeployment3 = [v29 experimentDeployment];
              shortDesc = [experimentDeployment3 shortDesc];
              *buf = 138543362;
              v107 = shortDesc;
              _os_log_error_impl(&dword_26F567000, v56, OS_LOG_TYPE_ERROR, "failed to remove experiment %{public}@ from database", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(context);
          ++v28;
          v21 = v90;
        }

        while (v28 != v26);
        v26 = [obj countByEnumeratingWithState:&v96 objects:v111 count:16];
      }

      while (v26);
    }

    paths2 = [contextCopy paths];
    v60 = paths2;
    if (!paths2)
    {
      v78[2](v78, 1, @"Unable to resolve app container.");
      v70 = idCopy;
      v17 = v76;
      v18 = v77;
LABEL_58:

      v71 = v78;
      goto LABEL_59;
    }

    v91 = 0;
    v17 = v76;
    if ([paths2 validateWithError:&v91])
    {
      v61 = MEMORY[0x277D73750];
      namespaceDescriptorsDefaultDir = [v60 namespaceDescriptorsDefaultDir];
      LOBYTE(v61) = [v61 removeDescriptorWithNamespaceName:v87 fromDirectory:namespaceDescriptorsDefaultDir];

      if ((v61 & 1) == 0)
      {
        v63 = TRILogCategory_Server();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v107 = v87;
          _os_log_error_impl(&dword_26F567000, v63, OS_LOG_TYPE_ERROR, "failed to remove descriptor from default layer for namespace %{public}@", buf, 0xCu);
        }
      }

      v64 = [objc_alloc(MEMORY[0x277D73788]) initWithPaths:v60];
      v65 = [v64 deleteStatusForNamespaceWithName:v87];

      if ((v65 & 1) == 0)
      {
        v66 = TRILogCategory_Server();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v107 = v87;
          _os_log_error_impl(&dword_26F567000, v66, OS_LOG_TYPE_ERROR, "failed to remove status file for namespace %{public}@", buf, 0xCu);
        }
      }

      namespaceDatabase3 = [contextCopy namespaceDatabase];
      v68 = [namespaceDatabase3 removeDynamicNamespaceRecordWithNamespaceName:v87];

      if (v68)
      {
        v69 = TRILogCategory_Server();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v107 = v87;
          _os_log_debug_impl(&dword_26F567000, v69, OS_LOG_TYPE_DEBUG, "deregistered namespace %{public}@", buf, 0xCu);
        }

        v70 = idCopy;
        v18 = v77;
        if (v77)
        {
          (*(v77 + 2))(v77, 1, 0);
        }

        goto LABEL_57;
      }

      v78[2](v78, 1, @"Unable to deregister namespace.");
    }

    else
    {
      v72 = [v91 description];
      v78[2](v78, 1, v72);
    }

    v70 = idCopy;
    v18 = v77;
LABEL_57:

    goto LABEL_58;
  }

  (*(v19 + 16))(v19, 2, @"namespace is not registered");
  v70 = idCopy;
  v71 = v19;
LABEL_60:

  v73 = *MEMORY[0x277D85DE8];
}

void __118__TRIXPCNamespaceManagementRequestHandler_usingServerContext_deregisterNamespaceWithName_teamId_taskQueue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v5;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to deregister namespace %{public}@: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = *MEMORY[0x277CCA450];
  v14 = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __118__TRIXPCNamespaceManagementRequestHandler_usingServerContext_deregisterNamespaceWithName_teamId_taskQueue_completion___block_invoke_325(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 namespaces];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__TRIXPCNamespaceManagementRequestHandler_usingServerContext_deregisterNamespaceWithName_teamId_taskQueue_completion___block_invoke_2;
  v7[3] = &unk_279DE0E60;
  v8 = *(a1 + 32);
  v5 = [v4 _pas_filteredArrayWithTest:v7];
  v6 = [v5 count];

  if (v6)
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __118__TRIXPCNamespaceManagementRequestHandler_usingServerContext_deregisterNamespaceWithName_teamId_taskQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (void)usingServerContext:(id)context taskQueue:(id)queue startDownloadNamespaceWithName:(id)name attribution:(id)attribution completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  nameCopy = name;
  attributionCopy = attribution;
  completionCopy = completion;
  if (contextCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1700 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

    if (queueCopy)
    {
LABEL_3:
      if (nameCopy)
      {
        goto LABEL_4;
      }

LABEL_19:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1702 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

      if (attributionCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1701 description:{@"Invalid parameter not satisfying: %@", @"taskQueue"}];

  if (!nameCopy)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (attributionCopy)
  {
    goto LABEL_5;
  }

LABEL_20:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1703 description:{@"Invalid parameter not satisfying: %@", @"attributing"}];

LABEL_5:
  if ([TRIUserAdjustableSettings getExperimentOptOut:contextCopy])
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v39 = nameCopy;
      _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Skipping download for namespace: %{public}@ due to user opt-out of experiments", buf, 0xCu);
    }

    v19 = objc_opt_class();
    networkOptions = [attributionCopy networkOptions];
    [v19 resumeTaskQueue:queueCopy forNetworkOptions:networkOptions];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    v22 = [MEMORY[0x277CBEB98] setWithObjects:{nameCopy, 0}];
    v23 = [TRIFetchMultipleExperimentNotificationsTask taskWithStartingFetchDateOverride:distantPast namespaceNames:v22 taskAttributing:attributionCopy rollbacksOnly:0 limitedCarryOnly:0];
    v24 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    v25 = [queueCopy addTask:v23 options:v24];

    if (v25 == 2)
    {
      v26 = objc_alloc(MEMORY[0x277CCA9B8]);
      v36 = *MEMORY[0x277CCA450];
      v37 = @"Unable to download namespace.";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v28 = [v26 initWithDomain:@"TRIGeneralErrorDomain" code:13 userInfo:v27];
    }

    else
    {
      v29 = objc_opt_class();
      networkOptions2 = [attributionCopy networkOptions];
      [v29 resumeTaskQueue:queueCopy forNetworkOptions:networkOptions2];

      v28 = 0;
    }

    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v25 != 2, v28);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)_startDownloadAssetIndexesByTreatment:(id)treatment usingEntitlementWitness:(id)witness serverContext:(id)context taskQueue:(id)queue experimentIds:(id)ids assetIdsByFactorPack:(id)pack rolloutFactorNames:(id)names rolloutDeployments:(id)self0 namespace:(id)self1 taskAttribution:(id)self2 factorsState:(id)self3 notificationKey:(id)self4
{
  v96 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  witnessCopy = witness;
  contextCopy = context;
  queueCopy = queue;
  idsCopy = ids;
  packCopy = pack;
  namesCopy = names;
  deploymentsCopy = deployments;
  namespaceCopy = namespace;
  attributionCopy = attribution;
  stateCopy = state;
  keyCopy = key;
  v63 = witnessCopy;
  v68 = keyCopy;
  if (!witnessCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1746 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

    keyCopy = v68;
  }

  v22 = contextCopy;
  if (!contextCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1747 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

    keyCopy = v68;
  }

  if (!queueCopy)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1748 description:{@"Invalid parameter not satisfying: %@", @"taskQueue"}];

    keyCopy = v68;
  }

  if (!treatmentCopy)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1749 description:{@"Invalid parameter not satisfying: %@", @"assetIndexesByTreatment"}];

    keyCopy = v68;
  }

  if (!packCopy)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1750 description:{@"Invalid parameter not satisfying: %@", @"assetIdsByFactorPack"}];

    keyCopy = v68;
  }

  if (namespaceCopy)
  {
    if (keyCopy)
    {
      goto LABEL_13;
    }
  }

  else
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1751 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (v68)
    {
      goto LABEL_13;
    }
  }

  currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler7 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1752 description:{@"Invalid parameter not satisfying: %@", @"notificationKey"}];

LABEL_13:
  if (!attributionCopy)
  {
    currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler8 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1753 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];
  }

  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke;
  v87[3] = &unk_279DE0E88;
  v87[4] = &v88;
  [treatmentCopy enumerateKeysAndObjectsUsingBlock:v87];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke_2;
  v86[3] = &unk_279DE0EB0;
  v86[4] = &v88;
  [packCopy enumerateKeysAndObjectsUsingBlock:v86];
  if (v89[3])
  {
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke_362;
    v84[3] = &unk_279DE0ED8;
    v23 = attributionCopy;
    v85 = v23;
    v24 = MEMORY[0x2743948D0](v84);
    *buf = 0;
    v79 = buf;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy__11;
    v82 = __Block_byref_object_dispose__11;
    v83 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    v25 = objc_autoreleasePoolPush();
    v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v68, 0}];
    objc_autoreleasePoolPop(v25);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke_364;
    v75[3] = &unk_279DE0F00;
    v27 = v24;
    v76 = v27;
    v77 = buf;
    [queueCopy enumerateTasksWithTagsIntersectingTagSet:v26 block:v75];

    if (idsCopy)
    {
      v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:idsCopy];
      if ([v28 count] == 1)
      {
        anyObject = [v28 anyObject];
      }

      else
      {
        v31 = TRILogCategory_Server();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 138412290;
          v93 = v28;
          _os_log_impl(&dword_26F567000, v31, OS_LOG_TYPE_DEFAULT, "Received != 1 experiment id for TRIFetchOnDemandFactorsTask, so none will be logged. Received %@", v92, 0xCu);
        }

        anyObject = 0;
      }
    }

    else
    {
      anyObject = 0;
    }

    if (deploymentsCopy)
    {
      v32 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:deploymentsCopy];
      if ([v32 count] == 1)
      {
        anyObject2 = [v32 anyObject];
      }

      else
      {
        v34 = TRILogCategory_Server();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 138412290;
          v93 = v32;
          _os_log_impl(&dword_26F567000, v34, OS_LOG_TYPE_DEFAULT, "Received != 1 deployment for TRIFetchOnDemandFactorsTask, so none will be logged. Received %@", v92, 0xCu);
        }

        anyObject2 = 0;
      }
    }

    else
    {
      anyObject2 = 0;
    }

    v35 = objc_opt_new();
    networkOptions = [v23 networkOptions];
    allowsCellularAccess = [networkOptions allowsCellularAccess];

    if (allowsCellularAccess)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = MEMORY[0x277D73750];
      paths = [v22 paths];
      namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
      v42 = [v39 loadWithNamespaceName:namespaceCopy fromDirectory:namespaceDescriptorsDefaultDir];

      if (([v42 expensiveNetworkingAllowed] & 1) == 0)
      {
        v43 = TRILogCategory_Server();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 138412290;
          v93 = namespaceCopy;
          _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Changing TRIFetchOnDemandFactorsTask to require inexpensive networking since %@ does not support expensive networking", v92, 0xCu);
        }

        v44 = [[TRITaskCapabilityModifier alloc] initWithAdd:1 remove:2];
        v35 = v44;
      }

      objc_autoreleasePoolPop(v38);
    }

    v45 = [TRIFetchOnDemandFactorsTask taskWithAssetIndexesByTreatment:treatmentCopy experimentId:anyObject assetIdsByFactorPack:packCopy rolloutFactorNames:namesCopy rolloutDeployment:anyObject2 namespaceName:namespaceCopy taskAttributing:v23 notificationKey:v68 capabilityModifier:v35];
    v74 = 0;
    v46 = [queueCopy addTask:v45 options:*(v79 + 5) taskId:&v74];
    if (v46)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          v47 = TRILogCategory_Server();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *v92 = 0;
            _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "Enqueue TRIFetchOnDemandFactorsTask failed; completing request.", v92, 2u);
          }

          [MEMORY[0x277D73698] notifyDownloadFailedForKey:v68 withError:0];
        }

        goto LABEL_53;
      }

      networkOptions2 = TRILogCategory_Server();
      if (os_log_type_enabled(networkOptions2, OS_LOG_TYPE_DEFAULT))
      {
        *v92 = 138543618;
        v93 = v68;
        v94 = 2112;
        v95 = v74;
        _os_log_impl(&dword_26F567000, networkOptions2, OS_LOG_TYPE_DEFAULT, "Ignored duplicate TRIFetchOnDemandFactorsTask with notification key: %{public}@, duplicate of task [tid:%@]", v92, 0x16u);
      }
    }

    else
    {
      v49 = TRILogCategory_Server();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *v92 = 138412546;
        v93 = v74;
        v94 = 2114;
        v95 = v68;
        _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Enqueued TRIFetchOnDemandFactorsTask [tid:%@] with notification key: %{public}@", v92, 0x16u);
      }

      v50 = objc_opt_class();
      networkOptions2 = [v23 networkOptions];
      [v50 resumeTaskQueue:queueCopy forNetworkOptions:networkOptions2];
    }

LABEL_53:
    _Block_object_dispose(buf, 8);

    v30 = v68;
    goto LABEL_54;
  }

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_INFO, "Nothing to download, no factor names provided", buf, 2u);
  }

  v30 = v68;
  [MEMORY[0x277D73698] notifyDownloadProgressForKey:v68 withProgress:100];
  [MEMORY[0x277D73698] notifyDownloadCompletedForKey:v68];
LABEL_54:
  _Block_object_dispose(&v88, 8);

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke_362(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277D73AA8];
  v8 = [*(a1 + 32) applicationBundleIdentifier];
  if ([v7 isEqual:v8])
  {
    v9 = 1;
  }

  else
  {
    v10 = *MEMORY[0x277D73AB8];
    v11 = [*(a1 + 32) applicationBundleIdentifier];
    LOBYTE(v10) = [v10 isEqual:v11];

    if ((v10 & 1) != 0 || ([*(a1 + 32) networkOptions], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "discretionaryBehavior"), v12, !v13) && (objc_msgSend(v5, "discretionaryBehavior") == 2 || (objc_msgSend(v6, "startDate"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15)))
    {
      v9 = 1;
      goto LABEL_9;
    }

    if ([v5 allowsCellularAccess])
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [*(a1 + 32) networkOptions];
    v9 = [v8 allowsCellularAccess];
  }

LABEL_9:
  return v9;
}

void __257__TRIXPCNamespaceManagementRequestHandler__startDownloadAssetIndexesByTreatment_usingEntitlementWitness_serverContext_taskQueue_experimentIds_assetIdsByFactorPack_rolloutFactorNames_rolloutDeployments_namespace_taskAttribution_factorsState_notificationKey___block_invoke_364(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 task];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 task];
    v9 = *(a1 + 32);
    v10 = [v8 taskAttribution];
    v11 = [v10 networkOptions];
    LODWORD(v9) = (*(v9 + 16))(v9, v11, v5);

    if (v9)
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 taskId];
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Found a preexisting TRIFetchOnDemandFactorsTask %@ with lower priority; attempting to replace with higher priority task.", &v18, 0xCu);
      }

      v14 = [*(*(*(a1 + 40) + 8) + 40) copyWithReplacementDuplicateTaskResolution:1];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      *a3 = 1;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)_immediateDownloadForNamespaceNames:(id)names usingEntitlementWitness:(id)witness serverContext:(id)context taskQueue:(id)queue allowExpensiveNetworking:(BOOL)networking taskAttribution:(id)attribution completion:(id)completion
{
  v76[1] = *MEMORY[0x277D85DE8];
  namesCopy = names;
  witnessCopy = witness;
  contextCopy = context;
  queueCopy = queue;
  attributionCopy = attribution;
  completionCopy = completion;
  v54 = witnessCopy;
  if (witnessCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1884 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

    if (contextCopy)
    {
LABEL_3:
      if (queueCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1885 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

  if (queueCopy)
  {
LABEL_4:
    if (namesCopy)
    {
      goto LABEL_5;
    }

LABEL_24:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1887 description:{@"Invalid parameter not satisfying: %@", @"namespaceNames"}];

    if (attributionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_23:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1886 description:{@"Invalid parameter not satisfying: %@", @"taskQueue"}];

  if (!namesCopy)
  {
    goto LABEL_24;
  }

LABEL_5:
  if (attributionCopy)
  {
    goto LABEL_6;
  }

LABEL_25:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:1888 description:{@"Invalid parameter not satisfying: %@", @"taskAttribution"}];

LABEL_6:
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__11;
  v69 = __Block_byref_object_dispose__11;
  v70 = 0;
  v20 = MEMORY[0x277D73698];
  allObjects = [namesCopy allObjects];
  v22 = [v20 immediateDownloadNotificationKeyForNamespaceNames:allObjects];

  if (v22)
  {
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __179__TRIXPCNamespaceManagementRequestHandler__immediateDownloadForNamespaceNames_usingEntitlementWitness_serverContext_taskQueue_allowExpensiveNetworking_taskAttribution_completion___block_invoke;
    v64[3] = &unk_279DE0F28;
    v64[4] = &v65;
    v52 = MEMORY[0x2743948D0](v64);
    v23 = [MEMORY[0x277D73698] registerDownloadNotificationForKey:v22 queue:0 usingBlock:v52];
    v24 = [TRITaskQueuingOptions optionsWithDuplicateTaskResolution:1];
    v51 = [TRISetupAssistantFetchUtils registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext:contextCopy];
    v25 = [TRISelectRolloutNotificationListTask taskWithNamespaceNames:namesCopy taskAttribution:attributionCopy];
    v63 = 0;
    v26 = [queueCopy addTask:v25 options:v24 taskId:&v63];
    v27 = TRILogCategory_Server();
    v28 = v27;
    if (v26 == 2)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Enqueue TRISelectRolloutNotificationListTask failed", buf, 2u);
      }

      v29 = objc_alloc(MEMORY[0x277CCA9B8]);
      v73 = *MEMORY[0x277CCA450];
      v74 = @"Unable to enqueue TRISelectRolloutNotificationListTask";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v31 = [v29 initWithDomain:@"TRIGeneralErrorDomain" code:13 userInfo:v30];
      v32 = v66[5];
      v66[5] = v31;

      if (completionCopy)
      {
        completionCopy[2](completionCopy, v66[5]);
      }
    }

    else
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = v63;
        _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Enqueued TRISelectRolloutNotificationListTask with [tid:%@]", buf, 0xCu);
      }

      v38 = objc_opt_class();
      networkOptions = [attributionCopy networkOptions];
      [v38 resumeTaskQueue:queueCopy forNetworkOptions:networkOptions];

      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      v42 = v41;
      v43 = dispatch_queue_create([v41 UTF8String], 0);

      *buf = 0;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __179__TRIXPCNamespaceManagementRequestHandler__immediateDownloadForNamespaceNames_usingEntitlementWitness_serverContext_taskQueue_allowExpensiveNetworking_taskAttribution_completion___block_invoke_379;
      handler[3] = &unk_279DE0F50;
      v56 = v51;
      v57 = contextCopy;
      v59 = completionCopy;
      selfCopy = self;
      networkingCopy = networking;
      v58 = namesCopy;
      v60 = &v65;
      notify_register_dispatch("com.apple.trial.TaskQueueComplete", buf, v43, handler);
    }
  }

  else
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "immediateDownloadForNamespaceNames called for unexpected use case, please reach out to trial-device-dev@group.apple.com before using this.", buf, 2u);
    }

    v34 = objc_alloc(MEMORY[0x277CCA9B8]);
    v75 = *MEMORY[0x277CCA450];
    v76[0] = @"immediateDownloadForNamespaceNames called for unexpected use case, please reach out to trial-device-dev@group.apple.com";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    v36 = [v34 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v35];
    v37 = v66[5];
    v66[5] = v36;

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v66[5]);
    }
  }

  _Block_object_dispose(&v65, 8);
  v44 = *MEMORY[0x277D85DE8];
}

void __179__TRIXPCNamespaceManagementRequestHandler__immediateDownloadForNamespaceNames_usingEntitlementWitness_serverContext_taskQueue_allowExpensiveNetworking_taskAttribution_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 type];
    v9 = [v5 error];
    v16 = 134218242;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Received download notification with type: %lu, error: %{public}@", &v16, 0x16u);
  }

  [MEMORY[0x277D73698] deregisterNotificationWithToken:v6];
  if ([v5 type] == 2)
  {
    v10 = MEMORY[0x277D73698];
    v11 = [v5 error];
    v12 = [v10 generalErrorFromDownloadNotificationError:v11];
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __179__TRIXPCNamespaceManagementRequestHandler__immediateDownloadForNamespaceNames_usingEntitlementWitness_serverContext_taskQueue_allowExpensiveNetworking_taskAttribution_completion___block_invoke_379(uint64_t a1, int a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) builtTelemetry];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [*(a1 + 40) client];
        v10 = [v9 logger];
        v11 = [*(a1 + 40) client];
        v12 = [v11 trackingId];
        [v10 logWithTrackingId:v12 metrics:0 dimensions:0 trialSystemTelemetry:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v40 count:16];
    }

    while (v5);
  }

  if (*(a1 + 56))
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 72);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = *(a1 + 72);
      v18 = *(a1 + 48);
      if (*(a1 + 80))
      {
        v19 = "YES";
      }

      else
      {
        v19 = "NO";
      }

      v20 = qos_class_self();
      *buf = 138544642;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v32 = 2080;
      v33 = "end";
      v34 = 2114;
      v35 = v18;
      v36 = 2080;
      v37 = v19;
      v38 = 1026;
      v39 = v20;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s immediateDownloadForNamesqpaceNames:%{public}@ allowExpensiveNetworking:%s qos:%{public}u completion:", buf, 0x3Au);
    }

    v21 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
  }

  notify_cancel(a2);

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)resumeTaskQueue:(id)queue forNetworkOptions:(id)options
{
  queueCopy = queue;
  optionsCopy = options;
  if ([optionsCopy discretionaryBehavior])
  {
    if ([optionsCopy allowsCellularAccess])
    {
      [self _resumeTaskQueueForDiscretionaryCellularWithQueue:queueCopy];
    }

    else
    {
      [self _resumeTaskQueueForDiscretionaryWifiWithQueue:queueCopy];
    }
  }

  else
  {
    v7 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:11];
    [queueCopy resumeWithXPCActivityDescriptor:v7 executeWhenSuspended:0];
  }
}

+ (void)_reregisterOneShotXPCActivityWithDescriptor:(id)descriptor resumingTaskQueue:(id)queue
{
  v15 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  queueCopy = queue;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [descriptorCopy name];
    *buf = 138543362;
    v14 = name;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Re-registering one-shot XPC activity in hope of prompt execution: %{public}@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__TRIXPCNamespaceManagementRequestHandler__reregisterOneShotXPCActivityWithDescriptor_resumingTaskQueue___block_invoke_2;
  v11[3] = &unk_279DE0030;
  v12 = queueCopy;
  v9 = queueCopy;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:descriptorCopy checkInBlock:&__block_literal_global_385 asyncHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __105__TRIXPCNamespaceManagementRequestHandler__reregisterOneShotXPCActivityWithDescriptor_resumingTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = xpc_activity_copy_criteria(v2);
  if (!v3)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
  }

  xdict = v3;
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86250], 0);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86270], 0);
  xpc_activity_set_criteria(v2, xdict);
}

+ (void)_resumeTaskQueueForDiscretionaryWifiWithQueue:(id)queue
{
  queueCopy = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryWifiWithQueue___block_invoke;
  block[3] = &unk_279DDEEE0;
  v9 = queueCopy;
  v4 = qword_2815976F0;
  v5 = queueCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_2815976F0, block);
  }

  v6 = v9;
  v7 = _MergedGlobals_32;

  [v7 runAfterDelaySeconds:1 coalescingBehavior:10.0];
}

void __89__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryWifiWithQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D42628]);
  v4 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.discretionary-wifi-coalesce" qosClass:17];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryWifiWithQueue___block_invoke_2;
  v7[3] = &unk_279DDEEE0;
  v8 = *(a1 + 32);
  v5 = [v3 initWithQueue:v4 operation:v7];

  v6 = _MergedGlobals_32;
  _MergedGlobals_32 = v5;

  objc_autoreleasePoolPop(v2);
}

void __89__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryWifiWithQueue___block_invoke_2(uint64_t a1)
{
  v2 = +[TRILaunchDaemonActivityDescriptor clientTriggeredWifiDescriptor];
  [TRIXPCNamespaceManagementRequestHandler _reregisterOneShotXPCActivityWithDescriptor:v2 resumingTaskQueue:*(a1 + 32)];
}

+ (void)_resumeTaskQueueForDiscretionaryCellularWithQueue:(id)queue
{
  queueCopy = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryCellularWithQueue___block_invoke;
  block[3] = &unk_279DDEEE0;
  v9 = queueCopy;
  v4 = qword_281597700;
  v5 = queueCopy;
  if (v4 != -1)
  {
    dispatch_once(&qword_281597700, block);
  }

  v6 = v9;
  v7 = qword_2815976F8;

  [v7 runAfterDelaySeconds:1 coalescingBehavior:10.0];
}

void __93__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryCellularWithQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277D42628]);
  v4 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.discretionary-cellular-coalesce" qosClass:17];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryCellularWithQueue___block_invoke_2;
  v7[3] = &unk_279DDEEE0;
  v8 = *(a1 + 32);
  v5 = [v3 initWithQueue:v4 operation:v7];

  v6 = qword_2815976F8;
  qword_2815976F8 = v5;

  objc_autoreleasePoolPop(v2);
}

void __93__TRIXPCNamespaceManagementRequestHandler__resumeTaskQueueForDiscretionaryCellularWithQueue___block_invoke_2(uint64_t a1)
{
  v2 = +[TRILaunchDaemonActivityDescriptor clientTriggeredCellularDescriptor];
  [TRIXPCNamespaceManagementRequestHandler _reregisterOneShotXPCActivityWithDescriptor:v2 resumingTaskQueue:*(a1 + 32)];
}

+ (void)_removeAssetFactors:(id)factors usingEntitlementWitness:(id)witness serverContext:(id)context taskQueue:(id)queue namespace:(id)namespace factorsState:(id)state removeImmediately:(BOOL)immediately completion:(id)self0
{
  v114[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  witnessCopy = witness;
  contextCopy = context;
  queueCopy = queue;
  namespaceCopy = namespace;
  stateCopy = state;
  completionCopy = completion;
  v77 = witnessCopy;
  if (witnessCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2044 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2045 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

LABEL_3:
  if (queueCopy)
  {
    if (factorsCopy)
    {
      goto LABEL_5;
    }

LABEL_42:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2047 description:{@"Invalid parameter not satisfying: %@", @"factorNames"}];

    if (namespaceCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_43;
  }

  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2046 description:{@"Invalid parameter not satisfying: %@", @"taskQueue"}];

  if (!factorsCopy)
  {
    goto LABEL_42;
  }

LABEL_5:
  if (namespaceCopy)
  {
    goto LABEL_6;
  }

LABEL_43:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2048 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_6:
  v20 = objc_autoreleasePoolPush();
  keyValueStore = [contextCopy keyValueStore];
  v22 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:keyValueStore];

  v23 = [v22 subscribedFactorsForNamespaceName:namespaceCopy];
  v24 = [v23 mutableCopy];

  v25 = [MEMORY[0x277CBEB58] setWithArray:v24];
  v26 = [MEMORY[0x277CBEB98] setWithArray:factorsCopy];
  [v25 minusSet:v26];

  v27 = TRILogCategory_Server();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = factorsCopy;
    *&buf[12] = 2114;
    *&buf[14] = namespaceCopy;
    _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Unsubscribe factor %{public}@ in namespace '%{public}@'", buf, 0x16u);
  }

  allObjects = [v25 allObjects];

  v108 = 0;
  v29 = [v22 setSubscriptionWithFactorNames:allObjects inNamespaceName:namespaceCopy error:&v108];
  v30 = v108;
  if (v29)
  {

    objc_autoreleasePoolPop(v20);
    *buf = 0;
    v100 = 0;
    v31 = MEMORY[0x277D73718];
    paths = [contextCopy paths];
    LODWORD(v31) = [v31 validateDownloadForFactors:factorsCopy withNamespace:namespaceCopy paths:paths container:0 factorsState:stateCopy assetIndexesByTreatment:buf experimentIds:0 assetIdsByFactorPack:&v100 rolloutFactorNames:0 rolloutDeployments:0 error:0];

    if (v31)
    {
      v76 = [objc_opt_class() _notificationKeyWithNamespace:namespaceCopy assetIndexesByTreatment:*buf assetIdsByFactorPack:v100];
    }

    else
    {
      v76 = 0;
    }

    if (v76 && ([queueCopy cancelTasksWithTag:v76] & 1) == 0)
    {
      v34 = TRILogCategory_Server();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v76;
        _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Unable to cancel downloading task with notification key: '%{public}@'", buf, 0xCu);
      }
    }

    v35 = objc_alloc(MEMORY[0x277D73778]);
    paths2 = [contextCopy paths];
    v74 = [v35 initWithPaths:paths2 factorsState:stateCopy];

    if (v74)
    {
      v37 = MEMORY[0x277D73760];
      paths3 = [contextCopy paths];
      v73 = [v37 factorProviderWithPaths:paths3 namespaceName:namespaceCopy resolver:v74 faultOnMissingInstalledFactors:1];

      v106 = 0;
      v107 = 0;
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke;
      v104[3] = &unk_279DE0F98;
      v39 = namespaceCopy;
      v105 = v39;
      [v73 computeTreatmentAssetIndexes:&v107 withAssociatedExperimentIds:0 andFactorPackAssetIds:&v106 withAssociatedRolloutDeployments:0 withExperimentFactorNames:0 andRolloutFactorNames:0 forFactors:factorsCopy usingFilter:v104];
      v40 = [TRIClientTreatmentStorage alloc];
      paths4 = [contextCopy paths];
      v42 = [(TRIClientTreatmentStorage *)v40 initWithPaths:paths4];

      v43 = [TRIFactorPackStorage alloc];
      paths5 = [contextCopy paths];
      v71 = [(TRIFactorPackStorage *)v43 initWithPaths:paths5];

      v45 = objc_alloc(MEMORY[0x277CBEB98]);
      v46 = [v73 factorNamesWithObfuscation:factorsCopy];
      v47 = [v45 initWithArray:v46];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v110 = __Block_byref_object_copy__11;
      v111 = __Block_byref_object_dispose__11;
      v112 = 0;
      v100 = 0;
      v101 = &v100;
      v102 = 0x2020000000;
      v103 = 0;
      v48 = v107;
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke_402;
      v94[3] = &unk_279DE0FC0;
      v98 = &v100;
      v70 = v42;
      v95 = v70;
      v49 = v47;
      v96 = v49;
      v50 = v39;
      v97 = v50;
      v99 = buf;
      [v48 enumerateKeysAndObjectsUsingBlock:v94];
      if (immediately)
      {
        v51 = 3;
      }

      else
      {
        v51 = 1;
      }

      v52 = [TRIAssetStore alloc];
      paths6 = [contextCopy paths];
      v54 = [(TRIAssetStore *)v52 initWithPaths:paths6];

      v55 = v106;
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke_407;
      v82[3] = &unk_279DE1010;
      v90 = &v100;
      v72 = v71;
      v83 = v72;
      v56 = v50;
      v84 = v56;
      v57 = v49;
      v92 = v51;
      v85 = v57;
      v91 = buf;
      v86 = contextCopy;
      stateCopy = v73;
      v87 = stateCopy;
      v88 = factorsCopy;
      immediatelyCopy = immediately;
      v59 = v54;
      v89 = v59;
      [v55 enumerateKeysAndObjectsUsingBlock:v82];
      if (v101[3])
      {
        [MEMORY[0x277D73790] notifyUpdateForNamespaceName:v56];
      }

      else
      {
        v63 = TRILogCategory_Server();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *v81 = 0;
          _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_INFO, "Nothing to remove. No local asset found.", v81, 2u);
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, *(*&buf[8] + 40));
      }

      _Block_object_dispose(&v100, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      stateCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to resolve namespaces for stale factorsState: %@", stateCopy];
      v60 = objc_alloc(MEMORY[0x277CCA9B8]);
      v113 = *MEMORY[0x277CCA450];
      v114[0] = stateCopy;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:&v113 count:1];
      v62 = [v60 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v61];

      if (completionCopy)
      {
        (completionCopy)[2](completionCopy, v62);
      }
    }
  }

  else
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Unable to update on-demand asset subscription, error: %{public}@", buf, 0xCu);
    }

    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, v30);
    }

    objc_autoreleasePoolPop(v20);
  }

  v64 = *MEMORY[0x277D85DE8];
}

uint64_t __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 localizedDescription];
      v22 = 138543362;
      v23 = v11;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Error removing on-demand asset, %{public}@", &v22, 0xCu);
    }

    goto LABEL_13;
  }

  if (([v8 isOnDemand] & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v22 = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v15;
      v16 = "Ignore removal of asset of factor %{public}@ in namespace %{public}@ which is not on-demand";
      v17 = v10;
      v18 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
      _os_log_impl(&dword_26F567000, v17, v18, v16, &v22, 0x16u);
    }

LABEL_13:

    v14 = 0;
    goto LABEL_14;
  }

  if (![v8 hasPath] || (objc_msgSend(v8, "path"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, !v13))
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      v22 = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v19;
      v16 = "Ignore removal of asset of factor %{public}@ in namespace %{public}@ which does not have local path";
      v17 = v10;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

void __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke_402(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v7 = [*(a1 + 32) updateSavedTreatmentWithTreatmentId:v5 deletingAssetsWithFactorNames:*(a1 + 40) forNamespaceName:*(a1 + 48)];
  if (!v7)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to update treatment %@ with asset removal of %@", buf, 0x16u);
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v9 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA450];
      v16 = @"Unable to update treatment with one or more asset removal";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v11 = [v9 errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v10];
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke_407(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 88) + 8) + 24) = 1;
  if (([*(a1 + 32) updateSavedFactorPackWithId:v5 namespaceName:*(a1 + 40) deletingAssetsWithFactorNames:*(a1 + 48) inUseAssetBehavior:*(a1 + 104)] & 1) == 0 && !*(*(*(a1 + 96) + 8) + 40))
  {
    v7 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"Unable to update treatment with one or more asset removal";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v9 = [v7 errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v8];
    v10 = *(*(a1 + 96) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = [*(a1 + 32) pathForFactorPackWithId:v5 namespaceName:*(a1 + 40)];
  v13 = [v12 stringByAppendingPathComponent:@"factorPack.fb"];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (v15 && _os_feature_enabled_impl())
  {
    v16 = [TRIFBFactorPackStorage alloc];
    v17 = [*(a1 + 56) paths];
    v18 = [(TRIFBFactorPackStorage *)v16 initWithPaths:v17];

    v19 = *(a1 + 40);
    v20 = objc_alloc(MEMORY[0x277CBEB98]);
    v21 = [*(a1 + 64) factorNamesWithObfuscation:*(a1 + 72)];
    v22 = [v20 initWithArray:v21];
    LOBYTE(v19) = [(TRIFBFactorPackStorage *)v18 updateSavedFactorLevelsWithFactorPackId:v5 namespaceName:v19 deletingAssetsWithFactorNames:v22 inUseAssetBehavior:*(a1 + 104)];

    if ((v19 & 1) == 0)
    {
      v23 = TRILogCategory_Server();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v5;
        _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Could not update saved factor levels for remove asset for factor pack id: %@", buf, 0xCu);
      }
    }
  }

  if (*(a1 + 105) == 1)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke_414;
    v25[3] = &unk_279DE0FE8;
    v26 = *(a1 + 80);
    [v6 enumerateObjectsUsingBlock:v25];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __163__TRIXPCNamespaceManagementRequestHandler__removeAssetFactors_usingEntitlementWitness_serverContext_taskQueue_namespace_factorsState_removeImmediately_completion___block_invoke_414(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 assetId];
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Immediately removing %{public}@", &v9, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = [v3 assetId];
  [v6 removeAssetWithIdentifier:v7];

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_setProvisionalFactorPackId:(id)id usingEntitlementWitness:(id)witness serverContext:(id)context forNamespaceName:(id)name completion:(id)completion
{
  idCopy = id;
  witnessCopy = witness;
  contextCopy = context;
  nameCopy = name;
  completionCopy = completion;
  if (witnessCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2219 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

    if (contextCopy)
    {
LABEL_3:
      if (idCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2221 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

      if (nameCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2220 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

  if (!idCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (nameCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2222 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_5:
  v18 = [TRINamespaceResolverStorage alloc];
  paths = [contextCopy paths];
  v20 = [(TRINamespaceResolverStorage *)v18 initWithPaths:paths];

  v26 = 0;
  v21 = [(TRINamespaceResolverStorage *)v20 setProvisionalFactorPackId:idCopy forNamespaceName:nameCopy error:&v26];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v21, v26);
  }
}

+ (void)_rejectFactorPackId:(id)id usingEntitlementWitness:(id)witness serverContext:(id)context forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion
{
  idCopy = id;
  witnessCopy = witness;
  contextCopy = context;
  nameCopy = name;
  deploymentCopy = deployment;
  completionCopy = completion;
  if (witnessCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2239 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

    if (contextCopy)
    {
LABEL_3:
      if (idCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2241 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

      if (nameCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2240 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

  if (!idCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (nameCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2242 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_5:
  v21 = [TRINamespaceResolverStorage alloc];
  paths = [contextCopy paths];
  v23 = [(TRINamespaceResolverStorage *)v21 initWithPaths:paths];

  v29 = 0;
  v24 = [(TRINamespaceResolverStorage *)v23 rejectFactorPackId:idCopy forNamespaceName:nameCopy rolloutDeployment:deploymentCopy error:&v29];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v24, v29);
  }
}

+ (void)_promoteFactorPackId:(id)id usingEntitlementWitness:(id)witness serverContext:(id)context forNamespaceName:(id)name rolloutDeployment:(id)deployment completion:(id)completion
{
  idCopy = id;
  witnessCopy = witness;
  contextCopy = context;
  nameCopy = name;
  deploymentCopy = deployment;
  completionCopy = completion;
  if (witnessCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2259 description:{@"Invalid parameter not satisfying: %@", @"entitlementWitness"}];

    if (contextCopy)
    {
LABEL_3:
      if (idCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2261 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

      if (nameCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2260 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];

  if (!idCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (nameCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIXPCNamespaceManagementService.m" lineNumber:2262 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_5:
  v21 = [TRINamespaceResolverStorage alloc];
  paths = [contextCopy paths];
  v23 = [(TRINamespaceResolverStorage *)v21 initWithPaths:paths];

  v29 = 0;
  v24 = [(TRINamespaceResolverStorage *)v23 promoteFactorPackId:idCopy forNamespaceName:nameCopy rolloutDeployment:deploymentCopy error:&v29];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v24, v29);
  }
}

@end