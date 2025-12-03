@interface ISO18013_3_Peripheral
+ (id)getAddress;
- (BOOL)_isBTPowerOn:(int64_t *)on;
- (BOOL)_startCBPeripheralManager;
- (BOOL)_startCBPeripheralManagerAndWaitForPowerOn;
- (BOOL)advertise:(id)advertise readerIdentCharacteristic:(id)characteristic centralAddress:(id)address onDeviceConnection:(id)connection onDisconnect:(id)disconnect onDataRx:(id)rx;
- (BOOL)writeData:(id)data toUUID:(id)d;
- (ISO18013_3_Peripheral)initWithWorkQueue:(id)queue callbackQueue:(id)callbackQueue;
- (id)_extractFromMessage:(const char *)message length:(unint64_t)length lastPacket:(BOOL *)packet;
- (id)getBluetoothStatusDict:(id *)dict;
- (id)getCharacteristic:(id)characteristic;
- (int64_t)hardwareAvailable;
- (void)_activateConnectionBlock:(unint64_t)block connectionState:(BOOL)state;
- (void)_activateDisconnectBlock:(unint64_t)block;
- (void)_activateRxCallbackWithData:(id)data lastPacket:(BOOL)packet;
- (void)_startAdvertising:(id)advertising prioritizedCentralAddress:(id)address;
- (void)invalidateAndUpdateStateSignal:(BOOL)signal reason:(unint64_t)reason;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers;
- (void)setReady;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation ISO18013_3_Peripheral

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = _os_activity_create(&_mh_execute_header, "peripheralManagerDidUpdateState:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  state = [stateCopy state];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManagerDidUpdateState:]", 47, self, @"LE: peripheralManagerDidUpdateState : %ld", v7, v8, state);
  if ([stateCopy state] == 4)
  {
    [(ISO18013_3_Peripheral *)self _activateDisconnectBlock:4];
LABEL_6:
    peripheralCallbackLock = [(ISO18013_3_Peripheral *)self peripheralCallbackLock];
    [peripheralCallbackLock lock];

    peripheralCallbackLock2 = [(ISO18013_3_Peripheral *)self peripheralCallbackLock];
    [peripheralCallbackLock2 broadcast];

    peripheralCallbackLock3 = [(ISO18013_3_Peripheral *)self peripheralCallbackLock];
    [peripheralCallbackLock3 unlock];

    goto LABEL_7;
  }

  if ([stateCopy state] != 5 || !-[ISO18013_3_Peripheral getL2CAPEnable](self, "getL2CAPEnable"))
  {
    goto LABEL_6;
  }

  [(CBPeripheralManager *)self->_peripheralManager publishL2CAPChannelWithEncryption:0];
