@interface ISO18013_3_Central
- (BOOL)_isBTPowerOn:(int64_t *)a3;
- (BOOL)_startCBCentralManager;
- (BOOL)_startCBCentralManagerAndWaitForPowerOn;
- (BOOL)connectBLEAddress:(id)a3 advertiseServiceUUID:(id)a4 readerIdentCharacteristic:(id)a5 onDeviceConnection:(id)a6 onDisconnect:(id)a7 onDataRx:(id)a8;
- (BOOL)discoverMDOCServiceCharacteristics:(id)a3;
- (BOOL)setupGATTServerCharacteristics:(id)a3;
- (BOOL)writeData:(id)a3 toUUID:(id)a4;
- (BOOL)writeL2CAPData:(id)a3;
- (CBService)readerService;
- (ISO18013_3_Central)initWithWorkQueue:(id)a3 callbackQueue:(id)a4;
- (id)_extractFromMessage:(const char *)a3 length:(unint64_t)a4 lastPacket:(BOOL *)a5;
- (id)getBluetoothStatusDict:(id *)a3;
- (id)getCharacteristic:(id)a3;
- (int64_t)hardwareAvailable;
- (void)_activateConnectionBlock:(unint64_t)a3 connectionState:(BOOL)a4;
- (void)_activateDisconnectBlock:(unint64_t)a3;
- (void)_activateRxCallbackWithData:(id)a3 lastPacket:(BOOL)a4;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)invalidateAndUpdateStateSignal:(BOOL)a3 reason:(unint64_t)a4;
- (void)invalidatePeripheral;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)a3;
- (void)queryBLEGATTServer:(id)a3;
- (void)receivedData:(id)a3;
- (void)setReady;
- (void)stateChanged:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation ISO18013_3_Central

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&_mh_execute_header, "centralManagerDidUpdateState:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  v6 = [v4 state];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManagerDidUpdateState:]", 62, self, @"LE: centralManagerDidUpdateState : %ld", v7, v8, v6);
  if ([v4 state] == 1)
  {
    v9 = [(NSMutableArray *)self->_discoveredReaders firstObject];
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

    [(ISO18013_3_Central *)self centralManager:v4 didDisconnectPeripheral:v9 error:v15];
    goto LABEL_6;
  }

  if ([v4 state] == 4)
  {
    v9 = [(NSMutableArray *)self->_discoveredReaders firstObject];
    v10 = NSLocalizedDescriptionKey;
    v21 = NSLocalizedDescriptionKey;
    v22 = STSBluetoothErrorDescriptions;
    v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v12 = 0;
    goto LABEL_5;
  }

