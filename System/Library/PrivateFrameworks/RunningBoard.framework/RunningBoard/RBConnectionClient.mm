@interface RBConnectionClient
+ (id)sharedLaunchWorkloop;
+ (id)sharedTerminationWorkloop;
- (BOOL)intendToExit:(void *)a3 withStatus:(void *)a4 error:;
- (BOOL)invalidateAssertionWithIdentifier:(uint64_t)a3 sync:(void *)a4 error:;
- (BOOL)subscribeToProcessStateChangesWithConfiguration:error:;
- (NSString)description;
- (NSString)stateCaptureTitle;
- (RBConnectionClient)init;
- (__CFString)lookupProcessName:error:;
- (id)assertionDescriptorsWithFlattenedAttributes:(void *)a3 error:;
- (id)busyExtensionInstancesFromSet:error:;
- (id)handshakeWithRequest:(uint64_t)a1;
- (id)identifiersForStateCaptureSubsystemsWithError:(id *)a1;
- (id)infoPlistResultForInstance:(void *)a3 forKeys:(void *)a4 error:;
- (id)initWithContext:(void *)a3 listener:(void *)a4 process:(void *)a5 connection:;
- (id)limitationsForInstance:(void *)a3 error:;
- (id)lookupHandleForPredicate:error:;
- (id)lookupPortForIdentifier:error:;
- (id)preventLaunchPredicates;
- (id)subscribeToProcessDeath:(uint64_t)a3 error:(uint64_t)a4;
- (uint64_t)_predicatesMatchOnlyAllowedProcess:(NSObject *)a1;
- (uint64_t)isIdentityAnAngel:(void *)a3 withError:;
- (uint64_t)processIdentifier;
- (uint64_t)processIdentity;
- (uint64_t)saveEndowment:(void *)a3 withError:;
- (void)_addStatesForUntrackedProcessesTo:(void *)a3 withPredicate:;
- (void)_requestPluginHoldForProxy:(NSObject *)a3 terminate:(void *)a4 completion:;
- (void)_setReadyWithConnection:(uint64_t)a1;
- (void)_trackTargetProcessForDescriptor:(uint64_t)a1;
- (void)acquireAssertionForDescriptor:(void *)a3 withReply:;
- (void)captureStateForSubsystem:withReply:;
- (void)cleanupHolds;
- (void)didInvalidateAssertions:(uint64_t)a1;
- (void)didRemoveProcess:withState:;
- (void)didUpdateProcessStates:(uint64_t)a1;
- (void)executeLaunchRequest:(uint64_t)a3 withEuid:(void *)a4 withReply:;
- (void)executeTerminateRequest:(void *)a3 withReply:;
- (void)expandPredicateForContained:(uint64_t)a1;
- (void)handleMessage:(uint64_t)a1;
- (void)inheritanceManager:(id)a3 didChangeInheritances:(id)a4 completion:(id)a5;
- (void)invalidate;
- (void)lastExitContextForInstance:(void *)a3 error:;
- (void)statesForPredicate:(void *)a3 withDescriptor:(void *)a4 withReply:;
- (void)unsubscribeFromProcessStateChangesWithIdentifier:(uint64_t)a1;
- (void)willExpireAssertionsSoonForProcess:(double)a3 expirationTime:;
- (void)willInvalidateAssertion:(uint64_t)a1;
@end

@implementation RBConnectionClient

+ (id)sharedLaunchWorkloop
{
  objc_opt_self();
  if (sharedLaunchWorkloop_onceToken != -1)
  {
    +[RBConnectionClient sharedLaunchWorkloop];
  }

  v0 = sharedLaunchWorkloop_workloop;

  return v0;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  processIdentifier = self->_processIdentifier;
  v6 = [(RBSProcessIdentity *)self->_processIdentity shortDescription];
  v7 = [v3 initWithFormat:@"<%@| %@ name:%@ entitlements:%@ inheritanceManager:%@>", v4, processIdentifier, v6, self->_entitlements, self->_inheritanceManager];

  return v7;
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = rbs_process_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 112);
      v8 = 138543362;
      v9 = v4;
      OUTLINED_FUNCTION_21_0(&dword_262485000, v2, v3, "XPC connection invalidated: %{public}@", &v8);
    }

    os_unfair_lock_lock((a1 + 20));
    [*(a1 + 176) removeAllObjects];
    os_unfair_lock_unlock((a1 + 20));
    os_unfair_lock_lock((a1 + 16));
    [*(a1 + 112) setTerminating:1];
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;

    [*(a1 + 184) invalidate];
    v6 = *(a1 + 184);
    *(a1 + 184) = 0;

    [*(a1 + 56) removeItem:a1];
    os_unfair_lock_unlock((a1 + 16));
    [(RBConnectionClient *)a1 cleanupHolds];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanupHolds
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [*(a1 + 24) assertionsForOriginator:*(a1 + 136)];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v16;
      *&v4 = 138412290;
      v14 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(a1 + 24);
          v9 = [*(*(&v15 + 1) + 8 * v7) identifier];
          v10 = [OUTLINED_FUNCTION_18_0() popPluginHoldForAssertion:?];

          if (v10)
          {
            v11 = rbs_assertion_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = v14;
              v20 = v10;
              _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_INFO, "Releasing plugin hold token for dealloc %@", buf, 0xCu);
            }

            v12 = [MEMORY[0x277D3D350] managerForUser:*(a1 + 144)];
            [v12 releaseHold:v10];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v5);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)sharedTerminationWorkloop
{
  objc_opt_self();
  if (sharedTerminationWorkloop_onceToken != -1)
  {
    +[RBConnectionClient sharedTerminationWorkloop];
  }

  v0 = sharedTerminationWorkloop_workloop;

  return v0;
}

void __47__RBConnectionClient_sharedTerminationWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("RBConnectionClientTermination");
  v1 = sharedTerminationWorkloop_workloop;
  sharedTerminationWorkloop_workloop = inactive;

  dispatch_set_qos_class_fallback();
  v2 = sharedTerminationWorkloop_workloop;

  dispatch_activate(v2);
}

void __42__RBConnectionClient_sharedLaunchWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("RBConnectionClientLaunch");
  v1 = sharedLaunchWorkloop_workloop;
  sharedLaunchWorkloop_workloop = inactive;

  dispatch_set_qos_class_fallback();
  v2 = sharedLaunchWorkloop_workloop;

  dispatch_activate(v2);
}

- (RBConnectionClient)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBConnectionClient.m" lineNumber:152 description:@"-init is not allowed on RBConnectionClient"];

  return 0;
}

