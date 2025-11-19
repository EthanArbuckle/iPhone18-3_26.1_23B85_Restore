@interface STSCHBluetoothAlternativeCarrier
+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3;
- (NSData)humanReadableAdvertiseUUID;
- (NSData)humanReadableLEAddress;
- (STSCHBluetoothAlternativeCarrier)initWithAddress:(id)a3 advertiseUUID:(id)a4 role:(unint64_t)a5 powerState:(unint64_t)a6 auxiliaryRecords:(id)a7;
- (STSCHBluetoothAlternativeCarrier)initWithCoder:(id)a3;
- (STSCHBluetoothAlternativeCarrier)initWithNdefRecordBundle:(id)a3;
- (id)_createCarrierConfigurationRecord;
- (id)description;
- (id)roleString;
- (unint64_t)roleFromSpec:(unsigned __int8)a3;
- (unsigned)specRole;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCHBluetoothAlternativeCarrier

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSCHBluetoothAlternativeCarrier;
  v4 = a3;
  [(STSCHAlternativeCarrier *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_leAddr forKey:{@"leAddr", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_leRole forKey:@"leRole"];
}

- (STSCHBluetoothAlternativeCarrier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSCHBluetoothAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leAddr"];
    leAddr = v5->_leAddr;
    v5->_leAddr = v6;

    v5->_leRole = [v4 decodeIntegerForKey:@"leRole"];
  }

  return v5;
}

- (STSCHBluetoothAlternativeCarrier)initWithAddress:(id)a3 advertiseUUID:(id)a4 role:(unint64_t)a5 powerState:(unint64_t)a6 auxiliaryRecords:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = STSCHBluetoothAlternativeCarrier;
  v16 = [(STSCHBluetoothAlternativeCarrier *)&v25 init];
  if (v16)
  {
    if (v13 && [v13 length] != 7)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithAddress:advertiseUUID:role:powerState:auxiliaryRecords:]", 47, v16, @"Invalid leAddr: %@", v17, v18, v13);
    }

    else
    {
      if (!v14 || [v14 length] == 16)
      {
        objc_storeStrong(&v16->_leAddr, a3);
        objc_storeStrong(&v16->_advertiseUUID, a4);
        v16->_leRole = a5;
        [(STSCHAlternativeCarrier *)v16 setAuxiliaryRecords:v15];
        [(STSCHAlternativeCarrier *)v16 setType:2];
        if (a6 >= 3)
        {
          v21 = 3;
        }

        else
        {
          v21 = a6;
        }

        [(STSCHAlternativeCarrier *)v16 setPowerState:v21];
        v22 = [(STSCHBluetoothAlternativeCarrier *)v16 _createCarrierConfigurationRecord];
        [(STSCHAlternativeCarrier *)v16 setCarrierRecord:v22];

        goto LABEL_10;
      }

      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithAddress:advertiseUUID:role:powerState:auxiliaryRecords:]", 52, v16, @"Invalid advertiseUUID: %@", v19, v20, v14);
    }

    v23 = 0;
    goto LABEL_14;
  }

LABEL_10:
  v23 = v16;
LABEL_14:

  return v23;
}

- (STSCHBluetoothAlternativeCarrier)initWithNdefRecordBundle:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = STSCHBluetoothAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v24 initWithNdefRecordBundle:v4];
  if (v5)
  {
    v6 = [v4 configurationRecord];
    v7 = [v6 payload];
    v8 = [v7 bytes];

    v9 = [v4 configurationRecord];
    v10 = [v9 payload];
    v11 = [v10 length];

    if (v11 >= 2)
    {
      while (1)
      {
        v14 = v8 + 2;
        v15 = v11 - 2;
        v16 = *v8 - 1;
        v17 = __OFSUB__(v11 - 2, v16);
        v11 = v11 - 2 - v16;
        if (v11 < 0 != v17)
        {
          v23 = *v8 - 1;
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 87, v5, @"Not enough room for TLV: %ld expected %d", v12, v13, v15);
          goto LABEL_20;
        }

        v18 = v8[1];
        if (v18 == 7)
        {
          break;
        }

        if (v18 == 28)
        {
          if (*v8 == 2)
          {
            v5->_leRole = [(STSCHBluetoothAlternativeCarrier *)v5 roleFromSpec:*v14];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 102, v5, @"Invalid role length : %d", v12, v13, *v8 - 1);
          }

          goto LABEL_17;
        }

        if (v18 == 27)
        {
          if (*v8 != 8)
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 95, v5, @"Invalid address length : %d", v12, v13, *v8 - 1);
            goto LABEL_17;
          }

          v19 = [NSData dataWithBytes:v8 + 2 length:7];
          v20 = 40;
