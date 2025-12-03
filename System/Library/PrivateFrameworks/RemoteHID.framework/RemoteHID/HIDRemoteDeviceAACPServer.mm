@interface HIDRemoteDeviceAACPServer
- (BOOL)createRemoteDevice:(id)device deviceID:(unint64_t)d property:(id)property;
- (HIDRemoteDeviceAACPServer)initWithQueue:(id)queue;
- (id)description;
- (int)remoteDeviceGetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6;
- (int)remoteDeviceSetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6;
- (int)sendMessageBTDevice:(BTDeviceImpl *)device data:(char *)data size:(unint64_t)size transportVersion:(unsigned __int8)version side:(unsigned __int8)side;
- (os_state_data_s)stateHandler:(os_state_hints_s *)handler;
- (void)activate;
- (void)addBTDevice:(BTDeviceImpl *)device;
- (void)btAccessoryEventHandler:(BTDeviceImpl *)handler event:(int)event state:(int)state;
- (void)btDeviceMessageHandler:(BTDeviceImpl *)handler type:(int)type data:(char *)data size:(unint64_t)size;
- (void)btServiceEventHandler:(BTDeviceImpl *)handler services:(unsigned int)services eventType:(int)type event:(unsigned int)event result:(int)result;
- (void)btSessionCreate;
- (void)btSessionEventHandler:(BTSessionImpl *)handler event:(int)event result:(int)result;
- (void)btSessionInit:(BTSessionImpl *)init;
- (void)cancel;
- (void)dealloc;
- (void)removeAllBTDevices;
- (void)removeBTDevice:(BTDeviceImpl *)device;
- (void)setMobileBluetoothInterface:(MobileBluetoothInterface *)interface;
- (void)timeSyncEnable:(BOOL)enable forEndpointID:(unint64_t)d;
@end

@implementation HIDRemoteDeviceAACPServer

- (HIDRemoteDeviceAACPServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HIDRemoteDeviceAACPServer;
  v5 = [(HIDRemoteDeviceServer *)&v12 initWithQueue:queueCopy];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.hidrc.bluetooth", 0);
    btQueue = v5->_btQueue;
    v5->_btQueue = v6;

    v8 = [MEMORY[0x277CBEB28] dataWithLength:1050];
    decodeBuff = v5->_decodeBuff;
    v5->_decodeBuff = v8;

    MobileBluetoothInterface::create(v10);
  }

  return 0;
}

- (void)dealloc
{
  mb = self->_mb;
  if (mb)
  {
    MEMORY[0x26671F420](mb, 0x81C40B8603338);
  }

  v4.receiver = self;
  v4.super_class = HIDRemoteDeviceAACPServer;
  [(HIDRemoteDeviceAACPServer *)&v4 dealloc];
}

- (void)setMobileBluetoothInterface:(MobileBluetoothInterface *)interface
{
  mb = self->_mb;
  if (mb)
  {
    MEMORY[0x26671F420](mb, 0x81C40B8603338);
  }

  self->_mb = interface;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  tsID = self->_tsID;
  v7.receiver = self;
  v7.super_class = HIDRemoteDeviceAACPServer;
  v4 = [(HIDRemoteDeviceServer *)&v7 description];
  v5 = [v2 stringWithFormat:@"<HIDRemoteDeviceAACPServer timeSyncID:%llu %@>", tsID, v4];

  return v5;
}

- (void)activate
{
  [(HIDRemoteDeviceAACPServer *)self btSessionCreate];
  btQueue = [(HIDRemoteDeviceAACPServer *)self btQueue];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __37__HIDRemoteDeviceAACPServer_activate__block_invoke;
  v8 = &unk_279AFD190;
  selfCopy = self;
  self->_stateHandler = os_state_add_handler();

  v4.receiver = self;
  v4.super_class = HIDRemoteDeviceAACPServer;
  [(HIDRemoteDeviceServer *)&v4 activate];
}

