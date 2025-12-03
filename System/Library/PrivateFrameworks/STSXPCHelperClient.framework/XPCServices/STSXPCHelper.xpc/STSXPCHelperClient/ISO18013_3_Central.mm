@interface ISO18013_3_Central
- (BOOL)_isBTPowerOn:(int64_t *)on;
- (BOOL)_startCBCentralManager;
- (BOOL)_startCBCentralManagerAndWaitForPowerOn;
- (BOOL)connectBLEAddress:(id)address advertiseServiceUUID:(id)d readerIdentCharacteristic:(id)characteristic onDeviceConnection:(id)connection onDisconnect:(id)disconnect onDataRx:(id)rx;
- (BOOL)discoverMDOCServiceCharacteristics:(id)characteristics;
- (BOOL)setupGATTServerCharacteristics:(id)characteristics;
- (BOOL)writeData:(id)data toUUID:(id)d;
- (BOOL)writeL2CAPData:(id)data;
- (CBService)readerService;
- (ISO18013_3_Central)initWithWorkQueue:(id)queue callbackQueue:(id)callbackQueue;
- (id)_extractFromMessage:(const char *)message length:(unint64_t)length lastPacket:(BOOL *)packet;
- (id)getBluetoothStatusDict:(id *)dict;
- (id)getCharacteristic:(id)characteristic;
- (int64_t)hardwareAvailable;
- (void)_activateConnectionBlock:(unint64_t)block connectionState:(BOOL)state;
- (void)_activateDisconnectBlock:(unint64_t)block;
- (void)_activateRxCallbackWithData:(id)data lastPacket:(BOOL)packet;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)invalidateAndUpdateStateSignal:(BOOL)signal reason:(unint64_t)reason;
- (void)invalidatePeripheral;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)response;
- (void)queryBLEGATTServer:(id)server;
- (void)receivedData:(id)data;
- (void)setReady;
- (void)stateChanged:(id)changed;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation ISO18013_3_Central

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = _os_activity_create(&_mh_execute_header, "centralManagerDidUpdateState:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  state = [stateCopy state];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManagerDidUpdateState:]", 62, self, @"LE: centralManagerDidUpdateState : %ld", v7, v8, state);
  if ([stateCopy state] == 1)
  {
    firstObject = [(NSMutableArray *)self->_discoveredReaders firstObject];
    v10 = NSLocalizedDescriptionKey;
    v21 = NSLocalizedDescriptionKey;
    v22 = off_100069AF8;
    v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = 1;
LABEL_5:
    v13 = [NSError errorWithDomain:@"BluetoothDomain" code:v12 userInfo:v11];

    v19[0] = v10;
    v19[1] = NSUnderlyingErrorKey;
    state.opaque[0] = @"Bluetooth specific error";
    state.opaque[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:&state forKeys:v19 count:2];
    v15 = [NSError errorWithDomain:@"STSXPCHelperErrorDomain" code:12 userInfo:v14];

    [(ISO18013_3_Central *)self centralManager:stateCopy didDisconnectPeripheral:firstObject error:v15];
    goto LABEL_6;
  }

  if ([stateCopy state] == 4)
  {
    firstObject = [(NSMutableArray *)self->_discoveredReaders firstObject];
    v10 = NSLocalizedDescriptionKey;
    v21 = NSLocalizedDescriptionKey;
    v22 = STSBluetoothErrorDescriptions;
    v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = 0;
    goto LABEL_5;
  }

