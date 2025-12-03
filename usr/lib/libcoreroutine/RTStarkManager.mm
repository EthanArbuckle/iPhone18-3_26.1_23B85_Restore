@interface RTStarkManager
+ (BOOL)supportsNotificationName:(id)name;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)connectionStateToString:(int64_t)string;
- (RTStarkManager)initWithDefaultsManager:(id)manager;
- (void)_fetchConnectionStateWithHandler:(id)handler;
- (void)fetchConnectionStateWithHandler:(id)handler;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
@end

@implementation RTStarkManager

void __60__RTStarkManager_CarKit__updateTrustedConnectionEstablished__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTStarkManager_CarKit__updateTrustedConnectionEstablished__block_invoke_2;
  block[3] = &unk_2788C76F8;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __60__RTStarkManager_CarKit__updateTrustedConnectionEstablished__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityStark);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "error retrieving paired vehicles, %@", &v5, 0xCu);
    }
  }

  return [*(a1 + 40) setTrustedConnectionEstablished:{objc_msgSend(*(a1 + 48), "count") != 0}];
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTStarkManager_CarKit allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTStarkManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (RTStarkManager)initWithDefaultsManager:(id)manager
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (managerCopy)
  {
    v11.receiver = self;
    v11.super_class = RTStarkManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_defaultsManager, manager);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTStarkManager initWithDefaultsManager:]";
      v14 = 1024;
      v15 = 50;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityStark);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityStark);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[(RTNotification *)RTStarkManagerNotificationTrustedConnectionEstablished];
  v5 = [nameCopy isEqualToString:v4];

  return v5;
}

- (void)fetchConnectionStateWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__RTStarkManager_fetchConnectionStateWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(queue, v6);
  }
}

- (void)_fetchConnectionStateWithHandler:(id)handler
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Not supported on this platform.";
    v3 = MEMORY[0x277CBEAC0];
    handlerCopy = handler;
    v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v5];
    handlerCopy[2](handlerCopy, 0, v6);
  }
}

+ (id)connectionStateToString:(int64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"Connected";
  }

  if (string == 2)
  {
    return @"Disconnected";
  }

  else
  {
    return v3;
  }
}

@end