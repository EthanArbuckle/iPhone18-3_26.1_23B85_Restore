@interface SBHIDEventDispatchController
+ (id)sharedInstance;
+ (id)symbolicDeferringTokenForKeyboardFocus;
+ (id)symbolicDeferringTokenForSystemGesturesInDisplayConfiguration:(id)a3;
+ (id)symbolicDeferringTokenForSystemGesturesOnMainDisplay;
- (SBHIDEventDispatchController)init;
- (id)_keyCommandDispatchingRule;
- (id)configureDispatchRootsForChamoisDisplay:(id)a3;
- (id)configureDispatchRootsForContinuityDisplay:(id)a3;
- (id)dispatchKeyboardUsagesToSystemEnvironment:(id)a3 reason:(id)a4;
- (void)_resetMainDeliveryRoot;
@end

@implementation SBHIDEventDispatchController

+ (id)symbolicDeferringTokenForKeyboardFocus
{
  if (symbolicDeferringTokenForKeyboardFocus_onceToken != -1)
  {
    +[SBHIDEventDispatchController symbolicDeferringTokenForKeyboardFocus];
  }

  v3 = symbolicDeferringTokenForKeyboardFocus_token;

  return v3;
}

void __70__SBHIDEventDispatchController_symbolicDeferringTokenForKeyboardFocus__block_invoke()
{
  v0 = [MEMORY[0x277CF0650] tokenForString:@"SBKeyboardFocus"];
  v1 = symbolicDeferringTokenForKeyboardFocus_token;
  symbolicDeferringTokenForKeyboardFocus_token = v0;
}

+ (id)symbolicDeferringTokenForSystemGesturesInDisplayConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isMainDisplay])
  {
    v7 = MEMORY[0x277CF0650];
    v8 = [v5 hardwareIdentifier];
    v9 = [@"SBExternalDisplaySystemGestures-" stringByAppendingString:v8];
    v6 = [v7 tokenForString:v9];
  }

  else
  {
    v6 = [a1 symbolicDeferringTokenForSystemGesturesOnMainDisplay];
  }

  return v6;
}

+ (id)symbolicDeferringTokenForSystemGesturesOnMainDisplay
{
  if (symbolicDeferringTokenForSystemGesturesOnMainDisplay_onceToken != -1)
  {
    +[SBHIDEventDispatchController symbolicDeferringTokenForSystemGesturesOnMainDisplay];
  }

  v3 = symbolicDeferringTokenForSystemGesturesOnMainDisplay_token;

  return v3;
}

void __84__SBHIDEventDispatchController_symbolicDeferringTokenForSystemGesturesOnMainDisplay__block_invoke()
{
  v0 = [MEMORY[0x277CF0650] tokenForString:@"SBMainSystemGestures"];
  v1 = symbolicDeferringTokenForSystemGesturesOnMainDisplay_token;
  symbolicDeferringTokenForSystemGesturesOnMainDisplay_token = v0;
}

- (id)_keyCommandDispatchingRule
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CF0690];
  v4 = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
  v5 = [v3 targetForDeferringEnvironment:v4];
  keyboardFocusDispatchingTarget = self->_keyboardFocusDispatchingTarget;
  v11[1] = v5;
  v11[2] = keyboardFocusDispatchingTarget;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];

  v8 = objc_opt_new();
  [v8 setDisplays:0];
  v9 = [MEMORY[0x277CF06B0] ruleForDispatchingKeyCommandsMatchingPredicate:v8 toTargets:v7];

  return v9;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_44 != -1)
  {
    +[SBHIDEventDispatchController sharedInstance];
  }

  v3 = sharedInstance_controller;

  return v3;
}

void __46__SBHIDEventDispatchController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBHIDEventDispatchController);
  v1 = sharedInstance_controller;
  sharedInstance_controller = v0;
}

