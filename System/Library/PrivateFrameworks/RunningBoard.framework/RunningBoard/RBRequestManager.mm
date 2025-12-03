@interface RBRequestManager
- (RBRequestManager)initWithContext:(id)context;
- (id)acquireDroppedLaunchAssertion:(id)assertion requestor:(id)requestor;
- (uint64_t)_checkAndAdjustLaunchRequest:(void *)request requestor:(void *)requestor entitlements:;
- (uint64_t)_checkExtensionLaunchFromRequstor:(id *)requstor AndAdjustRequest:;
- (uint64_t)_checkLaunchByAnyAndAdjustRequest:(uint64_t)request;
- (void)_createAcquisitionContext:(void *)context requestor:(void *)requestor assertionIdentifier:(int)identifier isAbstractTarget:;
- (void)_executeLaunchRequestWithAssertion:(void *)assertion requestor:(void *)requestor completion:;
- (void)_finishLaunchRequestAfterAssertionAcquisition:(void *)acquisition requestor:(void *)requestor identifier:(void *)identifier error:(void *)error completion:;
- (void)executeLaunchRequest:(id)request euid:(unsigned int)euid requestor:(id)requestor entitlements:(id)entitlements completion:(id)completion;
@end

@implementation RBRequestManager

- (RBRequestManager)initWithContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = RBRequestManager;
  v6 = [(RBRequestManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemonContext, context);
    v8 = v7;
  }

  return v7;
}

- (uint64_t)_checkAndAdjustLaunchRequest:(void *)request requestor:(void *)requestor entitlements:
{
  requestCopy = request;
  requestorCopy = requestor;
  if (!self)
  {
    v16 = 0;
    goto LABEL_13;
  }

  if (!a2)
  {
    [RBRequestManager _checkAndAdjustLaunchRequest:requestor:entitlements:];
  }

  context = [*a2 context];
  identity = [context identity];
  if (([identity isXPCService] & 1) != 0 || objc_msgSend(context, "hostPid"))
  {

LABEL_15:
    if (([(RBRequestManager *)self _checkExtensionLaunchFromRequstor:requestCopy AndAdjustRequest:a2]& 1) == 0)
    {
      v14 = RBLaunchExtensionsEntitlement;
      goto LABEL_8;
    }

LABEL_11:
    v16 = 1;
    goto LABEL_12;
  }

  extensionOverlay = [context extensionOverlay];

  if (extensionOverlay)
  {
    goto LABEL_15;
  }

  identity2 = [context identity];
  isDext = [identity2 isDext];

  if ((isDext & 1) == 0)
  {
    if (([requestorCopy rb_hasEntitlementDomain:2] & 1) == 0)
    {
      v15 = [(RBRequestManager *)self _checkLaunchByAnyAndAdjustRequest:a2];
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v14 = RBLaunchDextsEntitlement;
LABEL_8:
  v15 = [requestorCopy rb_hasEntitlement:*v14];
LABEL_9:
  v16 = v15;
LABEL_12:

LABEL_13:
  return v16;
}

void __104__RBRequestManager__finishLaunchRequestAfterAssertionAcquisition_requestor_identifier_error_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v13)
  {
    v10 = [*(a1 + 32) assertionWithIdentifier:*(a1 + 40)];
    [v10 setLaunchAssertion:0];
    v11 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = [*(a1 + 48) identifier];
    [v9 invalidateAssertionFromOriginator:v12 withIdentifier:*(a1 + 40)];

    (*(*(a1 + 56) + 16))();
  }
}

void __76__RBRequestManager__executeLaunchRequestWithAssertion_requestor_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D47038];
  v5 = +[RBConnectionClient sharedLaunchWorkloop];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__RBRequestManager__executeLaunchRequestWithAssertion_requestor_completion___block_invoke_2;
  v12[3] = &unk_279B33D48;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = *(a1 + 48);
  v8 = *(&v11 + 1);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v14 = v11;
  v13 = v9;
  v15 = v3;
  v17 = *(a1 + 72);
  v16 = *(a1 + 64);
  v10 = v3;
  [v4 handoffContextOnQueue:v5 block:v12];
}