LABEL_6:
  centralCallbackLock = [(ISO18013_3_Central *)self centralCallbackLock];
  [centralCallbackLock lock];

  centralCallbackLock2 = [(ISO18013_3_Central *)self centralCallbackLock];
  [centralCallbackLock2 broadcast];

  centralCallbackLock3 = [(ISO18013_3_Central *)self centralCallbackLock];
  [centralCallbackLock3 unlock];
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  v10 = _os_activity_create(&_mh_execute_header, "centralManager:didDiscoverPeripheral:advertisementData:RSSI:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  v11 = sub_100024AE0();
  if (os_signpost_enabled(v11))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DiscoveredPeripheral", &unk_10005485E, &state, 2u);
  }

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didDiscoverPeripheral:advertisementData:RSSI:]", 84, self, @"LE: found device matching UUID %@ !", v12, v13, dataCopy);
  [(NSMutableArray *)self->_discoveredReaders addObject:peripheralCopy];
  if (!self->_remoteReader)
  {
    [(CBCentralManager *)self->_centralManager stopScan];
    [(ISO18013_3_Central *)self connectPeripheral:peripheralCopy delay:0];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  managerCopy = manager;
  v8 = _os_activity_create(&_mh_execute_header, "centralManager:didConnectPeripheral:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  state = [managerCopy state];
  [peripheralCopy state];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didConnectPeripheral:]", 95, self, @"LE: State=(central: %ld, peripheral: %ld)", v10, v11, state);
  [(ISO18013_3_Central *)self queryBLEGATTServer:peripheralCopy];
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  errorCopy = error;
  peripheralCopy = peripheral;
  managerCopy = manager;
  v11 = _os_activity_create(&_mh_execute_header, "centralManager:didiFailToConnectPeripheral:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  state = [managerCopy state];
  [peripheralCopy state];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didFailToConnectPeripheral:error:]", 104, self, @"LE: State=(central: %ld, peripheral: %ld) (error %@)", v13, v14, state);

  remoteReader = self->_remoteReader;
  self->_remoteReader = 0;

  [(ISO18013_3_Central *)self connectPeripheral:peripheralCopy delay:1];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  errorCopy = error;
  peripheralCopy = peripheral;
  managerCopy = manager;
  v11 = _os_activity_create(&_mh_execute_header, "centralManager:didDisconnectPeripheral:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v12 = sub_100024AE0();
  if (os_signpost_enabled(v12))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BT_PeripheralDisconnected", &unk_10005485E, &state, 2u);
  }

  state = [managerCopy state];
  [peripheralCopy state];

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didDisconnectPeripheral:error:]", 115, self, @"LE: State=(central: %ld, peripheral: %ld) (error %@)", v14, v15, state);
  v16 = sub_10001929C(self->_sender);
  sub_100019224(self->_sender, v17, v18, v19, v20, v21, v22, v23);
  sender = self->_sender;
  self->_sender = 0;

  objc_storeWeak(&self->_readerService, 0);
  remoteReader = self->_remoteReader;
  self->_remoteReader = 0;

  readerIdentCharacteristic = self->_readerIdentCharacteristic;
  self->_readerIdentCharacteristic = 0;

  self->_peripheralL2CapState = 0;
  self->_peripheralReaderIdentState = 0;
  if (self->_l2capChannel)
  {
    l2capChannel = [(ISO18013_3_Central *)self l2capChannel];
    inputStream = [l2capChannel inputStream];
    queue = [(ISO18013_3_Central *)self queue];
    CFReadStreamSetDispatchQueue(inputStream, queue);

    inputStream2 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [inputStream2 setDelegate:0];

    inputStream3 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [inputStream3 close];

    l2capChannel2 = [(ISO18013_3_Central *)self l2capChannel];
    outputStream = [l2capChannel2 outputStream];
    queue2 = [(ISO18013_3_Central *)self queue];
    CFWriteStreamSetDispatchQueue(outputStream, queue2);

    outputStream2 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [outputStream2 setDelegate:0];

    outputStream3 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [outputStream3 close];

    l2capChannel = self->_l2capChannel;
    self->_l2capChannel = 0;
  }

  v38 = errorCopy;
  v39 = v38;
  if (!v38)
  {
    goto LABEL_11;
  }

  domain = [v38 domain];
  if (([domain isEqualToString:@"STSXPCHelperErrorDomain"] & 1) == 0)
  {

    goto LABEL_11;
  }

  code = [v39 code];

  if (code != 12)
  {
LABEL_11:

LABEL_12:
    v47 = v39 != 0;
    goto LABEL_13;
  }

  userInfo = [v39 userInfo];
  v43 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  domain2 = [v43 domain];
  v45 = [domain2 isEqualToString:@"BluetoothDomain"];

  if (v45)
  {
    v46 = v43;
  }

  else
  {
    v46 = 0;
  }

  if (!v46)
  {
    goto LABEL_12;
  }

  code2 = [v46 code];
  v49 = 5;
  if (!v16)
  {
    v49 = 1;
  }

  if (code2)
  {
    v47 = v49;
  }

  else
  {
    v47 = 4;
  }

