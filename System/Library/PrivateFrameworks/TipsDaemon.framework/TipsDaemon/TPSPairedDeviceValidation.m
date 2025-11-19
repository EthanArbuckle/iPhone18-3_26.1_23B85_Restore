@interface TPSPairedDeviceValidation
+ (id)airPodsDeviceInfo;
+ (id)homePodDeviceInfo;
+ (id)watchDeviceInfo;
- (NSArray)cachedDevices;
- (NSArray)cachedPeers;
- (TPSPairedDeviceValidation)initWithTargetDevices:(id)a3 excludeDevices:(id)a4;
- (id)_bluetoothValidationForProductID:(unsigned int)a3 deviceType:(int64_t)a4;
- (id)_bluetoothValidationForProductIDs:(id)a3 deviceType:(int64_t)a4 joinType:(int64_t)a5;
- (id)_bluetoothValidationForTag:(id)a3 deviceType:(int64_t)a4;
- (id)_validationForDeviceNumber:(int64_t)a3;
- (id)_validationsForDevices:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSPairedDeviceValidation

+ (id)airPodsDeviceInfo
{
  v17[14] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D71740] ignoreTargetingValidator];
  v3 = v2;
  if (v2)
  {
    v4 = &unk_2848309D8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = &unk_2848309D8;
  if (v3)
  {
    goto LABEL_6;
  }

  v17[0] = &unk_284830A08;
  v17[1] = &unk_284830A20;
  v17[2] = &unk_284830A68;
  v17[3] = &unk_284830A80;
  v17[4] = &unk_284830A98;
  v17[5] = &unk_284830AB0;
  v17[6] = &unk_2848309D8;
  v17[7] = &unk_2848309F0;
  v17[8] = &unk_284830A38;
  v17[9] = &unk_284830A50;
  v17[10] = &unk_284830AC8;
  v17[11] = &unk_284830AE0;
  v17[12] = &unk_284830AF8;
  v17[13] = &unk_284830B10;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:14];
  v8 = +[TPSBluetoothChecker sharedInstance];
  v9 = [v8 pairedDevices];
  v6 = [TPSBluetoothChecker bluetoothPairedForProductIDs:v7 withPairedDevices:v9];

  if (v6)
  {
LABEL_6:
    v10 = [[TPSCloudDeviceInfo alloc] initWithModel:@"airpods"];
    [(TPSCloudDeviceInfo *)v10 setDisplayName:@"AirPods"];
    v15[0] = &unk_284830A08;
    v15[1] = &unk_284830A20;
    v16[0] = @"711495D10BB643F6BDA3693886C0BCAF";
    v16[1] = @"711495D10BB643F6BDA3693886C0BCAF";
    v15[2] = &unk_284830A68;
    v15[3] = &unk_284830A80;
    v16[2] = @"airpods.gen4";
    v16[3] = @"airpods.gen4";
    v15[4] = &unk_284830AB0;
    v15[5] = &unk_284830A98;
    v16[4] = @"airpods.gen4";
    v16[5] = @"airpods.gen4";
    v15[6] = &unk_2848309D8;
    v15[7] = &unk_2848309F0;
    v16[6] = @"airpodsmax";
    v16[7] = @"airpodsmax";
    v15[8] = &unk_284830A38;
    v15[9] = &unk_284830A50;
    v16[8] = @"airpodspro";
    v16[9] = @"airpodspro";
    v15[10] = &unk_284830AC8;
    v15[11] = &unk_284830AE0;
    v16[10] = @"airpods.gen3";
    v16[11] = @"airpodspro";
    v15[12] = &unk_284830AF8;
    v15[13] = &unk_284830B10;
    v16[12] = @"airpods";
    v16[13] = @"airpods";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:14];
    v12 = [v11 objectForKeyedSubscript:v6];
    [(TPSCloudDeviceInfo *)v10 setSymbolIdentifier:v12];
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)homePodDeviceInfo
{
  if ([MEMORY[0x277CD19B8] areAnyHomePodsConfigured] & 1) != 0 || (objc_msgSend(MEMORY[0x277CD19B8], "areAnyLargeHomePodConfigured"))
  {
    if (![MEMORY[0x277CD19B8] areAnyHomePodMiniConfigured])
    {
      v2 = @"homepod";
      goto LABEL_8;
    }

LABEL_4:
    v2 = @"homepod.and.homepodmini";
LABEL_8:
    v3 = [[TPSCloudDeviceInfo alloc] initWithModel:@"homepod"];
    [(TPSCloudDeviceInfo *)v3 setDisplayName:@"HomePod"];
    [(TPSCloudDeviceInfo *)v3 setSymbolIdentifier:v2];
    goto LABEL_9;
  }

  if ([MEMORY[0x277CD19B8] areAnyHomePodMiniConfigured])
  {
    v2 = @"homepodmini";
    goto LABEL_8;
  }

  if ([MEMORY[0x277D71740] ignoreTargetingValidator])
  {
    goto LABEL_4;
  }

  v3 = 0;
LABEL_9:

  return v3;
}