- (void)cancel
{
  if (self->_session)
  {
    objc_storeStrong(&self->_me, self);
    (*(self->_mb->var0 + 1))(self->_mb, &self->_session);
  }

  [(HIDRemoteDeviceAACPServer *)self removeAllBTDevices];
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = HIDRemoteDeviceAACPServer;
  [(HIDRemoteDeviceServer *)&v3 cancel];
}

- (void)btSessionCreate
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)btSessionInit:(BTSessionImpl *)init
{
  v13[1] = *MEMORY[0x277D85DE8];
  self->_session = init;
  if ((*(self->_mb->var0 + 2))(self->_mb, init, &self->_manager))
  {
    v4 = RemoteHIDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

LABEL_13:

    goto LABEL_14;
  }

  if ((*(self->_mb->var0 + 3))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer btSessionInit:]::accessoryCallbacks, self))
  {
    v4 = RemoteHIDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

    goto LABEL_13;
  }

  if ((*(self->_mb->var0 + 9))(self->_mb, self->_session, HIDAccesoryServiceEventCallback, self))
  {
    v4 = RemoteHIDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

    goto LABEL_13;
  }

  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  if ((*(self->_mb->var0 + 13))(self->_mb, self->_session, v13))
  {
    v4 = RemoteHIDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }

    goto LABEL_13;
  }

  v12 = 256;
  memset(v10, 170, sizeof(v10));
  if ((*(self->_mb->var0 + 14))(self->_mb, v13[0], v10, &v12, 256))
  {
    v6 = RemoteHIDLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btSessionInit:];
    }
  }

  else if (v12)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v11 = 0;
      (*(self->_mb->var0 + 10))(self->_mb, v10[v7], &v11);
      [(HIDRemoteDeviceAACPServer *)self btServiceEventHandler:v10[v7] services:v11 eventType:0 event:11 result:0];
      v7 = v8;
    }

    while (v12 > v8++);
  }

LABEL_14:
  v5 = *MEMORY[0x277D85DE8];
}

