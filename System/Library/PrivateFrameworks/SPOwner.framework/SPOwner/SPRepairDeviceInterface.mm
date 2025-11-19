@interface SPRepairDeviceInterface
- (void)deviceAttributesForContext:(id)a3 completion:(id)a4;
- (void)deviceForBeaconIdentifier:(id)a3 completion:(id)a4;
- (void)deviceForFindMyId:(id)a3 completion:(id)a4;
- (void)deviceForSerialNumber:(id)a3 completion:(id)a4;
- (void)updateRepairStateForSerialNumber:(id)a3 updateBlock:(id)a4;
@end

@implementation SPRepairDeviceInterface

- (void)deviceAttributesForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 serialNumbers];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [SPSimpleBeaconContext alloc];
    v12 = [v6 serialNumbers];
    v13 = [v12 allObjects];
    v14 = [(SPSimpleBeaconContext *)v11 initWithFetchProperties:0x2000 matchingSerialNumbers:v13];
  }

  else
  {
    v15 = [v6 findMyIds];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [SPSimpleBeaconContext alloc];
      v12 = [v6 findMyIds];
      v13 = [v12 allObjects];
      v14 = [(SPSimpleBeaconContext *)v17 initWithFetchProperties:0x2000 matchingFindMyIds:v13];
    }

    else
    {
      v18 = [v6 beaconIdentifiers];
      v19 = [v18 count];

      if (!v19)
      {
        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:5 userInfo:0];
        v7[2](v7, 0, v23);

        goto LABEL_8;
      }

      v20 = [SPSimpleBeaconContext alloc];
      v12 = [v6 beaconIdentifiers];
      v13 = [v12 allObjects];
      v14 = [(SPSimpleBeaconContext *)v20 initWithFetchProperties:0x2000 matchingBeaconUUIDs:v13];
    }
  }

  v21 = v14;

  v22 = [v6 type];
  [v21 setRepairContextType:v22];

  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke;
  v24[3] = &unk_279B58A48;
  objc_copyWeak(&v26, &location);
  v25 = v7;
  [v8 setSimpleBeaconDifferenceBlock:v24];
  [v8 startUpdatingSimpleBeaconsWithContext:v21 completion:&__block_literal_global];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

LABEL_8:
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = LogCategory_OwnerSession();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_cold_1(v6, v8);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v11 = [v5 insertions];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [WeakRetained beaconSession];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_3;
        v29[3] = &unk_279B58A20;
        v30 = 0;
        [v13 stopUpdatingSimpleBeaconsWithCompletion:v29];

        v14 = objc_opt_new();
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = [v5 insertions];
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * i);
              v21 = [SPRepairDeviceAttributes alloc];
              v22 = [v20 object];
              v23 = [(SPRepairDeviceAttributes *)v21 initWithInternalSimpleBeacon:v22];

              [v14 addObject:v23];
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
          }

          while (v17);
        }

        (*(*(a1 + 32) + 16))();
        v6 = 0;
      }
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_3_cold_1(a2, a1);
    }
  }
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Starting fetch of devices. Subscribed %i, error: %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deviceForSerialNumber:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v23[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingSerialNumbers:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke;
  v18[3] = &unk_279B58AB8;
  objc_copyWeak(&v21, &location);
  v12 = v7;
  v20 = v12;
  v13 = v6;
  v19 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_10;
  v16[3] = &unk_279B58A20;
  v14 = v13;
  v17 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = [v5 insertions];
    v12 = [v11 firstObject];
    v10 = [v12 object];

    if (v10)
    {
      v13 = [WeakRetained beaconSession];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9;
      v19 = &unk_279B58A90;
      v20 = *(a1 + 32);
      v21 = 0;
      [v13 stopUpdatingSimpleBeaconsWithCompletion:&v16];

      v14 = [SPRepairDeviceAttributes alloc];
      v15 = [(SPRepairDeviceAttributes *)v14 initWithInternalSimpleBeacon:v10, v16, v17, v18, v19];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1(a1);
    }
  }
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_10(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceForFindMyId:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v23[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingFindMyIds:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke;
  v18[3] = &unk_279B58AB8;
  objc_copyWeak(&v21, &location);
  v12 = v7;
  v20 = v12;
  v13 = v6;
  v19 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_12;
  v16[3] = &unk_279B58A20;
  v14 = v13;
  v17 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = [v5 insertions];
    v12 = [v11 firstObject];
    v10 = [v12 object];

    if (v10)
    {
      v13 = [WeakRetained beaconSession];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_11;
      v19 = &unk_279B58A90;
      v20 = *(a1 + 32);
      v21 = 0;
      [v13 stopUpdatingSimpleBeaconsWithCompletion:&v16];

      v14 = [SPRepairDeviceAttributes alloc];
      v15 = [(SPRepairDeviceAttributes *)v14 initWithInternalSimpleBeacon:v10, v16, v17, v18, v19];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1(a1);
    }
  }
}