+ (id)watchDeviceInfo
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  if (v3 || [MEMORY[0x277D71740] ignoreTargetingValidator])
  {
    v4 = [[TPSCloudDeviceInfo alloc] initWithModel:@"watch"];
    v5 = v4;
    if (v3)
    {
      v6 = [v3 valueForProperty:*MEMORY[0x277D2BC20]];
      [(TPSCloudDeviceInfo *)v5 setMaxOSVersion:v6];
    }

    else
    {
      [(TPSCloudDeviceInfo *)v4 setMaxOSVersion:0];
    }

    [(TPSCloudDeviceInfo *)v5 setDisplayName:kTPSPairedAppleWatch];
  }

  else
  {
    v5 = 0;
  }

  [(TPSCloudDeviceInfo *)v5 setSymbolIdentifier:@"applewatch"];

  return v5;
}

- (TPSPairedDeviceValidation)initWithTargetDevices:(id)a3 excludeDevices:(id)a4
{
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = a4;
  v9 = a3;
  v10 = dispatch_queue_create(0, v7);
  syncQueue = self->_syncQueue;
  self->_syncQueue = v10;

  v14.receiver = self;
  v14.super_class = TPSPairedDeviceValidation;
  v12 = [(TPSInclusivityValidation *)&v14 initWithTargetValues:v9 excludeValues:v8];

  return v12;
}

- (NSArray)cachedPeers
{
  v3 = [(TPSPairedDeviceValidation *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TPSPairedDeviceValidation_cachedPeers__block_invoke;
  block[3] = &unk_2789AFAB0;
  block[4] = self;
  dispatch_sync(v3, block);

  return self->_cachedPeers;
}

void __40__TPSPairedDeviceValidation_cachedPeers__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 64))
  {
    v5 = +[TPSBluetoothChecker sharedInstance];
    v2 = [v5 pairedPeers];
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = v2;
  }
}

- (NSArray)cachedDevices
{
  v3 = [(TPSPairedDeviceValidation *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TPSPairedDeviceValidation_cachedDevices__block_invoke;
  block[3] = &unk_2789AFAB0;
  block[4] = self;
  dispatch_sync(v3, block);

  return self->_cachedDevices;
}

void __42__TPSPairedDeviceValidation_cachedDevices__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 72))
  {
    v5 = +[TPSBluetoothChecker sharedInstance];
    v2 = [v5 pairedDevices];
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = v2;
  }
}

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(TPSPairedDeviceValidation *)self targetDevices];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(TPSPairedDeviceValidation *)self targetDevices];
    v9 = [(TPSPairedDeviceValidation *)self _validationsForDevices:v8];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke;
    v25[3] = &unk_2789B0AA8;
    v26 = v9;
    v27 = self;
    v10 = v9;
    v11 = [TPSBlockValidation blockValidationWithBlock:v25];
    [v5 addObject:v11];
  }

  v12 = [(TPSPairedDeviceValidation *)self excludeDevices];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [(TPSPairedDeviceValidation *)self excludeDevices];
    v15 = [(TPSPairedDeviceValidation *)self _validationsForDevices:v14];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_3;
    v22[3] = &unk_2789B0AA8;
    v23 = v15;
    v24 = self;
    v16 = v15;
    v17 = [TPSBlockValidation blockValidationWithBlock:v22];
    [v5 addObject:v17];
  }

  if ([v5 count])
  {
    v18 = [(TPSTargetingValidation *)self name];
    v19 = [(TPSPairedDeviceValidation *)self completionQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_5;
    v20[3] = &unk_2789B0AD0;
    v20[4] = self;
    v21 = v4;
    [TPSTargetingValidator validateConditions:v5 joinType:0 context:v18 cache:0 completionQueue:v19 completionHandler:v20];
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) name];
  v6 = [*(a1 + 40) completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_2;
  v8[3] = &unk_2789AFFD8;
  v9 = v3;
  v7 = v3;
  [TPSTargetingValidator validateConditions:v4 joinType:1 context:v5 cache:0 completionQueue:v6 completionHandler:v8];
}

