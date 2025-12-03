@interface ASMGATTConnectionManager
- (ASMGATTConnectionManager)initWithQueue:(id)queue;
- (ASMPeripheral)peripheral;
- (void)_activateWithPeripheral:(id)peripheral completion:(id)completion;
- (void)_centralManagerEnsureStarted;
- (void)_centralManagerEnsureStopped;
- (void)_connectedPeripheralsChanged;
- (void)_discoverAccessory;
- (void)_invalidate;
- (void)_writeWithData:(id)data characteristic:(id)characteristic completion:(id)completion;
- (void)activateWithPeripheral:(id)peripheral completion:(id)completion;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManagerDidUpdateState:(id)state;
- (void)invalidate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)writeWithData:(id)data characteristic:(id)characteristic completion:(id)completion;
@end

@implementation ASMGATTConnectionManager

- (ASMGATTConnectionManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = ASMGATTConnectionManager;
  v6 = [(ASMGATTConnectionManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
    if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_10000898C(&v7->_dispatchQueue);
    }

    v8 = v7;
  }

  return v7;
}

- (void)activateWithPeripheral:(id)peripheral completion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002A98;
  block[3] = &unk_100014378;
  block[4] = self;
  v12 = peripheralCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = peripheralCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithPeripheral:(id)peripheral completion:(id)completion
{
  obj = peripheral;
  completionCopy = completion;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_1000089D0(obj);
    }

    bluetoothUUID = [obj bluetoothUUID];
    identifier = self->_identifier;
    self->_identifier = bluetoothUUID;

    v9 = objc_retainBlock(completionCopy);
    completion = self->_completion;
    self->_completion = v9;

    objc_storeWeak(&self->_peripheral, obj);
    [(ASMGATTConnectionManager *)self _centralManagerEnsureStarted];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BF8;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(ASMGATTConnectionManager *)self _centralManagerEnsureStopped];
  if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    sub_100008A2C(self);
  }

  self->_activateCalled = 0;
  identifier = self->_identifier;
  self->_identifier = 0;

  objc_storeWeak(&self->_peripheral, 0);
}

- (void)_centralManagerEnsureStarted
{
  if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    sub_100008A70();
  }

  v3 = self->_centralManager;
  if (!v3)
  {
    v4 = [CBCentralManager alloc];
    dispatchQueue = self->_dispatchQueue;
    v6 = [NSNumber numberWithBool:1];
    v7 = [NSDictionary dictionaryWithObjectsAndKeys:v6, CBCentralManagerOptionReceiveSystemEvents, 0];
    obj = [v4 initWithDelegate:self queue:dispatchQueue options:v7];

    objc_storeStrong(&self->_centralManager, obj);
    v3 = obj;
  }
}

- (void)_centralManagerEnsureStopped
{
  if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    sub_100008A8C();
  }

  centralManager = self->_centralManager;
  self->_centralManager = 0;

  selectedPeripheral = self->_selectedPeripheral;
  self->_selectedPeripheral = 0;
}

