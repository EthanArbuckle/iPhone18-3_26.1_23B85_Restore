@interface PAHMSManager
+ (id)sharedInstance;
- (BOOL)beamformingForAddress:(id)a3;
- (BOOL)hearingAidEnabledForAddress:(id)a3;
- (BOOL)ownVoiceSupportedForAddress:(id)a3;
- (BOOL)ppeEnrolledForAddress:(id)a3;
- (BOOL)regionSupportedForHearingProtection:(id)a3;
- (BOOL)yodelEnabledForAddress:(id)a3;
- (PAHMSManager)init;
- (double)amplificationForAddress:(id)a3;
- (double)balanceForAddress:(id)a3;
- (double)noiseSupressorForAddress:(id)a3;
- (double)ownVoiceForAddress:(id)a3;
- (double)toneForAddress:(id)a3;
- (void)sendConfigUpdate:(id)a3 forAddress:(id)a4;
- (void)sendConfigUpdate:(id)a3 forIdentifier:(id)a4 withCompletion:(id)a5;
- (void)setAccommodationType:(unint64_t)a3 forAddress:(id)a4;
- (void)setAmplification:(double)a3 forAddress:(id)a4;
- (void)setBalance:(double)a3 forAddress:(id)a4;
- (void)setNoiseSupressor:(double)a3 forAddress:(id)a4;
- (void)setOwnVoice:(double)a3 forAddress:(id)a4;
- (void)setTone:(double)a3 forAddress:(id)a4;
- (void)setupHearingModeService;
- (void)toggleHearingAidForAddress:(id)a3;
@end

@implementation PAHMSManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[PAHMSManager sharedInstance];
  }

  v3 = sharedInstance_Manager;

  return v3;
}

uint64_t __30__PAHMSManager_sharedInstance__block_invoke()
{
  sharedInstance_Manager = objc_alloc_init(PAHMSManager);

  return MEMORY[0x2821F96F8]();
}

- (PAHMSManager)init
{
  v10.receiver = self;
  v10.super_class = PAHMSManager;
  v2 = [(PAHMSManager *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(PAHMSManager *)v2 setYodelDeviceRecordByAddress:v3];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(PAHMSManager *)v2 setHearingAidEnabledByAddress:v4];

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v6 = dispatch_queue_create("hearing_mode_service_queue", v5);
    hmsQueue = v2->_hmsQueue;
    v2->_hmsQueue = v6;

    v8 = [getHUAccessoryManagerClass_0() sharedInstance];
    [(PAHMSManager *)v2 setupHearingModeService];
  }

  return v2;
}

- (void)setupHearingModeService
{
  v3 = objc_alloc_init(getHMServiceClientClass());
  hmsClient = self->_hmsClient;
  self->_hmsClient = v3;

  [(HMServiceClient *)self->_hmsClient setDispatchQueue:self->_hmsQueue];
  objc_initWeak(&location, self);
  v5 = self->_hmsClient;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__PAHMSManager_setupHearingModeService__block_invoke;
  v15[3] = &unk_279A1D040;
  objc_copyWeak(&v16, &location);
  [(HMServiceClient *)v5 setInterruptionHandler:v15];
  v6 = self->_hmsClient;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__PAHMSManager_setupHearingModeService__block_invoke_2;
  v13[3] = &unk_279A1D040;
  objc_copyWeak(&v14, &location);
  [(HMServiceClient *)v6 setInvalidationHandler:v13];
  v7 = self->_hmsClient;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__PAHMSManager_setupHearingModeService__block_invoke_3;
  v11 = &unk_279A1D7B8;
  objc_copyWeak(&v12, &location);
  [(HMServiceClient *)v7 setDeviceRecordChangedHandler:&v8];
  [(HMServiceClient *)self->_hmsClient activateWithCompletion:&__block_literal_global_10, v8, v9, v10, v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __39__PAHMSManager_setupHearingModeService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setupHearingModeService];
}

void __39__PAHMSManager_setupHearingModeService__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setupHearingModeService];
}

