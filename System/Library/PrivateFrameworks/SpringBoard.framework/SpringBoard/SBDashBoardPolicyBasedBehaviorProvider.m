@interface SBDashBoardPolicyBasedBehaviorProvider
- (NSString)coverSheetIdentifier;
- (SBDashBoardPolicyBasedBehaviorProvider)initWithCoverSheetViewController:(id)a3 policyAggregator:(id)a4;
- (unint64_t)_restrictedCapability:(unint64_t)a3 forAggregatorCapability:(int64_t)a4;
- (unint64_t)restrictedCapabilities;
- (void)dealloc;
@end

@implementation SBDashBoardPolicyBasedBehaviorProvider

- (unint64_t)restrictedCapabilities
{
  v3 = [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:4 forAggregatorCapability:10];
  v4 = [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:4 forAggregatorCapability:11]| v3;
  v5 = [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:0x8000000 forAggregatorCapability:12];
  v6 = v4 | v5 | [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:64 forAggregatorCapability:23];
  v7 = [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:128 forAggregatorCapability:21];
  v8 = v7 | [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:0x2000 forAggregatorCapability:26];
  v9 = v6 | v8 | [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:0x10000 forAggregatorCapability:22];
  v10 = [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:0x200000 forAggregatorCapability:27];
  v11 = v10 | [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:0x400000 forAggregatorCapability:21];
  return v9 | v11 | [(SBDashBoardPolicyBasedBehaviorProvider *)self _restrictedCapability:0x800000 forAggregatorCapability:28];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (SBDashBoardPolicyBasedBehaviorProvider)initWithCoverSheetViewController:(id)a3 policyAggregator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = SBDashBoardPolicyBasedBehaviorProvider;
  v9 = [(SBDashBoardPolicyBasedBehaviorProvider *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coverSheetViewController, a3);
    [(CSCoverSheetViewController *)v10->_coverSheetViewController registerExternalBehaviorProvider:v10];
    objc_storeStrong(&v10->_policyAggregator, a4);
    objc_initWeak(&location, v10);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SBDashBoardPolicyBasedBehaviorProvider_initWithCoverSheetViewController_policyAggregator___block_invoke;
    v15[3] = &unk_2783AFD98;
    objc_copyWeak(&v16, &location);
    v12 = [v11 addObserverForName:@"SBPolicyAggregatorCapabilitiesChangedNotification" object:v8 queue:0 usingBlock:v15];
    notificationToken = v10->_notificationToken;
    v10->_notificationToken = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __92__SBDashBoardPolicyBasedBehaviorProvider_initWithCoverSheetViewController_policyAggregator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[1] externalBehaviorProviderBehaviorChanged:WeakRetained];
}

- (void)dealloc
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalBehaviorProvider:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_notificationToken];

  v4.receiver = self;
  v4.super_class = SBDashBoardPolicyBasedBehaviorProvider;
  [(SBDashBoardPolicyBasedBehaviorProvider *)&v4 dealloc];
}

- (unint64_t)_restrictedCapability:(unint64_t)a3 forAggregatorCapability:(int64_t)a4
{
  if ([(SBMainDisplayPolicyAggregator *)self->_policyAggregator allowsCapability:a4])
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end