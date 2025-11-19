@interface RBRequestManager
- (RBRequestManager)initWithContext:(id)a3;
- (id)acquireDroppedLaunchAssertion:(id)a3 requestor:(id)a4;
- (uint64_t)_checkAndAdjustLaunchRequest:(void *)a3 requestor:(void *)a4 entitlements:;
- (uint64_t)_checkExtensionLaunchFromRequstor:(id *)a3 AndAdjustRequest:;
- (uint64_t)_checkLaunchByAnyAndAdjustRequest:(uint64_t)a1;
- (void)_createAcquisitionContext:(void *)a3 requestor:(void *)a4 assertionIdentifier:(int)a5 isAbstractTarget:;
- (void)_executeLaunchRequestWithAssertion:(void *)a3 requestor:(void *)a4 completion:;
- (void)_finishLaunchRequestAfterAssertionAcquisition:(void *)a3 requestor:(void *)a4 identifier:(void *)a5 error:(void *)a6 completion:;
- (void)executeLaunchRequest:(id)a3 euid:(unsigned int)a4 requestor:(id)a5 entitlements:(id)a6 completion:(id)a7;
@end

@implementation RBRequestManager

- (RBRequestManager)initWithContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RBRequestManager;
  v6 = [(RBRequestManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemonContext, a3);
    v8 = v7;
  }

  return v7;
}

- (uint64_t)_checkAndAdjustLaunchRequest:(void *)a3 requestor:(void *)a4 entitlements:
{
  v7 = a3;
  v8 = a4;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_13;
  }

  if (!a2)
  {
    [RBRequestManager _checkAndAdjustLaunchRequest:requestor:entitlements:];
  }

  v9 = [*a2 context];
  v10 = [v9 identity];
  if (([v10 isXPCService] & 1) != 0 || objc_msgSend(v9, "hostPid"))
  {

LABEL_15:
    if (([(RBRequestManager *)a1 _checkExtensionLaunchFromRequstor:v7 AndAdjustRequest:a2]& 1) == 0)
    {
      v14 = RBLaunchExtensionsEntitlement;
      goto LABEL_8;
    }

LABEL_11:
    v16 = 1;
    goto LABEL_12;
  }

  v11 = [v9 extensionOverlay];

  if (v11)
  {
    goto LABEL_15;
  }

  v12 = [v9 identity];
  v13 = [v12 isDext];

  if ((v13 & 1) == 0)
  {
    if (([v8 rb_hasEntitlementDomain:2] & 1) == 0)
    {
      v15 = [(RBRequestManager *)a1 _checkLaunchByAnyAndAdjustRequest:a2];
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v14 = RBLaunchDextsEntitlement;
LABEL_8:
  v15 = [v8 rb_hasEntitlement:*v14];
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

- (void)executeLaunchRequest:(id)a3 euid:(unsigned int)a4 requestor:(id)a5 entitlements:(id)a6 completion:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v11 context];
  v16 = [v15 appID];

  if (v16)
  {
    v17 = [MEMORY[0x277D46F60] identityForLSApplicationIdentity:v16];
    v18 = rbs_connection_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v16 identityString];
      *buf = 138543618;
      v36 = v19;
      v37 = 2114;
      v38 = v17;
      _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_INFO, "Resolved identity for launch request for %{public}@ to %{public}@", buf, 0x16u);
    }

    if (v17)
    {
      v20 = [v11 context];
      [v20 setIdentity:v17];
    }
  }

  v34 = v11;
  v21 = [(RBRequestManager *)self _checkAndAdjustLaunchRequest:v12 requestor:v13 entitlements:?];
  v22 = v34;

  if (v21)
  {
    v23 = [v22 context];
    v24 = [v23 attributes];
    if ([v24 count])
    {
      [(RBRequestManager *)self _executeLaunchRequestWithAssertion:v22 requestor:v12 completion:v14];
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
      v31 = v23;
      v32 = v12;
      v33 = v14;
      [v25 handoffContextOnQueue:v26 block:v29];
    }
  }

  else
  {
    v27 = rbs_connection_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [RBRequestManager executeLaunchRequest:v12 euid:v27 requestor:? entitlements:? completion:?];
    }

    v23 = [MEMORY[0x277CCA9B8] rbs_errorClientNotAuthorized];
    (*(v14 + 2))(v14, 0, 0, 0, v23);
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