- (void)handleMessage:(uint64_t)a1
{
  v212 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277D47030] messageForXPCMessage:v3];
    v5 = v4;
    if (v4 && ([v4 isEmpty] & 1) == 0)
    {
      v6 = [v5 method];
      if (v6)
      {
        v7 = v6;
        v8 = [v5 reply];
        v9 = [v8 payload];
        v188 = 0;
        v189 = &v188;
        v190 = 0x3032000000;
        v191 = __Block_byref_object_copy__2;
        v192 = __Block_byref_object_dispose__2;
        v185[0] = MEMORY[0x277D85DD0];
        v185[1] = 3221225472;
        v185[2] = __36__RBConnectionClient_handleMessage___block_invoke;
        v185[3] = &unk_279B332F8;
        v185[4] = a1;
        v39 = v9;
        v186 = v39;
        v37 = v8;
        v187 = v37;
        v193 = MEMORY[0x266729AD0](v185);
        v10 = xpc_dictionary_get_remote_connection(v3);
        v184 = 0u;
        v183 = 0u;
        RBSInvalidRealAuditToken();
        xpc_connection_get_audit_token();
        memset(atoken, 0, 32);
        if (RBSRealAuditTokenValid())
        {
          *atoken = v183;
          *&atoken[16] = v184;
          v11 = audit_token_to_euid(atoken);
          *atoken = v183;
          *&atoken[16] = v184;
          v12 = audit_token_to_auid(atoken);
          if (v12 + 1 >= 2)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }
        }

        else
        {
          v13 = 0;
          v11 = 0;
        }

        v211 = 0;
        memset(v210, 0, sizeof(v210));
        v209 = 0u;
        v208 = 0u;
        v207 = 0u;
        memset(&atoken[4], 0, 32);
        *atoken = 2;
        v38 = v10;
        v16 = 0;
        if (!kpersona_info() && *&atoken[8] <= 5u && ((1 << atoken[8]) & 0x26) != 0)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v210[4]];
        }

        v17 = rbs_message_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(a1 + 112);
          v19 = NSStringFromSelector(v7);
          *buf = 138544386;
          *&buf[4] = v18;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          *v205 = 2114;
          *&v205[2] = v16;
          *&v205[10] = 2114;
          *&v205[12] = v19;
          _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "PERF: Received request from %{public}@ (euid %d, auid %d) (persona %{public}@): %{public}@", buf, 0x2Cu);
        }

        if ((_os_feature_enabled_impl() & 1) == 0)
        {

          v16 = 0;
        }

        v180[0] = MEMORY[0x277D85DD0];
        v180[1] = 3221225472;
        v180[2] = __36__RBConnectionClient_handleMessage___block_invoke_32;
        v180[3] = &unk_279B33320;
        v182 = v11;
        v20 = v16;
        v181 = v20;
        v36 = MEMORY[0x266729AD0](v180);
        v177[0] = MEMORY[0x277D85DD0];
        v177[1] = 3221225472;
        v177[2] = __36__RBConnectionClient_handleMessage___block_invoke_2;
        v177[3] = &unk_279B33348;
        v179 = v13;
        v21 = v20;
        v178 = v21;
        v35 = MEMORY[0x266729AD0](v177);
        v174[0] = MEMORY[0x277D85DD0];
        v174[1] = 3221225472;
        v174[2] = __36__RBConnectionClient_handleMessage___block_invoke_3;
        v174[3] = &unk_279B33370;
        v176 = v13;
        v22 = v21;
        v175 = v22;
        v23 = MEMORY[0x266729AD0](v174);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *v205 = __Block_byref_object_copy__36;
        *&v205[8] = __Block_byref_object_dispose__37;
        *&v205[16] = 0;
        if (v7 == sel_handshakeWithRequest_)
        {
          activity_block[0] = MEMORY[0x277D85DD0];
          activity_block[1] = 3221225472;
          activity_block[2] = __36__RBConnectionClient_handleMessage___block_invoke_40;
          activity_block[3] = &unk_279B33398;
          v172 = buf;
          v168 = v5;
          v169 = a1;
          v170 = v38;
          v173 = v11;
          v171 = v39;
          _os_activity_initiate(&dword_262485000, "handshakeWithRequest", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
        }

        else if (v7 == sel_lookupHandleForKey_error_)
        {
          v162[0] = MEMORY[0x277D85DD0];
          v162[1] = 3221225472;
          v162[2] = __36__RBConnectionClient_handleMessage___block_invoke_2_46;
          v162[3] = &unk_279B333C0;
          v166 = buf;
          v163 = v5;
          v164 = a1;
          v165 = v39;
          _os_activity_initiate(&dword_262485000, "lookupHandleForKey", OS_ACTIVITY_FLAG_DEFAULT, v162);
        }

        else if (v7 == sel_lookupProcessName_error_)
        {
          v157[0] = MEMORY[0x277D85DD0];
          v157[1] = 3221225472;
          v157[2] = __36__RBConnectionClient_handleMessage___block_invoke_3_50;
          v157[3] = &unk_279B333C0;
          v161 = buf;
          v158 = v5;
          v159 = a1;
          v160 = v39;
          _os_activity_initiate(&dword_262485000, "lookupProcessName", OS_ACTIVITY_FLAG_DEFAULT, v157);
        }

        else if (v7 == sel_lookupHandleForPredicate_error_)
        {
          v31 = rbs_message_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 112);
            *v196 = 138544130;
            v197 = v32;
            v198 = 1024;
            v199 = v11;
            v200 = 1024;
            v201 = v13;
            v202 = 2114;
            v203 = v22;
            _os_log_impl(&dword_262485000, v31, OS_LOG_TYPE_DEFAULT, "PERF: Received lookupHandleForPredicate request from %{public}@ (euid %d, auid %d) (persona %{public}@)", v196, 0x22u);
          }

          v152[0] = MEMORY[0x277D85DD0];
          v152[1] = 3221225472;
          v152[2] = __36__RBConnectionClient_handleMessage___block_invoke_53;
          v152[3] = &unk_279B333C0;
          v156 = buf;
          v153 = v5;
          v154 = a1;
          v155 = v39;
          _os_activity_initiate(&dword_262485000, "lookupHandleForPredicate", OS_ACTIVITY_FLAG_DEFAULT, v152);
        }

        else if (v7 == sel_lookupPortForIdentifier_error_)
        {
          v147[0] = MEMORY[0x277D85DD0];
          v147[1] = 3221225472;
          v147[2] = __36__RBConnectionClient_handleMessage___block_invoke_2_57;
          v147[3] = &unk_279B333C0;
          v151 = buf;
          v148 = v5;
          v149 = a1;
          v150 = v39;
          _os_activity_initiate(&dword_262485000, "lookupPortForIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v147);
        }

        else if (v7 == sel_acquireAssertionWithDescriptor_error_)
        {
          v140[0] = MEMORY[0x277D85DD0];
          v140[1] = 3221225472;
          v140[2] = __36__RBConnectionClient_handleMessage___block_invoke_3_61;
          v140[3] = &unk_279B333E8;
          v141 = v5;
          v145 = buf;
          v144 = v36;
          v142 = a1;
          v143 = v37;
          v146 = &v188;
          _os_activity_initiate(&dword_262485000, "acquireAssertionWithDescriptor", OS_ACTIVITY_FLAG_DEFAULT, v140);
        }

        else if (v7 == sel_async_invalidateAssertionWithIdentifier_)
        {
          v136[0] = MEMORY[0x277D85DD0];
          v136[1] = 3221225472;
          v136[2] = __36__RBConnectionClient_handleMessage___block_invoke_4;
          v136[3] = &unk_279B33410;
          v139 = buf;
          v137 = v5;
          v138 = a1;
          _os_activity_initiate(&dword_262485000, "invalidateAssertionWithIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v136);
        }

        else if (v7 == sel_void_invalidateAssertionWithIdentifier_error_)
        {
          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __36__RBConnectionClient_handleMessage___block_invoke_5;
          v132[3] = &unk_279B33410;
          v135 = buf;
          v133 = v5;
          v134 = a1;
          _os_activity_initiate(&dword_262485000, "invalidateAssertionWithIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v132);
        }

        else if (v7 == sel_assertionDescriptorsWithFlattenedAttributes_error_)
        {
          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __36__RBConnectionClient_handleMessage___block_invoke_6;
          v127[3] = &unk_279B333C0;
          v131 = buf;
          v128 = v5;
          v129 = a1;
          v130 = v39;
          _os_activity_initiate(&dword_262485000, "assertionDescriptorsWithFlattenedAttributes", OS_ACTIVITY_FLAG_DEFAULT, v127);
        }

        else if (v7 == sel_executeLaunchRequest_error_)
        {
          v119[0] = MEMORY[0x277D85DD0];
          v119[1] = 3221225472;
          v119[2] = __36__RBConnectionClient_handleMessage___block_invoke_7;
          v119[3] = &unk_279B33438;
          v120 = v5;
          v124 = buf;
          v123 = v35;
          v121 = a1;
          v126 = v11;
          v122 = v37;
          v125 = &v188;
          _os_activity_initiate(&dword_262485000, "executeLaunchRequest", OS_ACTIVITY_FLAG_DEFAULT, v119);
        }

        else if (v7 == sel_executeTerminateRequest_identifier_error_)
        {
          v113[0] = MEMORY[0x277D85DD0];
          v113[1] = 3221225472;
          v113[2] = __36__RBConnectionClient_handleMessage___block_invoke_8;
          v113[3] = &unk_279B33460;
          v117 = buf;
          v114 = v5;
          v115 = a1;
          v116 = v37;
          v118 = &v188;
          _os_activity_initiate(&dword_262485000, "executeTerminateRequest", OS_ACTIVITY_FLAG_DEFAULT, v113);
        }

        else if (v7 == sel_subscribeToProcessDeath_error_)
        {
          v108[0] = MEMORY[0x277D85DD0];
          v108[1] = 3221225472;
          v108[2] = __36__RBConnectionClient_handleMessage___block_invoke_9;
          v108[3] = &unk_279B333C0;
          v112 = buf;
          v109 = v5;
          v110 = a1;
          v111 = v39;
          _os_activity_initiate(&dword_262485000, "subscribeToProcessDeath", OS_ACTIVITY_FLAG_DEFAULT, v108);
        }

        else if (v7 == sel_void_subscribeToProcessStateChangesWithConfiguration_error_)
        {
          v104[0] = MEMORY[0x277D85DD0];
          v104[1] = 3221225472;
          v104[2] = __36__RBConnectionClient_handleMessage___block_invoke_10;
          v104[3] = &unk_279B33410;
          v107 = buf;
          v105 = v5;
          v106 = a1;
          _os_activity_initiate(&dword_262485000, "subscribeToProcessStateChangesWithConfiguration", OS_ACTIVITY_FLAG_DEFAULT, v104);
        }

        else if (v7 == sel_async_unsubscribeFromProcessStateChangesWithIdentifier_)
        {
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __36__RBConnectionClient_handleMessage___block_invoke_11;
          v100[3] = &unk_279B33410;
          v103 = buf;
          v101 = v5;
          v102 = a1;
          _os_activity_initiate(&dword_262485000, "unsubscribeFromProcessStateChangesWithIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v100);
        }

        else if (v7 == sel_statesForPredicate_descriptor_error_)
        {
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __36__RBConnectionClient_handleMessage___block_invoke_12;
          v94[3] = &unk_279B33460;
          v98 = buf;
          v95 = v5;
          v96 = a1;
          v97 = v37;
          v99 = &v188;
          _os_activity_initiate(&dword_262485000, "statesForPredicate", OS_ACTIVITY_FLAG_DEFAULT, v94);
        }

        else if (v7 == sel_void_intendToExit_withStatus_)
        {
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __36__RBConnectionClient_handleMessage___block_invoke_13;
          v89[3] = &unk_279B33488;
          v90 = v5;
          v93 = buf;
          v92 = v23;
          v91 = a1;
          _os_activity_initiate(&dword_262485000, "intendToExit", OS_ACTIVITY_FLAG_DEFAULT, v89);
        }

        else if (v7 == sel_lastExitContextForInstance_error_)
        {
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __36__RBConnectionClient_handleMessage___block_invoke_14;
          v83[3] = &unk_279B334B0;
          v84 = v5;
          v88 = buf;
          v87 = v23;
          v85 = a1;
          v86 = v39;
          _os_activity_initiate(&dword_262485000, "lastExitContextForInstance", OS_ACTIVITY_FLAG_DEFAULT, v83);
        }

        else if (v7 == sel_limitationsForInstance_error_)
        {
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __36__RBConnectionClient_handleMessage___block_invoke_15;
          v77[3] = &unk_279B334B0;
          v78 = v5;
          v82 = buf;
          v81 = v23;
          v79 = a1;
          v80 = v39;
          _os_activity_initiate(&dword_262485000, "limitationsForInstance", OS_ACTIVITY_FLAG_DEFAULT, v77);
        }

        else if (v7 == sel_hostProcessForInstance_error_)
        {
          v71[0] = MEMORY[0x277D85DD0];
          v71[1] = 3221225472;
          v71[2] = __36__RBConnectionClient_handleMessage___block_invoke_16;
          v71[3] = &unk_279B334B0;
          v72 = v5;
          v76 = buf;
          v75 = v23;
          v73 = a1;
          v74 = v39;
          _os_activity_initiate(&dword_262485000, "hostProcessForInstance", OS_ACTIVITY_FLAG_DEFAULT, v71);
        }

        else if (v7 == sel_infoPlistResultForInstance_forKeys_error_)
        {
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __36__RBConnectionClient_handleMessage___block_invoke_17;
          v66[3] = &unk_279B333C0;
          v70 = buf;
          v67 = v5;
          v68 = a1;
          v69 = v39;
          _os_activity_initiate(&dword_262485000, "infoPlistResultForInstance", OS_ACTIVITY_FLAG_DEFAULT, v66);
        }

        else if (v7 == sel_captureStateForSubsystem_error_)
        {
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __36__RBConnectionClient_handleMessage___block_invoke_18;
          v60[3] = &unk_279B33460;
          v64 = buf;
          v61 = v5;
          v62 = a1;
          v63 = v37;
          v65 = &v188;
          _os_activity_initiate(&dword_262485000, "captureStateForSubsystem", OS_ACTIVITY_FLAG_DEFAULT, v60);
        }

        else if (v7 == sel_identifiersForStateCaptureSubsystemsWithError_)
        {
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __36__RBConnectionClient_handleMessage___block_invoke_19;
          v57[3] = &unk_279B33410;
          v57[4] = a1;
          v59 = buf;
          v58 = v39;
          _os_activity_initiate(&dword_262485000, "identifiersForStateCaptureSubsystemsWithError", OS_ACTIVITY_FLAG_DEFAULT, v57);
        }

        else if (v7 == sel_busyExtensionInstancesFromSet_error_)
        {
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __36__RBConnectionClient_handleMessage___block_invoke_20;
          v52[3] = &unk_279B333C0;
          v56 = buf;
          v53 = v5;
          v54 = a1;
          v55 = v39;
          _os_activity_initiate(&dword_262485000, "busyExtensionInstancesFromSet", OS_ACTIVITY_FLAG_DEFAULT, v52);
        }

        else if (v7 == sel_preventLaunchPredicatesWithError_)
        {
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __36__RBConnectionClient_handleMessage___block_invoke_21;
          v50[3] = &unk_279B32B80;
          v50[4] = a1;
          v51 = v39;
          _os_activity_initiate(&dword_262485000, "preventLaunchPredicates", OS_ACTIVITY_FLAG_DEFAULT, v50);
        }

        else if (v7 == sel_saveEndowment_withError_)
        {
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __36__RBConnectionClient_handleMessage___block_invoke_22;
          v45[3] = &unk_279B333C0;
          v49 = buf;
          v46 = v5;
          v47 = a1;
          v48 = v39;
          _os_activity_initiate(&dword_262485000, "saveEndowment", OS_ACTIVITY_FLAG_DEFAULT, v45);
        }

        else if (v7 == sel_isIdentityAnAngel_withError_)
        {
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __36__RBConnectionClient_handleMessage___block_invoke_23;
          v40[3] = &unk_279B333C0;
          v44 = buf;
          v41 = v5;
          v42 = a1;
          v43 = v39;
          _os_activity_initiate(&dword_262485000, "isIdentityAnAngel", OS_ACTIVITY_FLAG_DEFAULT, v40);
        }

        else
        {
          v24 = rbs_connection_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v25 = *(a1 + 112);
            v26 = NSStringFromSelector(v7);
            [(RBConnectionClient *)v25 handleMessage:v26, v196, v24];
          }

          v27 = MEMORY[0x277CCA9B8];
          v194 = *MEMORY[0x277CCA470];
          v195 = @"The server has no implementation for this message";
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
          v29 = [v27 errorWithDomain:*MEMORY[0x277D47098] code:501 userInfo:v28];
          v30 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v29;
        }

        v33 = v189[5];
        if (v33)
        {
          (*(v33 + 16))(v33, *(*&buf[8] + 40));
        }

        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v188, 8);
        v15 = v37;
      }

      else
      {
        v14 = rbs_connection_log();
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(RBConnectionClient *)a1 handleMessage:v14];
          v15 = v14;
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rbs_isPermanentFailure];
    v6 = rbs_connection_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __36__RBConnectionClient_handleMessage___block_invoke_cold_1(a1);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(a1 + 32) + 112);
      v11 = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_INFO, "Error handling message from %{public}@: <%{public}@>", &v11, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    [v9 encodeObject:v4 forKey:*MEMORY[0x277D470B0]];
    [*(a1 + 48) send];
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __36__RBConnectionClient_handleMessage___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithEuid:*(a1 + 40)];
  v4 = [v3 processIdentity];
  v5 = [v4 personaString];
  if (v5)
  {
  }

  else
  {
    v6 = *(a1 + 32);

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = v3;
    v3 = [v3 copyWithPersonaString:*(a1 + 32)];
  }

LABEL_6:

  return v3;
}

id __36__RBConnectionClient_handleMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithAuid:*(a1 + 40)];
  v4 = [v3 personaString];
  if (!v4)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_5;
    }

    v5 = [v3 copyWithPersonaString:?];
    v4 = v3;
    v3 = v5;
  }

LABEL_5:

  return v3;
}

id __36__RBConnectionClient_handleMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithAuid:*(a1 + 40)];
  v4 = [v3 identity];
  v5 = [v4 personaString];
  if (v5)
  {
  }

  else
  {
    v6 = *(a1 + 32);

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = v3;
    v3 = [v3 copyWithPersonaString:*(a1 + 32)];
  }

LABEL_6:

  return v3;
}

