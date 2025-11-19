@interface SPFirmwareUpdateSession
- (SPFirmwareUpdateSession)init;
- (id)proxy;
- (id)remoteInterface;
- (id)serviceDescription;
- (void)beaconsInFirmwareUpdateState:(int64_t)a3 dateInterval:(id)a4 completion:(id)a5;
- (void)candidateBeaconsWithCompletion:(id)a3;
- (void)connectionTokensForBeaconUUID:(id)a3 dateInterval:(id)a4 completion:(id)a5;
- (void)firmwareUpdateStateForBeaconUUID:(id)a3 completion:(id)a4;
- (void)initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:(id)a3;
- (void)updateBeaconUUID:(id)a3 firmwareUpdateState:(int64_t)a4 systemVersion:(id)a5 error:(id)a6 completion:(id)a7;
@end

@implementation SPFirmwareUpdateSession

- (SPFirmwareUpdateSession)init
{
  v7.receiver = self;
  v7.super_class = SPFirmwareUpdateSession;
  v2 = [(SPFirmwareUpdateSession *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchparty.firmwareupdatesession", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)candidateBeaconsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke;
  v6[3] = &unk_279B59718;
  v6[4] = self;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPFirmwareUpdateSession: Calling firmwareUpdateCandidateBeaconsWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke_2;
  block[3] = &unk_279B5A160;
  objc_copyWeak(&v6, a1 + 6);
  v3 = a1[5];
  block[4] = a1[4];
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained proxy];

  v4 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke_3;
  v14[3] = &unk_279B59D88;
  v15 = a1[5];
  v5 = [v4 addCompletionBlock:v14];
  v6 = [a1[4] sessionInvalidationFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke_4;
  v12[3] = &unk_279B5A110;
  v7 = v4;
  v13 = v7;
  v8 = [v6 addSuccessBlock:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke_5;
  v10[3] = &unk_279B5A138;
  v11 = v7;
  v9 = v7;
  [v3 firmwareUpdateCandidateBeaconsWithCompletion:v10];
}

void __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = a2;
  (*(*(a1 + 32) + 16))();
}

void __58__SPFirmwareUpdateSession_candidateBeaconsWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPFirmwareUpdate.ErrorDomain" code:2 userInfo:0];
  [v1 finishWithError:v2];
}

- (void)connectionTokensForBeaconUUID:(id)a3 dateInterval:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke;
  v14[3] = &unk_279B5A1D8;
  v14[4] = self;
  objc_copyWeak(&v18, &location);
  v16 = v9;
  v17 = v10;
  v15 = v8;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  _os_activity_initiate(&dword_2643D0000, "SPFirmwareUpdateSession: Calling commandKeysForUUIDs", OS_ACTIVITY_FLAG_DEFAULT, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_2;
  block[3] = &unk_279B5A1B0;
  objc_copyWeak(&v10, a1 + 8);
  v3 = a1[7];
  v6 = *(a1 + 2);
  v4 = *(&v6 + 1);
  *&v5 = a1[6];
  *(&v5 + 1) = v3;
  v8 = v6;
  v9 = v5;
  dispatch_async(v2, block);

  objc_destroyWeak(&v10);
}

void __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained proxy];

  v4 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_3;
  v17[3] = &unk_279B59D88;
  v18 = *(a1 + 56);
  v5 = [v4 addCompletionBlock:v17];
  v6 = [*(a1 + 32) sessionInvalidationFuture];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_4;
  v15[3] = &unk_279B5A110;
  v7 = v4;
  v16 = v7;
  v8 = [v6 addSuccessBlock:v15];

  v19[0] = *(a1 + 40);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_5;
  v13[3] = &unk_279B5A188;
  v14 = v7;
  v11 = v7;
  [v3 commandKeysForUUIDs:v9 dateInterval:v10 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = a2;
  (*(*(a1 + 32) + 16))();
}

void __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPFirmwareUpdate.ErrorDomain" code:2 userInfo:0];
  [v1 finishWithError:v2];
}

void __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_6;
  v6[3] = &unk_279B59EA0;
  v7 = v4;
  v5 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  [*(a1 + 32) finishWithResult:v5];
}