void __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) name];
  v6 = [*(a1 + 40) completionQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_4;
  v8[3] = &unk_2789AFFD8;
  v9 = v3;
  v7 = v3;
  [TPSTargetingValidator validateConditions:v4 joinType:1 context:v5 cache:0 completionQueue:v6 completionHandler:v8];
}

void __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = MEMORY[0x277D71778];
  v6 = a3;
  v7 = [v5 targeting];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_5_cold_1(a1, a2, v7);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_validationsForDevices:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __52__TPSPairedDeviceValidation__validationsForDevices___block_invoke;
  v13 = &unk_2789B0AF8;
  v14 = self;
  v15 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __52__TPSPairedDeviceValidation__validationsForDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) _validationForDeviceNumber:{objc_msgSend(a2, "integerValue")}];
  [*(a1 + 40) addObject:v3];
}

- (id)_validationForDeviceNumber:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v4 = [TPSPairedWatchValidation alloc];
      v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"36A0EB23-E045-4E99-9D71-8FB9A853ADA7"];
      v6 = [(TPSPairedWatchValidation *)v4 initWithCapability:v5];

      if (!v6)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    case 1:
      v13 = @"A1603";
      v14 = 1;
      goto LABEL_29;
    case 2:
      v8 = TPSPairedCarPlayValidation;
      goto LABEL_24;
    case 3:
      v9 = 8194;
      v10 = 3;
      goto LABEL_26;
    case 4:
      v8 = TPSPairedHomePodValidation;
      goto LABEL_24;
    case 5:
      v13 = @"A2051";
      v14 = 5;
      goto LABEL_29;
    case 6:
      v9 = 8207;
      v10 = 6;
      goto LABEL_26;
    case 7:
      v8 = TPSPairedAirTagValidation;
      goto LABEL_24;
    case 8:
      v9 = 8206;
      v10 = 8;
      goto LABEL_26;
    case 9:
      v8 = TPSPairedHomePodMiniValidation;
      goto LABEL_24;
    case 10:
      v9 = 8202;
      v10 = 10;
      goto LABEL_26;
    case 12:
      v9 = 8211;
      v10 = 12;
LABEL_26:
      v7 = [(TPSPairedDeviceValidation *)self _bluetoothValidationForProductID:v9 deviceType:v10];
      goto LABEL_30;
    case 21:
      v11 = &unk_284830B40;
      v12 = 21;
      goto LABEL_20;
    case 22:
      v8 = TPSPairedLargeHomePodValidation;
LABEL_24:
      v7 = objc_alloc_init(v8);
      goto LABEL_30;
    case 24:
      v11 = &unk_284830B58;
      v12 = 24;
      goto LABEL_20;
    case 25:
      v11 = &unk_284830B70;
      v12 = 25;
      goto LABEL_20;
    case 26:
      v13 = @"A2538";
      v14 = 26;
      goto LABEL_29;
    case 27:
      v13 = @"A3085";
      v14 = 27;
LABEL_29:
      v7 = [(TPSPairedDeviceValidation *)self _bluetoothValidationForTag:v13 deviceType:v14];
      goto LABEL_30;
    case 28:
      v7 = [TPSBlockValidation blockValidationWithBlock:&__block_literal_global_5];
      goto LABEL_30;
    case 30:
      v11 = &unk_284830B88;
      v12 = 30;
LABEL_20:
      v7 = [(TPSPairedDeviceValidation *)self _bluetoothValidationForProductIDs:v11 deviceType:v12 joinType:1];
LABEL_30:
      v6 = v7;
      if (!v7)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    default:
      v15 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(TPSPairedDeviceValidation *)a3 _validationForDeviceNumber:v15];
      }

LABEL_31:
      v6 = objc_alloc_init(TPSTargetingValidation);
LABEL_32:

      return v6;
  }
}

void __56__TPSPairedDeviceValidation__validationForDeviceNumber___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2BCF8];
  v3 = a2;
  v4 = [v2 sharedInstance];
  v11 = [v4 getActivePairedDevice];

  v5 = [v11 valueForProperty:*MEMORY[0x277D2BB88]];
  v6 = [v5 integerValue];

  v7 = [v11 valueForProperty:*MEMORY[0x277D2BB80]];
  v8 = [v7 integerValue];

  v9 = v6 == 416 && v8 == 496 || v6 == 374 && v8 == 446;
  v3[2](v3, v9, 0);
}

