@interface AANearbyDevice
- (AANearbyDevice)initWithIdentifier:(id)identifier;
- (BOOL)updateWithCBDevice:(id)device;
- (BOOL)updateWithPairedDevice:(id)device;
- (BOOL)updateWithPrimaryDevice:(id)device;
- (BOOL)updateWithProximityPairingPayload:(id)payload;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
@end

@implementation AANearbyDevice

- (AANearbyDevice)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(AANearbyDevice *)self init];
  if (v5)
  {
    uppercaseString = [identifierCopy uppercaseString];
    identifier = v5->_identifier;
    v5->_identifier = uppercaseString;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  bluetoothAddress = [(AANearbyDevice *)self bluetoothAddress];
  v7 = [bluetoothAddress copyWithZone:zone];
  [v5 setBluetoothAddress:v7];

  findMyGroupIdentifier = [(AANearbyDevice *)self findMyGroupIdentifier];
  v9 = [findMyGroupIdentifier copyWithZone:zone];
  [v5 setFindMyGroupIdentifier:v9];

  identifier = [(AANearbyDevice *)self identifier];
  v11 = [identifier copyWithZone:zone];
  v12 = v5[5];
  v5[5] = v11;

  [v5 setIsCase:{-[AANearbyDevice isCase](self, "isCase")}];
  [v5 setHeartRateMonitorCapability:{-[AANearbyDevice heartRateMonitorCapability](self, "heartRateMonitorCapability")}];
  [v5 setHealthKitDataWriteAllowed:{-[AANearbyDevice healthKitDataWriteAllowed](self, "healthKitDataWriteAllowed")}];
  model = [(AANearbyDevice *)self model];
  v14 = [model copyWithZone:zone];
  [v5 setModel:v14];

  name = [(AANearbyDevice *)self name];
  v16 = [name copyWithZone:zone];
  [v5 setName:v16];

  [v5 setPaired:{-[AANearbyDevice paired](self, "paired")}];
  [v5 setProductID:{-[AANearbyDevice productID](self, "productID")}];
  proximityPairingPayload = [(AANearbyDevice *)self proximityPairingPayload];
  payloadData = [proximityPairingPayload payloadData];
  v19 = [AAProximityPairingPayload proximityPairingPayloadWithData:payloadData];
  [v5 setProximityPairingPayload:v19];

  caseIdentifier = [(AANearbyDevice *)self caseIdentifier];
  v21 = [caseIdentifier copyWithZone:zone];
  [v5 setCaseIdentifier:v21];

  primaryBluetoothAddress = [(AANearbyDevice *)self primaryBluetoothAddress];
  v23 = [primaryBluetoothAddress copyWithZone:zone];
  [v5 setPrimaryBluetoothAddress:v23];

  primaryDeviceIdentifier = [(AANearbyDevice *)self primaryDeviceIdentifier];
  v25 = [primaryDeviceIdentifier copyWithZone:zone];
  [v5 setPrimaryDeviceIdentifier:v25];

  [v5 setPrimaryProductID:{-[AANearbyDevice primaryProductID](self, "primaryProductID")}];
  return v5;
}

