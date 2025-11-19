@interface AANearbyDevice
- (AANearbyDevice)initWithIdentifier:(id)a3;
- (BOOL)updateWithCBDevice:(id)a3;
- (BOOL)updateWithPairedDevice:(id)a3;
- (BOOL)updateWithPrimaryDevice:(id)a3;
- (BOOL)updateWithProximityPairingPayload:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation AANearbyDevice

- (AANearbyDevice)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AANearbyDevice *)self init];
  if (v5)
  {
    v6 = [v4 uppercaseString];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(AANearbyDevice *)self bluetoothAddress];
  v7 = [v6 copyWithZone:a3];
  [v5 setBluetoothAddress:v7];

  v8 = [(AANearbyDevice *)self findMyGroupIdentifier];
  v9 = [v8 copyWithZone:a3];
  [v5 setFindMyGroupIdentifier:v9];

  v10 = [(AANearbyDevice *)self identifier];
  v11 = [v10 copyWithZone:a3];
  v12 = v5[5];
  v5[5] = v11;

  [v5 setIsCase:{-[AANearbyDevice isCase](self, "isCase")}];
  [v5 setHeartRateMonitorCapability:{-[AANearbyDevice heartRateMonitorCapability](self, "heartRateMonitorCapability")}];
  [v5 setHealthKitDataWriteAllowed:{-[AANearbyDevice healthKitDataWriteAllowed](self, "healthKitDataWriteAllowed")}];
  v13 = [(AANearbyDevice *)self model];
  v14 = [v13 copyWithZone:a3];
  [v5 setModel:v14];

  v15 = [(AANearbyDevice *)self name];
  v16 = [v15 copyWithZone:a3];
  [v5 setName:v16];

  [v5 setPaired:{-[AANearbyDevice paired](self, "paired")}];
  [v5 setProductID:{-[AANearbyDevice productID](self, "productID")}];
  v17 = [(AANearbyDevice *)self proximityPairingPayload];
  v18 = [v17 payloadData];
  v19 = [AAProximityPairingPayload proximityPairingPayloadWithData:v18];
  [v5 setProximityPairingPayload:v19];

  v20 = [(AANearbyDevice *)self caseIdentifier];
  v21 = [v20 copyWithZone:a3];
  [v5 setCaseIdentifier:v21];

  v22 = [(AANearbyDevice *)self primaryBluetoothAddress];
  v23 = [v22 copyWithZone:a3];
  [v5 setPrimaryBluetoothAddress:v23];

  v24 = [(AANearbyDevice *)self primaryDeviceIdentifier];
  v25 = [v24 copyWithZone:a3];
  [v5 setPrimaryDeviceIdentifier:v25];

  [v5 setPrimaryProductID:{-[AANearbyDevice primaryProductID](self, "primaryProductID")}];
  return v5;
}

- (id)descriptionWithLevel:(int)a3
{
  v3 = a3;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v5 = 0;
  v6 = [(AANearbyDevice *)self bluetoothAddress];
  if (v6)
  {
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  v8 = [(AANearbyDevice *)self model];
  if (v8)
  {
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  v10 = [(AANearbyDevice *)self name];
  if (v10)
  {
    NSAppendPrintF_safe();
    v11 = v5;

    v5 = v11;
  }

  v12 = [(AANearbyDevice *)self paired];
  v13 = "not paired";
  if (v12)
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

    v16 = [(AANearbyDevice *)self primaryDeviceIdentifier];
    v17 = v16;
    if (v16)
    {
      v33 = v16;
      NSAppendPrintF_safe();
      v18 = v15;

      v15 = v18;
    }

    v19 = [(AANearbyDevice *)self primaryBluetoothAddress];
    v20 = v19;
    if (v19)
    {
      v33 = v19;
      NSAppendPrintF_safe();
      v21 = v15;

      v15 = v21;
    }

    v14 = v15;
  }

  v22 = [(AANearbyDevice *)self proximityPairingPayload];
  v23 = v22;
  if (v22)
  {
    v34 = v22;
    NSAppendPrintF_safe();
    v24 = v14;

    v14 = v24;
  }

  v25 = [(AANearbyDevice *)self heartRateMonitorCapability];
  if (v25)
  {
    v26 = "Unsupported";
    if (v25 != 1)
    {
      v26 = "?";
    }

    if (v25 == 2)
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

  if (v3 < 0x15u)
  {
    NSAppendPrintF_safe();
    v29 = v14;

    v14 = v29;
  }

  return v14;
}

- (BOOL)updateWithCBDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 discoveryFlags] & 0x80;
  v6 = [(AANearbyDevice *)self isCase];
  v7 = v5 != v6;
  if (v5 != v6)
  {
    [(AANearbyDevice *)self setIsCase:v5 != 0];
  }

  v8 = [v4 identifier];
  v9 = [v8 uppercaseString];

  v10 = [(AANearbyDevice *)self identifier];
  v11 = [v10 isEqualToString:v9];

  if (v11)
  {
    v12 = [v4 name];
    if (v12)
    {
      v13 = v12;
      v14 = [(AANearbyDevice *)self name];
      v15 = [v4 name];
      v16 = [v14 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
        v17 = [v4 name];
        [(AANearbyDevice *)self setName:v17];

        v7 = 1;
      }
    }

    if (![(AANearbyDevice *)self isCase])
    {
      v18 = [v4 discoveryFlags] & 0x800000;
      if ([(AANearbyDevice *)self paired]!= v18 >> 23)
      {
        [(AANearbyDevice *)self setPaired:v18 != 0];
        v7 = 1;
      }
    }

    v19 = [v4 btAddressData];
    v20 = CUPrintNSDataAddress();

    v21 = [(AANearbyDevice *)self bluetoothAddress];

    if (!v21 && v20)
    {
      [(AANearbyDevice *)self setBluetoothAddress:v20];
      v7 = 1;
    }

    v22 = [(AANearbyDevice *)self findMyGroupIdentifier];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v24 = [v4 findMyGroupIdentifier];

      if (!v24)
      {
        goto LABEL_18;
      }

      v23 = [v4 findMyGroupIdentifier];
      [(AANearbyDevice *)self setFindMyGroupIdentifier:v23];
      v7 = 1;
    }

LABEL_18:
    v25 = [(AANearbyDevice *)self caseIdentifier];
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v27 = [v4 findMyCaseIdentifier];

      if (!v27)
      {
LABEL_23:
        if (!-[AANearbyDevice productID](self, "productID") && [v4 productID])
        {
          -[AANearbyDevice setProductID:](self, "setProductID:", [v4 productID]);
          v7 = 1;
        }

        v28 = [(AANearbyDevice *)self model];
        if (v28)
        {
          v29 = v28;
        }

        else
        {
          v30 = [v4 model];

          if (!v30)
          {
LABEL_31:

            goto LABEL_32;
          }

          v29 = [v4 model];
          [(AANearbyDevice *)self setModel:v29];
          v7 = 1;
        }

        goto LABEL_31;
      }

      v26 = [v4 findMyCaseIdentifier];
      [(AANearbyDevice *)self setCaseIdentifier:v26];
      v7 = 1;
    }

    goto LABEL_23;
  }

