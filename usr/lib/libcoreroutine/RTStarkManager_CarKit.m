@interface RTStarkManager_CarKit
- (CRPairedVehicleManager)pairedVehicleManager;
- (RTStarkManager_CarKit)initWithDefaultsManager:(id)a3;
- (void)_fetchConnectionStateWithHandler:(id)a3;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_updateTrustedConnectionEstablished;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onPairedVehiclesDidChange:(id)a3;
- (void)setTrustedConnectionEstablished:(BOOL)a3;
- (void)setup;
@end

@implementation RTStarkManager_CarKit

- (RTStarkManager_CarKit)initWithDefaultsManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = RTStarkManager_CarKit;
  v3 = [(RTStarkManager *)&v6 initWithDefaultsManager:a3];
  v4 = v3;
  if (v3)
  {
    [(RTStarkManager_CarKit *)v3 setup];
  }

  return v4;
}

- (void)_setup
{
  v3 = [(RTStarkManager *)self defaultsManager];
  v4 = [v3 objectForKey:@"StarkTrustedConnectionEstablished"];
  self->_trustedConnectionEstablished = [v4 BOOLValue];

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 addObserver:self selector:sel_onPairedVehiclesDidChange_ name:@"CRPairedVehiclesDidChangeNotification" object:0];
}

- (void)setup
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__RTStarkManager_CarKit_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_shutdownWithHandler:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self name:@"CRPairedVehiclesDidChangeNotification" object:0];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RTStarkManager_CarKit;
  v7 = a4;
  [(RTStarkManager *)&v11 internalAddObserver:v6 name:v7];
  v8 = [(RTNotification *)RTStarkManagerNotificationTrustedConnectionEstablished notificationName:v11.receiver];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTStarkManagerNotificationTrustedConnectionEstablished alloc] initWithTrustedConnectionEstablished:[(RTStarkManager_CarKit *)self trustedConnectionEstablished]];
    [(RTNotifier *)self postNotification:v10 toObserver:v6];
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v7.receiver = self;
  v7.super_class = RTStarkManager_CarKit;
  v5 = a4;
  [(RTStarkManager *)&v7 internalRemoveObserver:a3 name:v5];
  v6 = [(RTNotification *)RTStarkManagerNotificationTrustedConnectionEstablished notificationName:v7.receiver];
  [v5 isEqualToString:v6];
}

- (void)setTrustedConnectionEstablished:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_trustedConnectionEstablished != a3)
  {
    self->_trustedConnectionEstablished = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityStark);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        if (self->_trustedConnectionEstablished)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "trusted connection established, %@", &v9, 0xCu);
      }
    }

    v6 = [(RTStarkManager *)self defaultsManager];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_trustedConnectionEstablished];
    [v6 setObject:v7 forKey:@"StarkTrustedConnectionEstablished"];

    v8 = [[RTStarkManagerNotificationTrustedConnectionEstablished alloc] initWithTrustedConnectionEstablished:self->_trustedConnectionEstablished];
    [(RTNotifier *)self postNotification:v8];
  }
}

- (CRPairedVehicleManager)pairedVehicleManager
{
  pairedVehicleManager = self->_pairedVehicleManager;
  if (!pairedVehicleManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF8A68]);
    v5 = self->_pairedVehicleManager;
    self->_pairedVehicleManager = v4;

    pairedVehicleManager = self->_pairedVehicleManager;
  }

  return pairedVehicleManager;
}

- (void)_updateTrustedConnectionEstablished
{
  v3 = [(RTStarkManager_CarKit *)self pairedVehicleManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__RTStarkManager_CarKit__updateTrustedConnectionEstablished__block_invoke;
  v4[3] = &unk_2788C6B10;
  v4[4] = self;
  [v3 fetchPairedVehiclesWithCompletion:v4];
}

- (void)onPairedVehiclesDidChange:(id)a3
{
  v4 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTStarkManager_CarKit_onPairedVehiclesDidChange___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_fetchConnectionStateWithHandler:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CF89F8];
    v4 = a3;
    v7 = [[v3 alloc] initAndWaitUntilSessionUpdated];
    v5 = [v7 currentSession];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v4[2](v4, v6, 0);
  }
}

@end