- (uint64_t)_checkExtensionLaunchFromRequstor:(id *)a3 AndAdjustRequest:
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_34;
  }

  v7 = [*a3 context];
  v8 = [v7 identity];
  if ([v8 isExtension])
  {
    v9 = [v8 hostIdentifier];
    if (v9)
    {
      v10 = v9;
      v3 = [v8 hostIdentifier];
      v11 = [v6 identifier];
      v12 = v11;
      if (v3 == v11)
      {
      }

      else
      {
        if (!v3 || !v11)
        {

LABEL_25:
          v15 = rbs_process_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            OUTLINED_FUNCTION_7_4();
            _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_INFO, "Not mutating extension launch from %{public}@ for %{public}@ since requestor is not the host", buf, 0x16u);
          }

          v14 = 0;
LABEL_32:

          goto LABEL_33;
        }

        v13 = [v3 isEqual:v11];

        if ((v13 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && _os_feature_enabled_impl())
    {
      v15 = [v8 extensionIdentity];
      v57 = 0;
      v16 = [v15 launchdJobDescriptorFor:v8 error:&v57];
      v17 = v57;
      v18 = [v16 jobProperties];
      v19 = [v16 executableURL];
      v14 = 0;
      if (v18 && v19)
      {
        v49 = a3;
        v52 = v19;
        v53 = v18;
        v50 = [v16 clientRestriction];
        v51 = [RBDomainRestriction domainRestrictionForDictionary:"domainRestrictionForDictionary:withError:" withError:?];
        v20 = +[RBAssertionDescriptorValidatorContext context];
        v21 = [*(a1 + 8) processManager];
        v22 = [v21 processForIdentity:v8];
        [v20 setTargetProcess:v22];

        v23 = [*(a1 + 8) entitlementManager];
        v24 = [v20 targetProcess];
        [v23 entitlementsForProcess:v24];
        objc_claimAutoreleasedReturnValue();
        v54 = v16;
        [OUTLINED_FUNCTION_5_4() setTargetEntitlements:?];

        v25 = [v20 targetProcess];
        [v25 bundleProperties];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_5_4() setTargetProperties:?];

        [v20 setOriginatorProcess:v6];
        v26 = [*(a1 + 8) entitlementManager];
        v27 = [v20 originatorProcess];
        v28 = [v26 entitlementsForProcess:v27];
        [v20 setOriginatorEntitlements:v28];

        v29 = [v20 originatorProcess];
        [v29 bundleProperties];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_5_4() setOriginatorProperties:?];

        v16 = v54;
        v30 = v51;
        v56 = v17;
        v14 = [v51 allowsContext:v20 withError:&v56];
        v31 = v56;

        if (v14)
        {
          v32 = [v54 attributes];
          v33 = [v7 attributes];

          v48 = v31;
          if (v33)
          {
            v34 = [v7 attributes];

            v46 = v34;
          }

          else
          {
            v46 = v32;
          }

          v40 = MEMORY[0x277D46EB0];
          v41 = [v7 identity];
          v42 = [v40 contextWithIdentity:v41];

          v43 = [v6 identifier];
          [v42 setHostPid:{objc_msgSend(v43, "rbs_pid")}];

          [v6 handle];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setRequestorHandle:?];

          [v7 requiredExistingProcess];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setRequiredExistingProcess:?];

          [v7 explanation];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_0_17() setExplanation:?];

          [v42 setAttributes:v47];
          [v8 uuid];
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
          *v49 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v42];

          v31 = v48;
        }

        v17 = v31;
        v19 = v52;
        v18 = v53;
      }
    }

    else
    {
      [v7 identity];
      objc_claimAutoreleasedReturnValue();
      v15 = [OUTLINED_FUNCTION_1_18() contextWithIdentity:?];

      [v7 attributes];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setAttributes:?];

      [v7 explanation];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setExplanation:?];

      [v7 oneShotUUID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setOneShotUUID:?];

      [v6 handle];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setRequestorHandle:?];

      v35 = [v6 identifier];
      -[NSObject setHostPid:](v15, "setHostPid:", [v35 rbs_pid]);

      [v7 managedEndpointLaunchIdentifiers];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setManagedEndpointLaunchIdentifiers:?];

      [v7 requiredExistingProcess];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_18() setRequiredExistingProcess:?];

      v36 = [*(a1 + 8) extensionDataProvider];
      v55 = 0;
      v14 = [v36 configureLaunchContext:v15 error:&v55];
      v37 = v55;

      if (v14)
      {
        [v7 attributes];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_3() setAttributes:?];

        [v7 managedEndpointLaunchIdentifiers];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_3() setManagedEndpointLaunchIdentifiers:?];

        [v7 requiredExistingProcess];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_3() setRequiredExistingProcess:?];

        *a3 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v15];
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

- (uint64_t)_checkLaunchByAnyAndAdjustRequest:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [*a2 context];
  v5 = [v4 identity];
  if ([v5 osServiceType] == 3)
  {
    goto LABEL_3;
  }

  if (![v5 isApplication])
  {
    goto LABEL_7;
  }

  v8 = [v5 embeddedApplicationIdentifier];

  if (!v8)
  {
    goto LABEL_7;
  }

  [v5 embeddedApplicationIdentifier];
  objc_claimAutoreleasedReturnValue();
  v9 = [OUTLINED_FUNCTION_2_10() applicationProxyForIdentifier:?];

  v2 = [v9 rb_hasEntitlementDomain:64];
  if (v2)
  {
LABEL_3:
    [v4 identity];
    objc_claimAutoreleasedReturnValue();
    v6 = [OUTLINED_FUNCTION_2_10() contextWithIdentity:?];

    [v4 attributes];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_10() setAttributes:?];

    [v4 explanation];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_10() setExplanation:?];

    [v4 managedEndpointLaunchIdentifiers];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_10() setManagedEndpointLaunchIdentifiers:?];

    [v4 requiredExistingProcess];
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