void __81__SPFirmwareUpdateSession_connectionTokensForBeaconUUID_dateInterval_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) addObjectsFromArray:v5];
}

- (void)updateBeaconUUID:(id)a3 firmwareUpdateState:(int64_t)a4 systemVersion:(id)a5 error:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke;
  v20[3] = &unk_279B5A278;
  v20[4] = self;
  objc_copyWeak(v25, &location);
  v25[1] = a4;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  _os_activity_initiate(&dword_2643D0000, "SPFirmwareUpdateSession: Calling updateBeaconUUID:firmwareUpdateState:systemVersion:error:completion:", OS_ACTIVITY_FLAG_DEFAULT, v20);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

void __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_2;
  block[3] = &unk_279B5A250;
  objc_copyWeak(v12, a1 + 9);
  v11 = a1[8];
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v12[1] = a1[10];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);

  objc_destroyWeak(v12);
}

void __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained proxy];

  v4 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_3;
  v18[3] = &unk_279B5A200;
  v19 = *(a1 + 64);
  v5 = [v4 addCompletionBlock:v18];
  v6 = [*(a1 + 32) sessionInvalidationFuture];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_4;
  v16[3] = &unk_279B5A110;
  v7 = v4;
  v17 = v7;
  v8 = [v6 addSuccessBlock:v16];

  v9 = *(a1 + 80);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_5;
  v14[3] = &unk_279B5A228;
  v15 = v7;
  v13 = v7;
  [v3 updateBeaconUUID:v10 firmwareUpdateState:v9 systemVersion:v11 error:v12 completion:v14];
}

uint64_t __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    [a2 BOOLValue];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPFirmwareUpdate.ErrorDomain" code:2 userInfo:0];
  [v1 finishWithError:v2];
}

void __95__SPFirmwareUpdateSession_updateBeaconUUID_firmwareUpdateState_systemVersion_error_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

- (void)beaconsInFirmwareUpdateState:(int64_t)a3 dateInterval:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke;
  v12[3] = &unk_279B5A2C8;
  v12[4] = self;
  objc_copyWeak(v15, &location);
  v15[1] = a3;
  v13 = v8;
  v14 = v9;
  v10 = v8;
  v11 = v9;
  _os_activity_initiate(&dword_2643D0000, "SPFirmwareUpdateSession: Calling beaconsInFirmwareUpdateState:since:completion:", OS_ACTIVITY_FLAG_DEFAULT, v12);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke_2;
  block[3] = &unk_279B5A2A0;
  objc_copyWeak(v9, (a1 + 56));
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  block[4] = v4;
  v9[1] = *(a1 + 64);
  v7 = v5;
  dispatch_async(v2, block);

  objc_destroyWeak(v9);
}

void __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained proxy];

  v4 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke_3;
  v16[3] = &unk_279B59D88;
  v17 = *(a1 + 48);
  v5 = [v4 addCompletionBlock:v16];
  v6 = [*(a1 + 32) sessionInvalidationFuture];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke_4;
  v14[3] = &unk_279B5A110;
  v7 = v4;
  v15 = v7;
  v8 = [v6 addSuccessBlock:v14];

  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke_5;
  v12[3] = &unk_279B5A138;
  v13 = v7;
  v11 = v7;
  [v3 beaconsInFirmwareUpdateState:v9 dateInterval:v10 completion:v12];
}

void __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = a2;
  (*(*(a1 + 32) + 16))();
}

void __80__SPFirmwareUpdateSession_beaconsInFirmwareUpdateState_dateInterval_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPFirmwareUpdate.ErrorDomain" code:2 userInfo:0];
  [v1 finishWithError:v2];
}

- (void)initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke;
  v6[3] = &unk_279B59718;
  v6[4] = self;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPFirmwareUpdateSession: Calling initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_2;
  block[3] = &unk_279B5A160;
  objc_copyWeak(&v6, a1 + 6);
  v3 = a1[5];
  block[4] = a1[4];
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained proxy];

  v4 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_3;
  v14[3] = &unk_279B5A200;
  v15 = a1[5];
  v5 = [v4 addCompletionBlock:v14];
  v6 = [a1[4] sessionInvalidationFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_4;
  v12[3] = &unk_279B5A110;
  v7 = v4;
  v13 = v7;
  v8 = [v6 addSuccessBlock:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_5;
  v10[3] = &unk_279B5A228;
  v11 = v7;
  v9 = v7;
  [v3 initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion:v10];
}

uint64_t __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    [a2 BOOLValue];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPFirmwareUpdate.ErrorDomain" code:2 userInfo:0];
  [v1 finishWithError:v2];
}