void __36__RBConnectionClient_handleMessage___block_invoke_40(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 64) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(*(a1 + 64) + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v16 = *MEMORY[0x277CCA7E8];
    v17[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    __36__RBConnectionClient_handleMessage___block_invoke_40_cold_1(a1, v5, &v15);
    v9 = v15;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_2_46(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v17 = a1[5];
    v18 = 0;
    v12 = [(RBConnectionClient *)v17 lookupHandleForKey:v5 error:&v18];
    objc_storeStrong(v8, v18);
    [v12 fullEncode:a1[6] forKey:*MEMORY[0x277D470C0]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_3_50(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 56) + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v17 = *(a1 + 40);
    v12 = [RBConnectionClient lookupProcessName:error:];
    objc_storeStrong(v8, 0);
    [*(a1 + 48) encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_53(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v17 = a1[5];
    v12 = [RBConnectionClient lookupHandleForPredicate:error:];
    objc_storeStrong(v8, 0);
    [v12 fullEncode:a1[6] forKey:*MEMORY[0x277D470C0]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_2_57(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 56) + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v17 = *(a1 + 40);
    v12 = [RBConnectionClient lookupPortForIdentifier:error:];
    objc_storeStrong(v8, 0);
    [*(a1 + 48) encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_3_61(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = a1 + 64;
  v5 = *(*(a1 + 64) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v21 = *MEMORY[0x277CCA7E8];
    v22 = v7;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v22;
    v12 = &v21;
  }

  else
  {
    v13 = [v6 target];
    if (v13)
    {
      v19 = v13;
      v14 = (*(*(a1 + 56) + 16))();

      [v6 setTarget:v14];
      [(RBConnectionClient *)*(a1 + 40) acquireAssertionForDescriptor:v6 withReply:*(a1 + 48)];
      v15 = 0;
      v4 = a1 + 72;
      goto LABEL_6;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v23 = *MEMORY[0x277CCA470];
    v24[0] = @"missing valid target";
    v10 = MEMORY[0x277CBEAC0];
    v11 = v24;
    v12 = &v23;
  }

  v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v15 = [v8 errorWithDomain:v9 code:3 userInfo:v14];
LABEL_6:
  v16 = *(*v4 + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_4(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v15 = a1[5];
    v17 = 0;
    [(RBConnectionClient *)v15 invalidateAssertionWithIdentifier:v5 sync:0 error:&v17];
    v16 = v17;
    v10 = *(v6 + 40);
    *(v6 + 40) = v16;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_5(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v15 = a1[5];
    v17 = 0;
    [(RBConnectionClient *)v15 invalidateAssertionWithIdentifier:v5 sync:1 error:&v17];
    v16 = v17;
    v10 = *(v6 + 40);
    *(v6 + 40) = v16;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_6(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = [v5 BOOLValue];
    v16 = *(*(a1 + 56) + 8);
    v17 = 0;
    v9 = [(RBConnectionClient *)v14 assertionDescriptorsWithFlattenedAttributes:v15 error:&v17];
    objc_storeStrong((v16 + 40), v17);
    [*(a1 + 48) encodeObject:v9 forKey:*MEMORY[0x277D470C0]];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_7(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = a1 + 64;
  v5 = *(*(a1 + 64) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v19 = *MEMORY[0x277CCA7E8];
    v20[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
  }

  else
  {
    v15 = [v6 context];
    v16 = [v15 identity];

    v10 = (*(*(a1 + 56) + 16))();

    v17 = [v6 context];
    [v17 setIdentity:v10];

    [(RBConnectionClient *)*(a1 + 40) executeLaunchRequest:v6 withEuid:*(a1 + 80) withReply:*(a1 + 48)];
    v11 = 0;
    v4 = a1 + 72;
  }

  v12 = *(*v4 + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_8(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v16 = *MEMORY[0x277CCA7E8];
    v17[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    [(RBConnectionClient *)*(a1 + 40) executeTerminateRequest:v5 withReply:*(a1 + 48)];
    v14 = *(*(a1 + 64) + 8);
    v9 = *(v14 + 40);
    *(v14 + 40) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_10(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v15 = a1[5];
    [RBConnectionClient subscribeToProcessStateChangesWithConfiguration:error:];
    v16 = 0;
    v10 = *(v6 + 40);
    *(v6 + 40) = v16;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_11(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1[6] + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v15 = *MEMORY[0x277CCA7E8];
    v16[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    -[RBConnectionClient unsubscribeFromProcessStateChangesWithIdentifier:](a1[5], [v5 unsignedLongLongValue]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_12(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(*(a1 + 56) + 8);
  v19 = 0;
  v9 = [v6 decodeArgumentWithClass:v7 atIndex:1 allowNil:1 error:&v19];
  objc_storeStrong((v8 + 40), v19);
  v10 = *(*(*(a1 + 56) + 8) + 40);
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    [(RBConnectionClient *)*(a1 + 40) statesForPredicate:v5 withDescriptor:v9 withReply:*(a1 + 48)];
    v18 = *(*(a1 + 64) + 8);
    v13 = *(v18 + 40);
    *(v18 + 40) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_13(void *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = (*(a1[6] + 16))();

  v7 = a1[4];
  v8 = objc_opt_class();
  v9 = *(a1[7] + 8);
  v23 = 0;
  v10 = [v7 decodeArgumentWithClass:v8 atIndex:1 allowNil:0 error:&v23];
  objc_storeStrong((v9 + 40), v23);
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  if (v12)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D47098];
    v25 = *MEMORY[0x277CCA7E8];
    v26[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v16 = [v13 errorWithDomain:v14 code:3 userInfo:v15];
    v17 = *(a1[7] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    v20 = a1[5];
    v22 = 0;
    [(RBConnectionClient *)v20 intendToExit:v6 withStatus:v10 error:&v22];
    v21 = v22;
    v15 = *(v11 + 40);
    *(v11 + 40) = v21;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_14(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 64) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = (*(*(a1 + 56) + 16))();

  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = 0;
    v13 = [(RBConnectionClient *)v18 lastExitContextForInstance:v6 error:&v19];
    objc_storeStrong(v9, v19);
    [*(a1 + 48) encodeObject:v13 forKey:*MEMORY[0x277D470C0]];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_15(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 64) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = (*(*(a1 + 56) + 16))();

  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = 0;
    v13 = [(RBConnectionClient *)v18 limitationsForInstance:v6 error:&v19];
    objc_storeStrong(v9, v19);
    [*(a1 + 48) encodeObject:v13 forKey:*MEMORY[0x277D470C0]];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_16(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[8] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = (*(a1[7] + 16))();

  v7 = *(a1[8] + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(a1[8] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v18 = a1[5];
    v19 = 0;
    v13 = [(RBConnectionClient *)v18 hostProcessForInstance:v6 error:&v19];
    objc_storeStrong(v9, v19);
    [v13 fullEncode:a1[6] forKey:*MEMORY[0x277D470C0]];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_17(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = *(*(a1 + 56) + 8);
  v24 = 0;
  v10 = [v6 decodeArgumentCollection:v7 withClass:v8 atIndex:1 allowNil:0 error:&v24];
  objc_storeStrong((v9 + 40), v24);
  v11 = *(*(a1 + 56) + 8);
  v14 = *(v11 + 40);
  v13 = (v11 + 40);
  v12 = v14;
  if (v14)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D47098];
    v26 = *MEMORY[0x277CCA7E8];
    v27[0] = v12;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v18 = [v15 errorWithDomain:v16 code:3 userInfo:v17];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else
  {
    v22 = *(a1 + 40);
    v23 = 0;
    v17 = [(RBConnectionClient *)v22 infoPlistResultForInstance:v5 forKeys:v10 error:&v23];
    objc_storeStrong(v13, v23);
    [*(a1 + 48) encodeObject:v17 forKey:*MEMORY[0x277D470C0]];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_18(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1[7] + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v14 = a1[5];
    v15 = a1[6];
    [RBConnectionClient captureStateForSubsystem:withReply:];
    v16 = *(a1[8] + 8);
    v9 = *(v16 + 40);
    *(v16 + 40) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = 0;
  v4 = [(RBConnectionClient *)v2 identifiersForStateCaptureSubsystemsWithError:?];
  objc_storeStrong((v3 + 40), obj);
  [*(a1 + 40) encodeObject:v4 forKey:*MEMORY[0x277D470C0]];
}

void __36__RBConnectionClient_handleMessage___block_invoke_20(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v18 = *(a1 + 40);
    v13 = [RBConnectionClient busyExtensionInstancesFromSet:error:];
    objc_storeStrong(v9, 0);
    [*(a1 + 48) encodeObject:v13 forKey:*MEMORY[0x277D470C0]];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_21(uint64_t a1)
{
  v2 = [(RBConnectionClient *)*(a1 + 32) preventLaunchPredicates];
  [*(a1 + 40) encodeObject:v2 forKey:*MEMORY[0x277D470C0]];
}

void __36__RBConnectionClient_handleMessage___block_invoke_22(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v22 = *MEMORY[0x277CCA7E8];
    v23[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v17 = a1[5];
    v20 = 0;
    v18 = [(RBConnectionClient *)v17 saveEndowment:v5 withError:&v20];
    objc_storeStrong(v8, v20);
    v19 = a1[6];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    [v19 encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_23(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v22 = *MEMORY[0x277CCA7E8];
    v23[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v17 = a1[5];
    v20 = 0;
    v18 = [(RBConnectionClient *)v17 isIdentityAnAngel:v5 withError:&v20];
    objc_storeStrong(v8, v20);
    v19 = a1[6];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    [v19 encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __43__RBConnectionClient_handshakeWithRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v12, "unsignedIntegerValue")}];
        [*(a1 + 48) setObject:v13 forKeyedSubscript:v14];
        [*(*(a1 + 32) + 168) addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * j);
        v21 = [v15 objectForKeyedSubscript:{v20, v24}];
        v22 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v20, "unsignedIntegerValue")}];
        [*(a1 + 56) setObject:v21 forKeyedSubscript:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __62__RBConnectionClient_acquireAssertionForDescriptor_withReply___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) payload];
  v4 = v3;
  if (v5)
  {
    [v3 encodeObject:v5 forKey:*MEMORY[0x277D470B0]];

    os_unfair_lock_lock((*(a1 + 48) + 16));
    [*(*(a1 + 48) + 168) removeObject:*(a1 + 40)];
    os_unfair_lock_unlock((*(a1 + 48) + 16));
  }

  else
  {
    [v3 encodeObject:*(a1 + 40) forKey:*MEMORY[0x277D470C0]];
  }

  [*(a1 + 32) send];
}

void __62__RBConnectionClient_executeLaunchRequest_withEuid_withReply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    [*(a1 + 32) encodeObject:v12 forKey:*MEMORY[0x277D470B0]];
  }

  if (v9)
  {
    [v9 fullEncode:*(a1 + 32) forKey:*MEMORY[0x277D470C0]];
    v13 = [*(a1 + 40) context];
    v14 = [v13 attributes];
    v15 = v14;
    if (!v10)
    {
      if (![v14 count])
      {
        v10 = 0;
        goto LABEL_6;
      }

      v17 = rbs_connection_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 40);
        v19 = *(*(a1 + 48) + 112);
        v20 = [v13 identity];
        v23 = 138543874;
        v24 = v18;
        v25 = 2114;
        v26 = v19;
        v27 = 2114;
        v28 = v20;
        _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "Re-acquiring launch assertion for request %{public}@ from %{public}@ for target: %{public}@", &v23, 0x20u);
      }

      v10 = [*(*(a1 + 48) + 72) acquireDroppedLaunchAssertion:*(a1 + 40) requestor:*(*(a1 + 48) + 112)];
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    os_unfair_lock_lock((*(a1 + 48) + 16));
    [*(*(a1 + 48) + 168) addObject:v10];
    os_unfair_lock_unlock((*(a1 + 48) + 16));
    [*(a1 + 32) encodeObject:v10 forKey:*MEMORY[0x277D470A8]];
LABEL_6:
    if ([v11 count])
    {
      [*(a1 + 32) encodeDictionary:v11 forKey:*MEMORY[0x277D470B8]];
    }

LABEL_12:
    goto LABEL_13;
  }

  if (v10)
  {
    v13 = rbs_connection_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v21 = *(a1 + 40);
      v22 = *(*(a1 + 48) + 112);
      v23 = 138544130;
      v24 = v21;
      v25 = 2114;
      v26 = v22;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v12;
      _os_log_fault_impl(&dword_262485000, v13, OS_LOG_TYPE_FAULT, "launch request %{public}@ from %{public}@ failed but still created an assertion (%{public}@) : error=%{public}@", &v23, 0x2Au);
    }

    goto LABEL_12;
  }

LABEL_13:
  [*(a1 + 56) send];

  v16 = *MEMORY[0x277D85DE8];
}

void __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) bundleIdentifier];
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_INFO, "Successfully acquired plugin hold for %{public}@: %{public}@", &v14, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setObject:@"Error acquiring hold on plugins" forKeyedSubscript:*MEMORY[0x277CCA470]];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:5 userInfo:v7];
    v10 = [v6 code];
    v11 = rbs_connection_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10 == 14)
    {
      if (v12)
      {
        __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_2(a1, v6, v11);
      }
    }

    else if (v12)
    {
      __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_1(a1, v6, v11);
    }
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x277D85DE8];
}

void __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 72) & 1) == 0 && (*(a1 + 73) & 1) == 0)
  {
    v2 = +[RBAssertionDescriptorValidatorContext context];
    [v2 setOriginatorProcess:*(*(a1 + 32) + 112)];
    v3 = [*(*(a1 + 32) + 64) entitlementManager];
    v4 = [v2 originatorProcess];
    v5 = [v3 entitlementsForProcess:v4];
    [v2 setOriginatorEntitlements:v5];

    v6 = [v2 originatorProcess];
    v7 = [v6 bundleProperties];
    [v2 setOriginatorProperties:v7];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v74;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v74 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v73 + 1) + 8 * i);
          v14 = [v13 clientRestriction];
          [v2 setTargetProcess:v13];
          v15 = [*(*(a1 + 32) + 64) entitlementManager];
          v16 = [v2 targetProcess];
          v17 = [v15 entitlementsForProcess:v16];
          [v2 setTargetEntitlements:v17];

          v18 = [v2 targetProcess];
          v19 = [v18 bundleProperties];
          [v2 setTargetProperties:v19];

          v72 = 0;
          LOBYTE(v19) = [v14 allowsContext:v2 withError:&v72];
          v20 = v72;
          v21 = v20;
          if ((v19 & 1) == 0)
          {
            [*(a1 + 48) encodeBool:0 forKey:*MEMORY[0x277D470C0]];
            [*(a1 + 48) encodeObject:v21 forKey:*MEMORY[0x277D470B0]];
            [*(a1 + 56) send];

            v22 = rbs_connection_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "Client is not allowed to make termination request.", buf, 2u);
            }

            goto LABEL_38;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v22 = [*(a1 + 64) context];
  v23 = [*(a1 + 64) predicate];
  v24 = [v23 bundleIdentifier];
  v25 = [v23 beforeTranslocationBundlePath];
  [(RBConnectionClient *)*(a1 + 32) expandPredicateForContained:?];
  v26 = [v22 attributes];
  v27 = [v26 count];

  v28 = rbs_connection_log();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (!v27)
  {
    if (v29)
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v28, OS_LOG_TYPE_INFO, "No attributes, calling executeTerminateRequest directly", buf, 2u);
    }

    v45 = *(*(a1 + 32) + 40);
    v46 = *(a1 + 64);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_181;
    v69[3] = &unk_279B33550;
    v31 = &v70;
    v70 = *(a1 + 48);
    v32 = &v71;
    v71 = *(a1 + 56);
    [v45 executeTerminateRequest:v46 completion:v69];
    goto LABEL_37;
  }

  if (v29)
  {
    v30 = [*(a1 + 64) predicate];
    *buf = 138543362;
    v78 = v30;
    _os_log_impl(&dword_262485000, v28, OS_LOG_TYPE_INFO, "Requesting plugIn hold for %{public}@", buf, 0xCu);
  }

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_183;
  v64[3] = &unk_279B335A0;
  v31 = &v65;
  v65 = *(a1 + 48);
  v32 = v66;
  v33 = *(a1 + 56);
  v34 = *(a1 + 32);
  v66[0] = v33;
  v66[1] = v34;
  v35 = v22;
  v67 = v35;
  v68 = *(a1 + 64);
  v36 = MEMORY[0x266729AD0](v64);
  if (!(v24 | v25))
  {
    v47 = rbs_connection_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v78 = v23;
      _os_log_impl(&dword_262485000, v47, OS_LOG_TYPE_DEFAULT, "skipping plugin hold for termination request without bundle ID or beforeTranslocationBundlePath %{public}@", buf, 0xCu);
    }

    v36[2](v36, 0, 0);
    v36 = 0;
LABEL_35:
    v39 = 0;
    goto LABEL_36;
  }

  v37 = MEMORY[0x277CC1E60];
  if (v25)
  {
    v38 = [MEMORY[0x277CBEBC0] fileURLWithPath:v25];
    v39 = [v37 applicationProxyForBundleURL:v38];

    v40 = [v39 bundleURL];
    if (v40)
    {
      v41 = v40;
      v63 = v24;
      [v39 bundleURL];
      v43 = v42 = v25;
      v44 = [v43 path];
      v62 = v42;
      LOBYTE(v42) = [v42 isEqual:v44];

      if ((v42 & 1) == 0)
      {
        v50 = rbs_connection_log();
        v25 = v62;
        v31 = &v65;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v60 = [v39 bundleURL];
          v61 = [v60 path];
          *buf = 138543874;
          v78 = v23;
          v79 = 2114;
          v80 = v62;
          v81 = 2114;
          v82 = v61;
          _os_log_error_impl(&dword_262485000, v50, OS_LOG_TYPE_ERROR, "beforeTranslocationBundlePath does not match LS bundleURL %{public}@ (%{public}@, %{public}@)", buf, 0x20u);
        }

        v51 = MEMORY[0x277CCACA8];
        v52 = [v39 bundleURL];
        v53 = [v52 path];
        v54 = [v51 stringWithFormat:@"beforeTranslocationBundlePath does not match LS bundleURL (%@, %@)", v62, v53];

        v55 = objc_opt_new();
        [v55 setObject:v54 forKeyedSubscript:*MEMORY[0x277CCA470]];
        v56 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:1 userInfo:v55];
        (v36)[2](v36, 0, v56);

        v36 = 0;
        v24 = v63;
        v32 = v66;
        goto LABEL_36;
      }

      v25 = v62;
      v24 = v63;
      v32 = v66;
      v31 = &v65;
    }

    else
    {
      v31 = &v65;
    }
  }

  else
  {
    v39 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v24];
  }

  if (v36)
  {
    if (v39)
    {
      v57 = *(a1 + 32);
      v58 = [v35 shouldTerminatePlugIns];
      v59 = v57;
      v32 = v66;
      [(RBConnectionClient *)v59 _requestPluginHoldForProxy:v39 terminate:v58 completion:v36];
      goto LABEL_36;
    }

    v48 = rbs_connection_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v78 = v23;
      _os_log_impl(&dword_262485000, v48, OS_LOG_TYPE_DEFAULT, "skipping plugin hold for termination request, unable to get proxy %{public}@", buf, 0xCu);
    }

    v36[2](v36, 0, 0);
    goto LABEL_35;
  }

LABEL_36:

LABEL_37:
LABEL_38:

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_181(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x277D470C0];
  v7 = a3;
  [v5 encodeBool:a2 forKey:v6];
  [*(a1 + 32) encodeObject:v7 forKey:*MEMORY[0x277D470B0]];

  v8 = *(a1 + 40);

  return [v8 send];
}

void __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_183(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 || !a3)
  {
    v6 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(*(*(a1 + 48) + 136), "pid")}];
    v7 = [MEMORY[0x277D47008] systemTarget];
    v8 = MEMORY[0x277D46DC8];
    v9 = [*(a1 + 56) explanation];
    v10 = [*(a1 + 56) attributes];
    v11 = [v8 descriptorWithIdentifier:v6 target:v7 explanation:v9 attributes:v10];

    v12 = [RBAssertionAcquisitionContext contextForProcess:*(*(a1 + 48) + 112) withDescriptor:v11 daemonContext:*(*(a1 + 48) + 64)];
    [v12 setAcquisitionPolicy:1];
    [v12 setHoldToken:v5];
    v13 = *(a1 + 48);
    v14 = *(v13 + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_2;
    v16[3] = &unk_279B33578;
    v16[4] = v13;
    v17 = v6;
    v18 = *(a1 + 64);
    v19 = *(a1 + 32);
    v20 = v5;
    v21 = *(a1 + 40);
    v15 = v6;
    [v14 acquireAssertionWithContext:v12 completion:v16];
  }

  else
  {
    [*(a1 + 32) encodeObject:a3 forKey:*MEMORY[0x277D470B0]];
    [*(a1 + 32) encodeBool:0 forKey:*MEMORY[0x277D470C0]];
    [*(a1 + 40) send];
  }
}

void __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D3D350] managerForUser:*(*(a1 + 32) + 144)];
    [v4 releaseHold:*(a1 + 64)];

    [*(a1 + 56) encodeObject:v3 forKey:*MEMORY[0x277D470B0]];
    [*(a1 + 56) encodeBool:0 forKey:*MEMORY[0x277D470C0]];
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    [*(*(a1 + 32) + 168) addObject:*(a1 + 40)];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v5 = *(*(a1 + 32) + 40);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_3;
    v10 = &unk_279B33550;
    v6 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    [v5 executeTerminateRequest:v6 completion:&v7];
  }

  [*(a1 + 72) send];
}