LABEL_7:
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  errorCopy = error;
  v6 = _os_activity_create(&_mh_execute_header, "peripheralManagerDidStartAdvertising:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManagerDidStartAdvertising:error:]", 65, self, @"LE: peripheralManagerDidStartAdvertising : %@", v7, v8, errorCopy);
  if (!errorCopy)
  {
    v9 = sub_100024AE0();
    if (os_signpost_enabled(v9))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DidStartAdvertising", &unk_10005485E, &state, 2u);
    }
  }
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  v9 = _os_activity_create(&_mh_execute_header, "peripheralManager:central:didSubscribeToCharacterisitc:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = sub_100024AE0();
  if (os_signpost_enabled(v10))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BT_CentralSubscribedCharacteristic", &unk_10005485E, &state, 2u);
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManager:central:didSubscribeToCharacteristic:]", 77, self, @"LE: didSubscribeToCharacteristic : %@", v11, v12, characteristicCopy);
  if ([(CBPeripheralManager *)self->_peripheralManager isAdvertising])
  {
    [(CBPeripheralManager *)self->_peripheralManager stopAdvertising];
  }

  if (![(NSMutableArray *)self->_readers count])
  {
    uUID = [characteristicCopy UUID];
    getStateCharacteristicUUID = [(ISO18013_3_Peripheral *)self getStateCharacteristicUUID];
    v15 = [CBUUID UUIDWithString:getStateCharacteristicUUID];
    v16 = [uUID isEqual:v15];

    if (v16)
    {
      [(NSMutableArray *)self->_readers addObject:centralCopy];
      [(ISO18013_3_Peripheral *)self setReady];
    }
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  centralCopy = central;
  characteristicCopy = characteristic;
  v9 = _os_activity_create(&_mh_execute_header, "peripheralManager:central:didUnsubscribeFromCharacteristic:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = sub_100024AE0();
  if (os_signpost_enabled(v10))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BT_CentralUnsubscribedCharacteristic", &unk_10005485E, &state, 2u);
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManager:central:didUnsubscribeFromCharacteristic:]", 95, self, @"LE: didUnsubscribeFromCharacteristic : %@", v11, v12, characteristicCopy);
  uUID = [characteristicCopy UUID];

  getStateCharacteristicUUID = [(ISO18013_3_Peripheral *)self getStateCharacteristicUUID];
  v15 = [CBUUID UUIDWithString:getStateCharacteristicUUID];
  v16 = [uUID isEqual:v15];

  if (v16)
  {
    [(NSMutableArray *)self->_readers removeObject:centralCopy];
    if (![(NSMutableArray *)self->_readers count])
    {
      if (sub_10001929C(self->_sender))
      {
        v24 = 5;
      }

      else
      {
        v24 = 0;
      }

      sub_100019224(self->_sender, v17, v18, v19, v20, v21, v22, v23);
      sender = self->_sender;
      self->_sender = 0;

      l2capChannel = self->_l2capChannel;
      if (l2capChannel)
      {
        inputStream = [(CBL2CAPChannel *)l2capChannel inputStream];
        queue = [(ISO18013_3_Peripheral *)self queue];
        CFReadStreamSetDispatchQueue(inputStream, queue);

        inputStream2 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
        [inputStream2 setDelegate:0];

        inputStream3 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
        [inputStream3 close];

        outputStream = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
        queue2 = [(ISO18013_3_Peripheral *)self queue];
        CFWriteStreamSetDispatchQueue(outputStream, queue2);

        outputStream2 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
        [outputStream2 setDelegate:0];

        outputStream3 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
        [outputStream3 close];

        v35 = self->_l2capChannel;
        self->_l2capChannel = 0;
      }

      v36 = dispatch_time(0, 1000000000);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E660;
      block[3] = &unk_100058DE0;
      block[4] = self;
      block[5] = v24;
      dispatch_after(v36, queue, block);
    }
  }
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  managerCopy = manager;
  requestsCopy = requests;
  v7 = _os_activity_create(&_mh_execute_header, "peripheralManager:didReceiveWriteRequests:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = requestsCopy;
  v42 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v42)
  {
    v8 = &AnalyticsSendEventLazy_ptr;
    v41 = *v44;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        value = [v10 value];
        characteristic = [v10 characteristic];
        uUID = [characteristic UUID];
        v14 = v8[195];
        getStateCharacteristicUUID = [(ISO18013_3_Peripheral *)self getStateCharacteristicUUID];
        v16 = [v14 UUIDWithString:getStateCharacteristicUUID];
        v17 = [uUID isEqual:v16];

        if (v17)
        {
          value2 = [v10 value];
          v19 = [value2 length];

          if (v19)
          {
            value3 = [v10 value];
            v21 = *[value3 bytes];

            if (v21 == 2)
            {
              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManager:didReceiveWriteRequests:]", 150, self, @"LE: Rcv End State", v22, v23, v38);
              self->_isoConnectionState = 2;
              if (sub_10001929C(self->_sender))
              {
                v37 = 5;
              }

              else
              {
                v37 = 0;
              }

              [(ISO18013_3_Peripheral *)self _activateDisconnectBlock:v37];
            }

            else if (v21 == 1)
            {
              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManager:didReceiveWriteRequests:]", 146, self, @"LE: Rcv Start State", v22, v23, v38);
              self->_isoConnectionState = 1;
              [(ISO18013_3_Peripheral *)self setReady];
            }
          }
        }

        else
        {
          characteristic2 = [v10 characteristic];
          uUID2 = [characteristic2 UUID];
          v26 = v8[195];
          getIncomingDataCharacteristicUUID = [(ISO18013_3_Peripheral *)self getIncomingDataCharacteristicUUID];
          v28 = [v26 UUIDWithString:getIncomingDataCharacteristicUUID];
          v29 = [uUID2 isEqual:v28];

          if (v29)
          {
            readers = self->_readers;
            central = [v10 central];
            LOBYTE(readers) = [(NSMutableArray *)readers containsObject:central];

            if (readers)
            {
              LOBYTE(state.opaque[0]) = 0;
              v34 = -[ISO18013_3_Peripheral _extractFromMessage:length:lastPacket:](self, "_extractFromMessage:length:lastPacket:", [value bytes], objc_msgSend(value, "length"), &state);
              [(ISO18013_3_Peripheral *)self _activateRxCallbackWithData:v34 lastPacket:LOBYTE(state.opaque[0])];
            }

            else
            {
              [managerCopy respondToRequest:v10 withResult:3];
              sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManager:didReceiveWriteRequests:]", 162, self, @"LE: Rcv data but Reader is not tracked", v35, v36, v38);
            }
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManager:didReceiveWriteRequests:]", 170, self, @"LE: didReceiveWriteRequests : unknown request\n%@", v30, v31, v10);
          }
        }

        v8 = &AnalyticsSendEventLazy_ptr;
      }

      v42 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v42);
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers
{
  v4 = _os_activity_create(&_mh_execute_header, "peripheralManagerIsReadyToUpdateSubscribers:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);
  os_activity_scope_leave(&v12);

  sub_10001934C(self->_sender, v5, v6, v7, v8, v9, v10, v11, v12.opaque[0]);
}

- (void)peripheralManager:(id)manager didOpenL2CAPChannel:(id)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  v9 = _os_activity_create(&_mh_execute_header, "peripheralManager:didOpenL2CAPChannel:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = sub_100024AE0();
  if (os_signpost_enabled(v10))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DidOpenLCAPChannel", &unk_10005485E, &state, 2u);
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral peripheralManager:didOpenL2CAPChannel:error:]", 206, self, @"LE: didOpenL2CAPChannel : %@ (error = %@)", v11, v12, channelCopy);
  l2capChannel = self->_l2capChannel;
  self->_l2capChannel = channelCopy;
  v14 = channelCopy;

  inputStream = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
  queue = [(ISO18013_3_Peripheral *)self queue];
  CFReadStreamSetDispatchQueue(inputStream, queue);

  inputStream2 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
  [inputStream2 setDelegate:self];

  inputStream3 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
  [inputStream3 open];

  outputStream = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
  queue2 = [(ISO18013_3_Peripheral *)self queue];
  CFWriteStreamSetDispatchQueue(outputStream, queue2);

  outputStream2 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
  [outputStream2 setDelegate:self];

  outputStream3 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];

  [outputStream3 open];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  if (event == 4)
  {
    v10 = @"NSStreamEventHasSpaceAvailable";
    v11 = OS_LOG_TYPE_INFO;
    v12 = 228;
LABEL_6:
    sub_10002483C(v11, 0, "[ISO18013_3_Peripheral stream:handleEvent:]", v12, self, v10, v6, v7, eventCopy);
    goto LABEL_7;
  }

  if (event != 2)
  {
    eventCopy = event;
    v10 = @"LE: Stream event %lu on %@";
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 230;
    goto LABEL_6;
  }

  bzero(v15, 0x400uLL);
  v14 = 0;
  v9 = -[ISO18013_3_Peripheral _extractFromMessage:length:lastPacket:](self, "_extractFromMessage:length:lastPacket:", v15, [streamCopy read:v15 maxLength:1024], &v14);
  [(ISO18013_3_Peripheral *)self _activateRxCallbackWithData:v9 lastPacket:v14];