- (SBHIDEventDispatchController)init
{
  v100[11] = *MEMORY[0x277D85DE8];
  v97.receiver = self;
  v97.super_class = SBHIDEventDispatchController;
  v2 = [(SBHIDEventDispatchController *)&v97 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CF0668] sharedInstance];
    deliveryManager = v2->_deliveryManager;
    v2->_deliveryManager = v3;

    v5 = MEMORY[0x277CF0690];
    v6 = +[SBHIDEventDispatchController symbolicDeferringTokenForSystemGesturesOnMainDisplay];
    v7 = [v5 systemTargetWithDeferringToken:v6];
    mainSystemDispatchingTarget = v2->_mainSystemDispatchingTarget;
    v2->_mainSystemDispatchingTarget = v7;

    v9 = MEMORY[0x277CF0690];
    v10 = +[SBHIDEventDispatchController symbolicDeferringTokenForKeyboardFocus];
    v11 = [v9 keyboardFocusTargetWithDeferringToken:v10];
    keyboardFocusDispatchingTarget = v2->_keyboardFocusDispatchingTarget;
    v2->_keyboardFocusDispatchingTarget = v11;

    v13 = v2->_mainSystemDispatchingTarget;
    v14 = MEMORY[0x277CF0690];
    v15 = MEMORY[0x277CF0628];
    v16 = v2->_keyboardFocusDispatchingTarget;
    v17 = v13;
    v18 = [v15 ui_cameraCaptureButtonEnvironment];
    v19 = [v14 targetForDeferringEnvironment:v18];

    LODWORD(v18) = _os_feature_enabled_impl();
    v20 = _SBHIDMediaKeyEventDescriptorSet();
    v21 = v20;
    if (v18)
    {
      v22 = objc_alloc_init(MEMORY[0x277CF0750]);
      v23 = [MEMORY[0x277CF06D0] build:&__block_literal_global_109_0];
      v24 = [MEMORY[0x277CBEB98] setWithObject:v23];
      [v22 setSenderDescriptors:v24];

      v25 = v22;
      [v22 setDescriptors:v21];
    }

    else
    {
      v25 = _SBHIDDispatchPredicateFromAnyService(v20);
    }

    v86 = v25;

    v96 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v25 toTarget:v17];
    v26 = MEMORY[0x277CBEB98];
    v27 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:547];
    v28 = [v26 setWithObject:v27];

    v89 = _SBHIDDispatchPredicateFromHardwareType(v28, 4);

    v95 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v89 toTarget:v16];
    v29 = MEMORY[0x277CBEB98];
    v76 = v16;
    v30 = [MEMORY[0x277CF0680] descriptorWithEventType:42];
    v31 = [v29 setWithObject:v30];

    v88 = _SBHIDDispatchPredicateFromAnyService(v31);

    v93 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v88 toTarget:v17];
    v80 = v19;
    v94 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v88 toTarget:v19];
    v32 = MEMORY[0x277CBEB98];
    v33 = [MEMORY[0x277CF06A0] descriptorWithGenericGestureType:5];
    v34 = [v32 setWithObject:v33];

    v87 = _SBHIDDispatchPredicateFromAnyService(v34);

    v92 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v87 toTarget:v17];
    v35 = MEMORY[0x277CBEB98];
    v36 = [MEMORY[0x277CF06B8] descriptorWithPage:11 usage:47];
    v37 = [v35 setWithObject:v36];

    v85 = _SBHIDDispatchPredicateFromAnyService(v37);

    v91 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v85 toTarget:v17];
    v84 = _SBHIDTrackpadPredicate();
    v90 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v84 toTarget:v17];
    v38 = MEMORY[0x277CBEB98];
    v39 = [MEMORY[0x277CF0698] builtinDisplay];
    v40 = [MEMORY[0x277CF0698] nullDisplay];
    v83 = [v38 setWithObjects:{v39, v40, 0}];

    v41 = _SBHIDSendersForDisplays(v83);
    [MEMORY[0x277CF0750] defaultSystemPredicate];
    v82 = v81 = v41;
    [v82 setSenderDescriptors:v41];
    v75 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v82 toTarget:v17];
    v79 = [MEMORY[0x277CF0750] defaultFocusPredicate];
    [v79 setSenderDescriptors:v41];
    v74 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v79 toTarget:v16];
    v42 = MEMORY[0x277CBEB98];
    v43 = [MEMORY[0x277CF0680] descriptorWithEventType:16];
    v44 = [v42 setWithObject:v43];

    v78 = _SBHIDDispatchPredicateFromHardwareType(v44, 1);

    v73 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v78 toTarget:v17];
    v45 = MEMORY[0x277CBEB98];
    v46 = [MEMORY[0x277CF06E8] descriptorWithPage:65280 usage:89];
    v47 = [v45 setWithObject:v46];

    v77 = _SBHIDDispatchPredicateFromHardwareType(v47, 1);

    v72 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v77 toTarget:v17];
    v48 = MEMORY[0x277CBEB98];
    v49 = [MEMORY[0x277CF06E8] descriptorWithPage:65344 usage:1];
    v50 = [v48 setWithObject:v49];

    v51 = _SBHIDDispatchPredicateFromAnyService(v50);

    v52 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v51 toTarget:v17];
    v100[0] = v91;
    v100[1] = v90;
    v100[2] = v96;
    v100[3] = v95;
    v100[4] = v92;
    v100[5] = v93;
    v100[6] = v73;
    v100[7] = v72;
    v100[8] = v52;
    v100[9] = v75;
    v100[10] = v74;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:11];
    dispatchingRulesForMainRoot = v2->_dispatchingRulesForMainRoot;
    v2->_dispatchingRulesForMainRoot = v53;

    [(SBHIDEventDispatchController *)v2 _resetMainDeliveryRoot];
    v55 = v2->_deliveryManager;
    v99 = v94;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    v57 = [(BKSHIDEventDeliveryManager *)v55 dispatchDiscreteEventsForReason:@"SB-CaptureButton" withRules:v56];
    dispatchingAssertionForCaptureButton = v2->_dispatchingAssertionForCaptureButton;
    v2->_dispatchingAssertionForCaptureButton = v57;

    v59 = MEMORY[0x277CBEB98];
    v60 = [MEMORY[0x277CF06B8] descriptorWithPage:12 usage:207];
    v61 = [v59 setWithObject:v60];

    v62 = _SBHIDDispatchPredicateFromHardwareType(v61, 3);

    v63 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v62 toTarget:v76];
    v64 = v2->_deliveryManager;
    v98 = v63;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
    v66 = [(BKSHIDEventDeliveryManager *)v64 dispatchDiscreteEventsForReason:@"SB-VoiceCommand" withRules:v65];
    dispatchingAssertionForVoiceCommand = v2->_dispatchingAssertionForVoiceCommand;
    v2->_dispatchingAssertionForVoiceCommand = v66;

    v68 = [(SBHIDEventDispatchController *)v2 _keyCommandDispatchingRule];
    v69 = [(BKSHIDEventDeliveryManager *)v2->_deliveryManager dispatchKeyCommandsForReason:@"SB-KeyCommands" withRule:v68];
    keyCommandDispatchingAssertion = v2->_keyCommandDispatchingAssertion;
    v2->_keyCommandDispatchingAssertion = v69;
  }

  return v2;
}