void __39__PAHMSManager_setupHearingModeService__block_invoke_3(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 bluetoothAddress];
  v5 = [v3 hearingAssistEnabled];
  v6 = [v3 hearingAidEnabled] == 1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained yodelDeviceRecordByAddress];
  [v8 setObject:v3 forKey:v4];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 hearingAidEnabledByAddress];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v10 setObject:v11 forKey:v4];

  v12 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 1];
    v39 = 138412802;
    *v40 = v4;
    *&v40[8] = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v3;
    _os_log_impl(&dword_25E445000, v12, OS_LOG_TYPE_DEFAULT, "Device Updated %@ = %@, %@", &v39, 0x20u);
  }

  if (v5 != 1)
  {
    v14 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      *v40 = v4;
      _os_log_impl(&dword_25E445000, v14, OS_LOG_TYPE_DEFAULT, "Not a Yodel device. Clearing state %@", &v39, 0xCu);
    }

    v15 = +[PASettings sharedInstance];
    v16 = [v15 personalMediaEnabledByRouteUID];
    v17 = [v16 mutableCopy];

    v18 = [v17 objectForKey:v4];

    if (v18)
    {
      [v17 removeObjectForKey:v4];
      v19 = +[PASettings sharedInstance];
      [v19 setPersonalMediaEnabledByRouteUID:v17];
    }

    v20 = +[PASettings sharedInstance];
    v21 = [v20 accommodationTypesByRouteUID];
    v22 = [v21 mutableCopy];

    v23 = [v22 objectForKey:v4];

    if (v23)
    {
      [v22 removeObjectForKey:v4];
      v24 = +[PASettings sharedInstance];
      [v24 setAccommodationTypesByRouteUID:v22];
    }

    v25 = +[PASettings sharedInstance];
    v26 = [v25 personalMediaConfigurationForRouteUID:v4];

    v27 = +[PASettings sharedInstance];
    v28 = [v27 personalMediaConfiguration];

    if (v28 || !v26)
    {
      v29 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = +[PASettings sharedInstance];
        v31 = [v30 personalMediaConfiguration];
        v39 = 67109376;
        *v40 = v31 == 0;
        *&v40[4] = 1024;
        *&v40[6] = v26 != 0;
        _os_log_impl(&dword_25E445000, v29, OS_LOG_TYPE_DEFAULT, "Ignoring config update %d, %d", &v39, 0xEu);
      }
    }

    else
    {
      v29 = +[PASettings sharedInstance];
      [v29 setPersonalMediaConfiguration:v26];
    }

    v32 = +[PASettings sharedInstance];
    v33 = [v32 personalMediaConfigurationByRouteUID];
    v34 = [v33 mutableCopy];

    v35 = [v34 objectForKey:v4];

    if (v35)
    {
      [v34 removeObjectForKey:v4];
    }

    v36 = +[PASettings sharedInstance];
    [v36 setPersonalMediaConfigurationByRouteUID:v34];
  }

  v37 = [MEMORY[0x277CCAB98] defaultCenter];
  [v37 postNotificationName:@"com.apple.personalaudio.yodel.updated" object:0];

  v38 = *MEMORY[0x277D85DE8];
}

void __39__PAHMSManager_setupHearingModeService__block_invoke_7(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_25E445000, v3, OS_LOG_TYPE_DEFAULT, "Activating client %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)yodelEnabledForAddress:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PAHMSManager_yodelEnabledForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  LOBYTE(hmsQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return hmsQueue;
}

void __39__PAHMSManager_yodelEnabledForAddress___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v2 = [v3 objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 hearingAssistEnabled] == 1;
}

- (double)amplificationForAddress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x3FE0000000000000;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PAHMSManager_amplificationForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __40__PAHMSManager_amplificationForAddress___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = [v2 amplification];
  [v3 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (void)setAmplification:(double)a3 forAddress:(id)a4
{
  v6 = getHMDeviceConfigurationsClass_0;
  v7 = a4;
  v9 = objc_alloc_init(v6());
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v9 setAmplification:v8];

  [(PAHMSManager *)self sendConfigUpdate:v9 forAddress:v7];
}

