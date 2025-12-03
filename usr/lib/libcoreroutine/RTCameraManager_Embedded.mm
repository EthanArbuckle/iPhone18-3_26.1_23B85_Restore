@interface RTCameraManager_Embedded
- (RTCameraManager_Embedded)init;
- (void)_handleCameraPowerNotification:(id)notification;
- (void)_shutdownWithHandler:(id)handler;
- (void)dealloc;
- (void)handleCameraPowerNotification:(id)notification;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
@end

@implementation RTCameraManager_Embedded

- (RTCameraManager_Embedded)init
{
  v6.receiver = self;
  v6.super_class = RTCameraManager_Embedded;
  v2 = [(RTNotifier *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    notificationHelper = v2->_notificationHelper;
    v2->_notificationHelper = v3;
  }

  return v2;
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.frontcamerapower"];
  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.backcamerapower"];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (void)dealloc
{
  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.frontcamerapower"];
  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.backcamerapower"];
  v3.receiver = self;
  v3.super_class = RTCameraManager_Embedded;
  [(RTCameraManager_Embedded *)&v3 dealloc];
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  location[3] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v8 = +[(RTNotification *)RTCameraManagerNotificationCameraPowerChanged];
  v9 = [nameCopy isEqualToString:v8];

  if (v9)
  {
    if ([(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
    {
      objc_initWeak(location, self);
      notificationHelper = self->_notificationHelper;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__RTCameraManager_Embedded_internalAddObserver_name___block_invoke;
      v20[3] = &unk_2788C5908;
      objc_copyWeak(&v21, location);
      [(RTDarwinNotificationHelper *)notificationHelper addObserverForNotificationName:@"com.apple.isp.frontcamerapower" handler:v20];
      v11 = self->_notificationHelper;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __53__RTCameraManager_Embedded_internalAddObserver_name___block_invoke_2;
      v18 = &unk_2788C5908;
      objc_copyWeak(&v19, location);
      [(RTDarwinNotificationHelper *)v11 addObserverForNotificationName:@"com.apple.isp.backcamerapower" handler:&v15];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v21);
      objc_destroyWeak(location);
    }

    v13 = [(RTDarwinNotificationHelper *)self->_notificationHelper stateForNotificationName:nameCopy, v15, v16, v17, v18]== 1;
    if ([nameCopy isEqualToString:@"com.apple.isp.frontcamerapower"])
    {
      v14 = 0;
    }

    else
    {
      v14 = [nameCopy isEqualToString:@"com.apple.isp.backcamerapower"];
    }

    v12 = [[RTCameraManagerNotificationCameraPowerChanged alloc] initWithCameraType:v14 powerState:v13];
    if (v12)
    {
      [(RTNotifier *)self postNotification:v12 toObserver:observerCopy];
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityCamera);
    if (os_log_type_enabled(&v12->super.super, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = nameCopy;
      _os_log_error_impl(&dword_2304B3000, &v12->super.super, OS_LOG_TYPE_ERROR, "Unsupported notification %@", location, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = +[(RTNotification *)RTCameraManagerNotificationCameraPowerChanged];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    if (![(RTNotifier *)self getNumberOfObservers:nameCopy])
    {
      [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.frontcamerapower"];
      [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.backcamerapower"];
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityCamera);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Unsupported notification %@", &v9, 0xCu);
    }
  }
}

- (void)handleCameraPowerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTCameraManager_Embedded_handleCameraPowerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_handleCameraPowerNotification:(id)notification
{
  notificationCopy = notification;
  v4 = [(RTDarwinNotificationHelper *)self->_notificationHelper stateForNotificationName:notificationCopy]== 1;
  if ([notificationCopy isEqualToString:@"com.apple.isp.frontcamerapower"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [notificationCopy isEqualToString:@"com.apple.isp.backcamerapower"];
  }

  v6 = [[RTCameraManagerNotificationCameraPowerChanged alloc] initWithCameraType:v5 powerState:v4];
  if (v6)
  {
    [(RTNotifier *)self postNotification:v6];
  }
}

@end