void __60__RBRequestManager_acquireDroppedLaunchAssertion_requestor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = rbs_assertion_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__RBRequestManager_acquireDroppedLaunchAssertion_requestor___block_invoke_cold_1(a1, v3, v4);
    }
  }

  v5 = [*(*(a1 + 48) + 8) processMonitor];
  [v5 unsuppressUpdatesForIdentity:*(a1 + 32)];
}

- (void)executeLaunchRequest:(id)request euid:(unsigned int)euid requestor:(id)requestor entitlements:(id)entitlements completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  requestorCopy = requestor;
  entitlementsCopy = entitlements;
  completionCopy = completion;
  context = [requestCopy context];
  appID = [context appID];

  if (appID)
  {
    v17 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:appID];
    v18 = rbs_connection_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      identityString = [appID identityString];
      *buf = 138543618;
      v36 = identityString;
      v37 = 2114;
      v38 = v17;
      _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_INFO, "Resolved identity for launch request for %{public}@ to %{public}@", buf, 0x16u);
    }

    if (v17)
    {
      context2 = [requestCopy context];
      [context2 setIdentity:v17];
    }
  }

  v34 = requestCopy;
  v21 = [(RBRequestManager *)self _checkAndAdjustLaunchRequest:requestorCopy requestor:entitlementsCopy entitlements:?];
  v22 = v34;

  if (v21)
  {
    context3 = [v22 context];
    attributes = [context3 attributes];
    if ([attributes count])
    {
      [(RBRequestManager *)self _executeLaunchRequestWithAssertion:v22 requestor:requestorCopy completion:completionCopy];
    }

    else
    {
      v25 = MEMORY[0x277D47038];
      v26 = +[RBConnectionClient sharedLaunchWorkloop];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __80__RBRequestManager_executeLaunchRequest_euid_requestor_entitlements_completion___block_invoke;
      v29[3] = &unk_279B33DC0;
      v29[4] = self;
      v30 = v22;
      v31 = context3;
      v32 = requestorCopy;
      v33 = completionCopy;
      [v25 handoffContextOnQueue:v26 block:v29];
    }
  }

  else
  {
    v27 = rbs_connection_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [RBRequestManager executeLaunchRequest:requestorCopy euid:v27 requestor:? entitlements:? completion:?];
    }

    context3 = [MEMORY[0x277CCA9B8] rbs_errorClientNotAuthorized];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, context3);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __80__RBRequestManager_executeLaunchRequest_euid_requestor_entitlements_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) processManager];
  if (v2)
  {
    v3 = rbs_ttl_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) context];
      v5 = [v4 identity];
      v6 = [v5 shortDescription];
      v7 = [*(a1 + 48) explanation];
      v8 = *(a1 + 56);
      *buf = 138543874;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_DEFAULT, "Executing launch request for %{public}@ (%{public}@) from requestor: %{public}@", buf, 0x20u);
    }

    v9 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__RBRequestManager_executeLaunchRequest_euid_requestor_entitlements_completion___block_invoke_26;
    v15[3] = &unk_279B33D98;
    v16 = *(a1 + 64);
    [v2 executeLaunchRequest:v9 withCompletion:v15];
    v10 = v16;
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47088];
    v17 = *MEMORY[0x277CCA470];
    v18 = @"Unable to execute launch request";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [v11 errorWithDomain:v12 code:5 userInfo:v13];

    (*(*(a1 + 64) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_checkExtensionLaunchFromRequstor:(id *)requstor AndAdjustRequest:
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!self)
  {
    v14 = 0;
    goto LABEL_34;
  }

  context = [*requstor context];
  identity = [context identity];
  if ([identity isExtension])
  {
    hostIdentifier = [identity hostIdentifier];
    if (hostIdentifier)
    {
      v10 = hostIdentifier;
      hostIdentifier2 = [identity hostIdentifier];
      identifier = [v6 identifier];
      v12 = identifier;
      if (hostIdentifier2 == identifier)
      {
      }

      else
      {
        if (!hostIdentifier2 || !identifier)
        {

LABEL_25:
          extensionIdentity = rbs_process_log();
          if (os_log_type_enabled(extensionIdentity, OS_LOG_TYPE_INFO))
          {
            OUTLINED_FUNCTION_7_4();
            _os_log_impl(&dword_262485000, extensionIdentity, OS_LOG_TYPE_INFO, "Not mutating extension launch from %{public}@ for %{public}@ since requestor is not the host", buf, 0x16u);
          }

          v14 = 0;
LABEL_32:

          goto LABEL_33;
        }

        v13 = [hostIdentifier2 isEqual:identifier];

        if ((v13 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && _os_feature_enabled_impl())
    {
      extensionIdentity = [identity extensionIdentity];
      v57 = 0;
      v16 = [extensionIdentity launchdJobDescriptorFor:identity error:&v57];
      v17 = v57;
      jobProperties = [v16 jobProperties];
      executableURL = [v16 executableURL];
      v14 = 0;
      if (jobProperties && executableURL)
      {
        requstorCopy = requstor;
        v52 = executableURL;
        v53 = jobProperties;
        clientRestriction = [v16 clientRestriction];
        v51 = [RBDomainRestriction domainRestrictionForDictionary:"domainRestrictionForDictionary:withError:" withError:?];
        v20 = +[RBAssertionDescriptorValidatorContext context];
        processManager = [*(self + 8) processManager];
        v22 = [processManager processForIdentity:identity];
        [v20 setTargetProcess:v22];

        entitlementManager = [*(self + 8) entitlementManager];
        targetProcess = [v20 targetProcess];
        [entitlementManager entitlementsForProcess:targetProcess];
        objc_claimAutoreleasedReturnValue();
        v54 = v16;
        [OUTLINED_FUNCTION_5_4() setTargetEntitlements:?];

        targetProcess2 = [v20 targetProcess];
        [targetProcess2 bundleProperties];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_5_4() setTargetProperties:?];

        [v20 setOriginatorProcess:v6];
        entitlementManager2 = [*(self + 8) entitlementManager];
        originatorProcess = [v20 originatorProcess];
        v28 = [entitlementManager2 entitlementsForProcess:originatorProcess];
        [v20 setOriginatorEntitlements:v28];

        originatorProcess2 = [v20 originatorProcess];
        [originatorProcess2 bundleProperties];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_5_4() setOriginatorProperties:?];

        v16 = v54;
        v30 = v51;
        v56 = v17;
        v14 = [v51 allowsContext:v20 withError:&v56];
        v31 = v56;

        if (v14)
        {
          attributes = [v54 attributes];
          attributes2 = [context attributes];

          v48 = v31;
          if (attributes2)
          {
            attributes3 = [context attributes];

            v46 = attributes3;
          }

          else
          {
            v46 = attributes;
          }

          v40 = MEMORY[0x277D46EB0];
          identity2 = [context identity];
          v42 = [v40 contextWithIdentity:identity2];

          identifier2 = [v6 identifier];
          [v42 setHostPid:{objc_msgSend(identifier2, "rbs_pid")}];

          [v6 handle];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setRequestorHandle:?];

          [context requiredExistingProcess];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setRequiredExistingProcess:?];

          [context explanation];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setExplanation:?];

          [v42 setAttributes:v47];
          [identity uuid];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setOneShotUUID:?];

          v16 = v54;
          [v54 launchRequestEndpointIdentifiers];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setLaunchRequestIdentifierToMachNameMap:?];

          [v54 managedEndpointLaunchIdentifiers];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setManagedEndpointLaunchIdentifiers:?];

          [v54 bundleIdentifier];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setBundleIdentifier:?];

          [v52 path];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() _setOverrideExecutablePath:?];

          [v42 setLaunchdJobProperties:v53];
          v30 = v51;
          [v42 setClientRestriction:v51];
          *requstorCopy = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v42];

          v31 = v48;
        }

        v17 = v31;
        executableURL = v52;
        jobProperties = v53;
      }
    }

    else
    {
      [context identity];
      objc_claimAutoreleasedReturnValue();
      extensionIdentity = [OUTLINED_FUNCTION_1_18() contextWithIdentity:?];

      [context attributes];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setAttributes:?];

      [context explanation];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setExplanation:?];

      [context oneShotUUID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setOneShotUUID:?];

      [v6 handle];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setRequestorHandle:?];

      identifier3 = [v6 identifier];
      -[NSObject setHostPid:](extensionIdentity, "setHostPid:", [identifier3 rbs_pid]);

      [context managedEndpointLaunchIdentifiers];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setManagedEndpointLaunchIdentifiers:?];

      [context requiredExistingProcess];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setRequiredExistingProcess:?];

      extensionDataProvider = [*(self + 8) extensionDataProvider];
      v55 = 0;
      v14 = [extensionDataProvider configureLaunchContext:extensionIdentity error:&v55];
      v37 = v55;

      if (v14)
      {
        [context attributes];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_3() setAttributes:?];

        [context managedEndpointLaunchIdentifiers];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_3() setManagedEndpointLaunchIdentifiers:?];

        [context requiredExistingProcess];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_3() setRequiredExistingProcess:?];

        *requstor = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:extensionIdentity];
      }

      else
      {
        v38 = rbs_process_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_7_4();
          v59 = v39;
          v60 = v37;
          _os_log_impl(&dword_262485000, v38, OS_LOG_TYPE_DEFAULT, "Extension launch from %{public}@ for %{public}@ failed with error %{public}@", buf, 0x20u);
        }
      }
    }

    goto LABEL_32;
  }

  v14 = 0;