- (id)_bluetoothValidationForTag:(id)a3 deviceType:(int64_t)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__TPSPairedDeviceValidation__bluetoothValidationForTag_deviceType___block_invoke;
  v10[3] = &unk_2789B0B40;
  v11 = v6;
  v12 = self;
  v13 = a4;
  v7 = v6;
  v8 = [TPSBlockValidation blockValidationWithBlock:v10];

  return v8;
}

void __67__TPSPairedDeviceValidation__bluetoothValidationForTag_deviceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 cachedPeers];
  v7 = [TPSBluetoothChecker bluetoothPairedWithTag:v3 withPairedPeers:v6];

  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __67__TPSPairedDeviceValidation__bluetoothValidationForTag_deviceType___block_invoke_cold_1(a1);
  }

  v5[2](v5, v7, 0);
}

- (id)_bluetoothValidationForProductID:(unsigned int)a3 deviceType:(int64_t)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__TPSPairedDeviceValidation__bluetoothValidationForProductID_deviceType___block_invoke;
  v6[3] = &unk_2789B0B68;
  v7 = a3;
  v6[4] = self;
  v6[5] = a4;
  v4 = [TPSBlockValidation blockValidationWithBlock:v6];

  return v4;
}

void __73__TPSPairedDeviceValidation__bluetoothValidationForProductID_deviceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 cachedDevices];
  v7 = [TPSBluetoothChecker bluetoothPairedForProductID:v3 withPairedDevices:v6];

  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __73__TPSPairedDeviceValidation__bluetoothValidationForProductID_deviceType___block_invoke_cold_1(a1);
  }

  v5[2](v5, v7, 0);
}

- (id)_bluetoothValidationForProductIDs:(id)a3 deviceType:(int64_t)a4 joinType:(int64_t)a5
{
  v8 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke;
  v12[3] = &unk_2789B0BB8;
  v13 = v8;
  v14 = self;
  v15 = a5;
  v16 = a4;
  v9 = v8;
  v10 = [TPSBlockValidation blockValidationWithBlock:v12];

  return v10;
}

void __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  if (v4 == 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke_3;
    v10[3] = &unk_2789B0B90;
    v7 = a1[4];
    v10[4] = a1[5];
    v6 = [v7 na_any:v10];
    goto LABEL_5;
  }

  if (!v4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke_2;
    v11[3] = &unk_2789B0B90;
    v5 = a1[4];
    v11[4] = a1[5];
    v6 = [v5 na_all:v11];
LABEL_5:
    v8 = v6;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke_cold_1(a1);
  }

  v3[2](v3, v8, 0);
}

BOOL __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntValue];
  v4 = [*(a1 + 32) cachedDevices];
  v5 = [TPSBluetoothChecker bluetoothPairedForProductID:v3 withPairedDevices:v4];

  return v5;
}

BOOL __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntValue];
  v4 = [*(a1 + 32) cachedDevices];
  v5 = [TPSBluetoothChecker bluetoothPairedForProductID:v3 withPairedDevices:v4];

  return v5;
}

void __52__TPSPairedDeviceValidation_validateWithCompletion___block_invoke_5_cold_1(uint64_t a1, char a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) name];
  v7 = [*(a1 + 32) targetDevices];
  v8 = [*(a1 + 32) excludeDevices];
  v10 = 138413058;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 1024;
  v17 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - Include: %@, Exclude: %@. Valid: %d", &v10, 0x26u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_validationForDeviceNumber:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unrecognized device number: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __67__TPSPairedDeviceValidation__bluetoothValidationForTag_deviceType___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_232D6F000, v2, v3, "Checking for BT Device: %ld. Paired: %d", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __73__TPSPairedDeviceValidation__bluetoothValidationForProductID_deviceType___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_232D6F000, v2, v3, "Checking for BT Device: %ld. Paired: %d", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

void __83__TPSPairedDeviceValidation__bluetoothValidationForProductIDs_deviceType_joinType___block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_232D6F000, v2, v3, "Checking for BT Device: %ld. Paired: %d", v5, v6);
  v4 = *MEMORY[0x277D85DE8];
}

@end