uint64_t __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *MEMORY[0x277D470A8];
  v8 = a3;
  [v5 encodeObject:v6 forKey:v7];
  [*(a1 + 32) encodeObject:v8 forKey:*MEMORY[0x277D470B0]];

  v9 = *(a1 + 32);
  v10 = *MEMORY[0x277D470C0];

  return [v9 encodeBool:a2 forKey:v10];
}

- (void)_addStatesForUntrackedProcessesTo:(void *)a3 withPredicate:
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v36 = a1;
  if (a1)
  {
    v7 = [v5 count];
    v8 = [v6 processIdentifiers];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      a1 = v5;
    }

    else
    {
      v10 = [v6 processIdentifiers];
      v11 = [v10 mutableCopy];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v35 = v5;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v42;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v42 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v41 + 1) + 8 * i) process];
            v18 = [v17 instance];
            v19 = [v18 identifier];
            [v11 removeObject:v19];
          }

          v14 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v14);
      }

      if ([v11 count])
      {
        v20 = [v12 mutableCopy];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v21 = v11;
        v22 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v38;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v38 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [*(*(&v37 + 1) + 8 * j) rbs_pid];
              if (RBSPIDExists())
              {
                v26 = v36[5];
                v27 = [v6 processIdentifier];
                v28 = [v26 processForIdentifierWithoutStartingTracking:v27];

                if (v28)
                {
                  v29 = v6;
                  v30 = MEMORY[0x277D46FA8];
                  v31 = [v28 handle];
                  v32 = [v30 untrackedRunningStateforProcess:v31];

                  if (!v32)
                  {
                    [RBConnectionClient _addStatesForUntrackedProcessesTo:withPredicate:];
                  }

                  [v20 addObject:v32];

                  v6 = v29;
                }
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v23);
        }

        a1 = [v20 copy];
      }

      else
      {
        a1 = v12;
      }

      v5 = v35;
    }
  }

  v33 = *MEMORY[0x277D85DE8];

  return a1;
}

void __66__RBConnectionClient_statesForPredicate_withDescriptor_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) statesMatchingPredicate:*(a1 + 40)];
  [MEMORY[0x277D46FA8] setActiveStateDescriptor:*(a1 + 48)];
  v3 = [v2 count];
  v7 = [(RBConnectionClient *)*(a1 + 32) _addStatesForUntrackedProcessesTo:v2 withPredicate:*(a1 + 40)];

  if (v3 == [v7 count])
  {
    v4 = [*(a1 + 56) payload];
    [v4 encodeObject:v7 forKey:*MEMORY[0x277D470C0]];
  }

  else
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v4 = [v5 threadDictionary];

    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"RBSProcessHandleFullEncode"];
    v6 = [*(a1 + 56) payload];
    [v6 encodeObject:v7 forKey:*MEMORY[0x277D470C0]];

    [v4 removeObjectForKey:@"RBSProcessHandleFullEncode"];
  }

  [MEMORY[0x277D46FA8] setActiveStateDescriptor:0];
  [*(a1 + 56) send];
}

void __57__RBConnectionClient_captureStateForSubsystem_withReply___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 56) stateForSubsystem:*(a1 + 40)];
  v2 = [*(a1 + 48) payload];
  [v2 encodeObject:v3 forKey:*MEMORY[0x277D470C0]];

  [*(a1 + 48) send];
}

- (void)inheritanceManager:(id)a3 didChangeInheritances:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  os_unfair_lock_lock(&self->_lock);
  v9 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    v10 = [MEMORY[0x277D47030] messageForMethod:sel_async_didChangeInheritances_completion_ varguments:{v7, 0}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__RBConnectionClient_inheritanceManager_didChangeInheritances_completion___block_invoke;
    v14[3] = &unk_279B335F0;
    v15 = v8;
    [v10 sendToConnection:v9 completion:v14];
  }

  else
  {
    v11 = rbs_connection_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      process = self->_process;
      *buf = 138543618;
      v17 = process;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "No connection found to send inheritance for process %{public}@ with changeSet: %{public}@", buf, 0x16u);
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __74__RBConnectionClient_inheritanceManager_didChangeInheritances_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke_2;
  v4[3] = &unk_279B33618;
  v4[4] = v1;
  v5 = *(a1 + 48);
  [v3 acquireAssertionWithContext:v2 completion:v4];
}

void __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke_2(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 192);
    *(v4 + 192) = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v5 = *(v6 + 192);
    *(v6 + 192) = v7;
  }

  v8 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v8);
}

- (NSString)stateCaptureTitle
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBConnectionClient.m" lineNumber:1875 description:@"stateCaptureTitle should be unused for RBConnectionClient"];

  return 0;
}

- (id)initWithContext:(void *)a3 listener:(void *)a4 process:(void *)a5 connection:
{
  v10 = a2;
  v46 = a3;
  v11 = a4;
  v12 = a5;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (v11)
  {
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:sel_initWithContext_listener_process_connection_ object:a1 file:@"RBConnectionClient.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"process"}];

    if (v10)
    {
      goto LABEL_4;
    }
  }

  v44 = [MEMORY[0x277CCA890] currentHandler];
  [v44 handleFailureInMethod:sel_initWithContext_listener_process_connection_ object:a1 file:@"RBConnectionClient.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_4:
  v47.receiver = a1;
  v47.super_class = RBConnectionClient;
  v13 = objc_msgSendSuper2(&v47, sel_init);
  a1 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, a2);
    v14 = [v10 assertionManager];
    v15 = a1[3];
    a1[3] = v14;

    v16 = [v10 entitlementManager];
    v17 = a1[4];
    a1[4] = v16;

    v18 = [v10 processManager];
    v19 = a1[5];
    a1[5] = v18;

    v20 = [v10 processMonitor];
    v21 = a1[6];
    a1[6] = v20;

    v22 = [v10 stateCaptureManager];
    v23 = a1[7];
    a1[7] = v22;

    v24 = [v10 requestManager];
    v25 = a1[9];
    a1[9] = v24;

    objc_storeStrong(a1 + 10, a3);
    v26 = [v10 process];
    v27 = a1[11];
    a1[11] = v26;

    v28 = [MEMORY[0x277CBEB58] set];
    v29 = a1[21];
    a1[21] = v28;

    v30 = [MEMORY[0x277CBEB58] set];
    v31 = a1[22];
    a1[22] = v30;

    a1[2] = 0;
    v32 = a1[24];
    a1[24] = 0;

    *(a1 + 96) = 0;
    objc_storeStrong(a1 + 14, a4);
    v33 = [v11 handle];
    v34 = a1[15];
    a1[15] = v33;

    v35 = [v11 identity];
    v36 = a1[16];
    a1[16] = v35;

    v37 = [v11 identifier];
    v38 = a1[17];
    a1[17] = v37;

    *(a1 + 36) = 0;
    v39 = [v11 shortDescription];
    v40 = a1[13];
    a1[13] = v39;

    v41 = [a1[4] entitlementsForProcess:a1[14]];
    v42 = a1[20];
    a1[20] = v41;

    objc_storeStrong(a1 + 1, a5);
    [a1[7] addItem:a1];
  }