LABEL_6:
  v16 = [(ISO18013_3_Central *)self centralCallbackLock];
  [v16 lock];

  v17 = [(ISO18013_3_Central *)self centralCallbackLock];
  [v17 broadcast];

  v18 = [(ISO18013_3_Central *)self centralCallbackLock];
  [v18 unlock];
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v8 = a4;
  v9 = a5;
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

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didDiscoverPeripheral:advertisementData:RSSI:]", 84, self, @"LE: found device matching UUID %@ !", v12, v13, v9);
  [(NSMutableArray *)self->_discoveredReaders addObject:v8];
  if (!self->_remoteReader)
  {
    [(CBCentralManager *)self->_centralManager stopScan];
    [(ISO18013_3_Central *)self connectPeripheral:v8 delay:0];
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _os_activity_create(&_mh_execute_header, "centralManager:didConnectPeripheral:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  v9 = [v7 state];
  [v6 state];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didConnectPeripheral:]", 95, self, @"LE: State=(central: %ld, peripheral: %ld)", v10, v11, v9);
  [(ISO18013_3_Central *)self queryBLEGATTServer:v6];
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _os_activity_create(&_mh_execute_header, "centralManager:didiFailToConnectPeripheral:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  v12 = [v10 state];
  [v9 state];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didFailToConnectPeripheral:error:]", 104, self, @"LE: State=(central: %ld, peripheral: %ld) (error %@)", v13, v14, v12);

  remoteReader = self->_remoteReader;
  self->_remoteReader = 0;

  [(ISO18013_3_Central *)self connectPeripheral:v9 delay:1];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
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

  v13 = [v10 state];
  [v9 state];

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central centralManager:didDisconnectPeripheral:error:]", 115, self, @"LE: State=(central: %ld, peripheral: %ld) (error %@)", v14, v15, v13);
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
    v27 = [(ISO18013_3_Central *)self l2capChannel];
    v28 = [v27 inputStream];
    v29 = [(ISO18013_3_Central *)self queue];
    CFReadStreamSetDispatchQueue(v28, v29);

    v30 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [v30 setDelegate:0];

    v31 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [v31 close];

    v32 = [(ISO18013_3_Central *)self l2capChannel];
    v33 = [v32 outputStream];
    v34 = [(ISO18013_3_Central *)self queue];
    CFWriteStreamSetDispatchQueue(v33, v34);

    v35 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [v35 setDelegate:0];

    v36 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [v36 close];

    l2capChannel = self->_l2capChannel;
    self->_l2capChannel = 0;
  }

  v38 = v8;
  v39 = v38;
  if (!v38)
  {
    goto LABEL_11;
  }

  v40 = [v38 domain];
  if (([v40 isEqualToString:@"STSXPCHelperErrorDomain"] & 1) == 0)
  {

    goto LABEL_11;
  }

  v41 = [v39 code];

  if (v41 != 12)
  {
LABEL_11:

LABEL_12:
    v47 = v39 != 0;
    goto LABEL_13;
  }

  v42 = [v39 userInfo];
  v43 = [v42 objectForKeyedSubscript:NSUnderlyingErrorKey];

  v44 = [v43 domain];
  v45 = [v44 isEqualToString:@"BluetoothDomain"];

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

  v48 = [v46 code];
  v49 = 5;
  if (!v16)
  {
    v49 = 1;
  }

  if (v48)
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

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _os_activity_create(&_mh_execute_header, "peripheral:ididDiscoverCharacteristicsForService:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  if (v8)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didDiscoverCharacteristicsForService:error:]", 158, self, @"LE: error %@", v10, v11, v8);
  }

  v12 = [v7 UUID];
  v13 = [v12 isEqual:self->_peripheralServiceUUID];

  if (v13 && ![(ISO18013_3_Central *)self setupGATTServerCharacteristics:v7])
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didDiscoverCharacteristicsForService:error:]", 163, self, @"LE: Failed to setup ISO characteristics...", v14, v15, v16);
  }
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&_mh_execute_header, "perihperal:didDiscoverServices:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  if (v7)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didDiscoverServices:]", 172, self, @"LE: error %@", v9, v10, v7);
  }

  if (![(ISO18013_3_Central *)self discoverMDOCServiceCharacteristics:v6])
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didDiscoverServices:]", 176, self, @"LE: No ISO services...", v11, v12, v13);
    [(NSMutableArray *)self->_discoveredReaders removeObject:v6];
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:v6];
  }
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v5 = a3;
  v6 = _os_activity_create(&_mh_execute_header, "peripheral:didModifyServices:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v6, &v9);
  os_activity_scope_leave(&v9);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didModifyServices:]", 184, self, @"LE: didModifyServices", v7, v8, v9.opaque[0]);
  objc_storeWeak(&self->_readerService, 0);
  [(ISO18013_3_Central *)self queryBLEGATTServer:v5];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&_mh_execute_header, "periphperal:didUpdateValueForCharacteristic:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  if (v10)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didUpdateValueForCharacteristic:error:]", 194, self, @"LE: didUpdateValueForCharacteristic : %@ (error %@)", v12, v13, v9);
  }

  v14 = [v9 UUID];
  v15 = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
  v16 = [CBUUID UUIDWithString:v15];
  v17 = [v14 isEqual:v16];

  if (v17)
  {
    [(ISO18013_3_Central *)self stateChanged:v9];
    goto LABEL_20;
  }

  v18 = [v9 UUID];
  v19 = [(ISO18013_3_Central *)self getIncomingDataCharacteristicUUID];
  v20 = [CBUUID UUIDWithString:v19];
  v21 = [v18 isEqual:v20];

  if (v21)
  {
    [(ISO18013_3_Central *)self receivedData:v9];
    goto LABEL_20;
  }

  v22 = [v9 UUID];
  v23 = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];
  v24 = [CBUUID UUIDWithString:v23];
  v25 = [v22 isEqual:v24];

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

  v29 = [v9 UUID];
  v30 = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];
  v31 = [CBUUID UUIDWithString:v30];
  v32 = [v29 isEqual:v31];

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

  v38 = [v9 value];
  v39 = [(NSData *)readerIdentCharacteristic isEqualToData:v38];

  if (v39)
  {
    [(ISO18013_3_Central *)self setReady];
  }

  else
  {
    v40 = [v9 value];
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central peripheral:didUpdateValueForCharacteristic:error:]", 243, self, @"LE: Mismatch reader Ident value: %@", v41, v42, v40);

    [(NSMutableArray *)self->_discoveredReaders removeObject:v8];
    [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:v8];
  }