LABEL_7:
}

- (id)getCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  iso18Characteristics = self->_iso18Characteristics;
  if (iso18Characteristics)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = iso18Characteristics;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          uUID = [v13 UUID];
          v15 = [CBUUID UUIDWithString:characteristicCopy];
          v16 = [uUID isEqual:v15];

          if (v16)
          {
            v17 = v13;

            goto LABEL_14;
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Peripheral getCharacteristic:]", 263, self, @"LE: No GATT", v4, v5, v19);
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (void)_startAdvertising:(id)advertising prioritizedCentralAddress:(id)address
{
  advertisingCopy = advertising;
  addressCopy = address;
  if ([addressCopy length])
  {
    [(CBPeripheralManager *)self->_peripheralManager incomingAddress:addressCopy];
  }

  peripheralManager = self->_peripheralManager;
  v11 = advertisingCopy;
  v12[0] = CBAdvertisementDataServiceUUIDsKey;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  v12[1] = CBOptionUseCase;
  v13[0] = v9;
  v13[1] = &off_10005F610;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [(CBPeripheralManager *)peripheralManager startAdvertising:v10];
}

- (ISO18013_3_Peripheral)initWithWorkQueue:(id)queue callbackQueue:(id)callbackQueue
{
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  v18.receiver = self;
  v18.super_class = ISO18013_3_Peripheral;
  v9 = [(ISO18013_3_Peripheral *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, callbackQueue);
    v11 = objc_opt_new();
    readers = v10->_readers;
    v10->_readers = v11;

    objc_storeStrong(&v10->_queue, queue);
    v13 = objc_opt_new();
    peripheralCallbackLock = v10->_peripheralCallbackLock;
    v10->_peripheralCallbackLock = v13;

    v15 = objc_alloc_init(NSMutableData);
    rxBuffer = v10->_rxBuffer;
    v10->_rxBuffer = v15;
  }

  return v10;
}