LABEL_6:

  return a1;
}

- (void)_setReadyWithConnection:(uint64_t)a1
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = rbs_connection_log();
    if (OUTLINED_FUNCTION_26_0(v6))
    {
      v28 = [*(a1 + 112) shortDescription];
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    os_unfair_lock_lock((a1 + 16));
    if (*(a1 + 96))
    {
      os_unfair_lock_unlock((a1 + 16));
    }

    else
    {
      *(a1 + 96) = 1;
      os_unfair_lock_unlock((a1 + 16));
      v12 = *(a1 + 24);
      v13 = [*(a1 + 120) identity];
      v14 = [v12 stateForIdentity:v13];
      v15 = [v14 inheritances];
      v16 = [v15 allInheritances];

      v17 = [[RBClientInheritanceManager alloc] initWithInheritances:v16 delegate:a1];
      v18 = [RBProcessMonitorObserver alloc];
      v19 = *(a1 + 48);
      v20 = *(a1 + 112);
      v21 = [[RBProcessMonitorObserverConnection alloc] initWithConnection:v5];
      v22 = [OUTLINED_FUNCTION_18_0() initWithMonitor:? forProcess:? connection:?];

      os_unfair_lock_lock((a1 + 16));
      objc_storeStrong((a1 + 8), a2);
      v23 = *(a1 + 152);
      *(a1 + 152) = v17;
      v24 = v17;

      v25 = *(a1 + 184);
      *(a1 + 184) = v22;
      v26 = v22;

      os_unfair_lock_unlock((a1 + 16));
      [(RBConnectionListener *)*(a1 + 80) connectionIsReady:a1];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)handshakeWithRequest:(uint64_t)a1
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v48 = a1;
  v44 = v3;
  if (a1)
  {
    v4 = v3;
    v5 = rbs_connection_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v48 + 136);
      v7 = [v4 assertionDescriptors];
      *buf = 138543618;
      v64 = v6;
      v65 = 2050;
      v66 = [v7 count];
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Received handshake request from %{public}@ with %{public}lu assertion descriptors", buf, 0x16u);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = [v4 savedEndowments];
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v58;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(RBConnectionClient *)v48 saveEndowment:0 withError:?];
        }

        v10 = [v8 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v10);
    }

    v43 = [MEMORY[0x277CBEB38] dictionary];
    v42 = [MEMORY[0x277CBEB38] dictionary];
    v46 = [MEMORY[0x277CBEB18] array];
    v47 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [v4 assertionDescriptors];
    v13 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v53 + 1) + 8 * j);
          v18 = [v17 identifier];
          if (v18)
          {
            [v46 addObject:v18];
            v19 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(*(v48 + 112), "rbs_pid")}];
            v20 = [v17 copyWithIdentifier:v19];
            v21 = *(v48 + 40);
            v22 = [v20 target];
            v23 = [v22 processIdentifier];
            v24 = [v21 processForIdentifier:v23];

            [v47 addObject:v17];
          }

          else
          {
            v19 = rbs_assertion_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v64 = v17;
              _os_log_error_impl(&dword_262485000, v19, OS_LOG_TYPE_ERROR, "Handshake request contains assertion %{public}@ without old identifier", buf, 0xCu);
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v14);
    }

    v25 = [RBAssertionBatchContext contextForProcess:*(v48 + 112) acquisitionCompletionPolicy:0 withDescriptorsToAcquire:v47 identifiersToInvalidate:MEMORY[0x277CBEBF8] daemonContext:*(v48 + 64)];
    v26 = *(v48 + 24);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __43__RBConnectionClient_handshakeWithRequest___block_invoke;
    v49[3] = &unk_279B334D8;
    v49[4] = v48;
    v27 = v46;
    v50 = v27;
    v28 = v43;
    v51 = v28;
    v29 = v42;
    v52 = v29;
    [v26 commitBatchWithContext:v25 completion:v49];
    v30 = rbs_connection_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(v48 + 136);
      *buf = 138543362;
      v64 = v32;
      OUTLINED_FUNCTION_21_0(&dword_262485000, v30, v31, "Handshake successful with %{public}@; sending response", buf);
    }

    v33 = [v44 assertionDescriptors];
    v34 = [v33 count];

    v35 = [v28 count];
    v36 = [v29 count] + v35;
    if (v36 != v34)
    {
      v37 = rbs_connection_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v64 = v34;
        v65 = 2048;
        v66 = v36;
        _os_log_fault_impl(&dword_262485000, v37, OS_LOG_TYPE_FAULT, "Expected %lu results; got %lu", buf, 0x16u);
      }
    }

    v38 = objc_alloc_init(MEMORY[0x277D46E80]);
    [v38 setHandle:*(v48 + 120)];
    [v38 setAssertionIdentifiersByOldIdentifier:v28];
    [v38 setAssertionErrorsByOldIdentifier:v29];
    v39 = [*(v48 + 112) managedEndpointByLaunchIdentifier];
    [v38 setManagedEndpointByLaunchIdentifier:v39];
  }

  else
  {
    v38 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v38;
}

- (__CFString)lookupProcessName:error:
{
  OUTLINED_FUNCTION_15_0();
  v27[11] = *MEMORY[0x277D85DE8];
  v4 = v3;
  if (v1)
  {
    bzero(buffer, 0x88uLL);
    v5 = [v4 intValue];
    if (OUTLINED_FUNCTION_25_0())
    {
      goto LABEL_3;
    }

    v16 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:v4];
    v25 = v16;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    objc_claimAutoreleasedReturnValue();
    v17 = OUTLINED_FUNCTION_7_1();
    v18 = [(RBConnectionClient *)v17 _predicatesMatchOnlyAllowedProcess:v2];

    if (v18)
    {
LABEL_3:
      if (proc_pidinfo(v5, 3, 0, buffer, 136) == 136)
      {
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v27];
        v7 = 0;
        if (!v0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = rbs_assertion_log();
        if (OUTLINED_FUNCTION_20_0(v8))
        {
          OUTLINED_FUNCTION_9_0();
          _os_log_error_impl(v19, v20, v21, v22, v23, 8u);
        }

        v9 = MEMORY[0x277CCA9B8];
        v10 = *MEMORY[0x277D47088];
        v24 = *MEMORY[0x277CCA470];
        OUTLINED_FUNCTION_6_1();
        v12 = [v11 dictionaryWithObjects:v24 forKeys:@"Could not get proc_pidinfo for pid" count:?];
        v7 = [v9 errorWithDomain:v10 code:5 userInfo:v12];

        v6 = @"<unknown>";
        if (!v0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v6 = 0;
      if (!v0)
      {
        goto LABEL_10;
      }
    }

    v13 = v7;
    *v0 = v7;
LABEL_10:

    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)lookupHandleForPredicate:error:
{
  OUTLINED_FUNCTION_16_0();
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = v2;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_29_0() & 1) == 0)
  {
    v44[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v27 = [(RBConnectionClient *)v1 _predicatesMatchOnlyAllowedProcess:v4];

    if (!v27)
    {
      v7 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v28 = rbs_connection_log();
      if (OUTLINED_FUNCTION_20_0(v28))
      {
        isa = v1[13].isa;
        OUTLINED_FUNCTION_4_2();
        v39 = v7;
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v31, v32, v33, v34, v35, 0x16u);
      }

      v6 = 0;
      goto LABEL_17;
    }
  }

  v4 = [(objc_class *)v1[5].isa processesMatchingPredicate:v3];
  if (![v4 count])
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47088];
    v36 = *MEMORY[0x277CCA470];
    OUTLINED_FUNCTION_6_1();
    v11 = [v10 dictionaryWithObjects:v36 forKeys:@"Specified predicate did not match any processes" count:?];
    v7 = [v8 errorWithDomain:v9 code:3 userInfo:v11];

    v5 = rbs_connection_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = v1[13].isa;
      *buf = 138543362;
      v38 = v12;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "%{public}@ handle lookup could not find a matching process", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if ([v4 count] != 1)
  {
    v5 = *MEMORY[0x277D47088];
    v40 = *MEMORY[0x277CCA470];
    v41 = @"Specified predicate matched multiple processes";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v7 = [OUTLINED_FUNCTION_12() errorWithDomain:? code:? userInfo:?];

    v14 = rbs_connection_log();
    if (OUTLINED_FUNCTION_24(v14))
    {
      v15 = v1[13].isa;
      OUTLINED_FUNCTION_4_2();
      v39 = v7;
      OUTLINED_FUNCTION_11_0(&dword_262485000, v5, v16, "%{public}@ Error resolving process: <%{public}@>", buf);
    }

    goto LABEL_15;
  }

  v5 = [v4 anyObject];
  if (([(objc_class *)v1[5].isa isActiveProcess:v5]& 1) == 0)
  {
    [v5 rbs_pid];
    if (!RBSPIDExists())
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277D47088];
      v42 = *MEMORY[0x277CCA470];
      v43 = @"Process is no longer running";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v7 = [v17 errorWithDomain:v18 code:3 userInfo:v19];

      v20 = rbs_connection_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v1[13].isa;
        *buf = 138543362;
        v38 = v22;
        OUTLINED_FUNCTION_21_0(&dword_262485000, v20, v21, "%{public}@ handle requested for no longer running process", buf);
      }

LABEL_15:
      v6 = 0;
      goto LABEL_16;
    }
  }

  v6 = [v5 handle];
  v7 = 0;
LABEL_16:

LABEL_17:
  if (!v7)
  {
    v23 = rbs_connection_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v29 = v1[13].isa;
      OUTLINED_FUNCTION_4_2();
      v39 = v6;
      _os_log_debug_impl(&dword_262485000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ query resolved to %{public}@", buf, 0x16u);
    }
  }

  if (v0)
  {
    v24 = v7;
    *v0 = v7;
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)lookupPortForIdentifier:error:
{
  OUTLINED_FUNCTION_16_0();
  v15 = *MEMORY[0x277D85DE8];
  v3 = v2;
  if (v1)
  {
    if ((OUTLINED_FUNCTION_29_0() & 1) != 0 || (v4 = [*(v1 + 120) rbs_pid], v4 == objc_msgSend(v3, "rbs_pid")))
    {
      v5 = [MEMORY[0x277D46ED8] taskNameForPID:{objc_msgSend(v3, "rbs_pid")}];
      goto LABEL_11;
    }

    v6 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(v1 + 104);
      OUTLINED_FUNCTION_1_7();
      v14 = v6;
      OUTLINED_FUNCTION_11_0(&dword_262485000, v7, v12, "%{public}@ client not entitled to lookupPortForIdentifier: <%{public}@>", v13);
    }

    if (v0)
    {
      v8 = v6;
      *v0 = v6;
    }
  }

  v5 = 0;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)acquireAssertionForDescriptor:(void *)a3 withReply:
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    [(RBConnectionClient *)a1 _trackTargetProcessForDescriptor:v6];
    v8 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(*(a1 + 136), "pid")}];
    v9 = [v6 copyWithIdentifier:v8];

    if (v9)
    {
      os_unfair_lock_lock((a1 + 16));
      [*(a1 + 168) addObject:v8];
      os_unfair_lock_unlock((a1 + 16));
      [v7 prepareForHandoff];
      v10 = [RBAssertionAcquisitionContext contextForProcess:*(a1 + 112) withDescriptor:v9 daemonContext:*(a1 + 64)];
      v11 = *(a1 + 24);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_27_0();
      v17[2] = __62__RBConnectionClient_acquireAssertionForDescriptor_withReply___block_invoke;
      v17[3] = &unk_279B332F8;
      v18 = v7;
      v19 = v8;
      v20 = a1;
      [v11 acquireAssertionWithContext:v10 completion:v17];
      v12 = [MEMORY[0x277D47038] currentContext];

      if (v12)
      {
        v16 = [MEMORY[0x277CCA890] currentHandler];
        [v16 handleFailureInMethod:sel_acquireAssertionForDescriptor_withReply_ object:a1 file:@"RBConnectionClient.m" lineNumber:949 description:@"xpc message context not handled"];
      }
    }

    else
    {
      v13 = *MEMORY[0x277D47088];
      v21 = *MEMORY[0x277CCA470];
      v22[0] = @"Bad assertion descriptor";
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      objc_claimAutoreleasedReturnValue();
      v10 = [OUTLINED_FUNCTION_5_1() errorWithDomain:? code:? userInfo:?];

      v14 = [v7 payload];
      [v14 encodeObject:v10 forKey:*MEMORY[0x277D470B0]];

      [v7 send];
    }
  }

  else
  {
    v9 = v6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)invalidateAssertionWithIdentifier:(uint64_t)a3 sync:(void *)a4 error:
{
  v22[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    v22[0] = 0;
    v8 = [(RBConnectionClient *)a1 _canInvalidateAssertionWithIdentifier:v7 error:v22];
    v9 = v22[0];
    if (v8)
    {
      os_unfair_lock_lock((a1 + 16));
      [*(a1 + 168) removeObject:v7];
      os_unfair_lock_unlock((a1 + 16));
      if (([*(a1 + 24) invalidateAssertionFromOriginator:*(a1 + 136) sync:a3 withIdentifier:v7] & 1) == 0)
      {
        v10 = *MEMORY[0x277D47088];
        v22[1] = *MEMORY[0x277CCA470];
        v22[2] = @"Assertion invalidation request failed";
        OUTLINED_FUNCTION_10_0();
        [v11 dictionaryWithObjects:? forKeys:? count:?];
        objc_claimAutoreleasedReturnValue();
        v12 = [OUTLINED_FUNCTION_5_1() errorWithDomain:? code:? userInfo:?];

        v9 = v12;
      }
    }

    v13 = rbs_sp_assertion_log();
    v14 = os_signpost_id_make_with_pointer(v13, [v7 hash]);

    v15 = rbs_sp_assertion_log();
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_262485000, v16, OS_SIGNPOST_INTERVAL_END, v14, "ClientAssertion", "", v21, 2u);
    }

    if (a4)
    {
      v17 = v9;
      *a4 = v9;
    }

    v18 = v9 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)assertionDescriptorsWithFlattenedAttributes:(void *)a3 error:
{
  if (a1)
  {
    if ([a1 rb_hasEntitlement:@"com.apple.runningboard.listallassertions"])
    {
      v6 = [a1[3] assertionDescriptorsWithFlattenedAttributes:a2];
      v7 = 0;
      if (!a3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.listallassertions" permanent:1];
      v6 = 0;
      if (!a3)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v7 = v7;
    *a3 = v7;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)executeLaunchRequest:(uint64_t)a3 withEuid:(void *)a4 withReply:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    if (!v8)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:sel_executeLaunchRequest_withEuid_withReply_ object:a1 file:@"RBConnectionClient.m" lineNumber:1005 description:{@"Invalid parameter not satisfying: %@", @"reply"}];
    }

    v10 = [v9 payload];
    [v9 prepareForHandoff];
    v11 = a1[9];
    v12 = a1[14];
    v13 = a1[20];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__RBConnectionClient_executeLaunchRequest_withEuid_withReply___block_invoke;
    v16[3] = &unk_279B33500;
    v17 = v10;
    v18 = v7;
    v19 = a1;
    v20 = v9;
    v14 = v10;
    [v11 executeLaunchRequest:v18 euid:a3 requestor:v12 entitlements:v13 completion:v16];
  }
}