- (id)configureDispatchRootsForChamoisDisplay:(id)a3
{
  v5 = a3;
  v6 = [v5 hardwareIdentifier];
  if (!v6)
  {
    [SBHIDEventDispatchController configureDispatchRootsForChamoisDisplay:a2];
  }

  v7 = v6;
  v8 = MEMORY[0x277CF0690];
  v9 = [SBHIDEventDispatchController symbolicDeferringTokenForSystemGesturesInDisplayConfiguration:v5];
  v10 = [v8 systemTargetWithDeferringToken:v9];

  v11 = MEMORY[0x277CBEB98];
  v12 = [MEMORY[0x277CF0698] displayWithHardwareIdentifier:v7];
  v13 = [v11 setWithObject:v12];

  v14 = _SBHIDSendersForDisplays(v13);
  v15 = _SBHIDTrackpadPredicate();
  [v15 setSenderDescriptors:v14];
  v16 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v15 toTarget:v10];
  chamoisTrackpadRule = self->_chamoisTrackpadRule;
  self->_chamoisTrackpadRule = v16;

  v18 = [(NSArray *)self->_dispatchingRulesForMainRoot mutableCopy];
  [v18 insertObject:self->_chamoisTrackpadRule atIndex:0];
  v19 = [v18 copy];
  dispatchingRulesForMainRoot = self->_dispatchingRulesForMainRoot;
  self->_dispatchingRulesForMainRoot = v19;

  [(SBHIDEventDispatchController *)self _resetMainDeliveryRoot];
  v21 = objc_alloc(MEMORY[0x277CF0CE8]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__SBHIDEventDispatchController_configureDispatchRootsForChamoisDisplay___block_invoke;
  v24[3] = &unk_2783A8A98;
  v24[4] = self;
  v22 = [v21 initWithIdentifier:@"SBChamoisTrackpadRule" forReason:@"trackpad rule for chamois" invalidationBlock:v24];

  return v22;
}

void __72__SBHIDEventDispatchController_configureDispatchRootsForChamoisDisplay___block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 72) mutableCopy];
  [v7 removeObject:*(*(a1 + 32) + 64)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = [v7 copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;

  [*(a1 + 32) _resetMainDeliveryRoot];
}

- (id)configureDispatchRootsForContinuityDisplay:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 hardwareIdentifier];
  if (!v6)
  {
    [SBHIDEventDispatchController configureDispatchRootsForContinuityDisplay:a2];
  }

  v7 = v6;
  v8 = MEMORY[0x277CF0690];
  v9 = [SBHIDEventDispatchController symbolicDeferringTokenForSystemGesturesInDisplayConfiguration:v5];
  v24 = [v8 systemTargetWithDeferringToken:v9];

  v10 = MEMORY[0x277CBEB98];
  v11 = MEMORY[0x277CF0698];
  v12 = self->_keyboardFocusDispatchingTarget;
  v13 = [v11 displayWithHardwareIdentifier:v7];
  v14 = [v10 setWithObject:v13];

  v15 = _SBHIDSendersForDisplays(v14);
  v25 = v5;
  v16 = [MEMORY[0x277CF0750] defaultSystemPredicate];
  [v16 setSenderDescriptors:v15];
  v17 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v16 toTarget:v24];
  v18 = [MEMORY[0x277CF0750] defaultFocusPredicate];
  [v18 setSenderDescriptors:v15];
  v19 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v18 toTarget:v12];
  deliveryManager = self->_deliveryManager;
  v26[0] = v17;
  v26[1] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v22 = [(BKSHIDEventDeliveryManager *)deliveryManager dispatchDiscreteEventsForReason:@"SB-Continuity" withRules:v21];

  return v22;
}

