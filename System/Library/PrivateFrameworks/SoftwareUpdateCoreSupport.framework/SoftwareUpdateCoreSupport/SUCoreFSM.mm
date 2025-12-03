@interface SUCoreFSM
- (BOOL)_activateMachineWithStateTable:(id)table withActionTable:(id)actionTable;
- (id)_acceptEvent:(id)event withInfo:(id)info issueType:(id)type attachedAction:(id *)action;
- (id)_initMachine:(id)machine ofInstance:(id)instance withTable:(id)table startingIn:(id)in usingDelegate:(id)delegate registeringAllInfoClass:(Class)class registeringAndActivating:(BOOL)activating;
- (id)copyCurrentState;
- (id)copyCurrentStateProtected;
- (void)_performEvent:(id)event withInfo:(id)info issueType:(id)type forCell:(id)cell attachedAction:(id)action checkingAttached:(BOOL)attached;
- (void)_postEvent:(id)event withInfo:(id)info;
- (void)_registerAction:(id)action ForEvent:(id)event inState:(id)state usingDelegate:(id)delegate withInfoClass:(Class)class actionTable:(id)table loggingRegistration:(BOOL)registration;
- (void)_registerAllActions:(id)actions withInfoClass:(Class)class stateTable:(id)table actionTable:(id)actionTable loggingRegistration:(BOOL)registration;
- (void)_simulateEventAlteration:(id)alteration fsmEvent:(id *)event eventInfo:(id *)info attachedAction:(id *)action;
- (void)_trackEventOccurrence:(id)occurrence withInfo:(id)info issueType:(id)type;
- (void)_triggerAction:(id)action usingAttached:(id)attached onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState;
- (void)activateMachine;
- (void)dumpEventInStateOccurrences:(id)occurrences;
- (void)followupEvent:(id)event withInfo:(id)info;
- (void)postEvent:(id)event withInfo:(id)info;
- (void)postProtectedEvent:(id)event withInfo:(id)info;
- (void)registerAction:(id)action ForEvent:(id)event inState:(id)state usingDelegate:(id)delegate withInfoClass:(Class)class;
- (void)registerAllActions:(id)actions withInfoClass:(Class)class;
- (void)teardownMachine;
@end

@implementation SUCoreFSM

- (id)_initMachine:(id)machine ofInstance:(id)instance withTable:(id)table startingIn:(id)in usingDelegate:(id)delegate registeringAllInfoClass:(Class)class registeringAndActivating:(BOOL)activating
{
  v78 = *MEMORY[0x1E69E9840];
  machineCopy = machine;
  instanceCopy = instance;
  tableCopy = table;
  inCopy = in;
  delegateCopy = delegate;
  v71.receiver = self;
  v71.super_class = SUCoreFSM;
  v19 = [(SUCoreFSM *)&v71 init];
  if (!v19)
  {
    goto LABEL_30;
  }

  v69 = instanceCopy;
  v20 = +[SUCoreDiag sharedDiag];
  [v20 trackBegin:@"[FSM] API: initMachine"];

  v19->_isActive = 0;
  v19->_performingEvent = 0;
  pendingFollowupEvent = v19->_pendingFollowupEvent;
  v19->_pendingFollowupEvent = 0;

  pendingFollowupInfo = v19->_pendingFollowupInfo;
  v19->_pendingFollowupInfo = 0;

  usageTable = v19->_usageTable;
  v19->_usageTable = 0;

  v19->_untrackedOccurrences = 0;
  v24 = objc_opt_new();
  registeredActionTable = v19->_registeredActionTable;
  v19->_registeredActionTable = v24;

  if (!machineCopy)
  {
    v29 = +[SUCore sharedCore];
    v30 = v29;
    v31 = @"FSM name not provided";
    v32 = 8101;
LABEL_14:
    v33 = [v29 buildError:v32 underlying:0 description:v31];
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = +[SUCore sharedCore];
    v30 = v29;
    v31 = @"invalid FSM name";
    v32 = 8102;
    goto LABEL_14;
  }

  if (instanceCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = +[SUCore sharedCore];
      v33 = [v30 buildError:8102 underlying:0 description:@"invalid instance name"];
      goto LABEL_23;
    }
  }

  if (!tableCopy)
  {
    v30 = +[SUCore sharedCore];
    machineCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FSM(%@) state table not provided", machineCopy];
LABEL_19:
    v36 = machineCopy;
    v37 = v30;
    v38 = 8101;
LABEL_22:
    v33 = [v37 buildError:v38 underlying:0 description:v36];

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = +[SUCore sharedCore];
    machineCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FSM(%@) invalid state table", machineCopy];
LABEL_21:
    v36 = machineCopy2;
    v37 = v30;
    v38 = 8102;
    goto LABEL_22;
  }

  if (!inCopy)
  {
    v30 = +[SUCore sharedCore];
    machineCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FSM(%@) start state not provided", machineCopy];
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = +[SUCore sharedCore];
    machineCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FSM(%@) invalid start state", machineCopy];
    goto LABEL_21;
  }

  objc_storeStrong(&v19->_fsmName, machine);
  objc_storeStrong(&v19->_instanceName, instance);
  if (v19->_instanceName)
  {
    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    fsmName = v19->_fsmName;
    v28 = [v26 initWithFormat:@"%@[%@]", fsmName, v19->_instanceName];
  }

  else
  {
    v28 = v19->_fsmName;
  }

  fullName = v19->_fullName;
  v19->_fullName = v28;

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", @"fsm", v19->_fullName];
  v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SUFSM_%@_%@", v19->_fullName, @"SUDiagDump.plist"];
  v50 = [[SUCoreDiag alloc] initWithAppendedDomain:v30 appendingDumpFilename:v63];
  diag = v19->_diag;
  v19->_diag = v50;

  v52 = +[SUCore sharedCore];
  commonDomain = [v52 commonDomain];

  v67 = commonDomain;
  v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@.%@", commonDomain, @"core.fsm.extended", v19->_fullName];
  uTF8String = [v54 UTF8String];
  v64 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v56 = dispatch_queue_create(uTF8String, v64);
  extendedStateQueue = v19->_extendedStateQueue;
  v19->_extendedStateQueue = v56;

  if (v19->_extendedStateQueue)
  {
    v58 = +[SUCoreLog sharedLogger];
    oslog = [v58 oslog];

    v65 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v19->_fullName;
      *buf = 138543874;
      v73 = v67;
      v74 = 2114;
      v75 = @"core.fsm.extended";
      v76 = 2114;
      v77 = v60;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[FSM] DISPATCH: created extended state dispatch queue domain(%{public}@.%{public}@.%{public}@)", buf, 0x20u);
    }

    v33 = 0;
    v61 = v65;
  }

  else
  {
    v66 = +[SUCore sharedCore];
    v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FSM(%@) failed to create extended state dispatch queue", v19->_fullName];
    v33 = [v66 buildError:8100 underlying:0 description:v62];

    v61 = v66;
  }