- (void)btSessionEventHandler:(BTSessionImpl *)handler event:(int)event result:(int)result
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = RemoteHIDLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    handlerCopy = handler;
    v20 = 1024;
    eventCopy = event;
    v22 = 1024;
    resultCopy = result;
    _os_log_impl(&dword_261D9C000, v9, OS_LOG_TYPE_DEFAULT, "btSessionEventHandler session:%p event:%d result:%d", buf, 0x18u);
  }

  switch(event)
  {
    case 2:
      [(HIDRemoteDeviceAACPServer *)self removeAllBTDevices];
      queue = [(HIDRemoteDeviceServer *)self queue];
      dispatch_async_and_wait(queue, &__block_literal_global);

      self->_session = 0;
      self->_manager = 0;
      v10 = dispatch_time(0, 1000000000);
      btQueue = [(HIDRemoteDeviceAACPServer *)self btQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __64__HIDRemoteDeviceAACPServer_btSessionEventHandler_event_result___block_invoke_3;
      v16[3] = &unk_279AFD1B8;
      v16[4] = self;
      v12 = v16;
LABEL_10:
      dispatch_after(v10, btQueue, v12);

      break;
    case 1:
      me = self->_me;
      self->_me = 0;

      break;
    case 0:
      if (!result)
      {
        [(HIDRemoteDeviceAACPServer *)self btSessionInit:handler];
        break;
      }

      v10 = dispatch_time(0, 1000000000);
      btQueue = [(HIDRemoteDeviceAACPServer *)self btQueue];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __64__HIDRemoteDeviceAACPServer_btSessionEventHandler_event_result___block_invoke;
      v17[3] = &unk_279AFD1B8;
      v17[4] = self;
      v12 = v17;
      goto LABEL_10;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addBTDevice:(BTDeviceImpl *)device
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v5 = (*(self->_mb->var0 + 4))(self->_mb, self->_manager, device, 20, &v14);
  v6 = RemoteHIDLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v16[0] = v5;
    LOWORD(v16[1]) = 1024;
    *(&v16[1] + 2) = v14;
    _os_log_impl(&dword_261D9C000, v6, OS_LOG_TYPE_INFO, "BTAccessoryManagerGetFeatureCapability:%d (FEATURE_SENSOR_DATA:%d)", buf, 0xEu);
  }

  if ((*(self->_mb->var0 + 5))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer addBTDevice:]::messageCallback, 2048, self))
  {
    v7 = RemoteHIDLog();
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer addBTDevice:];
    }

    goto LABEL_20;
  }

  if ((*(self->_mb->var0 + 5))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer addBTDevice:]::messageCallback, 0x40000, self))
  {
    v7 = RemoteHIDLog();
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer addBTDevice:];
    }

    goto LABEL_20;
  }

  if ((*(self->_mb->var0 + 5))(self->_mb, self->_manager, &[HIDRemoteDeviceAACPServer addBTDevice:]::messageCallback, 0x100000, self))
  {
    v7 = RemoteHIDLog();
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer addBTDevice:];
    }

    goto LABEL_20;
  }

  v7 = [(HIDRemoteEndpoint *)[HIDAACPRemoteEndpoint alloc] initWithID:device];
  [(HIDAACPRemoteEndpoint *)v7 setServer:self];
  v8 = [(HIDRemoteDeviceServer *)self getEndpoint:[(HIDRemoteEndpoint *)v7 endpointID]];
  v9 = v8 == 0;

  if (v9)
  {
    v10 = RemoteHIDLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *v16 = device;
    v11 = "HID AACP device:%p";
  }

  else
  {
    v10 = RemoteHIDLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *v16 = device;
    v11 = "HID AACP device:%p already connected";
  }

  _os_log_impl(&dword_261D9C000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
LABEL_18:

  [(HIDRemoteDeviceServer *)self connectEndpoint:v7];
  v13[0] = 0xAAA00200AAAAAAAALL;
  [(HIDRemoteDeviceAACPServer *)self sendMessageBTDevice:device data:v13 size:8 transportVersion:0 side:0];
  [(HIDRemoteDeviceAACPServer *)self sendMessageBTDevice:device data:v13 size:8 transportVersion:1 side:0];
  if ([(HIDRemoteDeviceAACPServer *)self sendMessageBTDevice:device data:v13 size:8 transportVersion:1 side:1])
  {
    RemoteHIDLog();
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer addBTDevice:];
  }

LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
}

- (int)sendMessageBTDevice:(BTDeviceImpl *)device data:(char *)data size:(unint64_t)size transportVersion:(unsigned __int8)version side:(unsigned __int8)side
{
  v40 = *MEMORY[0x277D85DE8];
  if (version)
  {
    v8 = 0x100000;
  }

  else
  {
    v8 = 2048;
  }

  v32 = 0;
  v33 = 0;
  if (size < 8)
  {
    v18 = 0;
LABEL_28:
    v28 = 5;
    goto LABEL_17;
  }

  versionCopy = version;
  sizeCopy = size;
  dataCopy = data;
  *data = 0;
  *(data + 1) = ++generation;
  data[3] = 2 * (side & 1);
  v13 = RemoteHIDLogPackets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    deviceCopy = device;
    v36 = 1040;
    v37 = sizeCopy;
    v38 = 2096;
    v39 = dataCopy;
    _os_log_debug_impl(&dword_261D9C000, v13, OS_LOG_TYPE_DEBUG, "[%p] send packet:%{RemoteHID:packet}.*P", buf, 0x1Cu);
  }

  if (versionCopy)
  {
    encodeHeader(dataCopy, sizeCopy, 0, 0, &v32, 1);
    if (v14)
    {
      v15 = sizeCopy - 4;
      encode(dataCopy + 1, sizeCopy - 4, 0, 0, &v33, 0, 1);
      if (v16)
      {
        v17 = [MEMORY[0x277CBEB28] dataWithLength:v33 + v32];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
          encodeHeader(dataCopy, sizeCopy, [v18 mutableBytes], objc_msgSend(v18, "length"), &v32, 0);
          if (v20)
          {
            v21 = v18;
            mutableBytes = [v18 mutableBytes];
            v23 = v32;
            v24 = [v18 length];
            encode(dataCopy + 1, v15, (mutableBytes + v23), (v24 - v32), &v33, 0, 0);
            if (v25)
            {
              v26 = v18;
              dataCopy = [v18 mutableBytes];
              sizeCopy = [v18 length];
              v27 = v18;
              goto LABEL_15;
            }

            v31 = RemoteHIDLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
            }
          }

          else
          {
            v31 = RemoteHIDLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
            }
          }

          goto LABEL_27;
        }

        v31 = RemoteHIDLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
        }
      }

      else
      {
        v31 = RemoteHIDLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
        }
      }
    }

    else
    {
      v31 = RemoteHIDLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
      }
    }

    v18 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v27 = 0;