LABEL_32:

  return v7;
}

- (BOOL)updateWithPrimaryDevice:(id)a3
{
  v4 = a3;
  if (![(AANearbyDevice *)self isCase])
  {
    v7 = 0;
    goto LABEL_40;
  }

  v5 = [(AANearbyDevice *)self primaryDeviceIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = [v4 identifier];

    if (!v8)
    {
      v7 = 0;
      goto LABEL_8;
    }

    v6 = [v4 identifier];
    [(AANearbyDevice *)self setPrimaryDeviceIdentifier:v6];
    v7 = 1;
  }

LABEL_8:
  v9 = [v4 btAddressData];
  v10 = CUPrintNSDataAddress();

  v11 = [(AANearbyDevice *)self primaryBluetoothAddress];

  if (!v11 && v10)
  {
    [(AANearbyDevice *)self setPrimaryBluetoothAddress:v10];
    v7 = 1;
  }

  if (![(AANearbyDevice *)self primaryProductID])
  {
    v12 = [(AANearbyDevice *)self primaryProductID];
    if (v12 != [v4 productID])
    {
      -[AANearbyDevice setPrimaryProductID:](self, "setPrimaryProductID:", [v4 productID]);
      v7 = 1;
    }
  }

  v13 = [(AANearbyDevice *)self model];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v15 = [v4 model];

    if (!v15)
    {
      goto LABEL_19;
    }

    v14 = [v4 model];
    [(AANearbyDevice *)self setModel:v14];
    v7 = 1;
  }

LABEL_19:
  v16 = [v4 name];
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  v18 = [(AANearbyDevice *)self name];
  v19 = [v4 name];
  v20 = v18;
  v21 = v19;
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
    v17 = [v4 name];
    [(AANearbyDevice *)self setName:v17];
    v7 = 1;
    goto LABEL_27;
  }

LABEL_28:
  v24 = [v4 findMyGroupIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = [(AANearbyDevice *)self findMyGroupIdentifier];
    v27 = [v4 findMyGroupIdentifier];
    v28 = v26;
    v29 = v27;
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

      v25 = [v4 findMyGroupIdentifier];
      [(AANearbyDevice *)self setFindMyGroupIdentifier:v25];
      v7 = 1;
    }
  }

LABEL_37:
  v32 = [v4 discoveryFlags] & 0x800000;
  if ([(AANearbyDevice *)self paired]!= v32 >> 23)
  {
    [(AANearbyDevice *)self setPaired:v32 != 0];
    v7 = 1;
  }

LABEL_40:
  return v7;
}

- (BOOL)updateWithProximityPairingPayload:(id)a3
{
  v4 = a3;
  v5 = [(AANearbyDevice *)self productID];
  v6 = v5 == 0;
  if (!v5)
  {
    -[AANearbyDevice setProductID:](self, "setProductID:", [v4 pid]);
  }

  v7 = [(AANearbyDevice *)self proximityPairingPayload];
  v8 = [v4 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(AANearbyDevice *)self setProximityPairingPayload:v4];
    v6 = 1;
  }

  return v6;
}

- (BOOL)updateWithPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [(AANearbyDevice *)self heartRateMonitorCapability];
  v6 = [v4 heartRateMonitorCapability];
  v7 = v5 == v6;
  v8 = v5 != v6;
  if (!v7)
  {
    -[AANearbyDevice setHeartRateMonitorCapability:](self, "setHeartRateMonitorCapability:", [v4 heartRateMonitorCapability]);
  }

  v9 = [(AANearbyDevice *)self healthKitDataWriteAllowed];
  if (v9 != [v4 healthKitDataWriteAllowed])
  {
    -[AANearbyDevice setHealthKitDataWriteAllowed:](self, "setHealthKitDataWriteAllowed:", [v4 healthKitDataWriteAllowed]);
    v8 = 1;
  }

  return v8;
}

@end