LABEL_23:
  if (activating)
  {
    [(SUCoreFSM *)v19 _registerAllActions:delegateCopy withInfoClass:class stateTable:tableCopy actionTable:v19->_registeredActionTable loggingRegistration:0];
    if ([(SUCoreFSM *)v19 _activateMachineWithStateTable:tableCopy withActionTable:v19->_registeredActionTable])
    {
      objc_storeStrong(&v19->_currentState, in);
      v19->_isActive = 1;
    }

    else
    {
      v39 = +[SUCore sharedCore];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FSM(%@) failed to validate state table and registered actions", v19->_fullName];
      v41 = [v39 buildError:8503 underlying:0 description:v40];

      v33 = v41;
    }
  }

  v42 = inCopy;
  if (!v33)
  {
    objc_storeStrong(&v19->_stateTable, table);
    objc_storeStrong(&v19->_startState, in);
    v46 = +[SUCoreDiag sharedDiag];
    [v46 trackEnd:@"[FSM] API: initMachine"];

    instanceCopy = v69;
LABEL_30:
    v45 = v19;
    v42 = inCopy;
    goto LABEL_31;
  }

  v43 = +[SUCoreDiag sharedDiag];
  [v43 trackFailure:@"[FSM] FAILURE: initMachine" forReason:@"unable to fully validate and setup FSM" withResult:objc_msgSend(v33 withError:{"code"), v33}];

  v44 = +[SUCoreDiag sharedDiag];
  [v44 trackEnd:@"[FSM] API: initMachine" withResult:objc_msgSend(v33 withError:{"code"), v33}];

  v45 = 0;
  instanceCopy = v69;
LABEL_31:

  v47 = *MEMORY[0x1E69E9840];
  return v45;
}