- (BOOL)advertise:(id)advertise readerIdentCharacteristic:(id)characteristic centralAddress:(id)address onDeviceConnection:(id)connection onDisconnect:(id)disconnect onDataRx:(id)rx
{
  advertiseCopy = advertise;
  characteristicCopy = characteristic;
  addressCopy = address;
  rxCopy = rx;
  disconnectCopy = disconnect;
  v19 = objc_retainBlock(connection);
  connectionBlock = self->_connectionBlock;
  self->_connectionBlock = v19;

  v21 = objc_retainBlock(disconnectCopy);
  disconnectionBlock = self->_disconnectionBlock;
  self->_disconnectionBlock = v21;

  if (![(ISO18013_3_Peripheral *)self _startCBPeripheralManagerAndWaitForPowerOn])
  {
    goto LABEL_7;
  }

  if (![(ISO18013_3_Peripheral *)self createGATTServer:self->_peripheralManager serviceUUID:advertiseCopy readerIdentCharacteristic:characteristicCopy])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Peripheral advertise:readerIdentCharacteristic:centralAddress:onDeviceConnection:onDisconnect:onDataRx:]", 318, self, @"LE: Failed to create GATT server", v23, v24, v38);
LABEL_7:
    v35 = self->_connectionBlock;
    self->_connectionBlock = 0;

    v36 = self->_disconnectionBlock;
    self->_disconnectionBlock = 0;

    v34 = 0;
    goto LABEL_8;
  }

  v25 = sub_100024AE0();
  if (os_signpost_enabled(v25))
  {
    *buf = 136315138;
    ClassName = object_getClassName(self);
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BT_CreatedGATTServer", "class=%s", buf, 0xCu);
  }

  v26 = [CBUUID UUIDWithData:advertiseCopy];
  advertiseServiceUUID = self->_advertiseServiceUUID;
  self->_advertiseServiceUUID = v26;

  v28 = objc_retainBlock(rxCopy);
  rxBlock = self->_rxBlock;
  self->_rxBlock = v28;

  v30 = objc_alloc_init(NSMutableData);
  rxBuffer = self->_rxBuffer;
  self->_rxBuffer = v30;

  objc_storeStrong(&self->_identCharacteristicValue, characteristic);
  [(ISO18013_3_Peripheral *)self _startAdvertising:self->_advertiseServiceUUID prioritizedCentralAddress:addressCopy];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral advertise:readerIdentCharacteristic:centralAddress:onDeviceConnection:onDisconnect:onDataRx:]", 336, self, @"LE: advertising UUID: %@", v32, v33, self->_advertiseServiceUUID);
  v34 = 1;