- (id)descriptionWithLevel:(int)level
{
  levelCopy = level;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v5 = 0;
  bluetoothAddress = [(AANearbyDevice *)self bluetoothAddress];
  if (bluetoothAddress)
  {
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  model = [(AANearbyDevice *)self model];
  if (model)
  {
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  name = [(AANearbyDevice *)self name];
  if (name)
  {
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  paired = [(AANearbyDevice *)self paired];
  v13 = "not paired";
  if (paired)
  {
    v13 = "paired";
  }

  v32 = v13;
  NSAppendPrintF_safe();
  v14 = v5;

  if ([(AANearbyDevice *)self isCase])
  {
    NSAppendPrintF_safe();
    v15 = v14;

    primaryDeviceIdentifier = [(AANearbyDevice *)self primaryDeviceIdentifier];
    v17 = primaryDeviceIdentifier;
    if (primaryDeviceIdentifier)
    {
      v33 = primaryDeviceIdentifier;
      NSAppendPrintF_safe();
      v18 = v15;

      v15 = v18;
    }

    primaryBluetoothAddress = [(AANearbyDevice *)self primaryBluetoothAddress];
    v20 = primaryBluetoothAddress;
    if (primaryBluetoothAddress)
    {
      v33 = primaryBluetoothAddress;
      NSAppendPrintF_safe();
      v21 = v15;

      v15 = v21;
    }

    v14 = v15;
  }

  proximityPairingPayload = [(AANearbyDevice *)self proximityPairingPayload];
  v23 = proximityPairingPayload;
  if (proximityPairingPayload)
  {
    v34 = proximityPairingPayload;
    NSAppendPrintF_safe();
    v24 = v14;

    v14 = v24;
  }

  heartRateMonitorCapability = [(AANearbyDevice *)self heartRateMonitorCapability];
  if (heartRateMonitorCapability)
  {
    v26 = "Unsupported";
    if (heartRateMonitorCapability != 1)
    {
      v26 = "?";
    }

    if (heartRateMonitorCapability == 2)
    {
      v26 = "Supported";
    }

    v34 = v26;
    NSAppendPrintF_safe();
    v27 = v14;

    v14 = v27;
  }

  if ([(AANearbyDevice *)self healthKitDataWriteAllowed])
  {
    NSAppendPrintF();
    v28 = v14;

    v14 = v28;
  }

  if (levelCopy < 0x15u)
  {
    NSAppendPrintF_safe();
    v29 = v14;

    v14 = v29;
  }

  return v14;
}

- (BOOL)updateWithCBDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy discoveryFlags] & 0x80;
  isCase = [(AANearbyDevice *)self isCase];
  v7 = v5 != isCase;
  if (v5 != isCase)
  {
    [(AANearbyDevice *)self setIsCase:v5 != 0];
  }

  identifier = [deviceCopy identifier];
  uppercaseString = [identifier uppercaseString];

  identifier2 = [(AANearbyDevice *)self identifier];
  v11 = [identifier2 isEqualToString:uppercaseString];

  if (v11)
  {
    name = [deviceCopy name];
    if (name)
    {
      v13 = name;
      name2 = [(AANearbyDevice *)self name];
      name3 = [deviceCopy name];
      v16 = [name2 isEqualToString:name3];

      if ((v16 & 1) == 0)
      {
        name4 = [deviceCopy name];
        [(AANearbyDevice *)self setName:name4];

        v7 = 1;
      }
    }

    if (![(AANearbyDevice *)self isCase])
    {
      v18 = [deviceCopy discoveryFlags] & 0x800000;
      if ([(AANearbyDevice *)self paired]!= v18 >> 23)
      {
        [(AANearbyDevice *)self setPaired:v18 != 0];
        v7 = 1;
      }
    }

    btAddressData = [deviceCopy btAddressData];
    v20 = CUPrintNSDataAddress();

    bluetoothAddress = [(AANearbyDevice *)self bluetoothAddress];

    if (!bluetoothAddress && v20)
    {
      [(AANearbyDevice *)self setBluetoothAddress:v20];
      v7 = 1;
    }

    findMyGroupIdentifier = [(AANearbyDevice *)self findMyGroupIdentifier];
    if (findMyGroupIdentifier)
    {
      findMyGroupIdentifier3 = findMyGroupIdentifier;
    }

    else
    {
      findMyGroupIdentifier2 = [deviceCopy findMyGroupIdentifier];

      if (!findMyGroupIdentifier2)
      {
        goto LABEL_18;
      }

      findMyGroupIdentifier3 = [deviceCopy findMyGroupIdentifier];
      [(AANearbyDevice *)self setFindMyGroupIdentifier:findMyGroupIdentifier3];
      v7 = 1;
    }

LABEL_18:
    caseIdentifier = [(AANearbyDevice *)self caseIdentifier];
    if (caseIdentifier)
    {
      findMyCaseIdentifier2 = caseIdentifier;
    }

    else
    {
      findMyCaseIdentifier = [deviceCopy findMyCaseIdentifier];

      if (!findMyCaseIdentifier)
      {
LABEL_23:
        if (!-[AANearbyDevice productID](self, "productID") && [deviceCopy productID])
        {
          -[AANearbyDevice setProductID:](self, "setProductID:", [deviceCopy productID]);
          v7 = 1;
        }

        model = [(AANearbyDevice *)self model];
        if (model)
        {
          model3 = model;
        }

        else
        {
          model2 = [deviceCopy model];

          if (!model2)
          {
LABEL_31:

            goto LABEL_32;
          }

          model3 = [deviceCopy model];
          [(AANearbyDevice *)self setModel:model3];
          v7 = 1;
        }

        goto LABEL_31;
      }

      findMyCaseIdentifier2 = [deviceCopy findMyCaseIdentifier];
      [(AANearbyDevice *)self setCaseIdentifier:findMyCaseIdentifier2];
      v7 = 1;
    }

    goto LABEL_23;
  }

LABEL_32:

  return v7;
}

- (BOOL)updateWithPrimaryDevice:(id)device
{
  deviceCopy = device;
  if (![(AANearbyDevice *)self isCase])
  {
    v7 = 0;
    goto LABEL_40;
  }

  primaryDeviceIdentifier = [(AANearbyDevice *)self primaryDeviceIdentifier];
  if (primaryDeviceIdentifier)
  {
    identifier2 = primaryDeviceIdentifier;
    v7 = 0;
  }

  else
  {
    identifier = [deviceCopy identifier];

    if (!identifier)
    {
      v7 = 0;
      goto LABEL_8;
    }

    identifier2 = [deviceCopy identifier];
    [(AANearbyDevice *)self setPrimaryDeviceIdentifier:identifier2];
    v7 = 1;
  }

LABEL_8:
  btAddressData = [deviceCopy btAddressData];
  v10 = CUPrintNSDataAddress();

  primaryBluetoothAddress = [(AANearbyDevice *)self primaryBluetoothAddress];

  if (!primaryBluetoothAddress && v10)
  {
    [(AANearbyDevice *)self setPrimaryBluetoothAddress:v10];
    v7 = 1;
  }

  if (![(AANearbyDevice *)self primaryProductID])
  {
    primaryProductID = [(AANearbyDevice *)self primaryProductID];
    if (primaryProductID != [deviceCopy productID])
    {
      -[AANearbyDevice setPrimaryProductID:](self, "setPrimaryProductID:", [deviceCopy productID]);
      v7 = 1;
    }
  }

  model = [(AANearbyDevice *)self model];
  if (model)
  {
    model3 = model;
  }

  else
  {
    model2 = [deviceCopy model];

    if (!model2)
    {
      goto LABEL_19;
    }

    model3 = [deviceCopy model];
    [(AANearbyDevice *)self setModel:model3];
    v7 = 1;
  }

LABEL_19:
  name = [deviceCopy name];
  if (!name)
  {
    goto LABEL_28;
  }

  name4 = name;
  name2 = [(AANearbyDevice *)self name];
  name3 = [deviceCopy name];
  v20 = name2;
  v21 = name3;
  v22 = v21;
  if (v20 == v21)
  {

LABEL_27:
    goto LABEL_28;
  }

  if ((v20 != 0) == (v21 == 0))
  {

    goto LABEL_26;
  }

  v23 = [v20 isEqual:v21];

  if ((v23 & 1) == 0)
  {
LABEL_26:
    name4 = [deviceCopy name];
    [(AANearbyDevice *)self setName:name4];
    v7 = 1;
    goto LABEL_27;
  }

LABEL_28:
  findMyGroupIdentifier = [deviceCopy findMyGroupIdentifier];
  if (findMyGroupIdentifier)
  {
    findMyGroupIdentifier4 = findMyGroupIdentifier;
    findMyGroupIdentifier2 = [(AANearbyDevice *)self findMyGroupIdentifier];
    findMyGroupIdentifier3 = [deviceCopy findMyGroupIdentifier];
    v28 = findMyGroupIdentifier2;
    v29 = findMyGroupIdentifier3;
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      if ((v28 != 0) == (v29 == 0))
      {
      }

      else
      {
        v31 = [v28 isEqual:v29];

        if (v31)
        {
          goto LABEL_37;
        }
      }

      findMyGroupIdentifier4 = [deviceCopy findMyGroupIdentifier];
      [(AANearbyDevice *)self setFindMyGroupIdentifier:findMyGroupIdentifier4];
      v7 = 1;
    }
  }

LABEL_37:
  v32 = [deviceCopy discoveryFlags] & 0x800000;
  if ([(AANearbyDevice *)self paired]!= v32 >> 23)
  {
    [(AANearbyDevice *)self setPaired:v32 != 0];
    v7 = 1;
  }

LABEL_40:
  return v7;
}