- (void)teardownMachine
{
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SUCoreFSM_teardownMachine__block_invoke;
  block[3] = &unk_1E86FC178;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __28__SUCoreFSM_teardownMachine__block_invoke(uint64_t a1)
{
  v2 = +[SUCoreDiag sharedDiag];
  [v2 trackBegin:@"[FSM] API: teardownMachine"];

  if ([*(a1 + 32) isActive])
  {
    v3 = *(a1 + 32);
    v21 = 0;
    v4 = [v3 _acceptEvent:@"Teardown" withInfo:0 issueType:@"post" attachedAction:&v21];
    v5 = v21;
    if (v4)
    {
      v6 = [*(a1 + 32) pendingFollowupEvent];

      if (v6)
      {
        v7 = [*(a1 + 32) diag];
        v8 = objc_alloc(MEMORY[0x1E696AEC0]);
        v9 = [*(a1 + 32) fullName];
        v10 = [*(a1 + 32) pendingFollowupEvent];
        v11 = [*(a1 + 32) currentState];
        v12 = [v8 initWithFormat:@"FSM(%@) pending follow-up event(%@) [starting teardown in state(%@)] discarded", v9, v10, v11];
        [v7 trackAnomaly:@"[FSM] TEARDOWN" forReason:v12 withResult:8117 withError:0];

        [*(a1 + 32) setPendingFollowupEvent:0];
        [*(a1 + 32) setPendingFollowupInfo:0];
      }

      [*(a1 + 32) setPerformingEvent:0];
      [*(a1 + 32) _performEvent:@"Teardown" withInfo:0 issueType:@"teardown" forCell:v4 attachedAction:v5 checkingAttached:1];
      v13 = [*(a1 + 32) pendingFollowupEvent];

      if (v13)
      {
        v14 = [*(a1 + 32) diag];
        v15 = objc_alloc(MEMORY[0x1E696AEC0]);
        v16 = [*(a1 + 32) fullName];
        v17 = [*(a1 + 32) pendingFollowupEvent];
        v18 = [*(a1 + 32) currentState];
        v19 = [v15 initWithFormat:@"FSM(%@) pending follow-up event(%@) [ending teardown in state(%@)] discarded", v16, v17, v18];
        [v14 trackAnomaly:@"[FSM] TEARDOWN" forReason:v19 withResult:8117 withError:0];
      }

      [*(a1 + 32) setIsActive:0];
    }
  }

  v20 = +[SUCoreDiag sharedDiag];
  [v20 trackEnd:@"[FSM] API: teardownMachine"];
}

- (void)registerAction:(id)action ForEvent:(id)event inState:(id)state usingDelegate:(id)delegate withInfoClass:(Class)class
{
  actionCopy = action;
  eventCopy = event;
  stateCopy = state;
  delegateCopy = delegate;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_not_V2(extendedStateQueue);

  extendedStateQueue2 = [(SUCoreFSM *)self extendedStateQueue];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __73__SUCoreFSM_registerAction_ForEvent_inState_usingDelegate_withInfoClass___block_invoke;
  v22[3] = &unk_1E86FCA90;
  v22[4] = self;
  v23 = actionCopy;
  v24 = eventCopy;
  v25 = stateCopy;
  v26 = delegateCopy;
  classCopy = class;
  v18 = delegateCopy;
  v19 = stateCopy;
  v20 = eventCopy;
  v21 = actionCopy;
  dispatch_sync(extendedStateQueue2, v22);
}

void __73__SUCoreFSM_registerAction_ForEvent_inState_usingDelegate_withInfoClass___block_invoke(void *a1)
{
  v2 = +[SUCoreDiag sharedDiag];
  [v2 trackBegin:@"[FSM] API: registerAction" atLevel:0];

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  v7 = a1[9];
  v9 = [v3 registeredActionTable];
  LOBYTE(v10) = 1;
  [v3 _registerAction:v4 ForEvent:v5 inState:v6 usingDelegate:v8 withInfoClass:v7 actionTable:v9 loggingRegistration:v10];

  v11 = +[SUCoreDiag sharedDiag];
  [v11 trackEnd:@"[FSM] API: registerAction" atLevel:0];
}

- (void)registerAllActions:(id)actions withInfoClass:(Class)class
{
  actionsCopy = actions;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_not_V2(extendedStateQueue);

  extendedStateQueue2 = [(SUCoreFSM *)self extendedStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SUCoreFSM_registerAllActions_withInfoClass___block_invoke;
  block[3] = &unk_1E86FCAB8;
  block[4] = self;
  v11 = actionsCopy;
  classCopy = class;
  v9 = actionsCopy;
  dispatch_sync(extendedStateQueue2, block);
}

void __46__SUCoreFSM_registerAllActions_withInfoClass___block_invoke(uint64_t a1)
{
  v2 = +[SUCoreDiag sharedDiag];
  [v2 trackBegin:@"[FSM] API: registerAllActions"];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [v3 stateTable];
  v7 = [*(a1 + 32) registeredActionTable];
  [v3 _registerAllActions:v4 withInfoClass:v5 stateTable:v6 actionTable:v7 loggingRegistration:1];

  v8 = +[SUCoreDiag sharedDiag];
  [v8 trackEnd:@"[FSM] API: registerAllActions"];
}

- (void)_registerAllActions:(id)actions withInfoClass:(Class)class stateTable:(id)table actionTable:(id)actionTable loggingRegistration:(BOOL)registration
{
  actionsCopy = actions;
  actionTableCopy = actionTable;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__SUCoreFSM__registerAllActions_withInfoClass_stateTable_actionTable_loggingRegistration___block_invoke;
  v16[3] = &unk_1E86FCB08;
  v16[4] = self;
  v17 = actionsCopy;
  v18 = actionTableCopy;
  classCopy = class;
  registrationCopy = registration;
  v14 = actionTableCopy;
  v15 = actionsCopy;
  [table enumerateKeysAndObjectsUsingBlock:v16];
}

void __90__SUCoreFSM__registerAllActions_withInfoClass_stateTable_actionTable_loggingRegistration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__SUCoreFSM__registerAllActions_withInfoClass_stateTable_actionTable_loggingRegistration___block_invoke_2;
  v10[3] = &unk_1E86FCAE0;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v9 = *(a1 + 48);
  v7 = v9;
  v13 = v9;
  v14 = *(a1 + 64);
  v8 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
}

void __90__SUCoreFSM__registerAllActions_withInfoClass_stateTable_actionTable_loggingRegistration___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 safeStringForKey:@"FSMAction"];
  if (v5)
  {
    LOBYTE(v6) = *(a1 + 72);
    [*(a1 + 32) _registerAction:v5 ForEvent:v7 inState:*(a1 + 40) usingDelegate:*(a1 + 48) withInfoClass:*(a1 + 64) actionTable:*(a1 + 56) loggingRegistration:v6];
  }
}

- (void)_registerAction:(id)action ForEvent:(id)event inState:(id)state usingDelegate:(id)delegate withInfoClass:(Class)class actionTable:(id)table loggingRegistration:(BOOL)registration
{
  v47 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  eventCopy = event;
  stateCopy = state;
  delegateCopy = delegate;
  tableCopy = table;
  v20 = +[SUCoreDiag sharedDiag];
  v21 = [tableCopy safeObjectForKey:stateCopy ofClass:objc_opt_class()];
  if (!v21)
  {
    v22 = objc_opt_new();
    if (!v22)
    {
      v35 = objc_alloc(MEMORY[0x1E696AEC0]);
      fullName = [(SUCoreFSM *)self fullName];
      eventCopy = [v35 initWithFormat:@"FSM(%@) unable to create actions for state(%@) so dropping registration of action(%@) for event(%@)", fullName, stateCopy, actionCopy, eventCopy];
      [v20 trackAnomaly:@"[FSM] REGISTER_EVENT" forReason:eventCopy withResult:8100 withError:0];

      goto LABEL_11;
    }

    v21 = v22;
    [tableCopy setSafeObject:v22 forKey:stateCopy];
  }

  v23 = [eventCopy isEqualToString:@"Teardown"];
  if (class && v23)
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName2 = [(SUCoreFSM *)self fullName];
    eventCopy2 = [v24 initWithFormat:@"FSM(%@) action delegate registering for event(%@) with Class - not supported", fullName2, eventCopy];
  }

  else
  {
    v27 = [v21 objectForKey:eventCopy];

    if (!v27)
    {
      v31 = [[SUCoreFSMAttachedAction alloc] initWithAction:actionCopy usingDelegate:delegateCopy withInfoClass:class];
      [v21 setSafeObject:v31 forKey:eventCopy];
      [tableCopy setSafeObject:v21 forKey:stateCopy];
      if (registration)
      {
        v38 = v31;
        v32 = +[SUCoreLog sharedLogger];
        oslog = [v32 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          fullName3 = [(SUCoreFSM *)self fullName];
          *buf = 138544130;
          v40 = fullName3;
          v41 = 2114;
          v42 = actionCopy;
          v43 = 2114;
          v44 = eventCopy;
          v45 = 2114;
          v46 = stateCopy;
          _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[FSM] REGISTER_EVENT: FSM(%{public}@) attached action(%{public}@) handling event(%{public}@) in state(%{public}@)", buf, 0x2Au);
        }

        v31 = v38;
      }

      goto LABEL_10;
    }

    v28 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName2 = [(SUCoreFSM *)self fullName];
    eventCopy2 = [v28 initWithFormat:@"FSM(%@) action delegate already registered as event handler for event(%@)", fullName2, eventCopy];
  }

  v29 = eventCopy2;
  [v20 trackAnomaly:@"[FSM] REGISTER_EVENT" forReason:eventCopy2 withResult:8111 withError:0];