LABEL_33:

LABEL_34:
  v44 = *MEMORY[0x277D85DE8];
  return v14;
}

- (uint64_t)_checkLaunchByAnyAndAdjustRequest:(uint64_t)request
{
  if (!request)
  {
    return 0;
  }

  context = [*a2 context];
  identity = [context identity];
  if ([identity osServiceType] == 3)
  {
    goto LABEL_3;
  }

  if (![identity isApplication])
  {
    goto LABEL_7;
  }

  embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];

  if (!embeddedApplicationIdentifier)
  {
    goto LABEL_7;
  }

  [identity embeddedApplicationIdentifier];
  objc_claimAutoreleasedReturnValue();
  v9 = [OUTLINED_FUNCTION_2_10() applicationProxyForIdentifier:?];

  v2 = [v9 rb_hasEntitlementDomain:64];
  if (v2)
  {
LABEL_3:
    [context identity];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_2_10() contextWithIdentity:?];

    [context attributes];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_10() setAttributes:?];

    [context explanation];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_10() setExplanation:?];

    [context managedEndpointLaunchIdentifiers];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_10() setManagedEndpointLaunchIdentifiers:?];

    [context requiredExistingProcess];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_10() setRequiredExistingProcess:?];

    *a2 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v6];
    v7 = 1;
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