LABEL_13:
  [(ISO18013_3_Central *)self _activateDisconnectBlock:v47];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  serviceCopy = service;
  errorCopy = error;
  v9 = _os_activity_create(&_mh_execute_header, "peripheral:ididDiscoverCharacteristicsForService:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  if (errorCopy)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didDiscoverCharacteristicsForService:error:]", 158, self, @"LE: error %@", v10, v11, errorCopy);
  }

  uUID = [serviceCopy UUID];
  v13 = [uUID isEqual:self->_peripheralServiceUUID];

  if (v13 && ![(ISO18013_3_Central *)self setupGATTServerCharacteristics:serviceCopy])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didDiscoverCharacteristicsForService:error:]", 163, self, @"LE: Failed to setup ISO characteristics...", v14, v15, v16);
  }
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  v8 = _os_activity_create(&_mh_execute_header, "perihperal:didDiscoverServices:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  if (servicesCopy)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didDiscoverServices:]", 172, self, @"LE: error %@", v9, v10, servicesCopy);
  }

  if (![(ISO18013_3_Central *)self discoverMDOCServiceCharacteristics:peripheralCopy])
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didDiscoverServices:]", 176, self, @"LE: No ISO services...", v11, v12, v13);
    [(NSMutableArray *)self->_discoveredReaders removeObject:peripheralCopy];
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:peripheralCopy];
  }
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  peripheralCopy = peripheral;
  v6 = _os_activity_create(&_mh_execute_header, "peripheral:didModifyServices:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v6, &v9);
  os_activity_scope_leave(&v9);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didModifyServices:]", 184, self, @"LE: didModifyServices", v7, v8, v9.opaque[0]);
  objc_storeWeak(&self->_readerService, 0);
  [(ISO18013_3_Central *)self queryBLEGATTServer:peripheralCopy];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = _os_activity_create(&_mh_execute_header, "periphperal:didUpdateValueForCharacteristic:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (errorCopy)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didUpdateValueForCharacteristic:error:]", 194, self, @"LE: didUpdateValueForCharacteristic : %@ (error %@)", v12, v13, characteristicCopy);
  }

  uUID = [characteristicCopy UUID];
  getStateCharacteristicUUID = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
  v16 = [CBUUID UUIDWithString:getStateCharacteristicUUID];
  v17 = [uUID isEqual:v16];

  if (v17)
  {
    [(ISO18013_3_Central *)self stateChanged:characteristicCopy];
    goto LABEL_20;
  }

  uUID2 = [characteristicCopy UUID];
  getIncomingDataCharacteristicUUID = [(ISO18013_3_Central *)self getIncomingDataCharacteristicUUID];
  v20 = [CBUUID UUIDWithString:getIncomingDataCharacteristicUUID];
  v21 = [uUID2 isEqual:v20];

  if (v21)
  {
    [(ISO18013_3_Central *)self receivedData:characteristicCopy];
    goto LABEL_20;
  }

  uUID3 = [characteristicCopy UUID];
  getL2CAPCharacteristicUUID = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];
  v24 = [CBUUID UUIDWithString:getL2CAPCharacteristicUUID];
  v25 = [uUID3 isEqual:v24];

  if (v25)
  {
    if (self->_peripheralL2CapState == 1)
    {
      self->_peripheralL2CapState = 2;
      expectedCharacteristicReadOnStartup = self->_expectedCharacteristicReadOnStartup;
      if (expectedCharacteristicReadOnStartup)
      {
        self->_expectedCharacteristicReadOnStartup = expectedCharacteristicReadOnStartup - 1;
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didUpdateValueForCharacteristic:error:]", 210, self, @"Unexpected underflow", v26, v27, v43);
      }

      v34 = @"L2CAP not supported";
      v35 = OS_LOG_TYPE_DEFAULT;
      v36 = 213;
    }

    else
    {
      v34 = @"LE: Unexpected state";
      v35 = OS_LOG_TYPE_ERROR;
      v36 = 203;
    }

    goto LABEL_19;
  }

  uUID4 = [characteristicCopy UUID];
  getIdentifierCharacteristicUUID = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];
  v31 = [CBUUID UUIDWithString:getIdentifierCharacteristicUUID];
  v32 = [uUID4 isEqual:v31];

  if (!v32)
  {
    goto LABEL_20;
  }

  if (self->_peripheralReaderIdentState != 1)
  {
    v34 = @"LE: Unexpected state";
    v35 = OS_LOG_TYPE_ERROR;
    v36 = 225;
LABEL_19:
    sub_10002483C(v35, 0, "[ISO18013_3_Central peripheral:didUpdateValueForCharacteristic:error:]", v36, self, v34, v26, v27, v43);
    goto LABEL_20;
  }

  self->_peripheralReaderIdentState = 2;
  v33 = self->_expectedCharacteristicReadOnStartup;
  if (v33)
  {
    self->_expectedCharacteristicReadOnStartup = v33 - 1;
  }

  else
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didUpdateValueForCharacteristic:error:]", 232, self, @"Unexpected underflow", v26, v27, v43);
  }

  readerIdentCharacteristic = self->_readerIdentCharacteristic;
  if (!readerIdentCharacteristic)
  {
    v34 = @"Skipping reader Ident verification.";
    v35 = OS_LOG_TYPE_DEFAULT;
    v36 = 236;
    goto LABEL_19;
  }

  value = [characteristicCopy value];
  v39 = [(NSData *)readerIdentCharacteristic isEqualToData:value];

  if (v39)
  {
    [(ISO18013_3_Central *)self setReady];
  }

  else
  {
    value2 = [characteristicCopy value];
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didUpdateValueForCharacteristic:error:]", 243, self, @"LE: Mismatch reader Ident value: %@", v41, v42, value2);

    [(NSMutableArray *)self->_discoveredReaders removeObject:peripheralCopy];
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:peripheralCopy];
  }