- (BOOL)updateWithProximityPairingPayload:(id)payload
{
  payloadCopy = payload;
  productID = [(AANearbyDevice *)self productID];
  v6 = productID == 0;
  if (!productID)
  {
    -[AANearbyDevice setProductID:](self, "setProductID:", [payloadCopy pid]);
  }

  proximityPairingPayload = [(AANearbyDevice *)self proximityPairingPayload];
  v8 = [payloadCopy isEqual:proximityPairingPayload];

  if ((v8 & 1) == 0)
  {
    [(AANearbyDevice *)self setProximityPairingPayload:payloadCopy];
    v6 = 1;
  }

  return v6;
}

- (BOOL)updateWithPairedDevice:(id)device
{
  deviceCopy = device;
  heartRateMonitorCapability = [(AANearbyDevice *)self heartRateMonitorCapability];
  heartRateMonitorCapability2 = [deviceCopy heartRateMonitorCapability];
  v7 = heartRateMonitorCapability == heartRateMonitorCapability2;
  v8 = heartRateMonitorCapability != heartRateMonitorCapability2;
  if (!v7)
  {
    -[AANearbyDevice setHeartRateMonitorCapability:](self, "setHeartRateMonitorCapability:", [deviceCopy heartRateMonitorCapability]);
  }

  healthKitDataWriteAllowed = [(AANearbyDevice *)self healthKitDataWriteAllowed];
  if (healthKitDataWriteAllowed != [deviceCopy healthKitDataWriteAllowed])
  {
    -[AANearbyDevice setHealthKitDataWriteAllowed:](self, "setHealthKitDataWriteAllowed:", [deviceCopy healthKitDataWriteAllowed]);
    v8 = 1;
  }

  return v8;
}

@end