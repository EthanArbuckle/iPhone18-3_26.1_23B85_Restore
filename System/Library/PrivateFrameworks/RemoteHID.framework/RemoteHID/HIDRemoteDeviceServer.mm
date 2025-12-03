@interface HIDRemoteDeviceServer
- (BOOL)createRemoteDevice:(id)device deviceID:(unint64_t)d property:(id)property;
- (BOOL)remoteDeviceGetReportHandler:(id)handler packet:(id *)packet;
- (BOOL)remoteDeviceReportHandler:(id)handler header:(id *)header;
- (BOOL)remoteDeviceReportHandler:(id)handler packet:(id *)packet;
- (BOOL)remoteDeviceSetReportHandler:(id)handler packet:(id *)packet;
- (HIDRemoteDeviceServer)initWithQueue:(id)queue;
- (id)_disconnectEndpointID:(unint64_t)d;
- (id)description;
- (id)endpoints;
- (id)getEndpoint:(unint64_t)endpoint;
- (unint64_t)getRefreshCountForEndpoint:(id)endpoint deviceID:(unint64_t)d;
- (void)connectEndpoint:(id)endpoint;
- (void)disconnectAll;
- (void)disconnectEndpointID:(unint64_t)d;
- (void)endpointMessageHandler:(id)handler data:(char *)data size:(unint64_t)size;
- (void)setRefreshCountForEndpoint:(id)endpoint deviceID:(unint64_t)d count:(unint64_t)count;
@end

@implementation HIDRemoteDeviceServer

- (HIDRemoteDeviceServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = HIDRemoteDeviceServer;
  v6 = [(HIDRemoteDeviceServer *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_opt_new();
    endpoints = v7->_endpoints;
    v7->_endpoints = v8;

    v10 = dispatch_queue_create("com.apple.hid.RemoteHID", 0);
    asyncQueue = v7->_asyncQueue;
    v7->_asyncQueue = v10;

    v12 = objc_opt_new();
    refreshCounts = v7->_refreshCounts;
    v7->_refreshCounts = v12;

    v7->_lock = 0;
  }

  return v7;
}

- (id)endpoints
{
  os_unfair_recursive_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_endpoints allValues];
  os_unfair_recursive_lock_unlock();

  return allValues;
}

- (id)description
{
  v3 = objc_opt_new();
  endpoints = [(HIDRemoteDeviceServer *)self endpoints];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__HIDRemoteDeviceServer_description__block_invoke;
  v11[3] = &unk_279AFD2C0;
  v12 = v3;
  v5 = v3;
  [endpoints enumerateObjectsUsingBlock:v11];

  v6 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HIDRemoteDeviceServer;
  v7 = [(HIDRemoteDeviceServer *)&v10 description];
  v8 = [v6 stringWithFormat:@"<HIDRemoteDeviceServer state:%@ %@>", v5, v7];

  return v8;
}

void __36__HIDRemoteDeviceServer_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copyState];
  [v2 addObject:v3];
}

- (id)getEndpoint:(unint64_t)endpoint
{
  os_unfair_recursive_lock_lock_with_options();
  endpoints = self->_endpoints;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:endpoint];
  v7 = [(NSMutableDictionary *)endpoints objectForKeyedSubscript:v6];

  os_unfair_recursive_lock_unlock();

  return v7;
}

- (void)connectEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_recursive_lock_lock_with_options();
  v8 = -[HIDRemoteDeviceServer _disconnectEndpointID:](self, "_disconnectEndpointID:", [endpointCopy endpointID]);
  endpoints = self->_endpoints;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(endpointCopy, "endpointID")}];
  [(NSMutableDictionary *)endpoints setObject:endpointCopy forKeyedSubscript:v6];

  os_unfair_recursive_lock_unlock();
  v7 = v8;
  if (v8)
  {
    [v8 removeAllDevices];
    v7 = v8;
  }
}

