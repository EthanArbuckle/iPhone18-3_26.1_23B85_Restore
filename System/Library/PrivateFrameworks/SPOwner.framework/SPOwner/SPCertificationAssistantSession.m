@interface SPCertificationAssistantSession
+ (id)beaconsChanges:(id)a3;
- (SPCertificationAssistantSession)init;
- (void)registerSimpleBeaconInterfaceWithContext:(id)a3 collectionDifference:(id)a4 completion:(id)a5;
- (void)startUpdatingBeaconsWithContext:(id)a3 collectionDifference:(id)a4 completion:(id)a5;
- (void)stopUpdatingBeaconsWithCompletion:(id)a3;
@end

@implementation SPCertificationAssistantSession

- (SPCertificationAssistantSession)init
{
  v7.receiver = self;
  v7.super_class = SPCertificationAssistantSession;
  v2 = [(SPCertificationAssistantSession *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SPOwner.SPCertificationAssistantSession", v3);

    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)startUpdatingBeaconsWithContext:(id)a3 collectionDifference:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[SPCertificationAssistantSession startUpdatingBeaconsWithContext:collectionDifference:completion:]";
    _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12 = [(SPCertificationAssistantSession *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__SPCertificationAssistantSession_startUpdatingBeaconsWithContext_collectionDifference_completion___block_invoke;
  v17[3] = &unk_279B58E30;
  v17[4] = self;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  dispatch_async(v12, v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __99__SPCertificationAssistantSession_startUpdatingBeaconsWithContext_collectionDifference_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];

  if (v2)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SPOwner.SPCertificationAssistant.ErrorDomain" code:0 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);

    [v3 registerSimpleBeaconInterfaceWithContext:v4 collectionDifference:v5 completion:v6];
  }
}

- (void)stopUpdatingBeaconsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SPCertificationAssistantSession stopUpdatingBeaconsWithCompletion:]";
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(SPCertificationAssistantSession *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SPCertificationAssistantSession_stopUpdatingBeaconsWithCompletion___block_invoke;
  v9[3] = &unk_279B58B80;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __69__SPCertificationAssistantSession_stopUpdatingBeaconsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) simpleBeaconUpdateInterface];
  if (v2)
  {
    [*(a1 + 32) setSimpleBeaconUpdateInterface:0];
    [v2 stopUpdatingSimpleBeaconsWithCompletion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (id)beaconsChanges:(id)a3
{
  v3 = a3;
  v4 = [v3 insertions];
  v5 = [v3 removals];

  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = [v6 fm_map:&__block_literal_global_5];

  return v7;
}

id __50__SPCertificationAssistantSession_beaconsChanges___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SPCertificationAssistantBeacon alloc];
  v4 = [v2 object];
  v5 = [(SPCertificationAssistantBeacon *)v3 initWithInternalSimpleBeacon:v4];

  v6 = objc_alloc(MEMORY[0x277CCABE8]);
  v7 = [v2 changeType];
  v8 = [v2 index];

  v9 = [v6 initWithObject:v5 type:v7 index:v8];

  return v9;
}

SPCertificationAssistantBeacon *__50__SPCertificationAssistantSession_unifiedBeacons___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SPCertificationAssistantBeacon alloc] initWithInternalSimpleBeacon:v2];

  return v3;
}

- (void)registerSimpleBeaconInterfaceWithContext:(id)a3 collectionDifference:(id)a4 completion:(id)a5
{
  v8 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__SPCertificationAssistantSession_registerSimpleBeaconInterfaceWithContext_collectionDifference_completion___block_invoke;
  aBlock[3] = &unk_279B58E78;
  v15 = v8;
  v9 = v8;
  v10 = a5;
  v11 = a3;
  v12 = _Block_copy(aBlock);
  v13 = objc_opt_new();
  [v13 setSimpleBeaconDifferenceBlock:v12];
  [v13 startUpdatingSimpleBeaconsWithContext:v11 completion:v10];

  [(SPCertificationAssistantSession *)self setSimpleBeaconUpdateInterface:v13];
}

void __108__SPCertificationAssistantSession_registerSimpleBeaconInterfaceWithContext_collectionDifference_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v7 = [SPCertificationAssistantSession beaconsChanges:a2];
    v6 = [objc_alloc(MEMORY[0x277CCABF0]) initWithChanges:v7];
    (*(*(a1 + 32) + 16))();
  }
}

@end