LABEL_8:

  return v34;
}

- (void)invalidateAndUpdateStateSignal:(BOOL)signal reason:(unint64_t)reason
{
  queue = [(ISO18013_3_Peripheral *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F660;
  block[3] = &unk_100058F70;
  signalCopy = signal;
  block[4] = self;
  block[5] = reason;
  dispatch_async(queue, block);
}

- (int64_t)hardwareAvailable
{
  if ([(ISO18013_3_Peripheral *)self _startCBPeripheralManager])
  {
    v7 = 0;
    if ([(ISO18013_3_Peripheral *)self _isBTPowerOn:&v7])
    {
      return 1;
    }

    if (v7 == 4)
    {
      return 2;
    }

    if (v7 <= 1)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral hardwareAvailable]", 381, self, @"Unable to determine BT state, assumes off", v3, v4, v6);
      return 2;
    }
  }

  return 0;
}

+ (id)getAddress
{
  v2 = dispatch_get_global_queue(33, 0);
  v3 = [[CBPeripheralManager alloc] initWithDelegate:0 queue:v2];
  v4 = sub_10002EF14([BTAddressUpdateObserver alloc], v3);
  v5 = sub_10002F190(v4);
  sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "+[ISO18013_3_Peripheral getAddress]", 396, @"LE: address=%@", v6, v7, v8, v5);

  return v5;
}

- (BOOL)writeData:(id)data toUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_10001FC20;
  v38[4] = sub_10001FC30;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10001FC20;
  v36 = sub_10001FC30;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_10001FC20;
  v26[4] = sub_10001FC30;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_10001FC20;
  v24[4] = sub_10001FC30;
  v25 = 0;
  queue = [(ISO18013_3_Peripheral *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FC38;
  block[3] = &unk_100058F98;
  block[4] = self;
  v19 = &v28;
  v20 = v38;
  v9 = dCopy;
  v18 = v9;
  v21 = &v32;
  v22 = v26;
  v23 = v24;
  dispatch_sync(queue, block);

  if (v29[3])
  {
    v10 = v33[5];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001FF50;
    v16[3] = &unk_100058FC0;
    v16[4] = v26;
    v16[5] = v38;
    v16[6] = v24;
    v11 = sub_100018BC0(v10, dataCopy, v16);
    *(v29 + 24) = v11;
    queue2 = [(ISO18013_3_Peripheral *)self queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001FF7C;
    v15[3] = &unk_100058A08;
    v15[4] = self;
    dispatch_sync(queue2, v15);

    v13 = *(v29 + 24);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(v38, 8);
  return v13 & 1;
}

- (id)getBluetoothStatusDict:(id *)dict
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001FC20;
  v11 = sub_10001FC30;
  v12 = 0;
  peripheralManager = self->_peripheralManager;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000200AC;
  v6[3] = &unk_100058FE8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = dict;
  [(CBPeripheralManager *)peripheralManager queryBluetoothStatus:&off_10005F860 completion:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)_startCBPeripheralManager
{
  if (self->_peripheralManager)
  {
    return 1;
  }

  v5 = [[CBPeripheralManager alloc] initWithDelegate:self queue:self->_queue];
  peripheralManager = self->_peripheralManager;
  self->_peripheralManager = v5;

  if (self->_peripheralManager)
  {
    return 1;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Peripheral _startCBPeripheralManager]", 524, self, @"LE: Failed to create peripheral", v7, v8, v2);
  return 0;
}

- (BOOL)_startCBPeripheralManagerAndWaitForPowerOn
{
  _startCBPeripheralManager = [(ISO18013_3_Peripheral *)self _startCBPeripheralManager];
  if (_startCBPeripheralManager)
  {

    LOBYTE(_startCBPeripheralManager) = [(ISO18013_3_Peripheral *)self _isBTPowerOn:0];
  }

  return _startCBPeripheralManager;
}

- (BOOL)_isBTPowerOn:(int64_t *)on
{
  v5 = 4;
  while (1)
  {
    state = [(CBPeripheralManager *)self->_peripheralManager state];
    if (on)
    {
      *on = state;
    }

    if (state == 4)
    {
      return 0;
    }

    if (state == 5)
    {
      break;
    }

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral _isBTPowerOn:]", 554, self, @"Waiting on state update, current value=%ld", v7, v8, state);
    v9 = [NSDate dateWithTimeIntervalSinceNow:0.3];
    peripheralCallbackLock = [(ISO18013_3_Peripheral *)self peripheralCallbackLock];
    [peripheralCallbackLock lock];

    peripheralCallbackLock2 = [(ISO18013_3_Peripheral *)self peripheralCallbackLock];
    [peripheralCallbackLock2 waitUntilDate:v9];

    peripheralCallbackLock3 = [(ISO18013_3_Peripheral *)self peripheralCallbackLock];
    [peripheralCallbackLock3 unlock];

    if (--v5 <= 1)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Peripheral _isBTPowerOn:]", 565, self, @"Unexpected BT power state", v13, v14, v16);
      return 0;
    }
  }

  return 1;
}