- (void)disconnectEndpointID:(unint64_t)d
{
  v3 = [(HIDRemoteDeviceServer *)self _disconnectEndpointID:d];
  if (v3)
  {
    v4 = v3;
    [v3 removeAllDevices];
    v3 = v4;
  }
}

- (id)_disconnectEndpointID:(unint64_t)d
{
  os_unfair_recursive_lock_lock_with_options();
  endpoints = self->_endpoints;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v7 = [(NSMutableDictionary *)endpoints objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_endpoints;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];

    refreshCounts = self->_refreshCounts;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    [(NSMutableDictionary *)refreshCounts removeObjectForKey:v11];
  }

  os_unfair_recursive_lock_unlock();

  return v7;
}

- (void)disconnectAll
{
  os_unfair_recursive_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_endpoints allValues];
  [(NSMutableDictionary *)self->_endpoints removeAllObjects];
  [(NSMutableDictionary *)self->_refreshCounts removeAllObjects];
  os_unfair_recursive_lock_unlock();
  [allValues enumerateObjectsUsingBlock:&__block_literal_global_159];
  v4 = RemoteHIDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(HIDRemoteDeviceServer *)v4 disconnectAll];
  }
}

- (unint64_t)getRefreshCountForEndpoint:(id)endpoint deviceID:(unint64_t)d
{
  endpointCopy = endpoint;
  os_unfair_recursive_lock_lock_with_options();
  refreshCounts = self->_refreshCounts;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(endpointCopy, "endpointID")}];
  v9 = [(NSMutableDictionary *)refreshCounts objectForKeyedSubscript:v8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = self->_refreshCounts;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(endpointCopy, "endpointID")}];
    v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
    v16 = [v14 objectForKeyedSubscript:v15];
    unsignedIntValue = [v16 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  os_unfair_recursive_lock_unlock();

  return unsignedIntValue;
}

- (void)setRefreshCountForEndpoint:(id)endpoint deviceID:(unint64_t)d count:(unint64_t)count
{
  endpointCopy = endpoint;
  os_unfair_recursive_lock_lock_with_options();
  refreshCounts = self->_refreshCounts;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(endpointCopy, "endpointID")}];
  v10 = [(NSMutableDictionary *)refreshCounts objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = self->_refreshCounts;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(endpointCopy, "endpointID")}];
    [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v15 = self->_refreshCounts;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(endpointCopy, "endpointID")}];
  v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:d];
  [v17 setObject:v14 forKeyedSubscript:v18];

  os_unfair_recursive_lock_unlock();
}