LABEL_10:
LABEL_11:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)activateMachine
{
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_not_V2(extendedStateQueue);

  extendedStateQueue2 = [(SUCoreFSM *)self extendedStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SUCoreFSM_activateMachine__block_invoke;
  block[3] = &unk_1E86FC178;
  block[4] = self;
  dispatch_sync(extendedStateQueue2, block);
}

void __28__SUCoreFSM_activateMachine__block_invoke(uint64_t a1)
{
  v2 = +[SUCoreDiag sharedDiag];
  [v2 trackBegin:@"[FSM] API: activateMachine" atLevel:1];

  if ([*(a1 + 32) isActive])
  {
    v3 = +[SUCoreDiag sharedDiag];
    v9 = v3;
    v4 = 8502;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v5 stateTable];
    v7 = [*(a1 + 32) registeredActionTable];
    LODWORD(v5) = [v5 _activateMachineWithStateTable:v6 withActionTable:v7];

    if (v5)
    {
      v8 = [*(a1 + 32) startState];
      [*(a1 + 32) setCurrentState:v8];

      [*(a1 + 32) setIsActive:1];
      v9 = +[SUCoreDiag sharedDiag];
      [v9 trackEnd:@"[FSM] API: activateMachine" atLevel:1];
      goto LABEL_7;
    }

    v3 = +[SUCoreDiag sharedDiag];
    v9 = v3;
    v4 = 8503;
  }

  [v3 trackEnd:@"[FSM] API: activateMachine" atLevel:1 withResult:v4 withError:0];
LABEL_7:
}

- (BOOL)_activateMachineWithStateTable:(id)table withActionTable:(id)actionTable
{
  tableCopy = table;
  actionTableCopy = actionTable;
  v8 = +[SUCoreDiag sharedDiag];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__SUCoreFSM__activateMachineWithStateTable_withActionTable___block_invoke;
  v13[3] = &unk_1E86FCB58;
  v9 = tableCopy;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  selfCopy = self;
  v18 = &v19;
  v11 = actionTableCopy;
  v17 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
  LOBYTE(actionTableCopy) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return actionTableCopy;
}

void __60__SUCoreFSM__activateMachineWithStateTable_withActionTable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__SUCoreFSM__activateMachineWithStateTable_withActionTable___block_invoke_2;
  v12[3] = &unk_1E86FCB30;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v16 = *(a1 + 64);
  v11 = *(a1 + 48);
  v8 = *(&v11 + 1);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v11;
  v15 = v5;
  v10 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v12];
}

void __60__SUCoreFSM__activateMachineWithStateTable_withActionTable___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  v6 = [v5 safeStringForKey:@"FSMNextState"];
  v7 = [v5 safeStringForKey:@"FSMAction"];

  if (v6 && ([v6 isEqualToString:@"NOT_VALID"] & 1) == 0)
  {
    v8 = [*(a1 + 32) safeDictionaryForKey:v6 fromBase:@"SUCoreFSM stateTable" withKeyDescription:@"next state"];
    if (!v8)
    {
      v9 = *(a1 + 40);
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      v11 = [*(a1 + 48) fullName];
      v12 = [v10 initWithFormat:@"FSM(%@) with nextState(%@) that is not defined in state table", v11, v6];
      [v9 trackAnomaly:@"[FSM] ACTIVATE_MACHINE" forReason:v12 withResult:8100 withError:0];

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }
  }

  if (v7)
  {
    v13 = [*(a1 + 56) safeDictionaryForKey:*(a1 + 64) fromBase:@"SUCoreFSM actionTable" withKeyDescription:@"FSM state"];
    v14 = [v13 safeObjectForKey:v29 ofClass:objc_opt_class()];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 fsmAction];
      v17 = [v7 isEqualToString:v16];

      if ((v17 & 1) == 0)
      {
        v24 = *(a1 + 40);
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v20 = [*(a1 + 48) fullName];
        v26 = *(a1 + 64);
        v23 = [v15 fsmAction];
        v27 = [v25 initWithFormat:@"FSM(%@) forEvent(%@) inState(%@) table action(%@) != registered event action(%@)", v20, v29, v26, v7, v23];
        [v24 trackAnomaly:@"[FSM] ACTIVATE_MACHINE" forReason:v27 withResult:8100 withError:0];

        goto LABEL_15;
      }

      if (![v29 isEqualToString:@"Teardown"] || !objc_msgSend(v15, "eventInfoClass"))
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 40);
      v19 = objc_alloc(MEMORY[0x1E696AEC0]);
      v20 = [*(a1 + 48) fullName];
      v21 = [v19 initWithFormat:@"FSM(%@) forEvent(%@) inState(%@) indicates event info Class when not supported", v20, v29, *(a1 + 64), v28];
    }

    else
    {
      v18 = *(a1 + 40);
      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v20 = [*(a1 + 48) fullName];
      v21 = [v22 initWithFormat:@"FSM(%@) forEvent(%@) inState(%@) hasAction(%@) yet event handler has not been registered", v20, v29, *(a1 + 64), v7];
    }

    v23 = v21;
    [v18 trackAnomaly:@"[FSM] ACTIVATE_MACHINE" forReason:v21 withResult:8100 withError:0];