void __56__SPRepairDeviceInterface_deviceForFindMyId_completion___block_invoke_12(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deviceForBeaconIdentifier:(id)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v23[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingBeaconUUIDs:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke;
  v18[3] = &unk_279B58AB8;
  objc_copyWeak(&v21, &location);
  v12 = v7;
  v20 = v12;
  v13 = v6;
  v19 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_14;
  v16[3] = &unk_279B58A20;
  v14 = v13;
  v17 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = [v5 insertions];
    v12 = [v11 firstObject];
    v10 = [v12 object];

    if (v10)
    {
      v13 = [WeakRetained beaconSession];
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_13;
      v19 = &unk_279B58A90;
      v20 = *(a1 + 32);
      v21 = 0;
      [v13 stopUpdatingSimpleBeaconsWithCompletion:&v16];

      v14 = [SPRepairDeviceAttributes alloc];
      v15 = [(SPRepairDeviceAttributes *)v14 initWithInternalSimpleBeacon:v10, v16, v17, v18, v19];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = LogCategory_OwnerSession();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1(a1);
    }
  }
}

void __64__SPRepairDeviceInterface_deviceForBeaconIdentifier_completion___block_invoke_14(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateRepairStateForSerialNumber:(id)a3 updateBlock:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [SPSimpleBeaconContext alloc];
  v23[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v11 = [(SPSimpleBeaconContext *)v9 initWithFetchProperties:0x2000 matchingSerialNumbers:v10];

  [(SPSimpleBeaconContext *)v11 setRepairContextType:@"REPAIR"];
  [(SPRepairDeviceInterface *)self setBeaconSession:v8];
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke;
  v18[3] = &unk_279B58AB8;
  objc_copyWeak(&v21, &location);
  v12 = v7;
  v20 = v12;
  v13 = v6;
  v19 = v13;
  [v8 setSimpleBeaconDifferenceBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke_15;
  v16[3] = &unk_279B58A20;
  v14 = v13;
  v17 = v14;
  [v8 startUpdatingSimpleBeaconsWithContext:v11 completion:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v15 = *MEMORY[0x277D85DE8];
}

void __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v11 = [v5 insertions];
    v12 = [v11 firstObject];
    v10 = [v12 object];

    if (v10)
    {
      v13 = [[SPRepairDeviceAttributes alloc] initWithInternalSimpleBeacon:v10];
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_9;
  }

  v8 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
LABEL_10:
}

void __72__SPRepairDeviceInterface_updateRepairStateForSerialNumber_updateBlock___block_invoke_15(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_OwnerSession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Starting fetch of device for %@. Subscribed %i, error: %@", &v9, 0x1Cu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "Error during update of devices error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __65__SPRepairDeviceInterface_deviceAttributesForContext_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__SPRepairDeviceInterface_deviceForSerialNumber_completion___block_invoke_9_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

@end