- (double)balanceForAddress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x3FE0000000000000;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PAHMSManager_balanceForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __34__PAHMSManager_balanceForAddress___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = [v2 balance];
  [v3 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (void)setBalance:(double)a3 forAddress:(id)a4
{
  v6 = getHMDeviceConfigurationsClass_0;
  v7 = a4;
  v9 = objc_alloc_init(v6());
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v9 setBalance:v8];

  [(PAHMSManager *)self sendConfigUpdate:v9 forAddress:v7];
}

- (double)toneForAddress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x3FE0000000000000;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PAHMSManager_toneForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __31__PAHMSManager_toneForAddress___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = [v2 tone];
  [v3 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (void)setTone:(double)a3 forAddress:(id)a4
{
  v6 = getHMDeviceConfigurationsClass_0;
  v7 = a4;
  v9 = objc_alloc_init(v6());
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v9 setTone:v8];

  [(PAHMSManager *)self sendConfigUpdate:v9 forAddress:v7];
}

- (BOOL)beamformingForAddress:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PAHMSManager_beamformingForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  LOBYTE(hmsQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return hmsQueue;
}

void __38__PAHMSManager_beamformingForAddress___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v2 = [v4 objectForKey:*(a1 + 40)];
  v3 = [v2 beamFormer];
  *(*(*(a1 + 48) + 8) + 24) = [v3 BOOLValue];
}

- (double)noiseSupressorForAddress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PAHMSManager_noiseSupressorForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __41__PAHMSManager_noiseSupressorForAddress___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = [v2 noiseSuppression];
  [v3 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (void)setNoiseSupressor:(double)a3 forAddress:(id)a4
{
  v6 = getHMDeviceConfigurationsClass_0;
  v7 = a4;
  v9 = objc_alloc_init(v6());
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v9 setNoiseSuppression:v8];

  [(PAHMSManager *)self sendConfigUpdate:v9 forAddress:v7];
}

- (BOOL)ownVoiceSupportedForAddress:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PAHMSManager_ownVoiceSupportedForAddress___block_invoke;
  block[3] = &unk_279A1D808;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  LOBYTE(hmsQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return hmsQueue;
}

void __44__PAHMSManager_ownVoiceSupportedForAddress___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v3 = [v2 objectForKey:*(a1 + 40)];

  v4 = [v3 hearingAidV2Capability] == 1 && objc_msgSend(v3, "hearingAidV2RegionStatus") == 2;
  *(*(*(a1 + 48) + 8) + 24) = v4;
  v5 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithChar:{objc_msgSend(v3, "hearingAidV2Capability")}];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v3, "hearingAidV2RegionStatus")}];
    v8 = *(a1 + 40);
    v10 = 138413058;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Found record for address [%@, %@] - %@ = %@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (double)ownVoiceForAddress:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PAHMSManager_ownVoiceForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __35__PAHMSManager_ownVoiceForAddress___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = [v2 ownVoiceLevelGain];
  [v3 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (void)setOwnVoice:(double)a3 forAddress:(id)a4
{
  v6 = getHMDeviceConfigurationsClass_0;
  v7 = a4;
  v9 = objc_alloc_init(v6());
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v9 setOwnVoiceLevelGain:v8];

  [(PAHMSManager *)self sendConfigUpdate:v9 forAddress:v7];
}