LABEL_15:

    *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_16:
  }
}

- (void)postEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SUCoreFSM_postEvent_withInfo___block_invoke;
  block[3] = &unk_1E86FC460;
  block[4] = self;
  v12 = eventCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = eventCopy;
  dispatch_async(extendedStateQueue, block);
}

uint64_t __32__SUCoreFSM_postEvent_withInfo___block_invoke(void *a1)
{
  v2 = +[SUCoreDiag sharedDiag];
  [v2 trackBegin:@"[FSM] API: postEvent" atLevel:0];

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [v3 _postEvent:v4 withInfo:v5];
}

- (void)postProtectedEvent:(id)event withInfo:(id)info
{
  infoCopy = info;
  eventCopy = event;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v8 = +[SUCoreDiag sharedDiag];
  [v8 trackBegin:@"[FSM] API: postProtectedEvent" atLevel:0];

  [(SUCoreFSM *)self _postEvent:eventCopy withInfo:infoCopy];
}

- (void)followupEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(SUCoreFSM *)self performingEvent])
  {
    diag = [(SUCoreFSM *)self diag];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName = [(SUCoreFSM *)self fullName];
    currentState = [(SUCoreFSM *)self currentState];
    v17 = [v15 initWithFormat:@"FSM(%@) follow-up event(%@) in state(%@) ignored - not performing any event", fullName, eventCopy, currentState];
    [diag trackAnomaly:@"[FSM] FOLLOW_UP_EVENT" forReason:v17 withResult:8115 withError:0];

    goto LABEL_5;
  }

  pendingFollowupEvent = [(SUCoreFSM *)self pendingFollowupEvent];

  if (pendingFollowupEvent)
  {
    diag = [(SUCoreFSM *)self diag];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName = [(SUCoreFSM *)self fullName];
    currentState2 = [(SUCoreFSM *)self currentState];
    pendingFollowupEvent2 = [(SUCoreFSM *)self pendingFollowupEvent];
    v14 = [v10 initWithFormat:@"FSM(%@) follow-up event(%@) in state(%@) ignored - already have follow-up event(%@)", fullName, eventCopy, currentState2, pendingFollowupEvent2];
    [diag trackAnomaly:@"[FSM] FOLLOW_UP_EVENT" forReason:v14 withResult:8111 withError:0];

LABEL_5:
    goto LABEL_6;
  }

  [(SUCoreFSM *)self setPendingFollowupEvent:eventCopy];
  [(SUCoreFSM *)self setPendingFollowupInfo:infoCopy];
LABEL_6:
}

- (id)copyCurrentState
{
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_not_V2(extendedStateQueue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  extendedStateQueue2 = [(SUCoreFSM *)self extendedStateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__SUCoreFSM_copyCurrentState__block_invoke;
  v7[3] = &unk_1E86FC1A0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(extendedStateQueue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __29__SUCoreFSM_copyCurrentState__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentState];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)copyCurrentStateProtected
{
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  currentState = [(SUCoreFSM *)self currentState];
  v5 = [currentState copy];

  return v5;
}

- (void)dumpEventInStateOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_not_V2(extendedStateQueue);

  extendedStateQueue2 = [(SUCoreFSM *)self extendedStateQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SUCoreFSM_dumpEventInStateOccurrences___block_invoke;
  v8[3] = &unk_1E86FC150;
  v8[4] = self;
  v9 = occurrencesCopy;
  v7 = occurrencesCopy;
  dispatch_sync(extendedStateQueue2, v8);
}

void __41__SUCoreFSM_dumpEventInStateOccurrences___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateTable];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 stateTable];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__SUCoreFSM_dumpEventInStateOccurrences___block_invoke_2;
    v11[3] = &unk_1E86FC4B0;
    v5 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v11];
  }

  else
  {
    v10 = [v3 diag];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) fullName];
    v9 = [v6 initWithFormat:@"%@:FSM(%@) has no defined state table", v7, v8];
    [v10 trackAnomaly:@"[FSM] DUMP_EVENT_IN_STATE" forReason:v9 withResult:8117 withError:0];
  }
}