- (void)_finishLaunchRequestAfterAssertionAcquisition:(void *)acquisition requestor:(void *)requestor identifier:(void *)identifier error:(void *)error completion:
{
  v43[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  acquisitionCopy = acquisition;
  requestorCopy = requestor;
  identifierCopy = identifier;
  errorCopy = error;
  if (self)
  {
    if (identifierCopy)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D47088];
      v18 = *MEMORY[0x277CCA7E8];
      v40[0] = *MEMORY[0x277CCA470];
      v40[1] = v18;
      v41[0] = @"Unable to execute launch request";
      v41[1] = identifierCopy;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v20 = [v16 errorWithDomain:v17 code:5 userInfo:v19];

      v21 = OUTLINED_FUNCTION_4_6();
      v22(v21);
      identifierCopy = v20;
    }

    else
    {
      processManager = [*(self + 8) processManager];
      assertionManager = [*(self + 8) assertionManager];
      if (processManager)
      {
        OUTLINED_FUNCTION_0_1();
        v33 = 3221225472;
        v34 = __104__RBRequestManager__finishLaunchRequestAfterAssertionAcquisition_requestor_identifier_error_completion___block_invoke;
        v35 = &unk_279B33D20;
        v36 = assertionManager;
        v37 = requestorCopy;
        v39 = errorCopy;
        v38 = acquisitionCopy;
        [processManager executeLaunchRequest:v11 withCompletion:v32];

        identifierCopy = 0;
      }

      else
      {
        v25 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277D47088];
        v42 = *MEMORY[0x277CCA470];
        v43[0] = @"Unable to execute launch request";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
        identifierCopy = [v25 errorWithDomain:v26 code:5 userInfo:v27];

        identifier = [acquisitionCopy identifier];
        [assertionManager invalidateAssertionFromOriginator:identifier withIdentifier:requestorCopy];

        v29 = OUTLINED_FUNCTION_4_6();
        v30(v29);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_createAcquisitionContext:(void *)context requestor:(void *)requestor assertionIdentifier:(int)identifier isAbstractTarget:
{
  selfCopy = self;
  if (self)
  {
    requestorCopy = requestor;
    contextCopy = context;
    context = [a2 context];
    attributes = [context attributes];
    identity = [context identity];
    v13 = [MEMORY[0x277D47008] targetWithProcessIdentity:identity];
    clientRestriction = [context clientRestriction];
    explanation = [context explanation];
    v16 = explanation;
    if (explanation)
    {
      v17 = explanation;
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBSLaunchRequest for %@", v13];
    }

    v18 = v17;

    v19 = [MEMORY[0x277D46DC8] descriptorWithIdentifier:requestorCopy target:v13 explanation:v18 attributes:attributes];

    selfCopy = [RBAssertionAcquisitionContext contextForProcess:contextCopy withDescriptor:v19 daemonContext:selfCopy[1]];

    if (identifier)
    {
      [selfCopy setAllowAbstractTarget:1];
      [selfCopy setTargetClientRestriction:clientRestriction];
    }

    [selfCopy setLaunchAssertion:1];
    [selfCopy setAcquisitionPolicy:1];
  }

  return selfCopy;
}

- (void)_executeLaunchRequestWithAssertion:(void *)assertion requestor:(void *)requestor completion:
{
  v7 = a2;
  assertionCopy = assertion;
  requestorCopy = requestor;
  if (self)
  {
    context = [v7 context];
    identity = [context identity];

    v12 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(assertionCopy, "rbs_pid")}];
    v13 = [(RBRequestManager *)self _createAcquisitionContext:v7 requestor:assertionCopy assertionIdentifier:v12 isAbstractTarget:1];
    processMonitor = [*(self + 8) processMonitor];
    [processMonitor suppressUpdatesForIdentity:identity];

    assertionManager = [*(self + 8) assertionManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__RBRequestManager__executeLaunchRequestWithAssertion_requestor_completion___block_invoke;
    v18[3] = &unk_279B33D70;
    v19 = v7;
    v20 = v12;
    selfCopy = self;
    v22 = assertionCopy;
    v23 = identity;
    v24 = requestorCopy;
    v16 = identity;
    v17 = v12;
    [assertionManager acquireAssertionWithContext:v13 completion:v18];
  }
}

void __76__RBRequestManager__executeLaunchRequestWithAssertion_requestor_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setLaunchAssertionIdentifier:*(a1 + 40)];

  [(RBRequestManager *)*(a1 + 48) _finishLaunchRequestAfterAssertionAcquisition:*(a1 + 56) requestor:*(a1 + 40) identifier:*(a1 + 64) error:*(a1 + 80) completion:?];
  v3 = [*(*(a1 + 48) + 8) processMonitor];
  [v3 unsuppressUpdatesForIdentity:*(a1 + 72)];
}