LABEL_20:
}

- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)a3
{
  v4 = _os_activity_create(&_mh_execute_header, "perihperalIsReadyToSendWriteWithoutResponse:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);
  os_activity_scope_leave(&v12);

  sub_10001934C(self->_sender, v5, v6, v7, v8, v9, v10, v11, v12.opaque[0]);
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v8 = a3;
  if (a4 == 4)
  {
    v12 = @"NSStreamEventHasSpaceAvailable";
    v13 = OS_LOG_TYPE_INFO;
    v14 = 277;
LABEL_6:
    sub_10002483C(v13, 0, "[ISO18013_3_Central stream:handleEvent:]", v14, self, v12, v6, v7, v15);
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    v15 = a4;
    v12 = @"LE: Stream event %lu on %@";
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 279;
    goto LABEL_6;
  }

  bzero(v17, 0x400uLL);
  v16 = 0;
  v9 = -[ISO18013_3_Central _extractFromMessage:length:lastPacket:](self, "_extractFromMessage:length:lastPacket:", v17, [v8 read:v17 maxLength:1024], &v16);
  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central stream:handleEvent:]", 274, self, @"LE: L2CAP RX> %@", v10, v11, v9);
  [(ISO18013_3_Central *)self _activateRxCallbackWithData:v9 lastPacket:v16];

LABEL_7:
}

- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = _os_activity_create(&_mh_execute_header, "peripheral:didOpenL2CAPChannel:error:", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  os_activity_scope_leave(&state);

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didOpenL2CAPChannel:error:]", 287, self, @"LE: didOpenL2CAPChannel : %@ (error = %@)", v11, v12, v8);
  if (v9)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central peripheral:didOpenL2CAPChannel:error:]", 290, self, @"Fallback to GATT??", v13, v14, v26);
  }

  else
  {
    objc_storeStrong(&self->_l2capChannel, a4);
    sender = self->_sender;
    self->_sender = 0;

    v16 = [(ISO18013_3_Central *)self l2capChannel];
    v17 = [v16 inputStream];
    v18 = [(ISO18013_3_Central *)self queue];
    CFReadStreamSetDispatchQueue(v17, v18);

    v19 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [v19 setDelegate:self];

    v20 = [(CBL2CAPChannel *)self->_l2capChannel inputStream];
    [v20 open];

    v21 = [(ISO18013_3_Central *)self l2capChannel];
    v22 = [v21 outputStream];
    v23 = [(ISO18013_3_Central *)self queue];
    CFWriteStreamSetDispatchQueue(v22, v23);

    v24 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [v24 setDelegate:self];

    v25 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    [v25 open];
  }

  [(ISO18013_3_Central *)self setReady];
}

- (BOOL)writeL2CAPData:(id)a3
{
  v4 = a3;
  v5 = 0;
  do
  {
    v6 = [(CBL2CAPChannel *)self->_l2capChannel outputStream];
    v7 = [v6 write:&v5[objc_msgSend(v4 maxLength:{"bytes")], objc_msgSend(v4, "length") - v5}];

    v5 += v7;
    [v4 length];
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central writeL2CAPData:]", 317, self, @"LE: L2CAP Wrote %lu bytes out of %lu", v8, v9, v7);
  }

  while (v7);
  v10 = v5 == [v4 length];

  return v10;
}

- (void)receivedData:(id)a3
{
  v4 = [a3 value];
  v6 = 0;
  v5 = -[ISO18013_3_Central _extractFromMessage:length:lastPacket:](self, "_extractFromMessage:length:lastPacket:", [v4 bytes], objc_msgSend(v4, "length"), &v6);
  [(ISO18013_3_Central *)self _activateRxCallbackWithData:v5 lastPacket:v6];
}