LABEL_15:
  v28 = (*(self->_mb->var0 + 6))(self->_mb, self->_manager, v8, device, dataCopy, sizeCopy);
  if (v28)
  {
    v18 = v27;
LABEL_17:
    RemoteHIDLog();
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:];
    v27 = v18;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)removeBTDevice:(BTDeviceImpl *)device
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = RemoteHIDLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    deviceCopy = device;
    _os_log_impl(&dword_261D9C000, v5, OS_LOG_TYPE_DEFAULT, "HID AACP device remove:0x%llx", &v7, 0xCu);
  }

  [(HIDRemoteDeviceServer *)self disconnectEndpointID:device];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeAllBTDevices
{
  endpoints = [(HIDRemoteDeviceServer *)self endpoints];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__HIDRemoteDeviceAACPServer_removeAllBTDevices__block_invoke;
  v4[3] = &unk_279AFD200;
  v4[4] = self;
  [endpoints enumerateObjectsUsingBlock:v4];
}

void __47__HIDRemoteDeviceAACPServer_removeAllBTDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) removeBTDevice:{objc_msgSend(v3, "endpointID")}];
}

- (void)btDeviceMessageHandler:(BTDeviceImpl *)handler type:(int)type data:(char *)data size:(unint64_t)size
{
  *&v25[13] = *MEMORY[0x277D85DE8];
  v11 = [(HIDRemoteDeviceServer *)self getEndpoint:?];
  v20 = 0;
  if (!v11)
  {
    v16 = RemoteHIDLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer btDeviceMessageHandler:type:data:size:];
    }

    goto LABEL_16;
  }

  if (type == 0x100000)
  {
    decodeHeader(data, size, [(NSMutableData *)self->_decodeBuff mutableBytes], [(NSMutableData *)self->_decodeBuff length]);
    if (v12)
    {
      if (decode(data, size, ([(NSMutableData *)self->_decodeBuff mutableBytes]+ 4), [(NSMutableData *)self->_decodeBuff length]- 4, &v20, 0))
      {
        data = [(NSMutableData *)self->_decodeBuff mutableBytes];
        size = v20 + 4;
        goto LABEL_6;
      }

      v18 = RemoteHIDLog();
      [HIDRemoteDeviceAACPServer btDeviceMessageHandler:v18 type:buf data:? size:?];
    }

    else
    {
      v17 = RemoteHIDLog();
      [HIDRemoteDeviceAACPServer btDeviceMessageHandler:v17 type:buf data:? size:?];
    }

    v16 = RemoteHIDLogPackets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = mach_absolute_time();
      *buf = 134218754;
      *&buf[4] = handler;
      v22 = 2048;
      *v23 = v19;
      *&v23[8] = 1040;
      *&v23[10] = size;
      v24 = 2096;
      *v25 = data;
      _os_log_error_impl(&dword_261D9C000, v16, OS_LOG_TYPE_ERROR, "[%p] encoded packet - timestamp:%lld packet:%{RemoteHID:encodedpacket}.*P", buf, 0x26u);
    }

LABEL_16:

    goto LABEL_9;
  }