- (void)_finishLaunchRequestAfterAssertionAcquisition:(void *)a3 requestor:(void *)a4 identifier:(void *)a5 error:(void *)a6 completion:
{
  v43[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    if (v14)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D47088];
      v18 = *MEMORY[0x277CCA7E8];
      v40[0] = *MEMORY[0x277CCA470];
      v40[1] = v18;
      v41[0] = @"Unable to execute launch request";
      v41[1] = v14;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
      v20 = [v16 errorWithDomain:v17 code:5 userInfo:v19];

      v21 = OUTLINED_FUNCTION_4_6();
      v22(v21);
      v14 = v20;
    }

    else
    {
      v23 = [*(a1 + 8) processManager];
      v24 = [*(a1 + 8) assertionManager];
      if (v23)
      {
        OUTLINED_FUNCTION_0_1();
        v33 = 3221225472;
        v34 = __104__RBRequestManager__finishLaunchRequestAfterAssertionAcquisition_requestor_identifier_error_completion___block_invoke;
        v35 = &unk_279B33D20;
        v36 = v24;
        v37 = v13;
        v39 = v15;
        v38 = v12;
        [v23 executeLaunchRequest:v11 withCompletion:v32];

        v14 = 0;
      }

      else
      {
        v25 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277D47088];
        v42 = *MEMORY[0x277CCA470];
        v43[0] = @"Unable to execute launch request";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
        v14 = [v25 errorWithDomain:v26 code:5 userInfo:v27];

        v28 = [v12 identifier];
        [v24 invalidateAssertionFromOriginator:v28 withIdentifier:v13];

        v29 = OUTLINED_FUNCTION_4_6();
        v30(v29);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_createAcquisitionContext:(void *)a3 requestor:(void *)a4 assertionIdentifier:(int)a5 isAbstractTarget:
{
  v5 = a1;
  if (a1)
  {
    v8 = a4;
    v9 = a3;
    v10 = [a2 context];
    v11 = [v10 attributes];
    v12 = [v10 identity];
    v13 = [MEMORY[0x277D47008] targetWithProcessIdentity:v12];
    v14 = [v10 clientRestriction];
    v15 = [v10 explanation];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBSLaunchRequest for %@", v13];
    }

    v18 = v17;

    v19 = [MEMORY[0x277D46DC8] descriptorWithIdentifier:v8 target:v13 explanation:v18 attributes:v11];

    v5 = [RBAssertionAcquisitionContext contextForProcess:v9 withDescriptor:v19 daemonContext:v5[1]];

    if (a5)
    {
      [v5 setAllowAbstractTarget:1];
      [v5 setTargetClientRestriction:v14];
    }

    [v5 setLaunchAssertion:1];
    [v5 setAcquisitionPolicy:1];
  }

  return v5;
}

- (void)_executeLaunchRequestWithAssertion:(void *)a3 requestor:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [v7 context];
    v11 = [v10 identity];

    v12 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(v8, "rbs_pid")}];
    v13 = [(RBRequestManager *)a1 _createAcquisitionContext:v7 requestor:v8 assertionIdentifier:v12 isAbstractTarget:1];
    v14 = [*(a1 + 8) processMonitor];
    [v14 suppressUpdatesForIdentity:v11];

    v15 = [*(a1 + 8) assertionManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__RBRequestManager__executeLaunchRequestWithAssertion_requestor_completion___block_invoke;
    v18[3] = &unk_279B33D70;
    v19 = v7;
    v20 = v12;
    v21 = a1;
    v22 = v8;
    v23 = v11;
    v24 = v9;
    v16 = v11;
    v17 = v12;
    [v15 acquireAssertionWithContext:v13 completion:v18];
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

- (id)acquireDroppedLaunchAssertion:(id)a3 requestor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 context];
  v9 = [v8 identity];

  v10 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(v6, "rbs_pid")}];
  v11 = [(RBRequestManager *)self _createAcquisitionContext:v7 requestor:v6 assertionIdentifier:v10 isAbstractTarget:0];

  v12 = [(RBDaemonContextProviding *)self->_daemonContext processMonitor];
  [v12 suppressUpdatesForIdentity:v9];

  v13 = [(RBDaemonContextProviding *)self->_daemonContext assertionManager];
  OUTLINED_FUNCTION_0_1();
  v19 = 3221225472;
  v20 = __60__RBRequestManager_acquireDroppedLaunchAssertion_requestor___block_invoke;
  v21 = &unk_279B332F8;
  v22 = v9;
  v14 = v10;
  v23 = v14;
  v24 = self;
  v15 = v9;
  [v13 acquireAssertionWithContext:v11 completion:v18];

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