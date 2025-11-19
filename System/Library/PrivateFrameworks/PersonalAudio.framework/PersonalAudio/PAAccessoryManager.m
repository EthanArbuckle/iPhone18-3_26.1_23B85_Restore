@interface PAAccessoryManager
+ (id)sharedInstance;
- (PAAccessoryManager)init;
- (void)routesDidChange:(id)a3;
- (void)sendPMEConfigurationToAccessory;
- (void)sendUpdateToAccessory;
@end

@implementation PAAccessoryManager

void __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke()
{
  v0 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E445000, v0, OS_LOG_TYPE_DEFAULT, "Starting processing", buf, 2u);
  }

  v1 = [getHUAccessoryManagerClass() sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_41;
  v3[3] = &unk_279A1D210;
  v4 = v1;
  v2 = v1;
  [v2 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v3];
}

void __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke_2;
  v4[3] = &unk_279A1D150;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 enumerateObjectsUsingBlock:v4];
}

void __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  if ([v3 length] && *(a1 + 32))
  {
    v4 = +[PAHMSManager sharedInstance];
    [v4 sendConfigUpdate:*(a1 + 32) forIdentifier:v3 withCompletion:&__block_literal_global_46];
  }

  else
  {
    v4 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "Media settings nil or identifier can't be found [%@]. Config is %@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PAAccessoryManager sharedInstance];
  }

  v3 = sharedInstance_AccessoryManager;

  return v3;
}

uint64_t __36__PAAccessoryManager_sharedInstance__block_invoke()
{
  sharedInstance_AccessoryManager = objc_alloc_init(PAAccessoryManager);

  return MEMORY[0x2821F96F8]();
}