LABEL_13:
          v21 = *(&v5->super.super.isa + v20);
          *(&v5->super.super.isa + v20) = v19;
        }

LABEL_17:
        v8 = &v14[v16];
        if (v11 <= 1)
        {
          goto LABEL_20;
        }
      }

      if (*v8 != 17)
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 108, v5, @"Invalid advertise UUID length: %d", v12, v13, *v8 - 1);
        goto LABEL_17;
      }

      v19 = [NSData dataWithBytes:v8 + 2 length:16];
      v20 = 48;
      goto LABEL_13;
    }
  }

LABEL_20:

  return v5;
}

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 configurationRecord];
  v6 = [v5 isBluetoothLEConfigurationRecord];

  if (v6)
  {
    v7 = [[a1 alloc] initWithNdefRecordBundle:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSData)humanReadableLEAddress
{
  leAddr = self->_leAddr;
  if (leAddr)
  {
    leAddr = [leAddr STS_reverseBytes];
    v2 = vars8;
  }

  return leAddr;
}

- (NSData)humanReadableAdvertiseUUID
{
  advertiseUUID = self->_advertiseUUID;
  if (advertiseUUID)
  {
    advertiseUUID = [advertiseUUID STS_reverseBytes];
    v2 = vars8;
  }

  return advertiseUUID;
}

- (unsigned)specRole
{
  leRole = self->_leRole;
  if (leRole >= 4)
  {
    LOBYTE(leRole) = 1;
  }

  return leRole;
}

- (unint64_t)roleFromSpec:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    return 4;
  }

  else
  {
    return a3;
  }
}

- (id)roleString
{
  v2 = self->_leRole - 1;
  if (v2 > 3)
  {
    return @"Peripheral";
  }

  else
  {
    return off_1000589E0[v2];
  }
}

- (id)_createCarrierConfigurationRecord
{
  v3 = [NSData dataWithBytes:"application/vnd.bluetooth.le.oob" length:32];
  v4 = [@"0" dataUsingEncoding:4];
  memset(v18, 0, sizeof(v18));
  leRole = self->_leRole;
  v6 = [NSUserDefaults standardUserDefaults:0];
  v7 = [v6 BOOLForKey:@"BTOOBDataExtras"];

  v9 = (leRole == 4 || leRole == 1) && v7 == 0;
  if (v9 || [(NSData *)self->_leAddr length]!= 7)
  {
    v12 = 0;
  }

  else
  {
    LOWORD(v18[0]) = 6920;
    v10 = [(NSData *)self->_leAddr bytes];
    v11 = *(v10 + 3);
    *(v18 + 2) = *v10;
    *(v18 + 5) = v11;
    v12 = 9;
  }

  v13 = leRole == 1 || leRole == 4;
  if (!v13 && [(NSData *)self->_advertiseUUID length]== 16)
  {
    *(v18 | v12) = 1809;
    *(v18 | v12 | 2) = *[(NSData *)self->_advertiseUUID bytes];
    v12 |= 0x12u;
  }

  v14 = v18 + v12;
  *v14 = 7170;
  v14[2] = [(STSCHBluetoothAlternativeCarrier *)self specRole];
  v15 = [NSData dataWithBytes:v18 length:v12 + 3];
  v16 = [[STSNDEFRecord alloc] initWithFormat:2 type:v3 identifier:v4 payload:v15];

  return v16;
}

- (id)description
{
  v3 = [(STSCHAlternativeCarrier *)self powerState];
  v4 = [(STSCHBluetoothAlternativeCarrier *)self roleString];
  leAddr = self->_leAddr;
  advertiseUUID = self->_advertiseUUID;
  v7 = [(STSCHAlternativeCarrier *)self auxiliaryRecords];
  v8 = [NSString stringWithFormat:@"{ type=ble, powerState=%lu, role=%@, leAddr=%@, advertiseUUID=%@, aux=%@ }", v3, v4, leAddr, advertiseUUID, v7];

  return v8;
}

@end