- (BOOL)createRemoteDevice:(id)device deviceID:(unint64_t)d property:(id)property
{
  v48 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  propertyCopy = property;
  [propertyCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0EF10]];
  [propertyCopy setObject:&unk_28744E870 forKeyedSubscript:@"ReportInterval"];
  v10 = [propertyCopy objectForKeyedSubscript:@"SerialNumber"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [propertyCopy objectForKeyedSubscript:@"SerialNumber"];
    bytes = [v13 bytes];
    v15 = [propertyCopy objectForKeyedSubscript:@"SerialNumber"];
    v16 = [v12 initWithBytes:bytes length:objc_msgSend(v15 encoding:{"length") - 1, 4}];
    [propertyCopy setObject:v16 forKeyedSubscript:@"SerialNumber"];
  }

  [propertyCopy setObject:&unk_28744E888 forKeyedSubscript:@"HIDTimeSyncProtocol"];
  v17 = [[HIDRemoteDevice alloc] initWithProperties:propertyCopy];
  if (v17)
  {
    objc_initWeak(&location, v17);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke;
    v37[3] = &unk_279AFD358;
    objc_copyWeak(&v38, &location);
    v37[4] = self;
    [(HIDUserDevice *)v17 setSetReportHandler:v37];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179;
    v35[3] = &unk_279AFD380;
    objc_copyWeak(&v36, &location);
    v35[4] = self;
    [(HIDUserDevice *)v17 setGetReportHandler:v35];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_181;
    v33 = &unk_279AFD3A8;
    objc_copyWeak(&v34, &location);
    [(HIDUserDevice *)v17 setCancelHandler:&v30];
    v18 = [propertyCopy objectForKeyedSubscript:{@"VersionNumber", v30, v31, v32, v33}];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if (v19)
    {
      v20 = [propertyCopy objectForKeyedSubscript:@"VersionNumber"];
      -[HIDRemoteDevice setTransportVersion:](v17, "setTransportVersion:", [v20 unsignedIntegerValue]);
    }

    v21 = [propertyCopy objectForKeyedSubscript:@"Side"];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      v23 = [propertyCopy objectForKeyedSubscript:@"Side"];
      -[HIDRemoteDevice setSide:](v17, "setSide:", [v23 unsignedIntegerValue]);
    }

    [(HIDRemoteDevice *)v17 setDeviceID:d];
    queue = [(HIDRemoteDeviceServer *)self queue];
    [(HIDUserDevice *)v17 setDispatchQueue:queue];

    [(HIDUserDevice *)v17 activate];
    [deviceCopy addDevice:v17];
    v25 = RemoteHIDLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      deviceID = [(HIDRemoteDevice *)v17 deviceID];
      *buf = 138413058;
      v41 = v17;
      v42 = 2048;
      v43 = deviceID;
      v44 = 2112;
      v45 = deviceCopy;
      v46 = 2112;
      v47 = propertyCopy;
      _os_log_impl(&dword_261D9C000, v25, OS_LOG_TYPE_DEFAULT, "Create device:%@ with id:%llu for endpoint:%@ property:%@", buf, 0x2Au);
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    v27 = RemoteHIDLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer createRemoteDevice:deviceID:property:];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v17 != 0;
}

uint64_t __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  if (WeakRetained)
  {
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:a4 length:a5];
    v12 = v25[5];
    v25[5] = v11;

    v13 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_173;
    block[3] = &unk_279AFD330;
    v14 = WeakRetained;
    v22 = a2;
    v23 = a3;
    v21 = &v24;
    v15 = *(a1 + 32);
    v19 = v14;
    v20 = v15;
    dispatch_async(v13, block);

    v16 = 0;
  }

  else
  {
    v16 = 3758097088;
  }

  _Block_object_dispose(&v24, 8);

  return v16;
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_173(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x2020000000;
  v34 = -1431655766;
  v2 = RemoteHIDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) deviceID];
    v5 = *(a1 + 56);
    v4 = *(a1 + 64);
    v6 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 67109890;
    v36 = v3;
    v37 = 2048;
    *v38 = v5;
    *&v38[8] = 2048;
    *&v38[10] = v4;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_261D9C000, v2, OS_LOG_TYPE_INFO, "[device:%d] setReport type:%ld reportID:%ld report:%@", buf, 0x26u);
  }

  [*(a1 + 32) setLastSetReportStatus:3758097084];
  [*(a1 + 32) setWaitForReport:1];
  v7 = 3;
  *&v8 = 67109634;
  v25 = v8;
  while (1)
  {
    v9 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_174;
    block[3] = &unk_279AFD308;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v27 = v10;
    v28 = v11;
    v31 = *(a1 + 56);
    v29 = &v32;
    v30 = v12;
    dispatch_async(v9, block);

    v13 = [*(a1 + 32) semaphore];
    v14 = dispatch_time(0, 200000000);
    v15 = dispatch_semaphore_wait(v13, v14);

    if (v15)
    {
      *(v33[0] + 24) = -536870186;
      [*(a1 + 32) setLastSetReportStatus:3758097110];
    }

    v16 = *(v33[0] + 24);
    if (!v16)
    {
      break;
    }

    if (v16 == -536870208)
    {
      v21 = RemoteHIDLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_173_cold_1([*(a1 + 32) deviceID], v33);
      }

      break;
    }

    v17 = RemoteHIDLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) deviceID];
      v19 = *(v33[0] + 24);
      v20 = ", retrying";
      if (v7 == 1)
      {
        v20 = "";
      }

      *buf = v25;
      v36 = v18;
      v37 = 1024;
      *v38 = v19;
      *&v38[4] = 2080;
      *&v38[6] = v20;
      _os_log_error_impl(&dword_261D9C000, v17, OS_LOG_TYPE_ERROR, "[device:%d] remoteDeviceSetReport:0x%x%s", buf, 0x18u);
    }

    if (!--v7)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  v22 = [*(a1 + 32) lastSetReportStatus];
  *(v33[0] + 24) = v22;
  [*(a1 + 32) setWaitForReport:0];
  if (*(v33[0] + 24))
  {
    v23 = RemoteHIDLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_173_cold_2([*(a1 + 32) deviceID], v33);
    }
  }

  _Block_object_dispose(&v32, 8);
  v24 = *MEMORY[0x277D85DE8];
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_174(uint64_t a1)
{
  if ([*(a1 + 32) cancelled])
  {
    *(*(*(a1 + 48) + 8) + 24) = -536870208;
    [*(a1 + 32) setLastSetReportStatus:3758097088];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) remoteDeviceSetReport:*(a1 + 32) type:*(a1 + 64) reportID:*(a1 + 72) report:*(*(*(a1 + 56) + 8) + 40)];
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      return;
    }
  }

  v2 = [*(a1 + 32) semaphore];
  dispatch_semaphore_signal(v2);
}