- (void)queryBLEGATTServer:(id)a3
{
  v4 = a3;
  [v4 setDelegate:self];
  v5 = [NSMutableArray alloc];
  v6 = [(ISO18013_3_Central *)self peripheralServiceUUID];
  v9 = [v5 initWithObjects:{v6, 0}];

  sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central queryBLEGATTServer:]", 337, self, @"LE: services=%@", v7, v8, v9);
  [v4 discoverServices:v9];
}

- (BOOL)discoverMDOCServiceCharacteristics:(id)a3
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v35 = a3;
  obj = [v35 services];
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
        v9 = [v8 UUID];
        sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central discoverMDOCServiceCharacteristics:]", 343, self, @"service UUID: %@", v10, v11, v9);

        v12 = [v8 UUID];
        v13 = [(ISO18013_3_Central *)self peripheralServiceUUID];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          v34 = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
          v19 = [CBUUID UUIDWithString:v34];
          v41[0] = v19;
          v20 = [(ISO18013_3_Central *)self getOutgoingDataCharacteristicUUID];
          v21 = [CBUUID UUIDWithString:v20];
          v41[1] = v21;
          v22 = [(ISO18013_3_Central *)self getIncomingDataCharacteristicUUID];
          v23 = [CBUUID UUIDWithString:v22];
          v41[2] = v23;
          v24 = [NSArray arrayWithObjects:v41 count:3];
          v25 = [NSMutableArray arrayWithArray:v24];

          v26 = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];

          if (v26)
          {
            v27 = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];
            v28 = [CBUUID UUIDWithString:v27];
            [v25 addObject:v28];
          }

          v29 = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];

          if (v29)
          {
            v30 = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];
            v31 = [CBUUID UUIDWithString:v30];
            [v25 addObject:v31];
          }

          v18 = v35;
          [v35 discoverCharacteristics:v25 forService:v8];
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
  v18 = v35;
LABEL_15:

  return v17;
}