void __41__SUCoreFSM_dumpEventInStateOccurrences___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SUCoreFSM_dumpEventInStateOccurrences___block_invoke_3;
  v8[3] = &unk_1E86FCB80;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void __41__SUCoreFSM_dumpEventInStateOccurrences___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safeStringForKey:@"FSMAction"];
  v7 = [*(a1 + 32) usageTable];

  if (v7)
  {
    v8 = [*(a1 + 32) usageTable];
    v9 = [v8 safeDictionaryForKey:*(a1 + 40) fromBase:@"dumpEventInStateOccurrences" withKeyDescription:@"state name"];

    if (v9)
    {
      v10 = [v9 safeDictionaryForKey:v5 fromBase:@"dumpEventInStateOccurrences" withKeyDescription:@"event name"];

      if (v10)
      {
        v11 = [v10 safeULLForKey:@"FSMOccurrences"];
        v12 = +[SUCoreLog sharedLogger];
        v13 = [v12 oslog];

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 48);
          v15 = [*(a1 + 32) fsmName];
          v16 = v15;
          v17 = *(a1 + 40);
          v18 = @"NONE";
          v25 = 138413570;
          if (v6)
          {
            v18 = v6;
          }

          v26 = v14;
          v27 = 2112;
          v28 = v15;
          v29 = 2112;
          v30 = v17;
          v31 = 2112;
          v32 = v5;
          v33 = 2112;
          v34 = v18;
          v35 = 2048;
          v36 = v11;
          _os_log_impl(&dword_1E0F71000, v13, OS_LOG_TYPE_DEFAULT, "[FSM] DUMP_EVENT_IN_STATE | %@:FSM(%@) | STATE(%@) EVENT(%@) ACTION(%@) | occurrences:%llu", &v25, 0x3Eu);
        }

LABEL_12:

        goto LABEL_13;
      }
    }
  }

  v19 = +[SUCoreLog sharedLogger];
  v10 = [v19 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 48);
    v21 = [*(a1 + 32) fsmName];
    v13 = v21;
    v22 = *(a1 + 40);
    v23 = @"NONE";
    v25 = 138413314;
    if (v6)
    {
      v23 = v6;
    }

    v26 = v20;
    v27 = 2112;
    v28 = v21;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v5;
    v33 = 2112;
    v34 = v23;
    _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "[FSM] DUMP_EVENT_IN_STATE | %@:FSM(%@) | STATE(%@) EVENT(%@) ACTION(%@) | occurrences:0", &v25, 0x34u);
    goto LABEL_12;
  }

LABEL_13:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_postEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v39 = 0;
  v9 = [(SUCoreFSM *)self _acceptEvent:eventCopy withInfo:infoCopy issueType:@"post" attachedAction:&v39];
  v10 = v39;
  if (v9)
  {
    pendingFollowupEvent = [(SUCoreFSM *)self pendingFollowupEvent];

    if (pendingFollowupEvent)
    {
      diag = [(SUCoreFSM *)self diag];
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      fullName = [(SUCoreFSM *)self fullName];
      pendingFollowupEvent2 = [(SUCoreFSM *)self pendingFollowupEvent];
      currentState = [(SUCoreFSM *)self currentState];
      v17 = [v13 initWithFormat:@"FSM(%@) pending follow-up event(%@) [prior to performing event(%@) in state(%@)] discarded", fullName, pendingFollowupEvent2, eventCopy, currentState];
      [diag trackAnomaly:@"[FSM] POST_EVENT" forReason:v17 withResult:8117 withError:0];

      [(SUCoreFSM *)self setPendingFollowupEvent:0];
      [(SUCoreFSM *)self setPendingFollowupInfo:0];
    }

    v34 = eventCopy;
    pendingFollowupEvent5 = eventCopy;
    [(SUCoreFSM *)self setPerformingEvent:1];
    while (1)
    {
      v19 = +[SUCoreSimulate sharedSimulator];
      fsmName = [(SUCoreFSM *)self fsmName];
      currentState2 = [(SUCoreFSM *)self currentState];
      v22 = [v19 fsm:fsmName forEvent:pendingFollowupEvent5 inState:currentState2];

      if (v22)
      {
        v37 = infoCopy;
        v38 = pendingFollowupEvent5;
        v36 = v10;
        [(SUCoreFSM *)self _simulateEventAlteration:v22 fsmEvent:&v38 eventInfo:&v37 attachedAction:&v36];
        v23 = v38;

        v24 = v37;
        v25 = v36;

        fsmAction = [v25 fsmAction];
        v27 = fsmAction == 0;

        v10 = v25;
        pendingFollowupEvent5 = v23;
        infoCopy = v24;
      }

      else
      {
        v27 = 1;
      }

      [(SUCoreFSM *)self _performEvent:pendingFollowupEvent5 withInfo:infoCopy issueType:@"post" forCell:v9 attachedAction:v10 checkingAttached:v27];

      pendingFollowupEvent3 = [(SUCoreFSM *)self pendingFollowupEvent];

      if (!pendingFollowupEvent3)
      {
        break;
      }

      pendingFollowupEvent4 = [(SUCoreFSM *)self pendingFollowupEvent];
      pendingFollowupInfo = [(SUCoreFSM *)self pendingFollowupInfo];
      v35 = 0;
      v31 = [(SUCoreFSM *)self _acceptEvent:pendingFollowupEvent4 withInfo:pendingFollowupInfo issueType:@"follow-up" attachedAction:&v35];
      v10 = v35;

      if (!v31)
      {
        v9 = 0;
        break;
      }

      pendingFollowupEvent5 = [(SUCoreFSM *)self pendingFollowupEvent];
      pendingFollowupInfo2 = [(SUCoreFSM *)self pendingFollowupInfo];

      [(SUCoreFSM *)self setPendingFollowupEvent:0];
      [(SUCoreFSM *)self setPendingFollowupInfo:0];

      v9 = v31;
      infoCopy = pendingFollowupInfo2;
      if (!pendingFollowupEvent5)
      {
        goto LABEL_14;
      }
    }

    pendingFollowupInfo2 = infoCopy;
    v31 = v9;
LABEL_14:
    [(SUCoreFSM *)self setPerformingEvent:0];

    infoCopy = pendingFollowupInfo2;
    eventCopy = v34;
  }

  v33 = +[SUCoreDiag sharedDiag];
  [v33 trackEnd:@"[FSM] API: postEvent" atLevel:0];
}