uint64_t __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = RemoteHIDLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v28[0] = 67109632;
      v28[1] = [WeakRetained deviceID];
      v29 = 2048;
      v30 = a2;
      v31 = 2048;
      v32 = a3;
      _os_log_impl(&dword_261D9C000, v11, OS_LOG_TYPE_INFO, "[device:%d] getReport type:%ld reportID:%ld", v28, 0x1Cu);
    }

    v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a4 length:*a5 freeWhenDone:0];
    v13 = [v12 mutableCopy];
    [WeakRetained setLastGetReport:0];
    [WeakRetained setWaitForReport:1];
    v14 = [*(a1 + 32) remoteDeviceGetReport:WeakRetained type:a2 reportID:a3 report:v13];
    if (v14)
    {
      v25 = v14;
      v24 = RemoteHIDLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179_cold_1(WeakRetained);
      }
    }

    else
    {
      v15 = [WeakRetained semaphore];
      v16 = dispatch_time(0, 1000000000);
      v17 = dispatch_semaphore_wait(v15, v16);

      if (v17)
      {
        v24 = RemoteHIDLog();
        v25 = 3758097110;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179_cold_2(WeakRetained);
        }
      }

      else
      {
        v18 = [WeakRetained lastGetReport];

        if (v18)
        {
          v19 = [v12 length];
          v20 = [WeakRetained lastGetReport];
          v21 = [v20 length];

          if (v19 >= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = v19;
          }

          *a5 = v22;
          v23 = [v12 bytes];
          v24 = [WeakRetained lastGetReport];
          memcpy(v23, [v24 bytes], *a5);
          v25 = 0;
        }

        else
        {
          v24 = RemoteHIDLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179_cold_3(WeakRetained);
          }

          v25 = 3758097084;
        }
      }
    }

    [WeakRetained setWaitForReport:0];
  }

  else
  {
    v25 = 3758097088;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_181(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained propertyPort])
  {
    IONotificationPortSetDispatchQueue([WeakRetained propertyPort], 0);
    IONotificationPortDestroy([WeakRetained propertyPort]);
    [WeakRetained setPropertyPort:0];
  }

  if ([WeakRetained propertyNotify])
  {
    IOObjectRelease([WeakRetained propertyNotify]);
    [WeakRetained setPropertyNotify:0];
  }

  [WeakRetained setCancelled:1];
}

