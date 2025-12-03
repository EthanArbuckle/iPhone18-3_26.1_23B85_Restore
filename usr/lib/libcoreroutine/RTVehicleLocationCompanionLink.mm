@interface RTVehicleLocationCompanionLink
- (BOOL)_companionLinkConnected;
- (RTVehicleLocationCompanionLink)initWithQueue:(id)queue companionLinkClient:(id)client vehicleEventHandler:(id)handler deviceConnectionUpdateHandler:(id)updateHandler;
- (RTVehicleLocationCompanionLink)initWithQueue:(id)queue deviceConnectionUpdateHandler:(id)handler;
- (RTVehicleLocationCompanionLink)initWithQueue:(id)queue vehicleEventHandler:(id)handler;
- (id)decodeVehicleEvent:(id)event;
- (id)encodeVehicleEvent:(id)event;
- (void)registerEventHandlers;
- (void)sendVehicleEvent:(id)event handler:(id)handler;
@end

@implementation RTVehicleLocationCompanionLink

- (RTVehicleLocationCompanionLink)initWithQueue:(id)queue vehicleEventHandler:(id)handler
{
  v6 = MEMORY[0x277D44160];
  handlerCopy = handler;
  queueCopy = queue;
  v9 = objc_alloc_init(v6);
  v10 = [(RTVehicleLocationCompanionLink *)self initWithQueue:queueCopy companionLinkClient:v9 vehicleEventHandler:handlerCopy deviceConnectionUpdateHandler:0];

  return v10;
}

- (RTVehicleLocationCompanionLink)initWithQueue:(id)queue deviceConnectionUpdateHandler:(id)handler
{
  v6 = MEMORY[0x277D44160];
  handlerCopy = handler;
  queueCopy = queue;
  v9 = objc_alloc_init(v6);
  v10 = [(RTVehicleLocationCompanionLink *)self initWithQueue:queueCopy companionLinkClient:v9 vehicleEventHandler:0 deviceConnectionUpdateHandler:handlerCopy];

  return v10;
}

- (RTVehicleLocationCompanionLink)initWithQueue:(id)queue companionLinkClient:(id)client vehicleEventHandler:(id)handler deviceConnectionUpdateHandler:(id)updateHandler
{
  queueCopy = queue;
  clientCopy = client;
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  if (!queueCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    LOWORD(location[0]) = 0;
    v25 = "Invalid parameter not satisfying: queue";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, location, 2u);
    goto LABEL_9;
  }

  if (!clientCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    LOWORD(location[0]) = 0;
    v25 = "Invalid parameter not satisfying: companionLinkClient";
    goto LABEL_12;
  }

  v34.receiver = self;
  v34.super_class = RTVehicleLocationCompanionLink;
  v15 = [(RTVehicleLocationCompanionLink *)&v34 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_queue, queue);
    v17 = _Block_copy(handlerCopy);
    vehicleEventHandler = v16->_vehicleEventHandler;
    v16->_vehicleEventHandler = v17;

    objc_storeStrong(&v16->_client, client);
    [(RPCompanionLinkClient *)v16->_client setDispatchQueue:queueCopy];
    [(RPCompanionLinkClient *)v16->_client setControlFlags:32];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __118__RTVehicleLocationCompanionLink_initWithQueue_companionLinkClient_vehicleEventHandler_deviceConnectionUpdateHandler___block_invoke;
    v32[3] = &unk_2788D0790;
    v19 = updateHandlerCopy;
    v33 = v19;
    client = [(RTVehicleLocationCompanionLink *)v16 client];
    [client setDeviceFoundHandler:v32];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __118__RTVehicleLocationCompanionLink_initWithQueue_companionLinkClient_vehicleEventHandler_deviceConnectionUpdateHandler___block_invoke_22;
    v30[3] = &unk_2788D0790;
    v31 = v19;
    client2 = [(RTVehicleLocationCompanionLink *)v16 client];
    [client2 setDeviceLostHandler:v30];

    objc_initWeak(location, v16);
    client3 = [(RTVehicleLocationCompanionLink *)v16 client];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __118__RTVehicleLocationCompanionLink_initWithQueue_companionLinkClient_vehicleEventHandler_deviceConnectionUpdateHandler___block_invoke_23;
    v27[3] = &unk_2788D07B8;
    objc_copyWeak(&v28, location);
    [client3 activateWithCompletion:v27];

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }

  self = v16;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

void __118__RTVehicleLocationCompanionLink_initWithQueue_companionLinkClient_vehicleEventHandler_deviceConnectionUpdateHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 1);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 model];
    if (v5)
    {
      v6 = [v3 model];
    }

    else
    {
      v6 = @"Unknown Model";
    }

    v7 = [v3 name];
    if (v7)
    {
      v8 = [v3 name];
    }

    else
    {
      v8 = @"Unknown Name";
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v3 effectiveIdentifier];
        v11 = 138412802;
        v12 = v10;
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "RTVehicleLocationCompanionLink, onDeviceFound, id, %@, name, %@, model, %@", &v11, 0x20u);
      }
    }
  }
}

