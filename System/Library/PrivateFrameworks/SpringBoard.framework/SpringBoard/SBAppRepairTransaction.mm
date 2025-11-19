@interface SBAppRepairTransaction
- (SBAppRepairTransaction)initWithApplicationInfos:(id)a3;
- (void)_begin;
- (void)_completeRequest:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_didComplete;
- (void)_evaluateCompletion;
- (void)_startAppRepairs;
- (void)dealloc;
@end

@implementation SBAppRepairTransaction

- (SBAppRepairTransaction)initWithApplicationInfos:(id)a3
{
  v4 = a3;
  v5 = [(SBTransaction *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    appInfos = v5->_appInfos;
    v5->_appInfos = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    repairRequests = v5->_repairRequests;
    v5->_repairRequests = v8;

    v10 = objc_alloc(MEMORY[0x277D6BB90]);
    v11 = [SBApp systemStatusServer];
    v12 = [v10 initWithServerHandle:v11];
    telephonyDomain = v5->_telephonyDomain;
    v5->_telephonyDomain = v12;
  }

  return v5;
}

- (void)dealloc
{
  [(STTelephonyStatusDomain *)self->_telephonyDomain invalidate];
  v3.receiver = self;
  v3.super_class = SBAppRepairTransaction;
  [(SBAppRepairTransaction *)&v3 dealloc];
}

- (void)_begin
{
  [SBApp noteKeybagRefetchTransactionIsActive:1];
  v3 = +[SBTelephonyManager sharedTelephonyManager];
  v4 = [(STTelephonyStatusDomain *)self->_telephonyDomain data];
  v5 = [v4 primarySIMInfo];
  v6 = [v5 dataNetworkType];

  if (v6 || ([v3 hasNonCellularNetworkConnection] & 1) != 0)
  {
    [(SBAppRepairTransaction *)self _startAppRepairs];
  }

  else
  {
    [(SBAppRepairTransaction *)self _failWithReason:@"appRepairRequiresNetwork" description:@"no data connection"];
  }

  v7.receiver = self;
  v7.super_class = SBAppRepairTransaction;
  [(SBAppRepairTransaction *)&v7 _begin];
}

- (void)_didComplete
{
  [(NSMutableSet *)self->_repairRequests removeAllObjects];
  [SBApp noteKeybagRefetchTransactionIsActive:0];
  v3.receiver = self;
  v3.super_class = SBAppRepairTransaction;
  [(SBAppRepairTransaction *)&v3 _didComplete];
}

- (void)_evaluateCompletion
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__SBAppRepairTransaction__evaluateCompletion__block_invoke;
  v2[3] = &unk_2783ACE58;
  v2[4] = self;
  [(SBAppRepairTransaction *)self evaluateMilestone:@"appRepair" withEvaluator:v2];
}

- (void)_completeRequest:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  if (!a4)
  {
    [(SBAppRepairTransaction *)self _failWithReason:@"appRepairFailed" description:@"refetch request failed" precipitatingError:a5];
  }

  [(NSMutableSet *)self->_repairRequests removeObject:v8];
  [(SBAppRepairTransaction *)self _evaluateCompletion];
}

- (void)_startAppRepairs
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = self->_appInfos;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = [v8 purchaserDSID];
        if (v9)
        {
          v10 = objc_alloc(MEMORY[0x277CEC478]);
          v11 = [v8 bundleIdentifier];
          v12 = [v10 initWithBundleID:v11 accountIdentifier:v9 claimStyle:{objc_msgSend(v8, "type") == 2}];

          [v12 setExitReason:16];
          if (v12)
          {
            [(NSMutableSet *)self->_repairRequests addObject:v12];
          }
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  [(SBAppRepairTransaction *)self addMilestone:@"appRepair"];
  if (![(NSMutableSet *)self->_repairRequests count])
  {
    v13 = [objc_alloc(MEMORY[0x277CEC478]) initWithBundleID:0 accountIdentifier:0 claimStyle:1];
    if (v13)
    {
      [(NSMutableSet *)self->_repairRequests addObject:v13];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_repairRequests;
  v14 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        if ([(SBAppRepairTransaction *)self isAuditHistoryEnabled])
        {
          v19 = [v18 bundleID];
          v20 = [v18 accountDSID];
          [(SBAppRepairTransaction *)self _addAuditHistoryItem:@"Running app repair request %p for %@ (%@).", v18, v19, v20];
        }

        v21 = [MEMORY[0x277CEC480] defaultService];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __42__SBAppRepairTransaction__startAppRepairs__block_invoke;
        v23[3] = &unk_2783A9D60;
        v23[4] = self;
        v23[5] = v18;
        [v21 repairAppWithOptions:v18 replyHandler:v23];
      }

      v15 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  [(SBAppRepairTransaction *)self _evaluateCompletion];
}

void __42__SBAppRepairTransaction__startAppRepairs__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__SBAppRepairTransaction__startAppRepairs__block_invoke_2;
  v9[3] = &unk_2783A9D10;
  v10 = *(a1 + 32);
  v12 = a2;
  v11 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

uint64_t __42__SBAppRepairTransaction__startAppRepairs__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isAuditHistoryEnabled])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = NSStringFromBOOL();
    [v2 _addAuditHistoryItem:{@"Got response for request %p with success: %@.", v3, v4}];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);

  return [v5 _completeRequest:v6 success:v7 error:v8];
}

@end