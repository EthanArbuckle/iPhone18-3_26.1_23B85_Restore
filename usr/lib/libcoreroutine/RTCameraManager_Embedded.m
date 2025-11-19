@interface RTCameraManager_Embedded
- (RTCameraManager_Embedded)init;
- (void)_handleCameraPowerNotification:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)dealloc;
- (void)handleCameraPowerNotification:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
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

- (void)_shutdownWithHandler:(id)a3
{
  v5 = a3;
  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.frontcamerapower"];
  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.isp.backcamerapower"];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
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

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTCameraManagerNotificationCameraPowerChanged];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    if ([(RTNotifier *)self getNumberOfObservers:v7]== 1)
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

    v13 = [(RTDarwinNotificationHelper *)self->_notificationHelper stateForNotificationName:v7, v15, v16, v17, v18]== 1;
    if ([v7 isEqualToString:@"com.apple.isp.frontcamerapower"])
    {
      v14 = 0;
    }

    else
    {
      v14 = [v7 isEqualToString:@"com.apple.isp.backcamerapower"];
    }

    v12 = [[RTCameraManagerNotificationCameraPowerChanged alloc] initWithCameraType:v14 powerState:v13];
    if (v12)
    {
      [(RTNotifier *)self postNotification:v12 toObserver:v6];
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityCamera);
    if (os_log_type_enabled(&v12->super.super, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v7;
      _os_log_error_impl(&dword_2304B3000, &v12->super.super, OS_LOG_TYPE_ERROR, "Unsupported notification %@", location, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[(RTNotification *)RTCameraManagerNotificationCameraPowerChanged];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (![(RTNotifier *)self getNumberOfObservers:v5])
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
      v10 = v5;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Unsupported notification %@", &v9, 0xCu);
    }
  }
}

- (void)handleCameraPowerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RTCameraManager_Embedded_handleCameraPowerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleCameraPowerNotification:(id)a3
{
  v7 = a3;
  v4 = [(RTDarwinNotificationHelper *)self->_notificationHelper stateForNotificationName:v7]== 1;
  if ([v7 isEqualToString:@"com.apple.isp.frontcamerapower"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v7 isEqualToString:@"com.apple.isp.backcamerapower"];
  }

  v6 = [[RTCameraManagerNotificationCameraPowerChanged alloc] initWithCameraType:v5 powerState:v4];
  if (v6)
  {
    [(RTNotifier *)self postNotification:v6];
  }
}

@end