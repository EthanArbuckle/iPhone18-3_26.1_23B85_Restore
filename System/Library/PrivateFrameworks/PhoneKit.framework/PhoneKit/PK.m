@interface PK
@end

@implementation PK

void __30__PK_PHDevice_isGeminiCapable__block_invoke()
{
  v3 = 0;
  v0 = MGCopyAnswerWithError();
  if (v0)
  {
    v1 = v0;
    isGeminiCapable_geminiSupported = CFBooleanGetValue(v0) != 0;
    CFRelease(v1);
  }

  else
  {
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __30__PK_PHDevice_isGeminiCapable__block_invoke_cold_2(v2);
    }
  }
}

uint64_t __28__PK_PHDevice_currentDevice__block_invoke()
{
  currentDevice_device = objc_alloc_init(PK_PHDevice);

  return MEMORY[0x2821F96F8]();
}

uint64_t __19__PK_PHDevice_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEC5D0]);
  v3 = [*(a1 + 32) dispatchQueue];
  v4 = [v2 initWithQueue:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  [*(*(a1 + 32) + 24) setDelegate:?];
  *(*(a1 + 32) + 8) = [*(a1 + 32) fetchCellularRadioEnabled];
  result = [*(a1 + 32) fetchRingerSwitchEnabled];
  *(*(a1 + 32) + 9) = result;
  return result;
}

void __39__PK_PHDevice_setCellularRadioEnabled___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 8) != v4)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 8) = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PK_PHDevice_setCellularRadioEnabled___block_invoke_2;
    block[3] = &unk_279A22800;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __39__PK_PHDevice_setCellularRadioEnabled___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PHDeviceCellularRadioEnabledDidChangeNotification" object:*(a1 + 32)];
}

void __38__PK_PHDevice_setRingerSwitchEnabled___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 9) != v4)
  {
    block[5] = v1;
    block[6] = v2;
    *(v3 + 9) = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PK_PHDevice_setRingerSwitchEnabled___block_invoke_2;
    block[3] = &unk_279A22800;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __38__PK_PHDevice_setRingerSwitchEnabled___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PHDeviceRingerSwitchDidChangeNotification" object:*(a1 + 32)];
}

void __50__PK_PHDevice_registerForRingerStateNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRingerSwitchEnabled:{objc_msgSend(WeakRetained, "fetchRingerSwitchEnabled")}];
}

void __30__PK_PHDevice_isGeminiCapable__block_invoke_cold_1(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_25E4EC000, a2, OS_LOG_TYPE_ERROR, "Could not retreive Dual SIM activation policy, mobileGestaltErrorCode: %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end