- (PAAccessoryManager)init
{
  v48[1] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = PAAccessoryManager;
  v2 = [(PAAccessoryManager *)&v38 init];
  if (v2)
  {
    v3 = +[PASettings sharedInstance];
    [v3 setShouldUpdateAccessory:1];

    v4 = +[PASettings sharedInstance];
    v2->_shouldSendUpdate = [v4 shouldUpdateAccessory];

    v5 = +[PAHMSManager sharedInstance];
    objc_initWeak(&location, v2);
    v6 = +[PASettings sharedInstance];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __26__PAAccessoryManager_init__block_invoke;
    v35[3] = &unk_279A1D040;
    objc_copyWeak(&v36, &location);
    [v6 registerUpdateBlock:v35 forRetrieveSelector:sel_shouldUpdateAccessory withListener:v2];

    v7 = +[PASettings sharedInstance];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __26__PAAccessoryManager_init__block_invoke_5;
    v33[3] = &unk_279A1D040;
    objc_copyWeak(&v34, &location);
    [v7 registerUpdateBlock:v33 forRetrieveSelector:sel_personalMediaConfigurationByRouteUID withListener:v2];

    v8 = +[PASettings sharedInstance];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __26__PAAccessoryManager_init__block_invoke_8;
    v31[3] = &unk_279A1D040;
    objc_copyWeak(&v32, &location);
    [v8 registerUpdateBlock:v31 forRetrieveSelector:sel_personalMediaEnabledByRouteUID withListener:v2];

    v9 = +[PASettings sharedInstance];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __26__PAAccessoryManager_init__block_invoke_11;
    v29[3] = &unk_279A1D040;
    objc_copyWeak(&v30, &location);
    [v9 registerUpdateBlock:v29 forRetrieveSelector:sel_accommodationTypesByRouteUID withListener:v2];

    v10 = [getHUAccessoryManagerClass() sharedInstance];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __26__PAAccessoryManager_init__block_invoke_14;
    v26[3] = &unk_279A1D068;
    v11 = v10;
    v27 = v11;
    objc_copyWeak(&v28, &location);
    [v11 registerDiscoveryBlock:v26 withListener:v2];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __26__PAAccessoryManager_init__block_invoke_2;
    v23[3] = &unk_279A1D0B8;
    v12 = v2;
    v24 = v12;
    v13 = v11;
    v25 = v13;
    v14 = [MEMORY[0x277CBE0A0] UUIDWithString:@"d5621cc1-f7ab-45db-9403-9eaf744d5390"];
    v48[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    [v13 registerUpdateBlock:v23 forCharacteristicUUIDs:v15 withListener:v12];

    [v13 registerLoggingBlock:&__block_literal_global_29_0 withListener:v12];
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v17 = getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_ptr;
    v47 = getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_ptr;
    if (!getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_ptr)
    {
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_block_invoke;
      v42 = &unk_279A1D238;
      v43 = &v44;
      v18 = HearingUtilitiesLibrary();
      v19 = dlsym(v18, "AXHearingAidAudioRoutesChangedNotification");
      *(v43[1] + 24) = v19;
      getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_ptr = *(v43[1] + 24);
      v17 = v45[3];
    }

    _Block_object_dispose(&v44, 8);
    if (!v17)
    {
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v20 = *v17;
    [v16 addObserver:v12 selector:sel_routesDidChange_ name:v20 object:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

void __26__PAAccessoryManager_init__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[PASettings sharedInstance];
  v3 = [v2 shouldUpdateAccessory];

  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "Should send %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldSendUpdate:v3];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendPMEConfigurationToAccessory
{
  v3 = +[PASettings sharedInstance];
  v4 = [v3 shouldUpdateAccessory];

  if ((v4 & 1) == 0)
  {
    v5 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Skipping update", buf, 2u);
    }
  }

  pmeHysteresisTimer = self->_pmeHysteresisTimer;
  if (!pmeHysteresisTimer)
  {
    v7 = objc_alloc(MEMORY[0x277CE6950]);
    v8 = [MEMORY[0x277D12B60] bluetoothManagerQueue];
    v9 = [v7 initWithTargetSerialQueue:v8];
    v10 = self->_pmeHysteresisTimer;
    self->_pmeHysteresisTimer = v9;

    pmeHysteresisTimer = self->_pmeHysteresisTimer;
  }

  if (([(AXDispatchTimer *)pmeHysteresisTimer isPending]& 1) != 0)
  {
    v11 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_25E445000, v11, OS_LOG_TYPE_DEFAULT, "Skipping update because pending timer", v12, 2u);
    }
  }

  else
  {
    [(AXDispatchTimer *)self->_pmeHysteresisTimer afterDelay:&__block_literal_global_40 processBlock:0.5];
  }
}

- (void)sendUpdateToAccessory
{
  if (self->_shouldSendUpdate)
  {
    v2 = [MEMORY[0x277CBE0A0] UUIDWithString:@"d5621cc1-f7ab-45db-9403-9eaf744d5390"];
    v3 = [getHUAccessoryManagerClass() sharedInstance];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke;
    v7[3] = &unk_279A1D178;
    v8 = v3;
    v9 = v2;
    v4 = v2;
    v5 = v3;
    [v5 getAvailableAddressesSupportingCharacteristic:@"d5621cc1-f7ab-45db-9403-9eaf744d5390" withCompletion:v7];
  }

  else
  {
    v5 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Skipping update", v6, 2u);
    }
  }
}

void __26__PAAccessoryManager_init__block_invoke_5(uint64_t a1)
{
  v2 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E445000, v2, OS_LOG_TYPE_DEFAULT, "Configuration updated. Attempting to send to accessory", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendPMEConfigurationToAccessory];
}

void __26__PAAccessoryManager_init__block_invoke_8(uint64_t a1)
{
  v2 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E445000, v2, OS_LOG_TYPE_DEFAULT, "PME updated. Attempting to send to accessory", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendPMEConfigurationToAccessory];
}

void __26__PAAccessoryManager_init__block_invoke_11(uint64_t a1)
{
  v2 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E445000, v2, OS_LOG_TYPE_DEFAULT, "PME types updated. Attempting to send to accessory", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendPMEConfigurationToAccessory];
}

void __26__PAAccessoryManager_init__block_invoke_14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBE0A0] UUIDWithString:@"d5621cc1-f7ab-45db-9403-9eaf744d5390"];
  [v2 readValueForCharacteristicUUID:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sendPMEConfigurationToAccessory];
}

