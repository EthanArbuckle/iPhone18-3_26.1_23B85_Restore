@interface RTStarkManager_CarKit
- (CRPairedVehicleManager)pairedVehicleManager;
- (RTStarkManager_CarKit)initWithDefaultsManager:(id)manager;
- (void)_fetchConnectionStateWithHandler:(id)handler;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_updateTrustedConnectionEstablished;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onPairedVehiclesDidChange:(id)change;
- (void)setTrustedConnectionEstablished:(BOOL)established;
- (void)setup;
@end

@implementation RTStarkManager_CarKit

- (RTStarkManager_CarKit)initWithDefaultsManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = RTStarkManager_CarKit;
  v3 = [(RTStarkManager *)&v6 initWithDefaultsManager:manager];
  v4 = v3;
  if (v3)
  {
    [(RTStarkManager_CarKit *)v3 setup];
  }

  return v4;
}

- (void)_setup
{
  defaultsManager = [(RTStarkManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"StarkTrustedConnectionEstablished"];
  self->_trustedConnectionEstablished = [v4 BOOLValue];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onPairedVehiclesDidChange_ name:@"CRPairedVehiclesDidChangeNotification" object:0];
}

- (void)setup
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__RTStarkManager_CarKit_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self name:@"CRPairedVehiclesDidChangeNotification" object:0];

  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v5 = handlerCopy;
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  observerCopy = observer;
  v11.receiver = self;
  v11.super_class = RTStarkManager_CarKit;
  nameCopy = name;
  [(RTStarkManager *)&v11 internalAddObserver:observerCopy name:nameCopy];
  v8 = [(RTNotification *)RTStarkManagerNotificationTrustedConnectionEstablished notificationName:v11.receiver];
  v9 = [nameCopy isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTStarkManagerNotificationTrustedConnectionEstablished alloc] initWithTrustedConnectionEstablished:[(RTStarkManager_CarKit *)self trustedConnectionEstablished]];
    [(RTNotifier *)self postNotification:v10 toObserver:observerCopy];
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v7.receiver = self;
  v7.super_class = RTStarkManager_CarKit;
  nameCopy = name;
  [(RTStarkManager *)&v7 internalRemoveObserver:observer name:nameCopy];
  v6 = [(RTNotification *)RTStarkManagerNotificationTrustedConnectionEstablished notificationName:v7.receiver];
  [nameCopy isEqualToString:v6];
}

- (void)setTrustedConnectionEstablished:(BOOL)established
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_trustedConnectionEstablished != established)
  {
    self->_trustedConnectionEstablished = established;
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

    defaultsManager = [(RTStarkManager *)self defaultsManager];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_trustedConnectionEstablished];
    [defaultsManager setObject:v7 forKey:@"StarkTrustedConnectionEstablished"];

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
  pairedVehicleManager = [(RTStarkManager_CarKit *)self pairedVehicleManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__RTStarkManager_CarKit__updateTrustedConnectionEstablished__block_invoke;
  v4[3] = &unk_2788C6B10;
  v4[4] = self;
  [pairedVehicleManager fetchPairedVehiclesWithCompletion:v4];
}

- (void)onPairedVehiclesDidChange:(id)change
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTStarkManager_CarKit_onPairedVehiclesDidChange___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_fetchConnectionStateWithHandler:(id)handler
{
  if (handler)
  {
    v3 = MEMORY[0x277CF89F8];
    handlerCopy = handler;
    initAndWaitUntilSessionUpdated = [[v3 alloc] initAndWaitUntilSessionUpdated];
    currentSession = [initAndWaitUntilSessionUpdated currentSession];

    if (currentSession)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    handlerCopy[2](handlerCopy, v6, 0);
  }
}

@end