- (id)dispatchKeyboardUsagesToSystemEnvironment:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  overrideKeyboardUsagesForSystemEnvironment = self->_overrideKeyboardUsagesForSystemEnvironment;
  if (!overrideKeyboardUsagesForSystemEnvironment)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81__SBHIDEventDispatchController_dispatchKeyboardUsagesToSystemEnvironment_reason___block_invoke;
    v13[3] = &unk_2783BB090;
    v13[4] = self;
    v9 = [MEMORY[0x277CF0BD0] assertionWithIdentifier:@"overrideKeyboardUsagesForSystemEnvironment" stateDidChangeHandler:v13];
    v10 = self->_overrideKeyboardUsagesForSystemEnvironment;
    self->_overrideKeyboardUsagesForSystemEnvironment = v9;

    overrideKeyboardUsagesForSystemEnvironment = self->_overrideKeyboardUsagesForSystemEnvironment;
  }

  v11 = [(BSCompoundAssertion *)overrideKeyboardUsagesForSystemEnvironment acquireForReason:v7 withContext:v6];

  return v11;
}

- (void)_resetMainDeliveryRoot
{
  v2 = self;
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(BKSHIDEventDeliveryManager *)self->_deliveryManager transactionAssertionWithReason:@"_resetMainDeliveryRoot"];
  [(BSInvalidatable *)v2->_dispatchingAssertion invalidate];
  dispatchingAssertion = v2->_dispatchingAssertion;
  v2->_dispatchingAssertion = 0;

  if (v2->_overrideKeyboardUsagesRule)
  {
    v5 = [(NSArray *)v2->_dispatchingRulesForMainRoot mutableCopy];
    [v5 removeObject:v2->_overrideKeyboardUsagesRule];
    v6 = [v5 copy];
    dispatchingRulesForMainRoot = v2->_dispatchingRulesForMainRoot;
    v2->_dispatchingRulesForMainRoot = v6;

    overrideKeyboardUsagesRule = v2->_overrideKeyboardUsagesRule;
    v2->_overrideKeyboardUsagesRule = 0;
  }

  if ([(BSCompoundAssertion *)v2->_overrideKeyboardUsagesForSystemEnvironment isActive])
  {
    v28 = objc_alloc_init(MEMORY[0x277CF0750]);
    [v28 setSenderDescriptors:0];
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v2;
    obj = [(BSCompoundAssertion *)v2->_overrideKeyboardUsagesForSystemEnvironment orderedContext];
    v10 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v32;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v32 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = [MEMORY[0x277CF06B8] descriptorWithPage:7 usage:{objc_msgSend(*(*(&v31 + 1) + 8 * j), "unsignedIntValue")}];
                [v9 addObject:v20];
              }

              v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v17);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    [v28 setDescriptors:v9];
    v2 = v29;
    v21 = [MEMORY[0x277CF0688] ruleForDispatchingDiscreteEventsMatchingPredicate:v28 toTarget:v29->_mainSystemDispatchingTarget];
    v22 = v29->_overrideKeyboardUsagesRule;
    v29->_overrideKeyboardUsagesRule = v21;

    v23 = [(NSArray *)v29->_dispatchingRulesForMainRoot mutableCopy];
    [v23 insertObject:v29->_overrideKeyboardUsagesRule atIndex:0];
    v24 = [v23 copy];
    v25 = v29->_dispatchingRulesForMainRoot;
    v29->_dispatchingRulesForMainRoot = v24;
  }

  v26 = [(BKSHIDEventDeliveryManager *)v2->_deliveryManager dispatchDiscreteEventsForReason:@"SB-Default" withRules:v2->_dispatchingRulesForMainRoot];
  v27 = v2->_dispatchingAssertion;
  v2->_dispatchingAssertion = v26;

  [v3 invalidate];
}

- (void)configureDispatchRootsForChamoisDisplay:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"hardwareIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBHIDEventDispatchController.m";
    v9 = 1024;
    v10 = 370;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configureDispatchRootsForContinuityDisplay:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"hardwareIdentifier"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBHIDEventDispatchController.m";
    v9 = 1024;
    v10 = 401;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end