- (id)acquireDroppedLaunchAssertion:(id)assertion requestor:(id)requestor
{
  requestorCopy = requestor;
  assertionCopy = assertion;
  context = [assertionCopy context];
  identity = [context identity];

  v10 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(requestorCopy, "rbs_pid")}];
  v11 = [(RBRequestManager *)self _createAcquisitionContext:assertionCopy requestor:requestorCopy assertionIdentifier:v10 isAbstractTarget:0];

  processMonitor = [(RBDaemonContextProviding *)self->_daemonContext processMonitor];
  [processMonitor suppressUpdatesForIdentity:identity];

  assertionManager = [(RBDaemonContextProviding *)self->_daemonContext assertionManager];
  OUTLINED_FUNCTION_0_1();
  v19 = 3221225472;
  v20 = __60__RBRequestManager_acquireDroppedLaunchAssertion_requestor___block_invoke;
  v21 = &unk_279B332F8;
  v22 = identity;
  v14 = v10;
  v23 = v14;
  selfCopy = self;
  v15 = identity;
  [assertionManager acquireAssertionWithContext:v11 completion:v18];

  v16 = v14;
  return v14;
}

void __60__RBRequestManager_acquireDroppedLaunchAssertion_requestor___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = 138412802;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Error acquiring launch assertion for target: %@: identifier %{public}@ error: <%{public}@>", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)executeLaunchRequest:(uint64_t)a1 euid:(NSObject *)a2 requestor:entitlements:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Rejecting launch request because %{public}@ is not entitled to launch processes", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end