void __118__RTVehicleLocationCompanionLink_initWithQueue_companionLinkClient_vehicleEventHandler_deviceConnectionUpdateHandler___block_invoke_22(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 model];
    if (v5)
    {
      v6 = [v3 model];
    }

    else
    {
      v6 = @"Unknown Model";
    }

    v7 = [v3 name];
    if (v7)
    {
      v8 = [v3 name];
    }

    else
    {
      v8 = @"Unknown Name";
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v3 effectiveIdentifier];
        v11 = 138412802;
        v12 = v10;
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "RTVehicleLocationCompanionLink, onDeviceLost, id, %@, name, %@, model, %@", &v11, 0x20u);
      }
    }
  }
}

void __118__RTVehicleLocationCompanionLink_initWithQueue_companionLinkClient_vehicleEventHandler_deviceConnectionUpdateHandler___block_invoke_23(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "RTVehicleLocationCompanionLink, Failed to activate RPCompanionLinkClient with error %@", &v7, 0xCu);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "RTVehicleLocationCompanionLink, rapport session ready to listen for incoming devices", &v7, 2u);
    }

    goto LABEL_4;
  }

LABEL_5:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained vehicleEventHandler];

  if (v6)
  {
    [WeakRetained registerEventHandlers];
  }
}

- (id)encodeVehicleEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = objc_opt_new();
  v5 = v4;
  if (!eventCopy)
  {
    [v4 setObject:@"clear" forKeyedSubscript:@"type"];
LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  v12 = 0;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:eventCopy requiringSecureCoding:1 error:&v12];
  v7 = v12;
  if (!v7)
  {
    [v5 setObject:@"update" forKeyedSubscript:@"type"];
    [v5 setObject:v6 forKeyedSubscript:@"payload"];

    goto LABEL_8;
  }

  v8 = v7;
  v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "RTVehicleLocationCompanionLink, Encoding error, %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)decodeVehicleEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = [eventCopy objectForKeyedSubscript:@"type"];
  if (![@"update" isEqualToString:v4])
  {
    if ([@"clear" isEqualToString:v4])
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_13;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "RTVehicleLocationCompanionLink, Decoding error, unknown event type, %@", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_11;
  }

  v5 = [eventCopy objectForKeyedSubscript:@"payload"];
  v10 = 0;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "RTVehicleLocationCompanionLink, Decoding error, %@", buf, 0xCu);
    }

    v5 = v6;
LABEL_11:
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (void)registerEventHandlers
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "RTVehicleLocationCompanionLink, registering request handlers", buf, 2u);
    }
  }

  client = self->_client;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__RTVehicleLocationCompanionLink_registerEventHandlers__block_invoke;
  v5[3] = &unk_2788D07E0;
  v5[4] = self;
  [(RPCompanionLinkClient *)client registerEventID:@"com.apple.routined.rapport.vehicleEventUpdate" options:0 handler:v5];
}

void __55__RTVehicleLocationCompanionLink_registerEventHandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "RTVehicleLocationCompanionLink, received an event update from a nearby device", v11, 2u);
    }
  }

  v8 = [*(a1 + 32) vehicleEventHandler];

  if (v8)
  {
    v9 = [*(a1 + 32) decodeVehicleEvent:v5];
    v10 = [*(a1 + 32) vehicleEventHandler];
    (v10)[2](v10, v9);
  }
}

- (BOOL)_companionLinkConnected
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_client activeDevices];
  v3 = [activeDevices countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = (i + 1))
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(activeDevices);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 statusFlags])
        {
          LOBYTE(v3) = 1;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
            if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v13 = v6;
              _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "RTVehicleLocationCompanionLink, companion link connected device %@", buf, 0xCu);
            }

            LOBYTE(v3) = 1;
          }

          goto LABEL_14;
        }
      }

      v3 = [activeDevices countByEnumeratingWithState:&v8 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

- (void)sendVehicleEvent:(id)event handler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  handlerCopy = handler;
  if ([(RTVehicleLocationCompanionLink *)self _companionLinkConnected])
  {
    v8 = [(RTVehicleLocationCompanionLink *)self encodeVehicleEvent:eventCopy];
    if (v8)
    {
      client = [(RTVehicleLocationCompanionLink *)self client];
      v10 = *MEMORY[0x277D44230];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__RTVehicleLocationCompanionLink_sendVehicleEvent_handler___block_invoke;
      v14[3] = &unk_2788C48C0;
      v15 = handlerCopy;
      [client sendEventID:@"com.apple.routined.rapport.vehicleEventUpdate" event:v8 destinationID:v10 options:0 completion:v14];
    }

    else
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = eventCopy;
        _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "RTVehicleLocationCompanionLink, invalid payload, %@", buf, 0xCu);
      }

      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      activeDevices = [(RPCompanionLinkClient *)self->_client activeDevices];
      *buf = 138412290;
      v17 = activeDevices;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "RTVehicleLocationCompanionLink, no connected clients, %@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __59__RTVehicleLocationCompanionLink_sendVehicleEvent_handler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "RTVehicleLocationCompanionLink, failed to post a vehicle event, err, %@", &v5, 0xCu);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "RTVehicleLocationCompanionLink, send a vehicle event to paried companion device", &v5, 2u);
    }
  }

LABEL_5:
  (*(*(a1 + 32) + 16))();
}

@end