- (void)executeTerminateRequest:(void *)a3 withReply:
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = *(a1 + 104);
      v10 = [v5 targetsAllManagedProcesses];
      if (v10)
      {
        v11 = @"All Managed Processes";
      }

      else
      {
        v11 = [v5 predicate];
      }

      v12 = [v5 context];
      *buf = 138543874;
      v65 = v9;
      v66 = 2114;
      v67 = v11;
      v68 = 2114;
      v69 = v12;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "Received termination request from %{public}@ on %{public}@ with context %{public}@", buf, 0x20u);
      if ((v10 & 1) == 0)
      {
      }

      v6 = v8;
    }

    v13 = [v5 predicate];
    v14 = [v13 processIdentifiers];

    v50 = v14;
    v51 = objc_opt_new();
    if (v14)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v16)
      {
        v17 = v16;
        v48 = v6;
        v49 = v5;
        v18 = *v60;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v60 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v59 + 1) + 8 * i);
            v21 = [*(a1 + 40) processForIdentifier:{v20, v48, v49}];
            v22 = [MEMORY[0x277D46F48] handleForIdentifier:v20 error:0];
            if (![v22 isXPCService])
            {

              v28 = 0;
              v29 = 0;
              goto LABEL_22;
            }

            v23 = [*(a1 + 40) processForIdentifierWithoutStartingTracking:v20];
            if (v23)
            {
              [v51 addObject:v23];
            }

            v24 = [*(a1 + 112) rbs_pid];
            v25 = [v23 hostProcess];
            v26 = [v25 rbs_pid];

            v27 = [v23 clientRestriction];
          }

          v17 = [v15 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v28 = v27 != 0;
        v29 = v24 == v26;
LABEL_22:
        v6 = v48;
        v5 = v49;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      LODWORD(v14) = v28 ^ v29;
    }

    v30 = [v6 payload];
    if ([v5 targetsAllManagedProcesses])
    {
      if ([a1 rb_hasEntitlement:@"com.apple.runningboard.terminatemanagedprocesses"])
      {
        v31 = 1;
LABEL_29:
        [v6 prepareForHandoff];
        v33 = [MEMORY[0x277D47038] currentContext];
        +[RBConnectionClient sharedTerminationWorkloop];
        v35 = v34 = v5;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke;
        v52[3] = &unk_279B335C8;
        v57 = v31;
        v58 = v14;
        v52[4] = a1;
        v36 = v51;
        v53 = v51;
        v54 = v30;
        v55 = v6;
        v56 = v34;
        [v33 handoffToQueue:v35 block:v52];

        v5 = v34;
        v37 = v50;
LABEL_37:

        goto LABEL_38;
      }

      v38 = rbs_connection_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_28_0(&dword_262485000, v39, v40, "Rejecting request because the client is not entitled");
      }

      [v30 encodeBool:0 forKey:*MEMORY[0x277D470C0]];
      v41 = MEMORY[0x277CCA9B8];
      v42 = @"com.apple.runningboard.terminatemanagedprocesses";
    }

    else
    {
      v32 = [a1 rb_hasEntitlementDomain:4];
      v31 = v32;
      if ((v14 | v32))
      {
        goto LABEL_29;
      }

      v43 = rbs_connection_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_28_0(&dword_262485000, v44, v45, "Rejecting request because the client is not entitled");
      }

      [v30 encodeBool:0 forKey:*MEMORY[0x277D470C0]];
      v41 = MEMORY[0x277CCA9B8];
      v42 = @"com.apple.runningboard.terminateprocess";
    }

    v46 = [v41 rbs_errorClientNotEntitled:v42 permanent:1];
    [v30 encodeObject:v46 forKey:*MEMORY[0x277D470B0]];

    [v6 send];
    v37 = v50;
    v36 = v51;
    goto LABEL_37;
  }

LABEL_38:

  v47 = *MEMORY[0x277D85DE8];
}

- (id)subscribeToProcessDeath:(uint64_t)a3 error:(uint64_t)a4
{
  OUTLINED_FUNCTION_23_0();
  a24 = v28;
  a25 = v29;
  OUTLINED_FUNCTION_15_0();
  a15 = *MEMORY[0x277D85DE8];
  v31 = v30;
  if (v26)
  {
    v32 = [*(v26 + 40) processForIdentifier:v31];
    if (OUTLINED_FUNCTION_25_0())
    {
      goto LABEL_3;
    }

    v42 = [MEMORY[0x277D46FA0] predicateMatchingIdentifier:v31];
    a14 = v42;
    [MEMORY[0x277CBEA60] arrayWithObjects:&a14 count:1];
    objc_claimAutoreleasedReturnValue();
    v43 = OUTLINED_FUNCTION_7_1();
    v44 = [(RBConnectionClient *)v43 _predicatesMatchOnlyAllowedProcess:v27];

    if (v44)
    {
LABEL_3:
      if (!v31)
      {
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:1 userInfo:0];
        goto LABEL_10;
      }

      if (v32)
      {
        os_unfair_lock_lock((v26 + 16));
        v33 = [*(v26 + 40) isActiveProcess:v32];
        os_unfair_lock_unlock((v26 + 16));
        if (v33)
        {
          os_unfair_lock_lock((v26 + 20));
          [*(v26 + 176) addObject:v32];
          os_unfair_lock_unlock((v26 + 20));
        }

        else
        {
          [v32 lastExitContext];
          objc_claimAutoreleasedReturnValue();
        }

        v34 = 0;
        if (!v25)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v35 = *MEMORY[0x277D47088];
      a12 = *MEMORY[0x277CCA470];
      a13 = @"No such process";
      OUTLINED_FUNCTION_13_0();
      [v36 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      v34 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];
    }

    else
    {
      v34 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v45 = rbs_connection_log();
      if (OUTLINED_FUNCTION_24(v45))
      {
        v46 = *(v26 + 104);
        OUTLINED_FUNCTION_1_7();
        *(&a10 + 6) = v34;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v27, v47, "%{public}@ client not entitled to subscribeToProcessDeath: <%{public}@>", &a9);
      }
    }

LABEL_10:
    if (!v25)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    v37 = v34;
    *v25 = v34;
    goto LABEL_12;
  }

LABEL_13:

  v38 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0();

  return v39;
}

- (BOOL)subscribeToProcessStateChangesWithConfiguration:error:
{
  OUTLINED_FUNCTION_16_0();
  v16 = *MEMORY[0x277D85DE8];
  v3 = v2;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_29_0() & 1) == 0)
  {
    v9 = [v3 predicates];
    v10 = [(RBConnectionClient *)v1 _predicatesMatchOnlyAllowedProcess:v9];

    if (!v10)
    {
      v4 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v11 = rbs_connection_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(v1 + 104);
        OUTLINED_FUNCTION_1_7();
        v15 = v4;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v11, v13, "%{public}@ client not entitled to subscribeToProcessStateChangesWithConfiguration: <%{public}@>", v14);
      }

      if (!v0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (v3)
  {
    os_unfair_lock_lock((v1 + 16));
    [*(v1 + 184) addConfiguration:v3];
    os_unfair_lock_unlock((v1 + 16));
    v4 = 0;
    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:1 userInfo:0];
  if (v0)
  {
LABEL_7:
    v5 = v4;
    *v0 = v4;
  }

LABEL_8:
  v6 = v4 == 0;

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)unsubscribeFromProcessStateChangesWithIdentifier:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    [*(a1 + 184) removeConfigurationWithIdentifier:a2];

    os_unfair_lock_unlock((a1 + 16));
  }
}

- (void)statesForPredicate:(void *)a3 withDescriptor:(void *)a4 withReply:
{
  v27[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ((-[NSObject rb_hasEntitlementDomain:](a1, "rb_hasEntitlementDomain:", 1) & 1) != 0 || (v27[0] = v7, [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1], v13 = objc_claimAutoreleasedReturnValue(), v14 = -[RBConnectionClient _predicatesMatchOnlyAllowedProcess:](a1, v13), v13, v14))
    {
      [v9 prepareForHandoff];
      v10 = [MEMORY[0x277D47038] currentContext];
      v11 = [(objc_class *)a1[6].isa monitorSerializationQueue];
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_27_0();
      v19[2] = __66__RBConnectionClient_statesForPredicate_withDescriptor_withReply___block_invoke;
      v19[3] = &unk_279B331B8;
      v19[4] = a1;
      v20 = v7;
      v21 = v8;
      v22 = v9;
      [v10 handoffToQueue:v11 block:v19];
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v15 = rbs_connection_log();
      if (OUTLINED_FUNCTION_24(v15))
      {
        isa = a1[13].isa;
        v23 = 138543618;
        v24 = isa;
        v25 = 2114;
        v26 = v10;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v14, v16, "%{public}@ client not entitled to get statesForPredicate: <%{public}@>", &v23);
      }

      v17 = [v9 payload];
      [v17 encodeObject:v10 forKey:*MEMORY[0x277D470B0]];

      [v9 send];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)intendToExit:(void *)a3 withStatus:(void *)a4 error:
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_8;
  }

  v9 = [a1[5] processForInstance:a2];
  if (v9)
  {
    v10 = rbs_process_log();
    if (OUTLINED_FUNCTION_26_0(v10))
    {
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }

    [v9 setIntendedExitStatus:v8];
    v16 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = *MEMORY[0x277D47088];
    v23 = *MEMORY[0x277CCA470];
    OUTLINED_FUNCTION_6_1();
    [v22 dictionaryWithObjects:v23 forKeys:@"No process found" count:?];
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];

    if (!a4)
    {
      goto LABEL_7;
    }
  }

  v17 = v16;
  *a4 = v16;
LABEL_7:
  v18 = v16 == 0;

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)lastExitContextForInstance:(void *)a3 error:
{
  v3 = a1;
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = [a1[5] processForInstance:a2];
    if (OUTLINED_FUNCTION_25_0())
    {
      if (v5)
      {
        v3 = [v5 lastExitContext];
        v6 = 0;
        if (!a3)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277D47088];
      v18 = *MEMORY[0x277CCA470];
      v19 = @"No process found";
      OUTLINED_FUNCTION_10_0();
      v7 = [v12 dictionaryWithObjects:? forKeys:? count:?];
      v6 = [v10 errorWithDomain:v11 code:3 userInfo:v7];
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:1];
      v7 = rbs_connection_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v3[13];
        OUTLINED_FUNCTION_1_7();
        v17 = v6;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v7, v9, "%{public}@ client not entitled to get lastExitContextForInstance: <%{public}@>", v16);
      }
    }

    v3 = 0;
    if (!a3)
    {
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v13 = v6;
    *a3 = v6;
    goto LABEL_11;
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)limitationsForInstance:(void *)a3 error:
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (!a1)
  {
    goto LABEL_13;
  }

  if (([a1 rb_hasEntitlementDomain:1] & 1) == 0)
  {
    v7 = [*(a1 + 136) pid];
    if (v7 != [v6 rbs_pid])
    {
      v8 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v11 = rbs_connection_log();
      if (OUTLINED_FUNCTION_39(v11))
      {
        v15 = *(a1 + 104);
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_8_0(&dword_262485000, v16, v17, "%{public}@ client not entitled to get limitationsForInstance: <%{public}@>", v18, v19, v20, v21, v22);
      }

      goto LABEL_9;
    }
  }

  v7 = [*(a1 + 40) processForInstance:v6];
  if (!v7)
  {
    v9 = *MEMORY[0x277D47088];
    v23 = *MEMORY[0x277CCA470];
    OUTLINED_FUNCTION_10_0();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];

