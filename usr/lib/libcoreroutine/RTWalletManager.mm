@interface RTWalletManager
+ (int64_t)passUseSourceFromUsageNotificationSource:(int64_t)a3;
- (RTWalletManager)initWithDefaultsManager:(id)a3;
- (void)_passUsedWithTypeIdentifier:(id)a3 source:(int64_t)a4 info:(id)a5;
- (void)_paymentMadeWithIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5;
- (void)_registerForNotifications;
- (void)_registerPassUseCallbacks;
- (void)_registerPaymentUseCallbacks;
- (void)_shutdownWithHandler:(id)a3;
- (void)_unregisterForNotifications;
- (void)_unregisterPassUseCallbacks;
- (void)_unregisterPaymentUseCallbacks;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onDefaultsUpdate:(id)a3;
- (void)passUsedWithTypeIdentifier:(id)a3 source:(int64_t)a4 info:(id)a5;
- (void)paymentMadeWithIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5;
- (void)setMaximumTransactionDistance:(double)a3;
- (void)updateDoubleForKey:(id)a3 handler:(id)a4;
@end

@implementation RTWalletManager

- (RTWalletManager)initWithDefaultsManager:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = RTWalletManager;
  v6 = [(RTNotifier *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultsManager, a3);
    v7->_maximumTransactionDistance = 1000.0;
    v8 = objc_opt_new();
    passKitClient = v7->_passKitClient;
    v7->_passKitClient = v8;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__RTWalletManager_initWithDefaultsManager___block_invoke;
    v12[3] = &unk_2788CD740;
    v10 = v7;
    v13 = v10;
    [(RTWalletManager *)v10 updateDoubleForKey:@"RTDefaultsWalletManagerMinimumUncertaintyThreshold" handler:v12];
    [(RTService *)v10 setup];
  }

  return v7;
}

- (void)_shutdownWithHandler:(id)a3
{
  v5 = a3;
  [(RTWalletManager *)self _unregisterForNotifications];
  [(RTWalletManager *)self _unregisterPassUseCallbacks];
  [(RTWalletManager *)self _unregisterPaymentUseCallbacks];
  [(RTWalletManager *)self setPassKitClient:0];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)_registerForNotifications
{
  defaultsManager = self->_defaultsManager;
  v4 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  [(RTNotifier *)defaultsManager addObserver:self selector:sel_onDefaultsUpdate_ name:v4];
}

- (void)_unregisterForNotifications
{
  defaultsManager = self->_defaultsManager;
  v4 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  [(RTNotifier *)defaultsManager removeObserver:self fromNotification:v4];
}

- (void)onDefaultsUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 updatedKeys];
    v9 = [v8 containsObject:@"RTDefaultsWalletManagerMinimumUncertaintyThreshold"];

    if (v9)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __36__RTWalletManager_onDefaultsUpdate___block_invoke;
      v10[3] = &unk_2788CD740;
      v10[4] = self;
      [(RTWalletManager *)self updateDoubleForKey:@"RTDefaultsWalletManagerMinimumUncertaintyThreshold" handler:v10];
    }
  }
}

void __36__RTWalletManager_onDefaultsUpdate___block_invoke(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__RTWalletManager_onDefaultsUpdate___block_invoke_2;
  v5[3] = &unk_2788C52E8;
  v5[4] = *(a1 + 32);
  *&v5[5] = a2;
  dispatch_async(v4, v5);
}

- (void)updateDoubleForKey:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTWalletManager_updateDoubleForKey_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __46__RTWalletManager_updateDoubleForKey_handler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v4 = _rt_log_facility_get_os_log(RTLogFacilityWallet);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v5 = *(a1 + 40);
          v10 = 138412546;
          v11 = v5;
          v12 = 2048;
          v13 = 0;
          _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "onDefaultsUpdate %@ = %f", &v10, 0x16u);
        }

        v3 = *(a1 + 48);
      }

      [v2 doubleValue];
      (*(v3 + 16))(v3, v6);
    }
  }

  else if (*(a1 + 48))
  {
    if ([*(a1 + 40) isEqualToString:@"RTDefaultsWalletManagerMinimumUncertaintyThreshold"])
    {
      v7.n128_u64[0] = 0x408F400000000000;
      (*(*(a1 + 48) + 16))(*(a1 + 48), v7);
    }

    else
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[RTWalletManager updateDoubleForKey:handler:]_block_invoke";
        v12 = 1024;
        LODWORD(v13) = 166;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "missing key from update (in %s:%d)", &v10, 0x12u);
      }

      v9.n128_u64[0] = 0;
      (*(*(a1 + 48) + 16))(*(a1 + 48), v9);
    }
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)RTWalletManagerNotificationPassUsed];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if ([(RTNotifier *)self getNumberOfObservers:v5]== 1)
    {
      [(RTWalletManager *)self _registerPassUseCallbacks];
    }
  }

  else
  {
    v8 = +[(RTNotification *)RTWalletManagerNotificationPaymentUsed];
    v9 = [v5 isEqualToString:v8];

    if (v9)
    {
      if ([(RTNotifier *)self getNumberOfObservers:v5]== 1)
      {
        [(RTWalletManager *)self _registerPaymentUseCallbacks];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityWallet);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v11, 0xCu);
      }
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)RTWalletManagerNotificationPassUsed];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (![(RTNotifier *)self getNumberOfObservers:v5])
    {
      [(RTWalletManager *)self _unregisterPassUseCallbacks];
    }
  }

  else
  {
    v8 = +[(RTNotification *)RTWalletManagerNotificationPaymentUsed];
    v9 = [v5 isEqualToString:v8];

    if (v9)
    {
      if (![(RTNotifier *)self getNumberOfObservers:v5])
      {
        [(RTWalletManager *)self _unregisterPaymentUseCallbacks];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityWallet);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v11, 0xCu);
      }
    }
  }
}