- (void)setAccommodationType:(unint64_t)a3 forAddress:(id)a4
{
  v4 = a3;
  v6 = getHMDeviceConfigurationsClass_0;
  v7 = a4;
  v8 = objc_alloc_init(v6());
  v11 = v8;
  if ((v4 & 2) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v8 setEnablePMEVoice:v9];
  if ((v4 & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  [v11 setEnablePMEMedia:v10];
  [(PAHMSManager *)self sendConfigUpdate:v11 forAddress:v7];
}

- (BOOL)hearingAidEnabledForAddress:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PAHMSManager_hearingAidEnabledForAddress___block_invoke;
  block[3] = &unk_279A1D808;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  LOBYTE(hmsQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return hmsQueue;
}

void __44__PAHMSManager_hearingAidEnabledForAddress___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = [v3 hearingAidEnabled];

  v5 = [*(a1 + 32) hearingAidEnabledByAddress];
  v6 = [v5 objectForKey:*(a1 + 40)];
  v7 = [v6 BOOLValue];

  v8 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v4 == 1];
    v11 = *(a1 + 40);
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_25E445000, v8, OS_LOG_TYPE_DEFAULT, "Found hearing aid enabled [%@, %@] for %@", &v13, 0x20u);
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)toggleHearingAidForAddress:(id)a3
{
  v4 = a3;
  hmsQueue = self->_hmsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PAHMSManager_toggleHearingAidForAddress___block_invoke;
  v7[3] = &unk_279A1D830;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(hmsQueue, v7);
}

void __43__PAHMSManager_toggleHearingAidForAddress___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v3 = [v2 objectForKey:*(a1 + 40)];
  if ([v3 hearingAidEnabled] == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = HCLogAudioAccommodations();
  v6 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithChar:v4];
    v8 = *(a1 + 40);
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Setting hearing aid enabled [%@] for %@", &v13, 0x16u);
  }

  v9 = objc_alloc_init(getHMDeviceConfigurationsClass_0());
  [v9 setEnableHearingAid:v6];
  v10 = [*(a1 + 32) hearingAidEnabledByAddress];
  v11 = [MEMORY[0x277CCABB0] numberWithChar:v6];
  [v10 setObject:v11 forKey:*(a1 + 40)];

  [*(a1 + 32) sendConfigUpdate:v9 forAddress:*(a1 + 40)];
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)regionSupportedForHearingProtection:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__PAHMSManager_regionSupportedForHearingProtection___block_invoke;
  block[3] = &unk_279A1D808;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  LOBYTE(hmsQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return hmsQueue;
}

void __52__PAHMSManager_regionSupportedForHearingProtection___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = [v3 hearingProtectionRegionStatus];

  *(*(*(a1 + 48) + 8) + 24) = v4 == 2;
  v5 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v8[0] = 67109376;
    v8[1] = v4;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Region status for hearing protection and supported: %d %d", v8, 0xEu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)ppeEnrolledForAddress:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  hmsQueue = self->_hmsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PAHMSManager_ppeEnrolledForAddress___block_invoke;
  block[3] = &unk_279A1D7E0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(hmsQueue, block);
  LOBYTE(hmsQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return hmsQueue;
}

void __38__PAHMSManager_ppeEnrolledForAddress___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) yodelDeviceRecordByAddress];
  v3 = [v2 objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 hearingProtectionPPEEnabled] == 1;

  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 48) + 8) + 24)];
    v6 = *(a1 + 40);
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "PPE enabled: %@ %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendConfigUpdate:(id)a3 forAddress:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [getHUAccessoryManagerClass_0() sharedInstance];
    v15[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__PAHMSManager_sendConfigUpdate_forAddress___block_invoke;
    v12[3] = &unk_279A1D880;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
    [v8 getIdentifiersFromAddresses:v9 withCompletion:v12];
  }

  else
  {
    v8 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25E445000, v8, OS_LOG_TYPE_DEFAULT, "Skipping update. No address", v11, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__PAHMSManager_sendConfigUpdate_forAddress___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  if ([v3 length])
  {
    v4 = a1[4];
    v5 = a1[5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__PAHMSManager_sendConfigUpdate_forAddress___block_invoke_2;
    v9[3] = &unk_279A1D858;
    v10 = v3;
    [v4 sendConfigUpdate:v5 forIdentifier:v10 withCompletion:v9];
    v6 = v10;
  }

  else
  {
    v6 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_25E445000, v6, OS_LOG_TYPE_DEFAULT, "Couldn't find identifier %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __44__PAHMSManager_sendConfigUpdate_forAddress___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "Updated %@ with error: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendConfigUpdate:(id)a3 forIdentifier:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PAHMSManager *)self hmsClient];
  [v11 modifyDeviceConfig:v10 identifier:v9 completion:v8];
}

@end