void __26__PAAccessoryManager_init__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBE0A0] UUIDWithString:@"d5621cc1-f7ab-45db-9403-9eaf744d5390"];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = +[PAHMSManager sharedInstance];
    v13 = [v12 yodelEnabledForAddress:v7];

    v14 = HCLogAudioAccommodations();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&dword_25E445000, v14, OS_LOG_TYPE_DEFAULT, "Skipping Yodel %@", buf, 0xCu);
      }
    }

    else
    {
      if (v15)
      {
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&dword_25E445000, v14, OS_LOG_TYPE_DEFAULT, "Found value for transparency %@ - %@", buf, 0x16u);
      }

      if (v9)
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x2050000000;
        v16 = getAXHeardControllerClass_softClass;
        v30 = getAXHeardControllerClass_softClass;
        if (!getAXHeardControllerClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getAXHeardControllerClass_block_invoke;
          v32 = &unk_279A1D238;
          v33 = &v27;
          __getAXHeardControllerClass_block_invoke(buf);
          v16 = v28[3];
        }

        v17 = v16;
        _Block_object_dispose(&v27, 8);
        v18 = [v16 sharedServer];
        v19 = [v18 isTransparencyUpdatePending];

        if (v19)
        {
          v20 = HCLogAudioAccommodations();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v7;
            _os_log_impl(&dword_25E445000, v20, OS_LOG_TYPE_DEFAULT, "Skipping transparency update for %@ because we have newer updates pending.", buf, 0xCu);
          }
        }

        else
        {
          v21 = *(a1 + 40);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __26__PAAccessoryManager_init__block_invoke_18;
          v23[3] = &unk_279A1D090;
          v24 = v9;
          v25 = v7;
          v26 = *(a1 + 40);
          [v21 getPSEVersionForAddress:v25 withCompletion:v23];
        }
      }

      else
      {
        [*(a1 + 32) sendUpdateToAccessory];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __26__PAAccessoryManager_init__block_invoke_18(uint64_t a1, unint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4;
  if (a2 < 4)
  {
    LODWORD(v61) = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    [v4 getBytes:&v55 length:100];
    v21 = fabs(*&v55 + -1.0);
    v22 = fmaxf(fminf(*(&v57 + 1), 2.0), -1.0);
    v23 = fmaxf(fminf(*(&v60 + 1), 2.0), -1.0);
    v24 = ((v23 - fmaxf(v23 - v22, 0.0)) + 1.0) * 0.5;
    v25 = ((v23 - v22) + 1.0) * 0.5;
    v26 = (fmaxf(fminf(*(&v60 + 2), 1.0), -1.0) + 1.0) * 0.5;
    v27 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *&v55;
      v29 = [MEMORY[0x277CCABB0] numberWithBool:v21 < 0.001];
      v30 = v22;
      v31 = v23;
      v32 = v26;
      v33 = v24;
      v34 = *(a1 + 40);
      v35 = v25;
      *buf = 134220546;
      v63 = v28;
      v64 = 2112;
      v65 = v29;
      v66 = 2048;
      v67 = v30;
      v68 = 2048;
      v69 = v31;
      v70 = 2048;
      v71 = v26;
      v72 = 2048;
      v73 = v24;
      v74 = 2048;
      v75 = v35;
      v76 = 2048;
      v77 = v26;
      v78 = 2048;
      v79 = *&v58;
      v80 = 2048;
      v81 = *(&v57 + 3);
      v82 = 2112;
      v83 = v34;
      _os_log_impl(&dword_25E445000, v27, OS_LOG_TYPE_DEFAULT, "Reading transparency settings %lf (%@), %lf, %lf, %lf = %lf, %lf, %lf, %lf, %lf = %@", buf, 0x70u);
    }

    else
    {
      v32 = v26;
      v35 = v25;
      v33 = v24;
    }

    v36 = v21 < 0.001;

    v45 = +[PASettings sharedInstance];
    [v45 setShouldUpdateAccessory:0];

    v46 = +[PASettings sharedInstance];
    [v46 setTransparencyTone:*(a1 + 40) forAddress:v32];

    v47 = +[PASettings sharedInstance];
    [v47 setTransparencyBalance:*(a1 + 40) forAddress:v35];

    v48 = +[PASettings sharedInstance];
    [v48 setTransparencyAmplification:*(a1 + 40) forAddress:v33];

    v49 = +[PASettings sharedInstance];
    LODWORD(v50) = HIDWORD(v57);
    [v49 setTransparencyBeamforming:*(&v57 + 3) != 0.0 forAddress:{*(a1 + 40), v50}];

    v44 = +[PASettings sharedInstance];
    [v44 setTransparencyNoiseSupressor:*(a1 + 40) forAddress:*&v58];
  }

  else
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    [v4 getBytes:&v55 length:104];
    v6 = fabs(*&v55 + -1.0);
    v7 = fmaxf(fminf(*(&v57 + 1), 2.0), -1.0);
    v8 = fmaxf(fminf(*(&v60 + 1), 2.0), -1.0);
    v9 = ((v8 - fmaxf(v8 - v7, 0.0)) + 1.0) * 0.5;
    v10 = ((v8 - v7) + 1.0) * 0.5;
    v11 = (fmaxf(fminf(*(&v60 + 2), 1.0), -1.0) + 1.0) * 0.5;
    v12 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *&v55;
      v14 = [MEMORY[0x277CCABB0] numberWithBool:v6 < 0.001];
      v15 = v7;
      v16 = v8;
      v17 = v11;
      v18 = v9;
      v19 = *(a1 + 40);
      v20 = v10;
      *buf = 134220546;
      v63 = v13;
      v64 = 2112;
      v65 = v14;
      v66 = 2048;
      v67 = v15;
      v68 = 2048;
      v69 = v16;
      v70 = 2048;
      v71 = v11;
      v72 = 2048;
      v73 = v9;
      v74 = 2048;
      v75 = v20;
      v76 = 2048;
      v77 = v11;
      v78 = 2048;
      v79 = *&v58;
      v80 = 2048;
      v81 = *(&v57 + 3);
      v82 = 2112;
      v83 = v19;
      _os_log_impl(&dword_25E445000, v12, OS_LOG_TYPE_DEFAULT, "Reading transparency settings %lf (%@), %lf, %lf, %lf = %lf, %lf, %lf, %lf, %lf = %@", buf, 0x70u);
    }

    else
    {
      v17 = v11;
      v20 = v10;
      v18 = v9;
    }

    v36 = v6 < 0.001;

    v37 = +[PASettings sharedInstance];
    [v37 setShouldUpdateAccessory:0];

    v38 = +[PASettings sharedInstance];
    [v38 setTransparencyTone:*(a1 + 40) forAddress:v17];

    v39 = +[PASettings sharedInstance];
    [v39 setTransparencyBalance:*(a1 + 40) forAddress:v20];

    v40 = +[PASettings sharedInstance];
    [v40 setTransparencyAmplification:*(a1 + 40) forAddress:v18];

    v41 = +[PASettings sharedInstance];
    LODWORD(v42) = HIDWORD(v57);
    [v41 setTransparencyBeamforming:*(&v57 + 3) != 0.0 forAddress:{*(a1 + 40), v42}];

    v43 = +[PASettings sharedInstance];
    [v43 setTransparencyNoiseSupressor:*(a1 + 40) forAddress:*&v58];

    v44 = +[PASettings sharedInstance];
    [v44 setTransparencyOwnVoice:*(a1 + 40) forAddress:*(&v61 + 1)];
  }

  v51 = +[PASettings sharedInstance];
  [v51 setTransparencyCustomized:v36 forAddress:*(a1 + 40)];

  v52 = dispatch_time(0, 100000000);
  v53 = [*(a1 + 48) sharedQueue];
  dispatch_after(v52, v53, &__block_literal_global_22);

  v54 = *MEMORY[0x277D85DE8];
}