LABEL_20:
}

- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)response
{
  v4 = _os_activity_create(&_mh_execute_header, "perihperalIsReadyToSendWriteWithoutResponse:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);
  os_activity_scope_leave(&v12);

  sub_10001934C(self->_sender, v5, v6, v7, v8, v9, v10, v11, v12.opaque[0]);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  if (event == 4)
  {
    v12 = @"NSStreamEventHasSpaceAvailable";
    v13 = OS_LOG_TYPE_INFO;
    v14 = 277;
LABEL_6:
    sub_10002483C(v13, 0, "[ISO18013_3_Central stream:handleEvent:]", v14, self, v12, v6, v7, eventCopy);
    goto LABEL_7;
  }

  if (event != 2)
  {
    eventCopy = event;
    v12 = @"LE: Stream event %lu on %@";
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 279;
    goto LABEL_6;
  }

  bzero(v17, 0x400uLL);
  v16 = 0;
  v9 = -[ISO18013_3_Central _extractFromMessage:length:lastPacket:](self, "_extractFromMessage:length:lastPacket:", v17, [streamCopy read:v17 maxLength:1024], &v16);
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central stream:handleEvent:]", 274, self, @"LE: L2CAP RX> %@", v10, v11, v9);
  [(ISO18013_3_Central *)self _activateRxCallbackWithData:v9 lastPacket:v16];

LABEL_7:
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  v10 = _os_activity_create(&_mh_execute_header, "peripheral:didOpenL2CAPChannel:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didOpenL2CAPChannel:error:]", 287, self, @"LE: didOpenL2CAPChannel : %@ (error = %@)", v11, v12, channelCopy);
  if (errorCopy)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didOpenL2CAPChannel:error:]", 290, self, @"Fallback to GATT??", v13, v14, v26);
  }

  else
  {
    objc_storeStrong(&self->_l2capChannel, channel);
    sender = self->_sender;
    self->_sender = 0;

    l2capChannel = [(ISO18013_3_Central *)self l2capChannel];
    inputStream = [l2capChannel inputStream];
    queue = [(ISO18013_3_Central *)self queue];
    CFReadStreamSetDispatchQueue(inputStream, queue);

    inputStream2 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [inputStream2 setDelegate:self];

    inputStream3 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [inputStream3 open];

    l2capChannel2 = [(ISO18013_3_Central *)self l2capChannel];
    outputStream = [l2capChannel2 outputStream];
    queue2 = [(ISO18013_3_Central *)self queue];
    CFWriteStreamSetDispatchQueue(outputStream, queue2);

    outputStream2 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [outputStream2 setDelegate:self];

    outputStream3 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [outputStream3 open];
  }

  [(ISO18013_3_Central *)self setReady];
}

- (BOOL)writeL2CAPData:(id)data
{
  dataCopy = data;
  v5 = 0;
  do
  {
    outputStream = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    v7 = [outputStream write:&v5[objc_msgSend(dataCopy maxLength:{"bytes")], objc_msgSend(dataCopy, "length") - v5}];

    v5 += v7;
    [dataCopy length];
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central writeL2CAPData:]", 317, self, @"LE: L2CAP Wrote %lu bytes out of %lu", v8, v9, v7);
  }

  while (v7);
  v10 = v5 == [dataCopy length];

  return v10;
}

- (void)receivedData:(id)data
{
  value = [data value];
  v6 = 0;
  v5 = -[ISO18013_3_Central _extractFromMessage:length:lastPacket:](self, "_extractFromMessage:length:lastPacket:", [value bytes], objc_msgSend(value, "length"), &v6);
  [(ISO18013_3_Central *)self _activateRxCallbackWithData:v5 lastPacket:v6];
}

- (void)queryBLEGATTServer:(id)server
{
  serverCopy = server;
  [serverCopy setDelegate:self];
  v5 = [NSMutableArray alloc];
  peripheralServiceUUID = [(ISO18013_3_Central *)self peripheralServiceUUID];
  v9 = [v5 initWithObjects:{peripheralServiceUUID, 0}];

  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central queryBLEGATTServer:]", 337, self, @"LE: services=%@", v7, v8, v9);
  [serverCopy discoverServices:v9];
}