- (BOOL)remoteDeviceReportHandler:(id)handler packet:(id *)packet
{
  handlerCopy = handler;
  v6 = (packet->var0 >> 7) & 0x3FF;
  if (v6 > 5)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:packet->var2 length:v6 - 5];
    v12 = 0;
    v8 = [handlerCopy handleReport:v7 error:&v12];
    v9 = v12;
    if ((v8 & 1) == 0)
    {
      v10 = RemoteHIDLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [HIDRemoteDeviceServer remoteDeviceReportHandler:packet:];
      }
    }
  }

  else
  {
    v7 = RemoteHIDLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceReportHandler:packet packet:?];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)remoteDeviceReportHandler:(id)handler header:(id *)header
{
  0x7FLL = [handler getDevice:*header & 0x7FLL];
  if (!0x7FLL)
  {
    v9 = RemoteHIDLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceReportHandler:header header:?];
    }

    goto LABEL_8;
  }

  v7 = [(HIDRemoteDeviceServer *)self remoteDeviceReportHandler:0x7FLL packet:header];
  [0x7FLL setHandleReportCount:{objc_msgSend(0x7FLL, "handleReportCount") + 1}];
  if (!v7)
  {
    [0x7FLL setHandleReportError:{objc_msgSend(0x7FLL, "handleReportError") + 1}];
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

- (BOOL)remoteDeviceSetReportHandler:(id)handler packet:(id *)packet
{
  handlerCopy = handler;
  v6 = handlerCopy;
  var0 = packet->var0;
  if ((*&packet->var0 & 0x1FF80u) <= 0x27F)
  {
    v8 = RemoteHIDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceReportHandler:packet packet:?];
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if ((*&var0 & 0x200000) == 0)
  {
    v8 = RemoteHIDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceSetReportHandler:packet:];
    }

    goto LABEL_15;
  }

  0x7F = [handlerCopy getDevice:*&var0 & 0x7F];
  v8 = 0x7F;
  if (!0x7F)
  {
    v12 = RemoteHIDLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceReportHandler:packet header:?];
    }

    goto LABEL_15;
  }

  v10 = 0;
  if ((*&packet->var0 & 0x400000) != 0 && (*&packet->var0 & 0x1FF80u) >= 0x401)
  {
    v10 = *packet->var2;
  }

  v11 = [0x7F setReportHandler:packet->var1 reportID:0 status:v10]== 0;
LABEL_16:

  return v11;
}

- (BOOL)remoteDeviceGetReportHandler:(id)handler packet:(id *)packet
{
  handlerCopy = handler;
  v6 = handlerCopy;
  var0 = packet->var0;
  if ((*&packet->var0 & 0x1FF80u) <= 0x27F)
  {
    v8 = RemoteHIDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceReportHandler:packet packet:?];
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if ((*&var0 & 0x200000) == 0)
  {
    v8 = RemoteHIDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceSetReportHandler:packet:];
    }

    goto LABEL_12;
  }

  0x7F = [handlerCopy getDevice:*&var0 & 0x7F];
  v8 = 0x7F;
  if (!0x7F)
  {
    v11 = RemoteHIDLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer remoteDeviceReportHandler:packet header:?];
    }

    goto LABEL_12;
  }

  v10 = [0x7F getReportHandler:packet->var1 reportID:0 report:packet->var2 reportLength:((packet->var0 >> 7) & 0x3FF) - 5]== 0;
LABEL_13:

  return v10;
}