LABEL_6:
  v13 = RemoteHIDLogPackets();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = mach_absolute_time();
    *buf = 134219010;
    *&buf[4] = handler;
    v22 = 1024;
    *v23 = type;
    *&v23[4] = 2048;
    *&v23[6] = v15;
    v24 = 1040;
    *v25 = size;
    v25[2] = 2096;
    *&v25[3] = data;
    _os_log_debug_impl(&dword_261D9C000, v13, OS_LOG_TYPE_DEBUG, "[%p] receive packet - type:0x%x timestamp:%lld packet:%{RemoteHID:packet}.*P", buf, 0x2Cu);
  }

  [(HIDRemoteDeviceServer *)self endpointMessageHandler:v11 data:data size:size];
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)btServiceEventHandler:(BTDeviceImpl *)handler services:(unsigned int)services eventType:(int)type event:(unsigned int)event result:(int)result
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = RemoteHIDLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 67109888;
    v15[1] = services;
    v16 = 1024;
    typeCopy = type;
    v18 = 1024;
    eventCopy = event;
    v20 = 1024;
    resultCopy = result;
    _os_log_debug_impl(&dword_261D9C000, v13, OS_LOG_TYPE_DEBUG, "btServiceEventHandler services:0x%x eventType:%d event:%d result:%d", v15, 0x1Au);
  }

  if ((services & 0x80000) != 0)
  {
    if (event != 11 || result | type)
    {
      if (type == 1 && event == 12)
      {
        [(HIDRemoteDeviceAACPServer *)self removeBTDevice:handler];
      }
    }

    else
    {
      [(HIDRemoteDeviceAACPServer *)self addBTDevice:handler];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)btAccessoryEventHandler:(BTDeviceImpl *)handler event:(int)event state:(int)state
{
  *&v29[5] = *MEMORY[0x277D85DE8];
  v9 = RemoteHIDLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    handlerCopy4 = handler;
    v28 = 1024;
    *v29 = event;
    v29[2] = 1024;
    *&v29[3] = state;
    _os_log_impl(&dword_261D9C000, v9, OS_LOG_TYPE_INFO, "btAccessoryEventHandler device:%p event:%d state:%d", buf, 0x18u);
  }

  if (event == 8)
  {
    v15 = RemoteHIDLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      handlerCopy4 = handler;
      _os_log_impl(&dword_261D9C000, v15, OS_LOG_TYPE_DEFAULT, "TIMESYNC_NOT_AVAILABLE device:%p", buf, 0xCu);
    }

    v14 = 0;
    self->_tsID = 0;
    goto LABEL_14;
  }

  if (event == 7)
  {
    v10 = RemoteHIDLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      handlerCopy4 = handler;
      _os_log_impl(&dword_261D9C000, v10, OS_LOG_TYPE_DEFAULT, "TIMESYNC_AVAILABLE device:%p", buf, 0xCu);
    }

    v11 = (*(self->_mb->var0 + 8))(self->_mb, self->_manager, handler, &self->_tsID);
    v12 = RemoteHIDLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      tsID = self->_tsID;
      *buf = 134218240;
      handlerCopy4 = handler;
      v28 = 2048;
      *v29 = tsID;
      _os_log_impl(&dword_261D9C000, v12, OS_LOG_TYPE_DEFAULT, "BTAccessoryManagerGetTimeSyncId device:%p tsID:0x%llx", buf, 0x16u);
    }

    if (v11)
    {
      v20 = RemoteHIDLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [HIDRemoteDeviceAACPServer btAccessoryEventHandler:event:state:];
      }

      goto LABEL_15;
    }

    v14 = 1;
LABEL_14:
    v24[0] = @"Active";
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v24[1] = @"TSClockID";
    v25[0] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_tsID];
    v25[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

    endpoints = [(HIDRemoteDeviceServer *)self endpoints];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__HIDRemoteDeviceAACPServer_btAccessoryEventHandler_event_state___block_invoke;
    v22[3] = &unk_279AFD200;
    v20 = v18;
    v23 = v20;
    [endpoints enumerateObjectsUsingBlock:v22];

LABEL_15:
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __65__HIDRemoteDeviceAACPServer_btAccessoryEventHandler_event_state___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 devices];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__HIDRemoteDeviceAACPServer_btAccessoryEventHandler_event_state___block_invoke_2;
  v4[3] = &unk_279AFD228;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