- (BOOL)discoverMDOCServiceCharacteristics:(id)characteristics
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  characteristicsCopy = characteristics;
  obj = [characteristicsCopy services];
  v4 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        uUID = [v8 UUID];
        sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central discoverMDOCServiceCharacteristics:]", 343, self, @"service UUID: %@", v10, v11, uUID);

        uUID2 = [v8 UUID];
        peripheralServiceUUID = [(ISO18013_3_Central *)self peripheralServiceUUID];
        v14 = [uUID2 isEqual:peripheralServiceUUID];

        if (v14)
        {
          getStateCharacteristicUUID = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
          v19 = [CBUUID UUIDWithString:getStateCharacteristicUUID];
          v41[0] = v19;
          getOutgoingDataCharacteristicUUID = [(ISO18013_3_Central *)self getOutgoingDataCharacteristicUUID];
          v21 = [CBUUID UUIDWithString:getOutgoingDataCharacteristicUUID];
          v41[1] = v21;
          getIncomingDataCharacteristicUUID = [(ISO18013_3_Central *)self getIncomingDataCharacteristicUUID];
          v23 = [CBUUID UUIDWithString:getIncomingDataCharacteristicUUID];
          v41[2] = v23;
          v24 = [NSArray arrayWithObjects:v41 count:3];
          v25 = [NSMutableArray arrayWithArray:v24];

          getIdentifierCharacteristicUUID = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];

          if (getIdentifierCharacteristicUUID)
          {
            getIdentifierCharacteristicUUID2 = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];
            v28 = [CBUUID UUIDWithString:getIdentifierCharacteristicUUID2];
            [v25 addObject:v28];
          }

          getL2CAPCharacteristicUUID = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];

          if (getL2CAPCharacteristicUUID)
          {
            getL2CAPCharacteristicUUID2 = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];
            v31 = [CBUUID UUIDWithString:getL2CAPCharacteristicUUID2];
            [v25 addObject:v31];
          }

          v18 = characteristicsCopy;
          [characteristicsCopy discoverCharacteristics:v25 forService:v8];
          objc_storeWeak(&self->_readerService, v8);

          v17 = 1;
          goto LABEL_15;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central discoverMDOCServiceCharacteristics:]", 366, self, @"LE: Error : No ISO service", v15, v16, v33);
  v17 = 0;
  v18 = characteristicsCopy;
LABEL_15:

  return v17;
}

- (BOOL)setupGATTServerCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  getIdentifierCharacteristicUUID = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 375, self, @"LE: Setting up ISO reader characteristics...", v5, v6, v50);
  self->_expectedCharacteristicReadOnStartup = 0;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = characteristicsCopy;
  obj = [characteristicsCopy characteristics];
  v55 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  v7 = 0;
  if (v55)
  {
    v53 = *v57;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v57 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        properties = [v9 properties];
        uUID = [v9 UUID];
        getStateCharacteristicUUID = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
        v13 = [CBUUID UUIDWithString:getStateCharacteristicUUID];
        v14 = [uUID isEqual:v13];

        if (v14)
        {
          if ((~properties & 0x14) != 0)
          {
            uUID2 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 385, self, @"LE: Error : %@ is not notify-able", v16, v17, uUID2);
          }

          else
          {
            [(CBPeripheral *)self->_remoteReader setNotifyValue:1 forCharacteristic:v9];
            ++v7;
          }
        }

        uUID3 = [v9 UUID];
        getOutgoingDataCharacteristicUUID = [(ISO18013_3_Central *)self getOutgoingDataCharacteristicUUID];
        v20 = [CBUUID UUIDWithString:getOutgoingDataCharacteristicUUID];
        v21 = [uUID3 isEqual:v20];

        if (v21)
        {
          if ((properties & 4) != 0)
          {
            ++v7;
          }

          else
          {
            uUID4 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 394, self, @"LE: Error : %@ is not write-able", v23, v24, uUID4);
          }
        }

        uUID5 = [v9 UUID];
        getIncomingDataCharacteristicUUID = [(ISO18013_3_Central *)self getIncomingDataCharacteristicUUID];
        v27 = [CBUUID UUIDWithString:getIncomingDataCharacteristicUUID];
        v28 = [uUID5 isEqual:v27];

        if (v28)
        {
          if ((properties & 0x10) != 0)
          {
            [(CBPeripheral *)self->_remoteReader setNotifyValue:1 forCharacteristic:v9];
            ++v7;
          }

          else
          {
            uUID6 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 402, self, @"LE: Error : %@ is not notify-able", v30, v31, uUID6);
          }
        }

        if (getIdentifierCharacteristicUUID)
        {
          uUID7 = [v9 UUID];
          getIdentifierCharacteristicUUID2 = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];
          v34 = [CBUUID UUIDWithString:getIdentifierCharacteristicUUID2];
          v35 = [uUID7 isEqual:v34];

          if (v35)
          {
            if ((properties & 2) != 0)
            {
              ++v7;
              [(CBPeripheral *)self->_remoteReader readValueForCharacteristic:v9];
              v39 = self->_expectedCharacteristicReadOnStartup + 1;
              self->_peripheralReaderIdentState = 1;
              self->_expectedCharacteristicReadOnStartup = v39;
            }

            else
            {
              uUID8 = [v9 UUID];
              sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 411, self, @"LE: Error : %@ is not read-able", v37, v38, uUID8);
            }
          }
        }

        uUID9 = [v9 UUID];
        getL2CAPCharacteristicUUID = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];
        v42 = [CBUUID UUIDWithString:getL2CAPCharacteristicUUID];
        v43 = [uUID9 isEqual:v42];

        if (v43)
        {
          if ((properties & 2) != 0)
          {
            [(CBPeripheral *)self->_remoteReader readValueForCharacteristic:v9];
            self->_peripheralL2CapState = 1;
            ++self->_expectedCharacteristicReadOnStartup;
          }

          else
          {
            uUID10 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 423, self, @"LE: Error : %@ is not readable", v45, v46, uUID10);
          }
        }
      }

      v55 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v55);
  }

  if (!self->_expectedCharacteristicReadOnStartup)
  {
    [(ISO18013_3_Central *)self setReady];
  }

  if (getIdentifierCharacteristicUUID)
  {
    v47 = 3;
  }

  else
  {
    v47 = 2;
  }

  v48 = v7 > v47;

  return v48;
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  value = [changedCopy value];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central stateChanged:]", 446, self, @"LE: Remote state changed to %@", v5, v6, value);

  value2 = [changedCopy value];
  if ([value2 length])
  {
    value3 = [changedCopy value];
    v9 = *[value3 bytes];

    if (v9 == 2)
    {
      [(ISO18013_3_Central *)self invalidatePeripheral];
    }
  }

  else
  {
  }
}