- (void)_connectedPeripheralsChanged
{
  if (!self->_selectedPeripheral)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    centralManager = self->_centralManager;
    v4 = [CBUUID UUIDWithString:@"1b8d9548-c066-4fbf-bc7e-cf3e5a3fabbf"];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = [(CBCentralManager *)centralManager retrieveConnectedPeripheralsWithServices:v5];

    if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_100008AA8();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002F68;
    v7[3] = &unk_100014428;
    v7[4] = self;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (void)_discoverAccessory
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_isCentralManagerOn)
  {
    centralManager = self->_centralManager;
    v9 = CBConnectionEventMatchingOptionServiceUUIDs;
    v4 = [CBUUID UUIDWithString:@"1b8d9548-c066-4fbf-bc7e-cf3e5a3fabbf"];
    v8 = v4;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [(CBCentralManager *)centralManager registerForConnectionEventsWithOptions:v6];

    [(ASMGATTConnectionManager *)self _connectedPeripheralsChanged];
    return;
  }

  if (dword_10001A208 <= 30)
  {
    if (dword_10001A208 != -1)
    {
LABEL_5:
      LogPrintF();
      return;
    }

    if (_LogCategory_Initialize())
    {
      isCentralManagerOn = self->_isCentralManagerOn;
      goto LABEL_5;
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  state = [state state];
  v5 = state == 5;
  if (self->_isCentralManagerOn != v5)
  {
    v6 = state;
    if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_100008B28();
    }

    self->_isCentralManagerOn = v5;
    if (v6 == 5)
    {

      [(ASMGATTConnectionManager *)self _discoverAccessory];
    }
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    sub_100008B80();
  }

  [peripheralCopy setDelegate:self];
  v5 = [CBUUID UUIDWithString:@"1b8d9548-c066-4fbf-bc7e-cf3e5a3fabbf"];
  v6 = [NSArray arrayWithObjects:v5, 0];
  [peripheralCopy discoverServices:v6];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  peripheralCopy = peripheral;
  obj = [peripheralCopy services];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = CBUUIDSecureSensorServiceString;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
        {
          sub_100008BC0();
        }

        uUID = [v9 UUID];
        v11 = [CBUUID UUIDWithString:v7];
        v12 = [uUID isEqual:v11];

        if (v12)
        {
          if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
          {
            sub_100008C00();
          }

          [peripheralCopy discoverCharacteristics:0 forService:v9];
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v13 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      v5 = v13;
    }

    while (v13);
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    sub_100008C40(serviceCopy);
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    if (dword_10001A208 <= 90 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_100008CAC(errorCopy);
    }
  }

  else if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    sub_100008D08();
  }

  v10 = objc_retainBlock(self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  if (v10)
  {
    v10[2](v10, errorCopy);
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    if (dword_10001A208 <= 90 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
    {
      sub_100008D24(errorCopy);
    }
  }

  else if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = objc_retainBlock(self->_writeCompletion);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, errorCopy);
  }

  writeCompletion = self->_writeCompletion;
  self->_writeCompletion = 0;
}

- (void)writeWithData:(id)data characteristic:(id)characteristic completion:(id)completion
{
  dataCopy = data;
  characteristicCopy = characteristic;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003964;
  v15[3] = &unk_100014450;
  v15[4] = self;
  v16 = dataCopy;
  v17 = characteristicCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = characteristicCopy;
  v14 = dataCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_writeWithData:(id)data characteristic:(id)characteristic completion:(id)completion
{
  dataCopy = data;
  characteristicCopy = characteristic;
  completionCopy = completion;
  if (dword_10001A208 <= 30 && (dword_10001A208 != -1 || _LogCategory_Initialize()))
  {
    sub_100008D90();
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100003D5C;
  v41[3] = &unk_100014478;
  v43 = &v44;
  v41[4] = self;
  v28 = completionCopy;
  v42 = v28;
  v26 = objc_retainBlock(v41);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  services = [(CBPeripheral *)self->_selectedPeripheral services];
  v10 = [services countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v10)
  {
    v30 = *v38;
    obj = services;
    do
    {
      v31 = v10;
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        characteristics = [v12 characteristics];
        v14 = [characteristics countByEnumeratingWithState:&v33 objects:v48 count:16];
        if (v14)
        {
          v15 = *v34;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(characteristics);
              }

              v17 = *(*(&v33 + 1) + 8 * j);
              uUID = [v17 UUID];
              v19 = [CBUUID UUIDWithString:characteristicCopy];
              v20 = uUID;
              v21 = v19;
              v22 = v21;
              if (v20 == v21)
              {

LABEL_24:
                [(CBPeripheral *)self->_selectedPeripheral writeValue:dataCopy forCharacteristic:v17 type:0];
                *(v45 + 24) = 1;
                v24 = objc_retainBlock(v28);
                writeCompletion = self->_writeCompletion;
                self->_writeCompletion = v24;

                goto LABEL_25;
              }

              if ((v20 != 0) == (v21 == 0))
              {
              }

              else
              {
                v23 = [v20 isEqual:v21];

                if (v23)
                {
                  goto LABEL_24;
                }
              }
            }

            v14 = [characteristics countByEnumeratingWithState:&v33 objects:v48 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:
      }

      services = obj;
      v10 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v10);
  }

  (v26[2])(v26);
  _Block_object_dispose(&v44, 8);
}

- (ASMPeripheral)peripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);

  return WeakRetained;
}

@end