- (int)remoteDeviceSetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v10, "length") + 9}];
  v12 = RemoteHIDLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218498;
    deviceID = [reportCopy deviceID];
    v23 = 2048;
    typeCopy = type;
    v25 = 2112;
    v26 = v10;
    _os_log_debug_impl(&dword_261D9C000, v12, OS_LOG_TYPE_DEBUG, "remoteDeviceSetReport deviceID:0x%llx type:%ld report:%@", &v21, 0x20u);
  }

  v13 = v11;
  bytes = [v11 bytes];
  v15 = v10;
  memcpy((bytes + 9), [v10 bytes], objc_msgSend(v10, "length"));
  *(bytes + 4) = *(bytes + 4) & 0xFFFFFF80 | [reportCopy deviceID] & 0x7F;
  *(bytes + 4) = (([v10 length] << 7) + 640) & 0x1FF80 | *(bytes + 4) & 0xFF80007F | 0x60000;
  *(bytes + 8) = type;
  endpointID = [reportCopy endpointID];
  v17 = v11;
  v18 = -[HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:](self, "sendMessageBTDevice:data:size:transportVersion:side:", endpointID, [v11 bytes], objc_msgSend(v11, "length"), objc_msgSend(reportCopy, "transportVersion"), objc_msgSend(reportCopy, "side"));
  if (v18)
  {
    RemoteHIDLog();
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer remoteDeviceSetReport:type:reportID:report:];
    v18 = -536870212;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)createRemoteDevice:(id)device deviceID:(unint64_t)d property:(id)property
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  propertyCopy = property;
  [propertyCopy setObject:@"BT-AACP" forKeyedSubscript:@"Transport"];
  [propertyCopy setObject:&unk_28744E840 forKeyedSubscript:@"RequestTimeout"];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v21 + 15) = v10;
  v20[13] = v10;
  v21[0] = v10;
  v20[11] = v10;
  v20[12] = v10;
  v20[9] = v10;
  v20[10] = v10;
  v20[7] = v10;
  v20[8] = v10;
  v20[5] = v10;
  v20[6] = v10;
  v20[3] = v10;
  v20[4] = v10;
  v20[1] = v10;
  v20[2] = v10;
  v20[0] = v10;
  if (!(*(self->_mb->var0 + 11))(self->_mb, [deviceCopy endpointID], v20, 255))
  {
    v19 = -21846;
    v18 = -1431655766;
    if (!(*(self->_mb->var0 + 12))(self->_mb, v20, &v18))
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:6];
      [propertyCopy setObject:v11 forKeyedSubscript:@"BT_ADDR"];
    }
  }

  v12 = [propertyCopy objectForKeyedSubscript:@"VendorID"];
  v13 = v12 == 0;

  if (v13)
  {
    [propertyCopy setObject:&unk_28744E858 forKeyedSubscript:@"VendorID"];
  }

  v17.receiver = self;
  v17.super_class = HIDRemoteDeviceAACPServer;
  v14 = [(HIDRemoteDeviceServer *)&v17 createRemoteDevice:deviceCopy deviceID:d property:propertyCopy];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)remoteDeviceGetReport:(id)report type:(int64_t)type reportID:(unsigned __int8)d report:(id)a6
{
  typeCopy = type;
  reportCopy = report;
  v11 = a6;
  v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:10];
  bytes = [v12 bytes];
  *(bytes + 4) = *(bytes + 4) & 0xFF800000 | [reportCopy deviceID] & 0x7F | 0x80300;
  *(bytes + 8) = typeCopy;
  *(bytes + 9) = d;
  v14 = -[HIDRemoteDeviceAACPServer sendMessageBTDevice:data:size:transportVersion:side:](self, "sendMessageBTDevice:data:size:transportVersion:side:", [reportCopy endpointID], objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), objc_msgSend(reportCopy, "transportVersion"), objc_msgSend(reportCopy, "side"));
  if (v14)
  {
    RemoteHIDLog();
    objc_claimAutoreleasedReturnValue();
    [HIDRemoteDeviceAACPServer remoteDeviceGetReport:type:reportID:report:];
    v14 = -536870212;
  }

  return v14;
}