- (void)_registerPassUseCallbacks
{
  objc_initWeak(&location, self);
  v3 = [(RTWalletManager *)self passKitClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__RTWalletManager__registerPassUseCallbacks__block_invoke;
  v4[3] = &unk_2788CD768;
  objc_copyWeak(&v5, &location);
  [v3 setPassUsageHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__RTWalletManager__registerPassUseCallbacks__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained passUsedWithTypeIdentifier:v8 source:a3 info:v7];
}

- (void)_registerPaymentUseCallbacks
{
  objc_initWeak(&location, self);
  v3 = [(RTWalletManager *)self passKitClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__RTWalletManager__registerPaymentUseCallbacks__block_invoke;
  v4[3] = &unk_2788CD790;
  objc_copyWeak(&v5, &location);
  [v3 setPaymentUsageHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __47__RTWalletManager__registerPaymentUseCallbacks__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained paymentMadeWithIdentifier:v9 transactionIdentifier:v8 info:v7];
}

- (void)_unregisterPassUseCallbacks
{
  v2 = [(RTWalletManager *)self passKitClient];
  [v2 setPassUsageHandler:0];
}

- (void)_unregisterPaymentUseCallbacks
{
  v2 = [(RTWalletManager *)self passKitClient];
  [v2 setPaymentPassUsageHandler:0];
}

- (void)passUsedWithTypeIdentifier:(id)a3 source:(int64_t)a4 info:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__RTWalletManager_passUsedWithTypeIdentifier_source_info___block_invoke;
  v13[3] = &unk_2788C4C70;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_passUsedWithTypeIdentifier:(id)a3 source:(int64_t)a4 info:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityWallet);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412802;
      v14 = v8;
      v15 = 2048;
      v16 = a4;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "pass used with identifier, %@, source, %ld, pass info, %@", &v13, 0x20u);
    }
  }

  v11 = [objc_opt_class() passUseSourceFromUsageNotificationSource:a4];
  if (v11)
  {
    v12 = [[RTWalletManagerNotificationPassUsed alloc] initWithPassTypeIdentifier:v8 source:v11 info:v9];
    [(RTNotifier *)self postNotification:v12];
  }
}

- (void)paymentMadeWithIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__RTWalletManager_paymentMadeWithIdentifier_transactionIdentifier_info___block_invoke;
  v15[3] = &unk_2788CBEA8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_paymentMadeWithIdentifier:(id)a3 transactionIdentifier:(id)a4 info:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityWallet);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "payment made with identifier, %@, transaction identifier, %@, payment info, %@", &v16, 0x20u);
    }
  }

  v12 = [v10 objectForKey:*MEMORY[0x277D38A70]];
  v13 = v12;
  if (v12)
  {
    [v12 horizontalAccuracy];
    if (v14 <= *MEMORY[0x277CE4238])
    {
      v15 = [[RTWalletManagerNotificationPaymentUsed alloc] initWithPassIdentifier:v8 transactionIdentifier:v9 info:v10];
      [(RTNotifier *)self postNotification:v15];
    }
  }
}

+ (int64_t)passUseSourceFromUsageNotificationSource:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)setMaximumTransactionDistance:(double)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_maximumTransactionDistance != a3)
  {
    self->_maximumTransactionDistance = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityWallet);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        maximumTransactionDistance = self->_maximumTransactionDistance;
        v6 = 134217984;
        v7 = maximumTransactionDistance;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "update maximum transaction distance to %f", &v6, 0xCu);
      }
    }
  }
}

@end