- (void)_simulateEventAlteration:(id)alteration fsmEvent:(id *)event eventInfo:(id *)info attachedAction:(id *)action
{
  alterationCopy = alteration;
  simAction = [alterationCopy simAction];
  if (simAction == 10)
  {
    fsmEvent = [alterationCopy fsmEvent];
    v19 = *info;
    v28 = 0;
    v20 = [(SUCoreFSM *)self _acceptEvent:fsmEvent withInfo:v19 issueType:@"simulate" attachedAction:&v28];
    v21 = v28;

    if (v20)
    {
      *event = [alterationCopy fsmEvent];
      v22 = v21;
      *action = v21;
    }
  }

  else if (simAction == 9)
  {
    v12 = *action;
    v13 = [SUCoreFSMAttachedAction alloc];
    alteration = [alterationCopy alteration];
    actionDelegate = [v12 actionDelegate];
    v16 = -[SUCoreFSMAttachedAction initWithAction:usingDelegate:withInfoClass:](v13, "initWithAction:usingDelegate:withInfoClass:", alteration, actionDelegate, [v12 eventInfoClass]);

    v17 = v16;
    *action = v16;
  }

  else
  {
    diag = [(SUCoreFSM *)self diag];
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    fsmName = [(SUCoreFSM *)self fsmName];
    summary = [alterationCopy summary];
    v27 = [v24 initWithFormat:@"FSM(%@) unsupported simulate action: %@", fsmName, summary];
    [diag trackAnomaly:@"[FSM] SIMULATE" forReason:v27 withResult:8113 withError:0];
  }
}

- (id)_acceptEvent:(id)event withInfo:(id)info issueType:(id)type attachedAction:(id *)action
{
  eventCopy = event;
  infoCopy = info;
  typeCopy = type;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (!eventCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    diag = [(SUCoreFSM *)self diag];
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName = [(SUCoreFSM *)self fullName];
    typeCopy = [v24 initWithFormat:@"FSM(%@) invalid %@ event", fullName, typeCopy];
    [diag trackFailure:@"[FSM] ACCEPT_EVENT" forReason:typeCopy withResult:8111 withError:0];
LABEL_12:
    v22 = 0;
LABEL_13:

    diag = 0;
    goto LABEL_14;
  }

  if (![(SUCoreFSM *)self isActive])
  {
    diag = [(SUCoreFSM *)self diag];
    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName = [(SUCoreFSM *)self fullName];
    typeCopy = [v26 initWithFormat:@"FSM(%@) not active at %@ event(%@)", fullName, typeCopy, eventCopy];
    [diag trackAnomaly:@"[FSM] ACCEPT_EVENT" forReason:typeCopy withResult:8111 withError:0];
    goto LABEL_12;
  }

  stateTable = [(SUCoreFSM *)self stateTable];
  currentState = [(SUCoreFSM *)self currentState];
  fullName = [stateTable safeDictionaryForKey:currentState fromBase:@"SUCoreFSM stateTable" withKeyDescription:@"current state"];

  diag = [fullName safeDictionaryForKey:eventCopy fromBase:@"SUCoreFSM eventsForState" withKeyDescription:@"FSM event"];
  v40 = infoCopy;
  if (!fullName)
  {
    typeCopy = [(SUCoreFSM *)self diag];
    v27 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName2 = [(SUCoreFSM *)self fullName];
    currentState2 = [(SUCoreFSM *)self currentState];
    stateTable2 = [(SUCoreFSM *)self stateTable];
    v31 = [v27 initWithFormat:@"FSM(%@) current state(%@) does not exist in state table when checking %@ event(%@) table:\n%@", fullName2, currentState2, typeCopy, eventCopy, stateTable2];
    [typeCopy trackAnomaly:@"[FSM] ACCEPT_EVENT" forReason:v31 withResult:8500 withError:0];

LABEL_20:
    v22 = 0;
LABEL_27:
    infoCopy = v40;
    goto LABEL_13;
  }

  if (!diag)
  {
    typeCopy = [(SUCoreFSM *)self diag];
    v32 = objc_alloc(MEMORY[0x1E696AEC0]);
    fullName2 = [(SUCoreFSM *)self fullName];
    currentState2 = [(SUCoreFSM *)self currentState];
    stateTable2 = [v32 initWithFormat:@"FSM(%@) current state(%@) does not support %@ event(%@)", fullName2, currentState2, typeCopy, eventCopy];
    [typeCopy trackAnomaly:@"[FSM] ACCEPT_EVENT" forReason:stateTable2 withResult:8501 withError:0];
    goto LABEL_20;
  }

  registeredActionTable = [(SUCoreFSM *)self registeredActionTable];
  currentState3 = [(SUCoreFSM *)self currentState];
  typeCopy = [registeredActionTable safeDictionaryForKey:currentState3 fromBase:@"SUCoreFSM registeredActionTable" withKeyDescription:@"current state"];

  v21 = [typeCopy safeObjectForKey:eventCopy ofClass:objc_opt_class()];
  v22 = v21;
  infoCopy = v40;
  if (v40)
  {
    if (v21)
    {
      if (![v21 eventInfoClass])
      {
        v23 = @"FSM(%@) event info provided when registered handler is not expecting any event info parameter: %@ event(%@) in state(%@)";
        goto LABEL_26;
      }

      [v22 eventInfoClass];
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = @"FSM(%@) event info Class mismatch (eventInfo of diff Class than registered): %@ event(%@) in state(%@)";
LABEL_26:
        v39 = v23;
        diag2 = [(SUCoreFSM *)self diag];
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        fullName3 = [(SUCoreFSM *)self fullName];
        currentState4 = [(SUCoreFSM *)self currentState];
        v37 = [v34 initWithFormat:v39, fullName3, typeCopy, eventCopy, currentState4];
        [diag2 trackAnomaly:@"[FSM] ACCEPT_EVENT" forReason:v37 withResult:8112 withError:0];

        goto LABEL_27;
      }
    }
  }

  else if (v21 && [v21 eventInfoClass])
  {
    v23 = @"FSM(%@) event info Class mismatch (nil eventInfo when registered handler expecting non-nil): %@ event(%@) in state(%@)";
    goto LABEL_26;
  }

  v33 = v22;
  *action = v22;