- (void)timeSyncEnable:(BOOL)enable forEndpointID:(unint64_t)d
{
  enableCopy = enable;
  v20 = *MEMORY[0x277D85DE8];
  manager = self->_manager;
  v7 = BTAccessoryManagerSensorStreamTimeSyncEnable();
  v8 = RemoteHIDLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v14 = 67109632;
      v15 = enableCopy;
      v16 = 2048;
      dCopy2 = d;
      v18 = 1024;
      v19 = v7;
      v10 = "Couldn't set %u timesync for device:%p status:%d";
      v11 = v8;
      v12 = 24;
LABEL_6:
      _os_log_impl(&dword_261D9C000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v9)
  {
    v14 = 67109376;
    v15 = enableCopy;
    v16 = 2048;
    dCopy2 = d;
    v10 = "Set %u timesync for device:%p";
    v11 = v8;
    v12 = 18;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (os_state_data_s)stateHandler:(os_state_hints_s *)handler
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = objc_opt_new();
  if (handler->var2 - 4 < 0xFFFFFFFE)
  {
    v11 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  endpoints = [(HIDRemoteDeviceServer *)self endpoints];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__HIDRemoteDeviceAACPServer_stateHandler___block_invoke;
  v15[3] = &unk_279AFD250;
  v15[4] = &v16;
  [endpoints enumerateObjectsUsingBlock:v15];

  v6 = v17[5];
  v14 = 0;
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7)
  {
    v11 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v10 = malloc_type_calloc(1uLL, [v7 length] + 200, 0x1000040BEF03554uLL);
  v11 = v10;
  if (v10)
  {
    strlcpy(v10->var3, "RemoteHID State", 0x40uLL);
    v11->var0 = 1;
    v11->var1.var1 = [v7 length];
    memcpy(v11->var4, [v7 bytes], objc_msgSend(v7, "length"));
  }

  if (v9)
  {
LABEL_6:
    v12 = RemoteHIDLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [HIDRemoteDeviceAACPServer stateHandler:];
    }
  }

LABEL_9:

  _Block_object_dispose(&v16, 8);
  return v11;
}

void __42__HIDRemoteDeviceAACPServer_stateHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 copyState];
  [v2 addObject:?];
}

- (void)btSessionInit:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)btSessionInit:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)btSessionInit:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)btSessionInit:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)btSessionInit:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addBTDevice:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addBTDevice:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addBTDevice:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addBTDevice:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v4, v5, "addDevice device:%p result:%d", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMessageBTDevice:data:size:transportVersion:side:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v4, v5, "BTAccessoryManagerSendCustomMessage fail - device:%p result:%d", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)btDeviceMessageHandler:(NSObject *)a1 type:(NSObject *)a2 data:size:.cold.1(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0(&dword_261D9C000, v4, v5, "decodeHeader fail", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

- (void)btDeviceMessageHandler:(NSObject *)a1 type:(NSObject *)a2 data:size:.cold.2(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0(&dword_261D9C000, v4, v5, "decode fail", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

- (void)btDeviceMessageHandler:type:data:size:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)btAccessoryEventHandler:event:state:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceSetReport:type:reportID:report:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v4, v5, "SetReport device:%p status:%d", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceGetReport:type:reportID:report:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v1 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_7_0(v2))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3_0(&dword_261D9C000, v4, v5, "GetReport device:%p status:%d", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)remoteDeviceRefresh:(os_log_t)log deviceID:transportVersion:side:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_261D9C000, log, OS_LOG_TYPE_ERROR, "remoteDeviceRefresh id:%llu result:%d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)stateHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end