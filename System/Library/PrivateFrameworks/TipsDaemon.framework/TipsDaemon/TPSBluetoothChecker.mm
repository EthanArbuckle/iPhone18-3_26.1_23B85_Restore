@interface TPSBluetoothChecker
+ (BOOL)bluetoothPairedWithTag:(id)tag withPairedPeers:(id)peers;
+ (id)bluetoothPairedForProductIDs:(id)ds minimumVersion:(id)version withPairedDevices:(id)devices;
+ (id)sharedInstance;
- (BOOL)bluetoothPairedWithTag:(id)tag;
- (NSArray)pairedDevices;
- (NSArray)pairedPeers;
- (TPSBluetoothChecker)init;
- (id)devicesAccessQueue;
- (void)initializeBTManager;
@end

@implementation TPSBluetoothChecker

+ (id)sharedInstance
{
  if (sharedInstance_predicate != -1)
  {
    +[TPSBluetoothChecker sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __37__TPSBluetoothChecker_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(TPSBluetoothChecker);

  return MEMORY[0x2821F96F8]();
}

- (TPSBluetoothChecker)init
{
  v9.receiver = self;
  v9.super_class = TPSBluetoothChecker;
  v2 = [(TPSBluetoothChecker *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:0 queue:0];
    centralManager = v2->_centralManager;
    v2->_centralManager = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(0, v5);
    peersAccessQueue = v2->_peersAccessQueue;
    v2->_peersAccessQueue = v6;

    [(TPSBluetoothChecker *)v2 initializeBTManager];
  }

  return v2;
}

- (void)initializeBTManager
{
  v3 = MEMORY[0x277CF3248];
  devicesAccessQueue = [(TPSBluetoothChecker *)self devicesAccessQueue];
  [v3 setSharedInstanceQueue:devicesAccessQueue];

  devicesAccessQueue2 = [(TPSBluetoothChecker *)self devicesAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TPSBluetoothChecker_initializeBTManager__block_invoke;
  block[3] = &unk_2789AFAB0;
  block[4] = self;
  dispatch_async(devicesAccessQueue2, block);
}

void __42__TPSBluetoothChecker_initializeBTManager__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CF3248] sharedInstance];
  [*(a1 + 32) setBluetoothManager:v2];
}

- (id)devicesAccessQueue
{
  if (devicesAccessQueue_onceToken != -1)
  {
    [TPSBluetoothChecker devicesAccessQueue];
  }

  v3 = devicesAccessQueue_accessQueue;

  return v3;
}

void __41__TPSBluetoothChecker_devicesAccessQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create(0, v2);
  v1 = devicesAccessQueue_accessQueue;
  devicesAccessQueue_accessQueue = v0;
}

- (NSArray)pairedPeers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  peersAccessQueue = [(TPSBluetoothChecker *)self peersAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__TPSBluetoothChecker_pairedPeers__block_invoke;
  v6[3] = &unk_2789B0140;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(peersAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__TPSBluetoothChecker_pairedPeers__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) centralManager];
  v2 = [v6 sharedPairingAgent];
  v3 = [v2 retrievePairedPeers];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (NSArray)pairedDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  devicesAccessQueue = [(TPSBluetoothChecker *)self devicesAccessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__TPSBluetoothChecker_pairedDevices__block_invoke;
  v6[3] = &unk_2789B0140;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(devicesAccessQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__TPSBluetoothChecker_pairedDevices__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) bluetoothManager];
  v2 = [v5 pairedDevices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)bluetoothPairedWithTag:(id)tag
{
  tagCopy = tag;
  pairedPeers = [(TPSBluetoothChecker *)self pairedPeers];
  LOBYTE(self) = [objc_opt_class() bluetoothPairedWithTag:tagCopy withPairedPeers:pairedPeers];

  return self;
}

+ (BOOL)bluetoothPairedWithTag:(id)tag withPairedPeers:(id)peers
{
  tagCopy = tag;
  peersCopy = peers;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__TPSBluetoothChecker_bluetoothPairedWithTag_withPairedPeers___block_invoke;
  v10[3] = &unk_2789B0860;
  v12 = &v13;
  v7 = tagCopy;
  v11 = v7;
  [peersCopy enumerateObjectsUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

void __62__TPSBluetoothChecker_bluetoothPairedWithTag_withPairedPeers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 hasTag:*(a1 + 32)];
    *a4 = *(*(*(a1 + 40) + 8) + 24);
  }
}

+ (id)bluetoothPairedForProductIDs:(id)ds minimumVersion:(id)version withPairedDevices:(id)devices
{
  dsCopy = ds;
  versionCopy = version;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  devicesCopy = devices;
  v10 = devicesCopy;
  if ([dsCopy count] >= 2)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__TPSBluetoothChecker_bluetoothPairedForProductIDs_minimumVersion_withPairedDevices___block_invoke;
    v19[3] = &unk_2789B0888;
    v20 = dsCopy;
    v10 = [devicesCopy sortedArrayUsingComparator:v19];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__TPSBluetoothChecker_bluetoothPairedForProductIDs_minimumVersion_withPairedDevices___block_invoke_2;
  v15[3] = &unk_2789B08B0;
  v11 = dsCopy;
  v16 = v11;
  v12 = versionCopy;
  v17 = v12;
  v18 = &v21;
  [v10 enumerateObjectsUsingBlock:v15];
  v13 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __85__TPSBluetoothChecker_bluetoothPairedForProductIDs_minimumVersion_withPairedDevices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInt:{objc_msgSend(a2, "productId")}];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 productId];

  v13 = [v11 numberWithUnsignedInt:v12];
  v14 = [v10 indexOfObject:v13];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL && (v14 != 0x7FFFFFFFFFFFFFFFLL ? (v15 = v9 < v14) : (v15 = 1), v15))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __85__TPSBluetoothChecker_bluetoothPairedForProductIDs_minimumVersion_withPairedDevices___block_invoke_2(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 vendorId];
  v8 = [v6 productId];
  if (v7 == 76)
  {
    v9 = v8;
    v10 = a1[4];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v8];
    LODWORD(v10) = [v10 containsObject:v11];

    if (v10)
    {
      if (a1[5])
      {
        v12 = [v6 accessoryInfo];
        v13 = [v12 objectForKeyedSubscript:@"AACPVersionInfo"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count] >= 0xB)
        {
          v14 = [v13 objectAtIndexedSubscript:10];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 length] >= 2)
          {
            if ([v14 tps_compareBuildVersionWithString:a1[5]] != -1)
            {
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
              v16 = *(a1[6] + 8);
              v17 = *(v16 + 40);
              *(v16 + 40) = v15;
            }

            v18 = [MEMORY[0x277D71778] default];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v23 = a1[5];
              v24[0] = 67109634;
              v24[1] = v9;
              v25 = 2112;
              v26 = v14;
              v27 = 2112;
              v28 = v23;
              _os_log_debug_impl(&dword_232D6F000, v18, OS_LOG_TYPE_DEBUG, "ProductID: %d, Found version: %@. Required Version: %@", v24, 0x1Cu);
            }
          }
        }
      }

      else
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v9];
        v20 = *(a1[6] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;
      }

      *a4 = *(*(a1[6] + 8) + 40) != 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end