- (void)endpointMessageHandler:(id)handler data:(char *)data size:(unint64_t)size
{
  handlerCopy = handler;
  v9 = handlerCopy;
  if (size < 8)
  {
    v23 = RemoteHIDLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer endpointMessageHandler:data data:size size:?];
    }
  }

  else
  {
    v10 = data + 4;
    v11 = &data[size];
    v12 = data + 4;
    while (v12 + 4 <= v11)
    {
      v13 = (*v12 >> 7) & 0x3FF;
      v12 += v13;
      if (v13 < 4 || v12 > v11)
      {
        break;
      }

      if (v12 >= v11)
      {
        v15 = data[3];
        if ((~v15 & 3) != 0)
        {
          v16 = 1;
        }

        else
        {
          v16 = 16;
        }

        if (v15)
        {
          v17 = 1;
        }

        else
        {
          v17 = 16;
        }

        v18 = v15 & 2;
        if ((v15 & 2) != 0)
        {
          v19 = v16;
        }

        else
        {
          v19 = v17;
        }

        if (v19 != [handlerCopy primarySide])
        {
          [v9 setPrimarySide:v19];
          [v9 removeAllDevices];
          refreshCounts = self->_refreshCounts;
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "endpointID")}];
          [(NSMutableDictionary *)refreshCounts setObject:0 forKeyedSubscript:v21];
        }

        if (v18)
        {
          v22 = 16;
        }

        else
        {
          v22 = 1;
        }

        do
        {
          *v10 |= 32 * v18;
          [(HIDRemoteDeviceServer *)self endpointPacketHandler:v9 packet:v10 transportVersion:*data side:v22];
          v10 += (*v10 >> 7) & 0x3FF;
        }

        while (v10 < v11);
        goto LABEL_24;
      }
    }

    v23 = RemoteHIDLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceServer endpointMessageHandler:data data:size size:?];
    }
  }

LABEL_24:
}

- (void)createRemoteDevice:deviceID:property:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_173_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_1(a1, a2);
  OUTLINED_FUNCTION_6_1(v2, 1.5047e-36, v3, v4);
  _os_log_error_impl(&dword_261D9C000, v6, OS_LOG_TYPE_ERROR, "[device:%d] remoteDeviceSetReport:0x%x, bailing", v5, 0xEu);
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_173_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_1(a1, a2);
  OUTLINED_FUNCTION_6_1(v2, 1.5047e-36, v3, v4);
  _os_log_error_impl(&dword_261D9C000, v6, OS_LOG_TYPE_ERROR, "[device:%d] remoteDeviceSetReport:0x%x", v5, 0xEu);
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 deviceID];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 deviceID];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__HIDRemoteDeviceServer_createRemoteDevice_deviceID_property___block_invoke_179_cold_3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 deviceID];
  v8 = [a1 lastGetReport];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceReportHandler:packet:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceReportHandler:(unsigned int *)a1 packet:.cold.2(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceReportHandler:(_DWORD *)a1 header:.cold.1(_DWORD *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1(a1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceConnectHandler:packet:transportVersion:side:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceConnectHandler:(uint64_t)a1 packet:(NSObject *)a2 transportVersion:side:.cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:a1 encoding:1];
  OUTLINED_FUNCTION_8_0();
  _os_log_debug_impl(&dword_261D9C000, a2, OS_LOG_TYPE_DEBUG, "HIDPacketDevice config data:%@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceConfirmConnectHandler:(_DWORD *)a1 packet:transportVersion:side:.cold.1(_DWORD *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1(a1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceConfirmConnectHandler:(_DWORD *)a1 packet:transportVersion:side:.cold.2(_DWORD *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1(a1);
  OUTLINED_FUNCTION_3_1();
  _os_log_fault_impl(&dword_261D9C000, v2, OS_LOG_TYPE_FAULT, "received confirm connect for missing device id:%d, retry limit exceeded", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)endpointMessageHandler:(uint64_t)a1 data:(uint64_t)a2 size:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:a2];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)endpointMessageHandler:(uint64_t)a1 data:(uint64_t)a2 size:.cold.2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:a2];
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)endpointPacketHandler:(_DWORD *)a1 packet:(NSObject *)a2 transportVersion:side:.cold.1(_DWORD *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1 & 0x7F;
  v3 = (*a1 >> 17) & 7;
  v4 = (*a1 >> 7) & 0x3FF;
  v6[0] = 67109632;
  v6[1] = v2;
  v7 = 1024;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  _os_log_debug_impl(&dword_261D9C000, a2, OS_LOG_TYPE_DEBUG, "endpointPacketHandler deviceid:%u type:%d size:%u", v6, 0x14u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)endpointPacketHandler:(unsigned int *)a1 packet:transportVersion:side:.cold.2(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1(a1);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

@end