void __26__PAAccessoryManager_init__block_invoke_20()
{
  v0 = +[PASettings sharedInstance];
  [v0 setShouldUpdateAccessory:1];
}

void __26__PAAccessoryManager_init__block_invoke_26(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_25E445000, v3, OS_LOG_TYPE_DEFAULT, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)routesDidChange:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Routes changes: %@", &v7, 0xCu);
  }

  [(PAAccessoryManager *)self sendPMEConfigurationToAccessory];
  [(PAAccessoryManager *)self sendUpdateToAccessory];

  v6 = *MEMORY[0x277D85DE8];
}

void __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PAHMSManager sharedInstance];
  v5 = [v4 yodelEnabledForAddress:v3];

  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke_3;
  v8[3] = &unk_279A1D128;
  v9 = v6;
  v10 = v3;
  v12 = v5;
  v11 = *(a1 + 40);
  v7 = v3;
  [v9 getAudioOwnershipForAddress:v7 withCompletion:v8];
}

void __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke_3(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke_4;
    v8[3] = &unk_279A1D100;
    v12 = *(a1 + 56);
    v9 = v3;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    [v4 getPSEVersionForAddress:v9 withCompletion:v8];

    v5 = v9;
  }

  else
  {
    v5 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_25E445000, v5, OS_LOG_TYPE_DEFAULT, "Skipping custom transparency update because buds are owned by another device %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __43__PAAccessoryManager_sendUpdateToAccessory__block_invoke_4(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56))
  {
    v3 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v19 = 138412290;
      v20 = v4;
      v5 = "Skipping update to unsupported device %@";
      v6 = v3;
      v7 = 12;
LABEL_13:
      _os_log_impl(&dword_25E445000, v6, OS_LOG_TYPE_DEFAULT, v5, &v19, v7);
    }
  }

  else
  {
    v9 = +[PASettings sharedInstance];
    v10 = [v9 personalMediaConfiguration];
    v11 = v10;
    v12 = *(a1 + 32);
    if (a2 < 4)
    {
      v13 = [v10 transparencySettingsForAddress:v12];
      v14 = 100;
    }

    else
    {
      v13 = [v10 transparencySettingsv4ForAddress:v12];
      v14 = 104;
    }

    if (v13)
    {
      v3 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:v14];
      v15 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v19 = 138412802;
        v20 = v16;
        v21 = 2112;
        v22 = v3;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_25E445000, v15, OS_LOG_TYPE_DEFAULT, "Sending update to %@ - %@ - %@", &v19, 0x20u);
      }

      [*(a1 + 40) writeValue:v3 forCharacteristicUUID:*(a1 + 48) andAddress:*(a1 + 32)];
      free(v13);
    }

    else
    {
      v3 = HCLogAudioAccommodations();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        v5 = "Not updating accessory. There is no configuration";
        v6 = v3;
        v7 = 2;
        goto LABEL_13;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_41(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_25E445000, v8, OS_LOG_TYPE_DEFAULT, "Found route %@ - %@", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_42;
  v12[3] = &unk_279A1D1E8;
  v13 = v7;
  v10 = v7;
  [v9 getPMEEverywhereSupportStateForAddress:v10 withCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_42(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "Found PME supported %@", buf, 0xCu);
  }

  v6 = +[PAHMSManager sharedInstance];
  v7 = [v6 yodelEnabledForAddress:*(a1 + 32)];

  v8 = [getHUAccessoryManagerClass() sharedInstance];
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_43;
  v12[3] = &unk_279A1D1C0;
  v15 = a2;
  v16 = v7;
  v13 = v9;
  v14 = v8;
  v10 = v8;
  [v10 getAudioOwnershipForAddress:v13 withCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_43(uint64_t a1, int a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (a2 && *(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0 && [*(a1 + 32) length])
  {
    v4 = +[PASettings sharedInstance];
    v5 = [v4 personalMediaConfiguration];

    v6 = [v5 onBudsMediaSettingsForRoute:*(a1 + 32)];
    v7 = *(a1 + 40);
    v26[0] = *(a1 + 32);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_2;
    v15[3] = &unk_279A1D178;
    v16 = v6;
    v17 = v5;
    v9 = v5;
    v10 = v6;
    [v7 getIdentifiersFromAddresses:v8 withCompletion:v15];
  }

  else
  {
    v10 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 49);
      v13 = *(a1 + 32);
      *buf = 67109890;
      v19 = a2;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_25E445000, v10, OS_LOG_TYPE_DEFAULT, "Device isn't supported [%d, %d, %d] %@", buf, 0x1Eu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __53__PAAccessoryManager_sendPMEConfigurationToAccessory__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_25E445000, v3, OS_LOG_TYPE_DEFAULT, "Sent updates to buds with error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end