LABEL_9:
    a1 = 0;
    goto LABEL_10;
  }

  a1 = [*(a1 + 24) limitationsForInstance:v6];
  v8 = 0;
LABEL_10:

  if (a3)
  {
    v12 = v8;
    *a3 = v8;
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];

  return a1;
}

- (id)infoPlistResultForInstance:(void *)a3 forKeys:(void *)a4 error:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  if (!a1)
  {
    v15 = 0;
    goto LABEL_23;
  }

  if (([a1 rb_hasEntitlementDomain:1]& 1) == 0)
  {
    [v8 identifier];
    objc_claimAutoreleasedReturnValue();
    v11 = [OUTLINED_FUNCTION_7_1() predicateMatchingIdentifier:v4];
    v37[0] = v11;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v22 = [(RBConnectionClient *)a1 _predicatesMatchOnlyAllowedProcess:v21];

    if (!v22)
    {
      v18 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v23 = rbs_connection_log();
      if (OUTLINED_FUNCTION_20_0(v23))
      {
        isa = a1[13].isa;
        OUTLINED_FUNCTION_1_7();
        v30 = v18;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v11, v25, "%{public}@ client not entitled to get infoPlistResultForInstance: <%{public}@>", v29);
      }

      goto LABEL_10;
    }
  }

  if (!v8 || ![v9 count])
  {
    v16 = *MEMORY[0x277D47088];
    v31 = *MEMORY[0x277CCA470];
    v32 = @"Invalid instance or keys";
    OUTLINED_FUNCTION_13_0();
    v11 = [v17 dictionaryWithObjects:? forKeys:? count:?];
    v18 = [OUTLINED_FUNCTION_12() errorWithDomain:? code:? userInfo:?];
LABEL_10:
    v15 = 0;
    goto LABEL_20;
  }

  v10 = [(objc_class *)a1[5].isa processForInstance:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 handle];
    v13 = [v12 bundle];

    if (v13)
    {
      v14 = [v13 bundleInfoValuesForKeys:v9];
      if ([v14 count])
      {
        v15 = objc_alloc_init(MEMORY[0x277D46F68]);
        [v15 setValue:v14];
      }

      else
      {
        v15 = 0;
      }

      v18 = 0;
    }

    else
    {
      v20 = *MEMORY[0x277D47088];
      v35 = *MEMORY[0x277CCA470];
      v36 = @"No bundle found";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v18 = [OUTLINED_FUNCTION_18_0() errorWithDomain:? code:? userInfo:?];
      v15 = 0;
    }
  }

  else
  {
    v19 = *MEMORY[0x277D47088];
    v33 = *MEMORY[0x277CCA470];
    v34 = @"No process found";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v18 = [OUTLINED_FUNCTION_18_0() errorWithDomain:? code:? userInfo:?];
    v15 = 0;
  }

LABEL_20:
  if (a4)
  {
    v26 = v18;
    *a4 = v18;
  }

LABEL_23:
  v27 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)captureStateForSubsystem:withReply:
{
  OUTLINED_FUNCTION_15_0();
  v23 = *MEMORY[0x277D85DE8];
  v4 = v3;
  v5 = v0;
  if (v1)
  {
    if ([v1 rb_hasEntitlement:@"com.apple.runningboard.statecapture"])
    {
      [v5 prepareForHandoff];
      v6 = [MEMORY[0x277D47038] currentContext];
      v7 = rbs_connection_log();
      if (OUTLINED_FUNCTION_30_0(v7))
      {
        v21 = 138412290;
        v22 = v6;
        OUTLINED_FUNCTION_21_0(&dword_262485000, v2, v8, "In captureState with xpcContext %@", &v21);
      }

      v9 = dispatch_get_global_queue(17, 0);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __57__RBConnectionClient_captureStateForSubsystem_withReply___block_invoke;
      v18[3] = &unk_279B329D0;
      v18[4] = v1;
      v19 = v4;
      v20 = v5;
      [v6 handoffToQueue:v9 block:v18];
    }

    else
    {
      v10 = rbs_connection_log();
      if (OUTLINED_FUNCTION_26_0(v10))
      {
        LOWORD(v21) = 0;
        OUTLINED_FUNCTION_17_0();
        _os_log_impl(v11, v12, v13, v14, v15, 2u);
      }

      v6 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.statecapture" permanent:1];
      v16 = [v5 payload];
      [v16 encodeObject:v6 forKey:*MEMORY[0x277D470B0]];

      [v5 send];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)identifiersForStateCaptureSubsystemsWithError:(id *)a1
{
  if (a1)
  {
    if ([a1 rb_hasEntitlement:@"com.apple.runningboard.statecapture"])
    {
      v4 = [a1[7] identifiers];
      v5 = 0;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.statecapture" permanent:1];
      v4 = 0;
      if (!a2)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v5 = v5;
    *a2 = v5;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (id)busyExtensionInstancesFromSet:error:
{
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  if (v1)
  {
    if (([v1[14] isPlatformBinary] & 1) != 0 || objc_msgSend(v1, "rb_hasEntitlement:", @"com.apple.runningboard.statecapture"))
    {
      v1 = [v1[5] busyExtensionInstancesFromSet:v3];
    }

    else if (v0)
    {
      [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.statecapture" permanent:1];
      *v0 = v1 = 0;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)preventLaunchPredicates
{
  v2 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (([a1 rb_hasEntitlementDomain:1] & 1) == 0)
    {
      v3 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:1];
      v4 = rbs_connection_log();
      if (OUTLINED_FUNCTION_39(v4))
      {
        v8 = *(v2 + 104);
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_8_0(&dword_262485000, v9, v10, "%{public}@ client not entitled to preventLaunchPredicates: <%{public}@>", v11, v12, v13, v14, v15);
      }
    }

    v5 = [*(v2 + 24) systemState];
    v2 = [v5 preventLaunchPredicates];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (uint64_t)saveEndowment:(void *)a3 withError:
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a1)
  {
    if ([*(a1 + 24) addSavedEndowment:v6 forProcess:*(a1 + 112)])
    {
      a1 = 1;
    }

    else
    {
      if (a3)
      {
        v7 = *MEMORY[0x277D47088];
        v20 = *MEMORY[0x277CCA470];
        OUTLINED_FUNCTION_10_0();
        [v8 dictionaryWithObjects:? forKeys:? count:?];
        objc_claimAutoreleasedReturnValue();
        *a3 = [OUTLINED_FUNCTION_5_1() errorWithDomain:? code:? userInfo:?];
      }

      v9 = rbs_connection_log();
      if (OUTLINED_FUNCTION_39(v9))
      {
        v12 = *(a1 + 104);
        v19 = [v6 key];
        OUTLINED_FUNCTION_8_0(&dword_262485000, v13, v14, "%{public}@ client tried to save endowment twice for key: <%{public}@>", v15, v16, v17, v18, 2u);
      }

      a1 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

- (uint64_t)isIdentityAnAngel:(void *)a3 withError:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    if (OUTLINED_FUNCTION_29_0())
    {
      v6 = [v5 consistentLaunchdJobLabel];
      if (v6)
      {
        v7 = [RBLaunchdProperties propertiesForLabel:v6 error:a3];
        a1 = [v7 isAngel];

LABEL_11:
        goto LABEL_12;
      }

      if (a3)
      {
        v9 = *MEMORY[0x277D47088];
        v21 = *MEMORY[0x277CCA470];
        OUTLINED_FUNCTION_6_1();
        v11 = [v10 dictionaryWithObjects:v21 forKeys:@"Information request not supported for this identity" count:?];
        *a3 = [OUTLINED_FUNCTION_12() errorWithDomain:? code:? userInfo:?];
      }

      v12 = rbs_connection_log();
      if (!OUTLINED_FUNCTION_20_0(v12))
      {
LABEL_10:

        a1 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:1];
      v8 = rbs_connection_log();
      if (!OUTLINED_FUNCTION_20_0(v8))
      {
        goto LABEL_10;
      }
    }

    v15 = *(a1 + 104);
    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_9_0();
    _os_log_error_impl(v16, v17, v18, v19, v20, 0x16u);
    goto LABEL_10;
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

- (uint64_t)_predicatesMatchOnlyAllowedProcess:(NSObject *)a1
{
  v102 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(objc_class *)a1[14].isa hostProcess];
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = [v6 handle];
        [v4 addObject:v7];

        v8 = [v6 hostProcess];

        v6 = v8;
      }

      while (v8);
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v9)
    {
      v10 = v9;
      v83 = v3;
      v11 = *v93;
      v84 = *v93;
      v85 = a1;
      while (2)
      {
        v12 = 0;
        v86 = v10;
        do
        {
          if (*v93 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v92 + 1) + 8 * v12);
          v14 = [v13 processIdentifier];
          v15 = [v14 rbs_pid];
          v16 = [(objc_class *)a1[14].isa rbs_pid];

          if (v15 == v16)
          {
            v17 = rbs_general_log();
            v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
            if (v18)
            {
              OUTLINED_FUNCTION_2_5(v18, v19, v20, v21, v22, v23, v24, v25, v82, v83, v84, v85, v86, obj, v26);
              _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching self %{public}@ for process %{public}@", v27, 0x16u);
            }
          }

          else
          {
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v28 = v4;
            v29 = v4;
            v30 = [v29 countByEnumeratingWithState:&v88 objects:v96 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v89;
              while (2)
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v89 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v88 + 1) + 8 * i);
                  v35 = [v13 processIdentifier];
                  v36 = [v35 rbs_pid];
                  LODWORD(v34) = [v34 pid];

                  if (v36 == v34)
                  {

                    v17 = rbs_general_log();
                    v54 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
                    if (v54)
                    {
                      a1 = v85;
                      OUTLINED_FUNCTION_2_5(v54, v55, v56, v57, v58, v59, v60, v61, v82, v83, v84, v85, v86, obj, v62);
                      _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching hosting %{public}@ for process %{public}@", v63, 0x16u);
                      v4 = v28;
                    }

                    else
                    {
                      v4 = v28;
                      a1 = v85;
                    }

                    v10 = v86;
                    v11 = v84;
                    goto LABEL_40;
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v88 objects:v96 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

            a1 = v85;
            isa = v85[5].isa;
            v38 = [v13 processIdentifier];
            v17 = [OUTLINED_FUNCTION_18_0() processForIdentifierWithoutStartingTracking:?];

            v39 = rbs_general_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v98 = v13;
              v99 = 2114;
              v100 = v17;
              _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess for predicate %{public}@ resolved target to %{public}@", buf, 0x16u);
            }

            v40 = [(objc_class *)v85[14].isa rbs_pid];
            v41 = [v17 hostProcess];
            v42 = [v41 rbs_pid];

            if (v40 == v42)
            {
              v43 = rbs_general_log();
              v44 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
              v4 = v28;
              v11 = v84;
              if (v44)
              {
                OUTLINED_FUNCTION_2_5(v44, v45, v46, v47, v48, v49, v50, v51, v82, v83, v84, v85, v86, obj, v52);
                _os_log_impl(&dword_262485000, v43, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching hosted %{public}@ for process %{public}@", v53, 0x16u);
              }

              v10 = v86;
            }

            else
            {
              v64 = [(objc_class *)v85[4].isa entitlementsForProcess:v17];
              v4 = v28;
              v11 = v84;
              if ([v64 rb_hasEntitlementDomain:64])
              {
                v65 = rbs_general_log();
                v66 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);
                v10 = v86;
                if (v66)
                {
                  OUTLINED_FUNCTION_2_5(v66, v67, v68, v69, v70, v71, v72, v73, v82, v83, v84, v85, v86, obj, v74);
                  _os_log_impl(&dword_262485000, v65, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching trusted target %{public}@ for process %{public}@", v75, 0x16u);
                }
              }

              else
              {
                v65 = [v13 bundleIdentifier];
                v10 = v86;
                if (([v65 isEqualToString:@"com.apple.dt.XcodePreviews"]& 1) == 0 && ![v65 isEqualToString:@"com.apple.PreviewShell"])
                {
                  v78 = rbs_general_log();
                  if (OUTLINED_FUNCTION_30_0(v78))
                  {
                    v79 = v85[14].isa;
                    *buf = 138543618;
                    v98 = v13;
                    v99 = 2114;
                    v100 = v79;
                    _os_log_impl(&dword_262485000, v85, OS_LOG_TYPE_DEFAULT, "_predicatesMatchOnlyAllowedProcess denying predicate %{public}@ for process %{public}@", buf, 0x16u);
                  }

                  v77 = 0;
                  goto LABEL_47;
                }

                v76 = rbs_general_log();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543618;
                  v98 = v65;
                  v99 = 2114;
                  v100 = v13;
                  _os_log_impl(&dword_262485000, v76, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching %{public}@ (%{public}@)", buf, 0x16u);
                }
              }
            }
          }

LABEL_40:

          ++v12;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v77 = 1;
LABEL_47:
      v3 = v83;
    }

    else
    {
      v77 = 1;
    }
  }

  else
  {
    v77 = 0;
  }

  v80 = *MEMORY[0x277D85DE8];
  return v77;
}

- (void)_trackTargetProcessForDescriptor:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 target];
    v6 = [v3 processIdentifier];

    v4 = v6;
    if (v6)
    {
      v5 = [*(a1 + 40) processForIdentifier:v6];
      v4 = v6;
    }
  }
}

- (void)_requestPluginHoldForProxy:(NSObject *)a3 terminate:(void *)a4 completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_27_0();
    v26[2] = __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke;
    v26[3] = &unk_279B33528;
    v9 = v7;
    v27 = v9;
    v28 = v8;
    v10 = MEMORY[0x266729AD0](v26);
    v11 = [v9 appState];
    v12 = [v11 isInstalled];

    if (v12)
    {
      v13 = [v9 bundleURL];
      if (v13)
      {
        v14 = [MEMORY[0x277D3D350] managerForUser:*(a1 + 144)];
        v15 = v14;
        if (a3)
        {
          [v14 terminatePlugInsInApplication:v13 options:0 result:v10];
        }

        else
        {
          [v14 holdPlugInsInApplication:v13 result:v10];
        }
      }

      else
      {
        v21 = rbs_connection_log();
        if (OUTLINED_FUNCTION_24(v21))
        {
          v25 = [v9 bundleIdentifier];
          *buf = 138543362;
          v30 = v25;
          _os_log_error_impl(&dword_262485000, a3, OS_LOG_TYPE_ERROR, "Could not get bundle URL for bundle %{public}@", buf, 0xCu);
        }

        v22 = OUTLINED_FUNCTION_14_0();
        v23(v22);
      }
    }

    else
    {
      v16 = rbs_connection_log();
      if (OUTLINED_FUNCTION_30_0(v16))
      {
        v17 = [v9 bundleIdentifier];
        *buf = 138543362;
        v30 = v17;
        OUTLINED_FUNCTION_21_0(&dword_262485000, v11, v18, "skipping plugin hold for uninstalled proxy %{public}@", buf);
      }

      v19 = OUTLINED_FUNCTION_14_0();
      v20(v19);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)expandPredicateForContained:(uint64_t)a1
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 predicate];
    v6 = [v5 bundleIdentifier];
    v7 = [v4 context];
    v8 = [v7 attributes];

    if (!v6)
    {
      v14 = rbs_connection_log();
      if (OUTLINED_FUNCTION_30_0(v14))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "Termination predicate not expanded because complex predicate", buf, 2u);
      }

      goto LABEL_28;
    }

    if (!v8)
    {
      v7 = 0;
      v10 = 0;
      v12 = 0;
      goto LABEL_15;
    }

    if ([v8 count] == 1)
    {
      v7 = [v8 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        v10 = [v10 predicate];
        v11 = [v10 bundleIdentifier];
        v12 = v11;
        if (v11)
        {
          v13 = v7;
          if (([v11 isEqual:v6] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_15:
          v15 = RBSContainedExtensionBundleIDs();
          if ([v15 count] != 1)
          {
            v25 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:v15];
            v16 = rbs_connection_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v4 predicate];
              *buf = 138412546;
              v28 = v17;
              v29 = 2112;
              v30 = v25;
              _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "expanding termination predicate from %@ to %@", buf, 0x16u);
            }

            [v4 setPredicate:v25];
            if (v8)
            {
              v18 = MEMORY[0x277D46F00];
              v24 = [v7 allow];
              v19 = [v18 limitationWithPredicate:v25 andException:v24];
              v26 = v19;
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

              v21 = [v4 context];
              [v21 setAttributes:v20];
            }
          }

          goto LABEL_28;
        }

        v13 = v7;