- (void)invalidatePeripheral
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_readerService);
  characteristics = [WeakRetained characteristics];

  v5 = [characteristics countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(characteristics);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isNotifying])
        {
          [(CBPeripheral *)self->_remoteReader setNotifyValue:0 forCharacteristic:v9];
        }
      }

      v6 = [characteristics countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:self->_remoteReader];
  remoteReader = self->_remoteReader;
  self->_remoteReader = 0;
}

- (void)setReady
{
  if (!self->_isConnected)
  {
    if (self->_expectedCharacteristicReadOnStartup)
    {

      sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central setReady]", 468, self, @"Pending reads not completed", v2, v3, v11);
    }

    else
    {
      getStateCharacteristicUUID = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
      v9 = [(ISO18013_3_Central *)self getCharacteristic:getStateCharacteristicUUID];

      if (v9)
      {
        [(ISO18013_3_Central *)self _activateConnectionBlock:0 connectionState:1];
        [(ISO18013_3_Central *)self _signalConnectionStateChange:1];
      }

      else
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setReady]", 479, self, @"LE: Error : No ISO state characteristic", v6, v7, v8);
      }
    }
  }
}

- (id)getCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  WeakRetained = objc_loadWeakRetained(&self->_readerService);
  v8 = WeakRetained;
  if (self->_remoteReader)
  {
    v9 = WeakRetained == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central getCharacteristic:]", 487, self, @"LE: No remote", v6, v7, v21);
    v10 = 0;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = WeakRetained;
    characteristics = [WeakRetained characteristics];
    v12 = [characteristics countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(characteristics);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          uUID = [v16 UUID];
          v18 = [CBUUID UUIDWithString:characteristicCopy];
          v19 = [uUID isEqual:v18];

          if (v19)
          {
            v10 = v16;

            goto LABEL_17;
          }
        }

        v13 = [characteristics countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_17:
    v8 = v22;
  }

  return v10;
}

- (ISO18013_3_Central)initWithWorkQueue:(id)queue callbackQueue:(id)callbackQueue
{
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  v16.receiver = self;
  v16.super_class = ISO18013_3_Central;
  v9 = [(ISO18013_3_Central *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, callbackQueue);
    objc_storeStrong(&v10->_queue, queue);
    v11 = objc_opt_new();
    centralCallbackLock = v10->_centralCallbackLock;
    v10->_centralCallbackLock = v11;

    v13 = objc_alloc_init(NSMutableData);
    rxBuffer = v10->_rxBuffer;
    v10->_rxBuffer = v13;
  }

  return v10;
}