void __85__SPFirmwareUpdateSession_initiateFirmwareUpdateForAllEligibleBeaconsWithCompletion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

- (void)firmwareUpdateStateForBeaconUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke;
  activity_block[3] = &unk_279B5A368;
  activity_block[4] = self;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  _os_activity_initiate(&dword_2643D0000, "SPFirmwareUpdateSession: Calling firmwareUpdateStateForBeaconUUID:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke_2;
  v6[3] = &unk_279B5A340;
  objc_copyWeak(&v9, (a1 + 56));
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v6[4] = v4;
  v7 = v5;
  dispatch_async(v2, v6);

  objc_destroyWeak(&v9);
}

void __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained proxy];

  v4 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke_3;
  v15[3] = &unk_279B5A2F0;
  v16 = *(a1 + 48);
  v5 = [v4 addCompletionBlock:v15];
  v6 = [*(a1 + 32) sessionInvalidationFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke_4;
  v13[3] = &unk_279B5A110;
  v7 = v4;
  v14 = v7;
  v8 = [v6 addSuccessBlock:v13];

  v9 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke_5;
  v11[3] = &unk_279B5A318;
  v12 = v7;
  v10 = v7;
  [v3 firmwareUpdateStateForBeaconUUID:v9 completion:v11];
}

void __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = objc_opt_new();
  [v6 setState:-1];
  (*(*(a1 + 32) + 16))();
}

void __71__SPFirmwareUpdateSession_firmwareUpdateStateForBeaconUUID_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPFirmwareUpdate.ErrorDomain" code:2 userInfo:0];
  [v1 finishWithError:v2];
}

- (id)proxy
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SPFirmwareUpdateSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SPFirmwareUpdateSession *)self session];

  if (!v4)
  {
    v5 = [(SPFirmwareUpdateSession *)self serviceDescription];
    v6 = [objc_alloc(MEMORY[0x277D07BA8]) initWithServiceDescription:v5];
    [(SPFirmwareUpdateSession *)self setSession:v6];

    v7 = LogCategory_FirmwareUpdate();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 machService];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPFirmwareUpdateSession: Establishing XPC connection to %@", &v14, 0xCu);
    }

    v9 = [(SPFirmwareUpdateSession *)self session];
    [v9 resume];
  }

  v10 = [(SPFirmwareUpdateSession *)self session];
  v11 = [v10 proxy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)serviceDescription
{
  v3 = objc_opt_new();
  objc_storeStrong(&self->_sessionInvalidationFuture, v3);
  v4 = objc_alloc(MEMORY[0x277D07BA0]);
  v5 = [(SPFirmwareUpdateSession *)self remoteInterface];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__SPFirmwareUpdateSession_serviceDescription__block_invoke;
  v11[3] = &unk_279B58C28;
  v12 = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SPFirmwareUpdateSession_serviceDescription__block_invoke_2;
  v9[3] = &unk_279B58C28;
  v10 = v12;
  v6 = v12;
  v7 = [v4 initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconmanager" options:0 remoteObjectInterface:v5 interruptionHandler:v11 invalidationHandler:v9];

  return v7;
}

void __45__SPFirmwareUpdateSession_serviceDescription__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FMEmptyResult();
  [v1 finishWithResult:v2];
}

void __45__SPFirmwareUpdateSession_serviceDescription__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = FMEmptyResult();
  [v1 finishWithResult:v2];
}

- (id)remoteInterface
{
  v20[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606B50];
  v3 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v20[3] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_commandKeysForUUIDs_dateInterval_completion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_firmwareUpdateCandidateBeaconsWithCompletion_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_beaconsInFirmwareUpdateState_dateInterval_completion_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_firmwareUpdateStateForBeaconUUID_completion_ argumentIndex:0 ofReply:1];

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

@end