- (BOOL)setupGATTServerCharacteristics:(id)a3
{
  v4 = a3;
  v54 = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];

  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 375, self, @"LE: Setting up ISO reader characteristics...", v5, v6, v50);
  self->_expectedCharacteristicReadOnStartup = 0;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v51 = v4;
  obj = [v4 characteristics];
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
        v10 = [v9 properties];
        v11 = [v9 UUID];
        v12 = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
        v13 = [CBUUID UUIDWithString:v12];
        v14 = [v11 isEqual:v13];

        if (v14)
        {
          if ((~v10 & 0x14) != 0)
          {
            v15 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 385, self, @"LE: Error : %@ is not notify-able", v16, v17, v15);
          }

          else
          {
            [(CBPeripheral *)self->_remoteReader setNotifyValue:1 forCharacteristic:v9];
            ++v7;
          }
        }

        v18 = [v9 UUID];
        v19 = [(ISO18013_3_Central *)self getOutgoingDataCharacteristicUUID];
        v20 = [CBUUID UUIDWithString:v19];
        v21 = [v18 isEqual:v20];

        if (v21)
        {
          if ((v10 & 4) != 0)
          {
            ++v7;
          }

          else
          {
            v22 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 394, self, @"LE: Error : %@ is not write-able", v23, v24, v22);
          }
        }

        v25 = [v9 UUID];
        v26 = [(ISO18013_3_Central *)self getIncomingDataCharacteristicUUID];
        v27 = [CBUUID UUIDWithString:v26];
        v28 = [v25 isEqual:v27];

        if (v28)
        {
          if ((v10 & 0x10) != 0)
          {
            [(CBPeripheral *)self->_remoteReader setNotifyValue:1 forCharacteristic:v9];
            ++v7;
          }

          else
          {
            v29 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 402, self, @"LE: Error : %@ is not notify-able", v30, v31, v29);
          }
        }

        if (v54)
        {
          v32 = [v9 UUID];
          v33 = [(ISO18013_3_Central *)self getIdentifierCharacteristicUUID];
          v34 = [CBUUID UUIDWithString:v33];
          v35 = [v32 isEqual:v34];

          if (v35)
          {
            if ((v10 & 2) != 0)
            {
              ++v7;
              [(CBPeripheral *)self->_remoteReader readValueForCharacteristic:v9];
              v39 = self->_expectedCharacteristicReadOnStartup + 1;
              self->_peripheralReaderIdentState = 1;
              self->_expectedCharacteristicReadOnStartup = v39;
            }

            else
            {
              v36 = [v9 UUID];
              sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 411, self, @"LE: Error : %@ is not read-able", v37, v38, v36);
            }
          }
        }

        v40 = [v9 UUID];
        v41 = [(ISO18013_3_Central *)self getL2CAPCharacteristicUUID];
        v42 = [CBUUID UUIDWithString:v41];
        v43 = [v40 isEqual:v42];

        if (v43)
        {
          if ((v10 & 2) != 0)
          {
            [(CBPeripheral *)self->_remoteReader readValueForCharacteristic:v9];
            self->_peripheralL2CapState = 1;
            ++self->_expectedCharacteristicReadOnStartup;
          }

          else
          {
            v44 = [v9 UUID];
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central setupGATTServerCharacteristics:]", 423, self, @"LE: Error : %@ is not readable", v45, v46, v44);
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

  if (v54)
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

- (void)stateChanged:(id)a3
{
  v10 = a3;
  v4 = [v10 value];
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central stateChanged:]", 446, self, @"LE: Remote state changed to %@", v5, v6, v4);

  v7 = [v10 value];
  if ([v7 length])
  {
    v8 = [v10 value];
    v9 = *[v8 bytes];

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
  v4 = [WeakRetained characteristics];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isNotifying])
        {
          [(CBPeripheral *)self->_remoteReader setNotifyValue:0 forCharacteristic:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      v5 = [(ISO18013_3_Central *)self getStateCharacteristicUUID];
      v9 = [(ISO18013_3_Central *)self getCharacteristic:v5];

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

- (id)getCharacteristic:(id)a3
{
  v4 = a3;
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
    v11 = [WeakRetained characteristics];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 UUID];
          v18 = [CBUUID UUIDWithString:v4];
          v19 = [v17 isEqual:v18];

          if (v19)
          {
            v10 = v16;

            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (ISO18013_3_Central)initWithWorkQueue:(id)a3 callbackQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ISO18013_3_Central;
  v9 = [(ISO18013_3_Central *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, a4);
    objc_storeStrong(&v10->_queue, a3);
    v11 = objc_opt_new();
    centralCallbackLock = v10->_centralCallbackLock;
    v10->_centralCallbackLock = v11;

    v13 = objc_alloc_init(NSMutableData);
    rxBuffer = v10->_rxBuffer;
    v10->_rxBuffer = v13;
  }

  return v10;
}

- (BOOL)connectBLEAddress:(id)a3 advertiseServiceUUID:(id)a4 readerIdentCharacteristic:(id)a5 onDeviceConnection:(id)a6 onDisconnect:(id)a7 onDataRx:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v22 = [CBUUID UUIDWithData:a4];
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

  objc_storeStrong(&self->_remoteBLEAddress, a3);
  if (![v15 length])
  {
    v24 = 0;
    goto LABEL_18;
  }

  v23 = [(CBCentralManager *)self->_centralManager createPeripheralWithAddress:v15 andIdentifier:0];
  if (v23)
  {
    v24 = v23;
    goto LABEL_18;
  }

  v27 = [v15 bytes];
  if ([v15 length] == 6)
  {
    [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *v27, v27[1], v27[2], v27[3], v27[4], v27[5], v48];
  }

  else
  {
    if ([v15 length] != 7)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central connectBLEAddress:advertiseServiceUUID:readerIdentCharacteristic:onDeviceConnection:onDisconnect:onDataRx:]", 590, self, @"Invalid LE address: %@", v28, v29, v15);
      goto LABEL_22;
    }

    if (*v27)
    {
      v30 = "Random";
    }

    else
    {
      v30 = "Public";
    }

    [NSString stringWithFormat:@"%s %02x:%02x:%02x:%02x:%02x:%02x", v30, v27[1], v27[2], v27[3], v27[4], v27[5], v27[6]];
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
  v34 = objc_retainBlock(v19);
  rxBlock = self->_rxBlock;
  self->_rxBlock = v34;

  v36 = objc_retainBlock(v17);
  connectionBlock = self->_connectionBlock;
  self->_connectionBlock = v36;

  v38 = objc_retainBlock(v18);
  disconnectionBlock = self->_disconnectionBlock;
  self->_disconnectionBlock = v38;

  objc_storeStrong(&self->_peripheralServiceUUID, v22);
  objc_storeStrong(&self->_readerIdentCharacteristic, a5);
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

- (void)invalidateAndUpdateStateSignal:(BOOL)a3 reason:(unint64_t)a4
{
  v7 = [(ISO18013_3_Central *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000359BC;
  block[3] = &unk_100058F70;
  v9 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(v7, block);
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

- (BOOL)writeData:(id)a3 toUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = [(ISO18013_3_Central *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035EAC;
  block[3] = &unk_100059660;
  block[4] = self;
  v24 = &v33;
  v25 = v37;
  v9 = v7;
  v23 = v9;
  v26 = &v27;
  dispatch_sync(v8, block);

  if ((v34[3] & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!self->_isConnected)
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central writeData:toUUID:]", 723, self, @"Alt carrier no longer connected. Bail out", v10, v11, v18);
    v16 = [(ISO18013_3_Central *)self queue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10003608C;
    v21[3] = &unk_100058A08;
    v21[4] = self;
    dispatch_sync(v16, v21);

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
  v13 = sub_100018BC0(v12, v6, v20);
  *(v34 + 24) = v13;
  v14 = [(ISO18013_3_Central *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100036104;
  v19[3] = &unk_100058A08;
  v19[4] = self;
  dispatch_sync(v14, v19);

  v15 = *(v34 + 24);
LABEL_6:

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);

  return v15 & 1;
}

- (id)getBluetoothStatusDict:(id *)a3
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
  v6[6] = a3;
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
  v3 = [(ISO18013_3_Central *)self _startCBCentralManager];
  if (v3)
  {

    LOBYTE(v3) = [(ISO18013_3_Central *)self _isBTPowerOn:0];
  }

  return v3;
}

- (BOOL)_isBTPowerOn:(int64_t *)a3
{
  v5 = 4;
  while (1)
  {
    v6 = [(CBCentralManager *)self->_centralManager state];
    if (a3)
    {
      *a3 = v6;
    }

    if (v6 == 4)
    {
      return 0;
    }

    if (v6 == 5)
    {
      break;
    }

    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central _isBTPowerOn:]", 816, self, @"Waiting on state update, current value=%ld", v7, v8, v6);
    v9 = [NSDate dateWithTimeIntervalSinceNow:0.3];
    v10 = [(ISO18013_3_Central *)self centralCallbackLock];
    [v10 lock];

    v11 = [(ISO18013_3_Central *)self centralCallbackLock];
    [v11 waitUntilDate:v9];

    v12 = [(ISO18013_3_Central *)self centralCallbackLock];
    [v12 unlock];

    if (--v5 <= 1)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central _isBTPowerOn:]", 827, self, @"Unexpected BT power state", v13, v14, v16);
      return 0;
    }
  }

  return 1;
}

- (void)_activateConnectionBlock:(unint64_t)a3 connectionState:(BOOL)a4
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central _activateConnectionBlock:connectionState:]", 834, self, @"LE: status=%lu, isConnected=%d", v4, v5, a3);
  if (self->_connectionBlock)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[ISO18013_3_Central _activateConnectionBlock:connectionState:]", 836, self, @"LE: Activate connect block", v9, v10, v15);
    self->_isConnected = a4;
    v11 = objc_retainBlock(self->_connectionBlock);
    connectionBlock = self->_connectionBlock;
    self->_connectionBlock = 0;

    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100036620;
    block[3] = &unk_100059010;
    v17 = v11;
    v18 = a3;
    v14 = v11;
    dispatch_async(clientQueue, block);
  }
}

- (void)_activateDisconnectBlock:(unint64_t)a3
{
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013_3_Central _activateDisconnectBlock:]", 847, self, @"LE: status=%lu", v3, v4, a3);
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
    v14 = a3;
    v11 = v8;
    dispatch_async(clientQueue, block);
  }
}

- (void)_activateRxCallbackWithData:(id)a3 lastPacket:(BOOL)a4
{
  v4 = a4;
  [(NSMutableData *)self->_rxBuffer appendData:a3];
  if (v4)
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

- (id)_extractFromMessage:(const char *)a3 length:(unint64_t)a4 lastPacket:(BOOL *)a5
{
  *a5 = 0;
  if (*a3 == 1)
  {
    goto LABEL_4;
  }

  if (!*a3)
  {
    *a5 = 1;
LABEL_4:
    v7 = [NSData dataWithBytes:a3 + 1 length:a4 - 1];
    goto LABEL_6;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ISO18013_3_Central _extractFromMessage:length:lastPacket:]", 905, self, @"Unexpected header byte: 0x%X.  Dropping data", v5, v6, *a3);
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