- (BOOL)connectBLEAddress:(id)address advertiseServiceUUID:(id)d readerIdentCharacteristic:(id)characteristic onDeviceConnection:(id)connection onDisconnect:(id)disconnect onDataRx:(id)rx
{
  addressCopy = address;
  characteristicCopy = characteristic;
  connectionCopy = connection;
  disconnectCopy = disconnect;
  rxCopy = rx;
  v22 = [CBUUID UUIDWithData:d];
  if (!v22)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central connectBLEAddress:advertiseServiceUUID:readerIdentCharacteristic:onDeviceConnection:onDisconnect:onDataRx:]", 563, self, @"LE: Invalid service UUID", v20, v21, v47);
    goto LABEL_7;
  }

  if (![(ISO18013_3_Central *)self _startCBCentralManagerAndWaitForPowerOn])
  {
LABEL_7:
    v25 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&self->_remoteBLEAddress, address);
  if (![addressCopy length])
  {
    v24 = 0;
    goto LABEL_18;
  }

  v23 = [(CBCentralManager *)self->_centralManager createPeripheralWithAddress:addressCopy andIdentifier:0];
  if (v23)
  {
    v24 = v23;
    goto LABEL_18;
  }

  bytes = [addressCopy bytes];
  if ([addressCopy length] == 6)
  {
    [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], v48];
  }

  else
  {
    if ([addressCopy length] != 7)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central connectBLEAddress:advertiseServiceUUID:readerIdentCharacteristic:onDeviceConnection:onDisconnect:onDataRx:]", 590, self, @"Invalid LE address: %@", v28, v29, addressCopy);
      goto LABEL_22;
    }

    if (*bytes)
    {
      v30 = "Random";
    }

    else
    {
      v30 = "Public";
    }

    [NSString stringWithFormat:@"%s %02x:%02x:%02x:%02x:%02x:%02x", v30, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], bytes[6]];
  }
  v31 = ;
  v24 = [(CBCentralManager *)self->_centralManager retrievePeripheralWithAddress:v31];

  if (!v24)
  {
LABEL_22:
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central connectBLEAddress:advertiseServiceUUID:readerIdentCharacteristic:onDeviceConnection:onDisconnect:onDataRx:]", 595, self, @"LE: Failed to create peripheral from %@", v32, v33, self->_remoteBLEAddress);
    goto LABEL_7;
  }

LABEL_18:
  v34 = objc_retainBlock(rxCopy);
  rxBlock = self->_rxBlock;
  self->_rxBlock = v34;

  v36 = objc_retainBlock(connectionCopy);
  connectionBlock = self->_connectionBlock;
  self->_connectionBlock = v36;

  v38 = objc_retainBlock(disconnectCopy);
  disconnectionBlock = self->_disconnectionBlock;
  self->_disconnectionBlock = v38;

  objc_storeStrong(&self->_peripheralServiceUUID, v22);
  objc_storeStrong(&self->_readerIdentCharacteristic, characteristic);
  self->_invalidated = 0;
  if (v24)
  {
    v25 = [(ISO18013_3_Central *)self connectPeripheral:v24 delay:0];
  }

  else
  {
    v50[0] = CBCentralManagerScanOptionScanInterval;
    v40 = [NSNumber numberWithInt:30];
    v51[0] = v40;
    v50[1] = CBCentralManagerScanOptionScanWindow;
    v41 = [NSNumber numberWithInt:20];
    v50[2] = CBCentralManagerScanOptionUsecase;
    v51[1] = v41;
    v51[2] = &off_10005F6B8;
    v42 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central connectBLEAddress:advertiseServiceUUID:readerIdentCharacteristic:onDeviceConnection:onDisconnect:onDataRx:]", 616, self, @"LE: Scanning", v43, v44, v47);
    centralManager = self->_centralManager;
    v49 = v22;
    v25 = 1;
    v46 = [NSArray arrayWithObjects:&v49 count:1];
    [(CBCentralManager *)centralManager scanForPeripheralsWithServices:v46 options:v42];
  }

LABEL_8:

  return v25;
}

