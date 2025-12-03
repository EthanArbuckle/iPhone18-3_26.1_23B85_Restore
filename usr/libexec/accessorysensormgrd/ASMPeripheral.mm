@interface ASMPeripheral
- (ASMPeripheral)init;
- (BOOL)updateWithAADevice:(id)device;
- (id)descriptionWithLevel:(int)level;
@end

@implementation ASMPeripheral

- (ASMPeripheral)init
{
  v6.receiver = self;
  v6.super_class = ASMPeripheral;
  v2 = [(ASMPeripheral *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v12 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v5 = 0;

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    v13 = bluetoothAddress;
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  bluetoothUUID = self->_bluetoothUUID;
  if (bluetoothUUID)
  {
    v14 = bluetoothUUID;
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  if (level < 21)
  {
    NSAppendPrintF_safe();
    v10 = v5;

    v5 = v10;
  }

  return v5;
}

- (BOOL)updateWithAADevice:(id)device
{
  deviceCopy = device;
  bluetoothAddressData = [deviceCopy bluetoothAddressData];
  bluetoothAddress = self->_bluetoothAddressData;
  v7 = bluetoothAddressData;
  v8 = v7;
  v9 = bluetoothAddress != v7;
  if (bluetoothAddress == v7)
  {
  }

  else
  {
    if ((v7 == 0) != (bluetoothAddress != 0))
    {
      v10 = [(NSData *)bluetoothAddress isEqual:v7];

      if (v10)
      {
        v9 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_bluetoothAddressData, bluetoothAddressData);
    v11 = CUPrintNSDataAddress();
    bluetoothAddress = self->_bluetoothAddress;
    self->_bluetoothAddress = v11;
  }

LABEL_9:
  identifier = [deviceCopy identifier];
  bluetoothUUID = self->_bluetoothUUID;
  v14 = identifier;
  v15 = v14;
  if (bluetoothUUID == v14)
  {
  }

  else
  {
    if ((v14 == 0) != (bluetoothUUID != 0))
    {
      v16 = [(NSString *)bluetoothUUID isEqual:v14];

      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v17 = v15;
    bluetoothUUID = self->_bluetoothUUID;
    self->_bluetoothUUID = v17;
    v9 = 1;
  }

LABEL_17:
  return v9;
}

@end