- (void)_activateConnectionBlock:(unint64_t)block connectionState:(BOOL)state
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral _activateConnectionBlock:connectionState:]", 572, self, @"LE: status=%lu, isConnected=%d", v4, v5, block);
  if (self->_connectionBlock)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Peripheral _activateConnectionBlock:connectionState:]", 574, self, @"LE: Activate connect block", v9, v10, v15);
    self->_isConnected = state;
    v11 = objc_retainBlock(self->_connectionBlock);
    connectionBlock = self->_connectionBlock;
    self->_connectionBlock = 0;

    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000204A4;
    block[3] = &unk_100059010;
    v17 = v11;
    blockCopy = block;
    v14 = v11;
    dispatch_async(clientQueue, block);
  }
}

- (void)_activateDisconnectBlock:(unint64_t)block
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Peripheral _activateDisconnectBlock:]", 585, self, &stru_100059C08, v3, v4, v13);
  if (self->_disconnectionBlock)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Peripheral _activateDisconnectBlock:]", 587, self, @"LE: Activate disconnect block, status=%lu", v7, v8, block);
    self->_isConnected = 0;
    v9 = objc_retainBlock(self->_disconnectionBlock);
    disconnectionBlock = self->_disconnectionBlock;
    self->_disconnectionBlock = 0;

    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000205C8;
    block[3] = &unk_100059010;
    v15 = v9;
    blockCopy = block;
    v12 = v9;
    dispatch_async(clientQueue, block);
  }
}

- (void)_activateRxCallbackWithData:(id)data lastPacket:(BOOL)packet
{
  packetCopy = packet;
  [(NSMutableData *)self->_rxBuffer appendData:data];
  if (packetCopy)
  {
    if (self->_rxBlock)
    {
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000206A4;
      block[3] = &unk_100058A08;
      block[4] = self;
      dispatch_async(clientQueue, block);
    }

    else
    {
      v7 = objc_alloc_init(NSMutableData);
      rxBuffer = self->_rxBuffer;
      self->_rxBuffer = v7;

      _objc_release_x1();
    }
  }
}

- (void)setReady
{
  if (!self->_isConnected && [(NSMutableArray *)self->_readers count]&& self->_isoConnectionState == 1)
  {

    [(ISO18013_3_Peripheral *)self _activateConnectionBlock:0 connectionState:1];
  }
}

- (id)_extractFromMessage:(const char *)message length:(unint64_t)length lastPacket:(BOOL *)packet
{
  *packet = 0;
  if (*message == 1)
  {
    goto LABEL_4;
  }

  if (!*message)
  {
    *packet = 1;
LABEL_4:
    v7 = [NSData dataWithBytes:message + 1 length:length - 1];
    goto LABEL_6;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Peripheral _extractFromMessage:length:lastPacket:]", 651, self, @"Unexpected header byte: 0x%X.  Dropping data", v5, v6, *message);
  v7 = 0;
LABEL_6:

  return v7;
}

@end