- (void)invalidateAndUpdateStateSignal:(BOOL)signal reason:(unint64_t)reason
{
  queue = [(ISO18013_3_Central *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000359BC;
  block[3] = &unk_100058F70;
  signalCopy = signal;
  block[4] = self;
  block[5] = reason;
  dispatch_async(queue, block);
}

- (int64_t)hardwareAvailable
{
  if ([(ISO18013_3_Central *)self _startCBCentralManager])
  {
    v7 = 0;
    if ([(ISO18013_3_Central *)self _isBTPowerOn:&v7])
    {
      return 1;
    }

    if (v7 == 4)
    {
      return 2;
    }

    if (v7 <= 1)
    {
      sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central hardwareAvailable]", 665, self, @"Unable to determine BT state, assumes off", v3, v4, v6);
      return 2;
    }
  }

  return 0;
}

- (BOOL)writeData:(id)data toUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_100035E94;
  v37[4] = sub_100035EA4;
  v38 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_100035E94;
  v31 = sub_100035EA4;
  v32 = 0;
  queue = [(ISO18013_3_Central *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035EAC;
  block[3] = &unk_100059660;
  block[4] = self;
  v24 = &v33;
  v25 = v37;
  v9 = dCopy;
  v23 = v9;
  v26 = &v27;
  dispatch_sync(queue, block);

  if ((v34[3] & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!self->_isConnected)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central writeData:toUUID:]", 723, self, @"Alt carrier no longer connected. Bail out", v10, v11, v18);
    queue2 = [(ISO18013_3_Central *)self queue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10003608C;
    v21[3] = &unk_100058A08;
    v21[4] = self;
    dispatch_sync(queue2, v21);

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v12 = v28[5];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003609C;
  v20[3] = &unk_100059688;
  v20[4] = self;
  v20[5] = v37;
  v13 = sub_100018BC0(v12, dataCopy, v20);
  *(v34 + 24) = v13;
  queue3 = [(ISO18013_3_Central *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100036104;
  v19[3] = &unk_100058A08;
  v19[4] = self;
  dispatch_sync(queue3, v19);

  v15 = *(v34 + 24);
LABEL_6:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);

  return v15 & 1;
}

- (id)getBluetoothStatusDict:(id *)dict
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100035E94;
  v11 = sub_100035EA4;
  v12 = 0;
  centralManager = self->_centralManager;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036228;
  v6[3] = &unk_100058FE8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = dict;
  [(CBCentralManager *)centralManager queryBluetoothStatus:&off_10005F888 completion:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)_startCBCentralManager
{
  if (self->_centralManager)
  {
    return 1;
  }

  v5 = [[CBCentralManager alloc] initWithDelegate:self queue:self->_queue];
  centralManager = self->_centralManager;
  self->_centralManager = v5;

  if (self->_centralManager)
  {
    return 1;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central _startCBCentralManager]", 786, self, @"LE: Failed to create central", v7, v8, v2);
  return 0;
}

- (BOOL)_startCBCentralManagerAndWaitForPowerOn
{
  _startCBCentralManager = [(ISO18013_3_Central *)self _startCBCentralManager];
  if (_startCBCentralManager)
  {

    LOBYTE(_startCBCentralManager) = [(ISO18013_3_Central *)self _isBTPowerOn:0];
  }

  return _startCBCentralManager;
}

- (BOOL)_isBTPowerOn:(int64_t *)on
{
  v5 = 4;
  while (1)
  {
    state = [(CBCentralManager *)self->_centralManager state];
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

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central _isBTPowerOn:]", 816, self, @"Waiting on state update, current value=%ld", v7, v8, state);
    v9 = [NSDate dateWithTimeIntervalSinceNow:0.3];
    centralCallbackLock = [(ISO18013_3_Central *)self centralCallbackLock];
    [centralCallbackLock lock];

    centralCallbackLock2 = [(ISO18013_3_Central *)self centralCallbackLock];
    [centralCallbackLock2 waitUntilDate:v9];

    centralCallbackLock3 = [(ISO18013_3_Central *)self centralCallbackLock];
    [centralCallbackLock3 unlock];

    if (--v5 <= 1)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central _isBTPowerOn:]", 827, self, @"Unexpected BT power state", v13, v14, v16);
      return 0;
    }
  }

  return 1;
}

- (void)_activateConnectionBlock:(unint64_t)block connectionState:(BOOL)state
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central _activateConnectionBlock:connectionState:]", 834, self, @"LE: status=%lu, isConnected=%d", v4, v5, block);
  if (self->_connectionBlock)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central _activateConnectionBlock:connectionState:]", 836, self, @"LE: Activate connect block", v9, v10, v15);
    self->_isConnected = state;
    v11 = objc_retainBlock(self->_connectionBlock);
    connectionBlock = self->_connectionBlock;
    self->_connectionBlock = 0;

    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036620;
    block[3] = &unk_100059010;
    v17 = v11;
    blockCopy = block;
    v14 = v11;
    dispatch_async(clientQueue, block);
  }
}

- (void)_activateDisconnectBlock:(unint64_t)block
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central _activateDisconnectBlock:]", 847, self, @"LE: status=%lu", v3, v4, block);
  disconnectionBlock = self->_disconnectionBlock;
  if (disconnectionBlock)
  {
    self->_isConnected = 0;
    v8 = objc_retainBlock(disconnectionBlock);
    v9 = self->_disconnectionBlock;
    self->_disconnectionBlock = 0;

    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003671C;
    block[3] = &unk_100059010;
    v13 = v8;
    blockCopy = block;
    v11 = v8;
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
      block[2] = sub_1000367F8;
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

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central _extractFromMessage:length:lastPacket:]", 905, self, @"Unexpected header byte: 0x%X.  Dropping data", v5, v6, *message);
  v7 = 0;
LABEL_6:

  return v7;
}

- (CBService)readerService
{
  WeakRetained = objc_loadWeakRetained(&self->_readerService);

  return WeakRetained;
}

@end