LABEL_14:

  return diag;
}

- (void)_performEvent:(id)event withInfo:(id)info issueType:(id)type forCell:(id)cell attachedAction:(id)action checkingAttached:(BOOL)attached
{
  attachedCopy = attached;
  eventCopy = event;
  infoCopy = info;
  typeCopy = type;
  cellCopy = cell;
  actionCopy = action;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreFSM *)self _trackEventOccurrence:eventCopy withInfo:infoCopy issueType:typeCopy];
  currentState = [(SUCoreFSM *)self currentState];
  v20 = [cellCopy safeStringForKey:@"FSMNextState"];
  if (v20)
  {
    [(SUCoreFSM *)self setCurrentState:v20];
  }

  if ([eventCopy isEqualToString:@"Teardown"])
  {
    [(SUCoreFSM *)self setIsActive:0];
  }

  if (attachedCopy)
  {
    [cellCopy safeStringForKey:@"FSMAction"];
  }

  else
  {
    [actionCopy fsmAction];
  }
  v21 = ;
  diag = [(SUCoreFSM *)self diag];
  fullName = [(SUCoreFSM *)self fullName];
  [diag trackStateEvent:fullName previousState:currentState handlingEvent:eventCopy nextState:v20 performingAction:v21 withInfo:infoCopy];

  if (actionCopy | v21)
  {
    if (actionCopy && v21 && ([actionCopy fsmAction], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v21, "isEqualToString:", v24), v24, v25))
    {
      [(SUCoreFSM *)self _triggerAction:v21 usingAttached:actionCopy onEvent:eventCopy inState:currentState withInfo:infoCopy nextState:v20];
    }

    else
    {
      [(SUCoreFSM *)self diag];
      v26 = v33 = currentState;
      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
      [(SUCoreFSM *)self fullName];
      v34 = cellCopy;
      v29 = v28 = typeCopy;
      currentState2 = [(SUCoreFSM *)self currentState];
      fsmAction = [actionCopy fsmAction];
      v32 = [v27 initWithFormat:@"FSM(%@) event where action indicated (but table / registration mismatch) %@ event(%@) in state(%@) action(%@)!=attached(%@)", v29, v28, eventCopy, currentState2, v21, fsmAction];
      [v26 trackAnomaly:@"[FSM] PERFORM_EVENT" forReason:v32 withResult:8112 withError:0];

      typeCopy = v28;
      cellCopy = v34;

      currentState = v33;
    }
  }
}

- (void)_trackEventOccurrence:(id)occurrence withInfo:(id)info issueType:(id)type
{
  occurrenceCopy = occurrence;
  typeCopy = type;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  usageTable = [(SUCoreFSM *)self usageTable];

  if (!usageTable)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(SUCoreFSM *)self setUsageTable:v10];
  }

  usageTable2 = [(SUCoreFSM *)self usageTable];

  if (!usageTable2)
  {
    goto LABEL_8;
  }

  usageTable3 = [(SUCoreFSM *)self usageTable];
  currentState = [(SUCoreFSM *)self currentState];
  v14 = [usageTable3 safeDictionaryForKey:currentState fromBase:typeCopy withKeyDescription:@"current state"];

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    usageTable4 = [(SUCoreFSM *)self usageTable];
    currentState2 = [(SUCoreFSM *)self currentState];
    [usageTable4 setSafeObject:v14 forKey:currentState2];

    if (!v14)
    {
LABEL_8:
      [(SUCoreFSM *)self setUntrackedOccurrences:[(SUCoreFSM *)self untrackedOccurrences]+ 1];
      goto LABEL_17;
    }
  }

  v17 = [v14 safeDictionaryForKey:occurrenceCopy fromBase:typeCopy withKeyDescription:@"FSM event"];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setSafeObject:v18 forKey:occurrenceCopy];
    if (!v18)
    {
      [(SUCoreFSM *)self setUntrackedOccurrences:[(SUCoreFSM *)self untrackedOccurrences]+ 1];
      goto LABEL_16;
    }
  }

  v19 = [v18 safeObjectForKey:@"FSMOccurrences" ofClass:objc_opt_class()];
  if (!v19)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:1];
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_14:
    [(SUCoreFSM *)self setUntrackedOccurrences:[(SUCoreFSM *)self untrackedOccurrences]+ 1];
    goto LABEL_15;
  }

  v20 = v19;
  unsignedLongLongValue = [v19 unsignedLongLongValue];
  v22 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:unsignedLongLongValue + 1];

  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_12:
  [v18 setSafeObject:v22 forKey:@"FSMOccurrences"];
LABEL_15:

LABEL_16:
LABEL_17:
}

- (void)_triggerAction:(id)action usingAttached:(id)attached onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState
{
  nextStateCopy = nextState;
  infoCopy = info;
  stateCopy = state;
  eventCopy = event;
  attachedCopy = attached;
  actionCopy = action;
  extendedStateQueue = [(SUCoreFSM *)self extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  fullName = [(SUCoreFSM *)self fullName];
  actionCopy = [v21 initWithFormat:@"[FSM] ACTION: FSM(%@), action(%@)", fullName, actionCopy];

  v24 = +[SUCoreDiag sharedDiag];
  [v24 trackBegin:actionCopy atLevel:0];

  actionDelegate = [attachedCopy actionDelegate];

  v29 = 0;
  v26 = [actionDelegate performAction:actionCopy onEvent:eventCopy inState:stateCopy withInfo:infoCopy nextState:nextStateCopy error:&v29];

  v27 = v29;
  v28 = +[SUCoreDiag sharedDiag];
  [v28 trackEnd:actionCopy atLevel:0 withResult:v26 withError:v27];
}

@end