LABEL_25:
        v22 = rbs_connection_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "Termination preventLaunch attribute not expanded because it didn't match Termination Predicate", buf, 2u);
        }

LABEL_28:
        goto LABEL_29;
      }

      v13 = 0;
    }

    else
    {
      v7 = 0;
      v13 = 0;
      v10 = 0;
    }

    v12 = 0;
    goto LABEL_25;
  }

LABEL_29:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateProcessStates:(uint64_t)a1
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [a2 processStateChangeForIdentity:*(a1 + 128)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 updatedState];
      v6 = [v5 inheritances];
      v7 = [v6 allInheritances];

      v8 = rbs_state_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 112);
        OUTLINED_FUNCTION_1_7();
        v12 = v7;
        _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "Process: %{public}@ has changes in inheritances: %{public}@", v11, 0x16u);
      }

      [*(a1 + 152) setInheritances:v7];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)willExpireAssertionsSoonForProcess:(double)a3 expirationTime:
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (a1 && *(a1 + 112) == v6)
  {
    os_unfair_lock_lock((a1 + 16));
    v8 = *(a1 + 8);
    if (*(a1 + 192))
    {
      if ([*(a1 + 24) hasAssertionWithIdentifier:?])
      {
        os_unfair_lock_unlock((a1 + 16));
LABEL_17:

        goto LABEL_18;
      }

      v9 = *(a1 + 192);
      *(a1 + 192) = 0;
    }

    os_unfair_lock_unlock((a1 + 16));
    if (!v8)
    {
      goto LABEL_17;
    }

    RBSMachAbsoluteTime();
    v11 = v10;
    v12 = a3 - v10 + -0.1;
    if ([v7 isSuspended])
    {
      v13 = rbs_connection_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138544130;
        v41 = v7;
        v42 = 2050;
        v43 = v12;
        v44 = 2050;
        v45 = a3;
        v46 = 2050;
        v47 = v11;
        _os_log_fault_impl(&dword_262485000, v13, OS_LOG_TYPE_FAULT, "%{public}@ Suspension Warning for already suspened process (d:%{public}fs xt:%{public}fs n:%{public}fs)", buf, 0x2Au);
      }
    }

    else
    {
      if (v12 <= 0.0)
      {
LABEL_16:
        v34 = [MEMORY[0x277D47030] messageForMethod:sel_async_willExpireAssertionsSoon varguments:0];
        [v34 sendToConnection:v8];

        goto LABEL_17;
      }

      v14 = rbs_connection_log();
      if (OUTLINED_FUNCTION_26_0(v14))
      {
        v15 = *(a1 + 136);
        *buf = 138543618;
        v41 = v15;
        v42 = 2050;
        v43 = v12;
        OUTLINED_FUNCTION_17_0();
        _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
      }

      v21 = MEMORY[0x277D46DD0];
      v13 = *(a1 + 88);
      v22 = [v21 identifierWithClientPid:{-[NSObject rbs_pid](v13, "rbs_pid")}];
      v23 = [MEMORY[0x277D47008] targetWithPid:{objc_msgSend(*(a1 + 112), "rbs_pid")}];
      v24 = [MEMORY[0x277D46DF0] grantUserInitiated];
      v39[0] = v24;
      v25 = [MEMORY[0x277D46E48] attributeWithDuration:103 warningDuration:1 startPolicy:v12 endPolicy:0.0];
      v39[1] = v25;
      v26 = [MEMORY[0x277D46FD0] withReason:10101];
      v39[2] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];

      v28 = [MEMORY[0x277D46DC8] descriptorWithIdentifier:v22 target:v23 explanation:@"Will expire assertions soon" attributes:v27];
      v29 = [RBAssertionAcquisitionContext contextForProcess:v13 withDescriptor:v28 daemonContext:*(a1 + 64)];
      v30 = MEMORY[0x277D47028];
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_27_0();
      v36[2] = __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke;
      v36[3] = &unk_279B329D0;
      v36[4] = a1;
      v37 = v31;
      v38 = v22;
      v32 = v22;
      v33 = v29;
      [v30 performBackgroundWorkWithServiceClass:25 block:v36];
    }

    goto LABEL_16;
  }

LABEL_18:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)willInvalidateAssertion:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 136);
    v11 = v3;
    v5 = [v3 originator];
    v6 = [v5 identifier];
    LODWORD(v4) = [v4 isEqual:v6];

    v3 = v11;
    if (v4)
    {
      os_unfair_lock_lock((a1 + 16));
      v7 = *(a1 + 8);
      os_unfair_lock_unlock((a1 + 16));
      if (v7)
      {
        v8 = MEMORY[0x277D47030];
        v9 = [v11 identifier];
        v10 = [v8 messageForMethod:sel_async_assertionWillInvalidate_ varguments:{v9, 0}];
        [v10 sendToConnection:v7];
      }

      v3 = v11;
    }
  }
}

- (void)didInvalidateAssertions:(uint64_t)a1
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v29 = [MEMORY[0x277CBEB58] set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v10 = [v9 originator];
          v11 = [v10 identifier];

          if ([*(a1 + 136) isEqual:v11])
          {
            v12 = [v9 identifier];
            os_unfair_lock_lock((a1 + 16));
            v13 = [*(a1 + 168) containsObject:v12];
            [*(a1 + 168) removeObject:v12];
            os_unfair_lock_unlock((a1 + 16));
            v14 = [*(a1 + 24) popPluginHoldForAssertion:v12];
            if (v14)
            {
              v15 = rbs_assertion_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v37 = v14;
                _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_INFO, "Releasing plugin hold token %@", buf, 0xCu);
              }

              v16 = [MEMORY[0x277D3D350] managerForUser:*(a1 + 144)];
              [v16 releaseHold:v14];
            }

            if (v13)
            {
              [v29 addObject:v12];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v6);
    }

    v17 = [v29 count];
    if (v17)
    {
      v18 = v17;
      os_unfair_lock_lock((a1 + 16));
      v19 = *(a1 + 8);
      os_unfair_lock_unlock((a1 + 16));
      if (v19)
      {
        v20 = rbs_assertion_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(a1 + 136);
          *buf = 138543618;
          v37 = v27;
          v38 = 2048;
          v39 = v18;
          _os_log_debug_impl(&dword_262485000, v20, OS_LOG_TYPE_DEBUG, "Notifying client %{public}@ of %lu invalidated assertions", buf, 0x16u);
        }

        v21 = MEMORY[0x277CCA9B8];
        v22 = *MEMORY[0x277D47050];
        v34 = *MEMORY[0x277CCA470];
        v35 = @"Assertions were invalidated";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = [v21 errorWithDomain:v22 code:1 userInfo:v23];

        v25 = [MEMORY[0x277D47030] messageForMethod:sel_async_assertionsDidInvalidate_withError_ varguments:{v29, v24, 0}];
        [v25 sendToConnection:v19];
      }
    }

    v3 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveProcess:withState:
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v19 = *MEMORY[0x277D85DE8];
  v4 = v3;
  if (v2)
  {
    os_unfair_lock_lock((v2 + 20));
    if ([*(v2 + 176) containsObject:v4])
    {
      [*(v2 + 176) removeObject:v4];
      v5 = *(v2 + 8);
      os_unfair_lock_unlock((v2 + 20));
      if (v5)
      {
        v6 = rbs_process_log();
        if (OUTLINED_FUNCTION_26_0(v6))
        {
          v7 = *(v2 + 112);
          v18 = [v4 lastExitContext];
          OUTLINED_FUNCTION_17_0();
          _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
        }

        v13 = MEMORY[0x277D47030];
        v14 = [v4 identifier];
        v17 = [v4 lastExitContext];
        v15 = [v13 messageForMethod:sel_async_processDidExit_withContext_ varguments:v14];

        [v15 sendToConnection:v5];
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 20));
      v5 = 0;
    }

    os_unfair_lock_lock((v2 + 16));
    [*(v2 + 184) didObserveProcessExit:v4];
    os_unfair_lock_unlock((v2 + 16));
  }

  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_22_0();
}

- (uint64_t)processIdentifier
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)processIdentity
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (void)handleMessage:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_262485000, log, OS_LOG_TYPE_FAULT, "Dropping message from %{public}@: The server is missing an implementation for %{public}@", buf, 0x16u);
}

- (void)handleMessage:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 112);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Dropping message from %{public}@ that does not conform to expectations", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __36__RBConnectionClient_handleMessage___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 112);
  OUTLINED_FUNCTION_1_7();
  v6 = v2;
  OUTLINED_FUNCTION_11_0(&dword_262485000, v3, v3, "Error handling message from %{public}@: <%{public}@>", v5);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __36__RBConnectionClient_handleMessage___block_invoke_40_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  [(RBConnectionClient *)*(a1 + 40) _setReadyWithConnection:?];
  [a2 setEuid:*(a1 + 72)];
  v6 = [(RBConnectionClient *)*(a1 + 40) handshakeWithRequest:a2];
  *a3 = v6;
  return [*(a1 + 56) encodeObject:v6 forKey:*MEMORY[0x277D470C0]];
}

void __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) bundleIdentifier];
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_11_0(&dword_262485000, a3, v5, "Ignoring unexpected error acquiring hold on plugins for %{public}@: %{public}@", v7);

  v6 = *MEMORY[0x277D85DE8];
}

void __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) bundleIdentifier];
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_11_0(&dword_262485000, a3, v5, "Error acquiring hold on plugins for %{public}@: %{public}@", v7);

  v6 = *MEMORY[0x277D85DE8];
}

@end