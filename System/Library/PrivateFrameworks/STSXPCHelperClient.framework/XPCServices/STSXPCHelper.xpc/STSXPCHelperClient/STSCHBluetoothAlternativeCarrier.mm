@interface STSCHBluetoothAlternativeCarrier
+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)bundle;
- (NSData)humanReadableAdvertiseUUID;
- (NSData)humanReadableLEAddress;
- (STSCHBluetoothAlternativeCarrier)initWithAddress:(id)address advertiseUUID:(id)d role:(unint64_t)role powerState:(unint64_t)state auxiliaryRecords:(id)records;
- (STSCHBluetoothAlternativeCarrier)initWithCoder:(id)coder;
- (STSCHBluetoothAlternativeCarrier)initWithNdefRecordBundle:(id)bundle;
- (id)_createCarrierConfigurationRecord;
- (id)description;
- (id)roleString;
- (unint64_t)roleFromSpec:(unsigned __int8)spec;
- (unsigned)specRole;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCHBluetoothAlternativeCarrier

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSCHBluetoothAlternativeCarrier;
  coderCopy = coder;
  [(STSCHAlternativeCarrier *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_leAddr forKey:{@"leAddr", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_leRole forKey:@"leRole"];
}

- (STSCHBluetoothAlternativeCarrier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STSCHBluetoothAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leAddr"];
    leAddr = v5->_leAddr;
    v5->_leAddr = v6;

    v5->_leRole = [coderCopy decodeIntegerForKey:@"leRole"];
  }

  return v5;
}

- (STSCHBluetoothAlternativeCarrier)initWithAddress:(id)address advertiseUUID:(id)d role:(unint64_t)role powerState:(unint64_t)state auxiliaryRecords:(id)records
{
  addressCopy = address;
  dCopy = d;
  recordsCopy = records;
  v25.receiver = self;
  v25.super_class = STSCHBluetoothAlternativeCarrier;
  v16 = [(STSCHBluetoothAlternativeCarrier *)&v25 init];
  if (v16)
  {
    if (addressCopy && [addressCopy length] != 7)
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithAddress:advertiseUUID:role:powerState:auxiliaryRecords:]", 47, v16, @"Invalid leAddr: %@", v17, v18, addressCopy);
    }

    else
    {
      if (!dCopy || [dCopy length] == 16)
      {
        objc_storeStrong(&v16->_leAddr, address);
        objc_storeStrong(&v16->_advertiseUUID, d);
        v16->_leRole = role;
        [(STSCHAlternativeCarrier *)v16 setAuxiliaryRecords:recordsCopy];
        [(STSCHAlternativeCarrier *)v16 setType:2];
        if (state >= 3)
        {
          stateCopy = 3;
        }

        else
        {
          stateCopy = state;
        }

        [(STSCHAlternativeCarrier *)v16 setPowerState:stateCopy];
        _createCarrierConfigurationRecord = [(STSCHBluetoothAlternativeCarrier *)v16 _createCarrierConfigurationRecord];
        [(STSCHAlternativeCarrier *)v16 setCarrierRecord:_createCarrierConfigurationRecord];

        goto LABEL_10;
      }

      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithAddress:advertiseUUID:role:powerState:auxiliaryRecords:]", 52, v16, @"Invalid advertiseUUID: %@", v19, v20, dCopy);
    }

    v23 = 0;
    goto LABEL_14;
  }

LABEL_10:
  v23 = v16;
LABEL_14:

  return v23;
}

- (STSCHBluetoothAlternativeCarrier)initWithNdefRecordBundle:(id)bundle
{
  bundleCopy = bundle;
  v24.receiver = self;
  v24.super_class = STSCHBluetoothAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v24 initWithNdefRecordBundle:bundleCopy];
  if (v5)
  {
    configurationRecord = [bundleCopy configurationRecord];
    payload = [configurationRecord payload];
    bytes = [payload bytes];

    configurationRecord2 = [bundleCopy configurationRecord];
    payload2 = [configurationRecord2 payload];
    v11 = [payload2 length];

    if (v11 >= 2)
    {
      while (1)
      {
        v14 = bytes + 2;
        v15 = v11 - 2;
        v16 = *bytes - 1;
        v17 = __OFSUB__(v11 - 2, v16);
        v11 = v11 - 2 - v16;
        if (v11 < 0 != v17)
        {
          v23 = *bytes - 1;
          sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 87, v5, @"Not enough room for TLV: %ld expected %d", v12, v13, v15);
          goto LABEL_20;
        }

        v18 = bytes[1];
        if (v18 == 7)
        {
          break;
        }

        if (v18 == 28)
        {
          if (*bytes == 2)
          {
            v5->_leRole = [(STSCHBluetoothAlternativeCarrier *)v5 roleFromSpec:*v14];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 102, v5, @"Invalid role length : %d", v12, v13, *bytes - 1);
          }

          goto LABEL_17;
        }

        if (v18 == 27)
        {
          if (*bytes != 8)
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 95, v5, @"Invalid address length : %d", v12, v13, *bytes - 1);
            goto LABEL_17;
          }

          v19 = [NSData dataWithBytes:bytes + 2 length:7];
          v20 = 40;
LABEL_13:
          v21 = *(&v5->super.super.isa + v20);
          *(&v5->super.super.isa + v20) = v19;
        }

LABEL_17:
        bytes = &v14[v16];
        if (v11 <= 1)
        {
          goto LABEL_20;
        }
      }

      if (*bytes != 17)
      {
        sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 108, v5, @"Invalid advertise UUID length: %d", v12, v13, *bytes - 1);
        goto LABEL_17;
      }

      v19 = [NSData dataWithBytes:bytes + 2 length:16];
      v20 = 48;
      goto LABEL_13;
    }
  }

LABEL_20:

  return v5;
}

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)bundle
{
  bundleCopy = bundle;
  configurationRecord = [bundleCopy configurationRecord];
  isBluetoothLEConfigurationRecord = [configurationRecord isBluetoothLEConfigurationRecord];

  if (isBluetoothLEConfigurationRecord)
  {
    v7 = [[self alloc] initWithNdefRecordBundle:bundleCopy];
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

- (unint64_t)roleFromSpec:(unsigned __int8)spec
{
  if (spec >= 4u)
  {
    return 4;
  }

  else
  {
    return spec;
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
    bytes = [(NSData *)self->_leAddr bytes];
    v11 = *(bytes + 3);
    *(v18 + 2) = *bytes;
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
  powerState = [(STSCHAlternativeCarrier *)self powerState];
  roleString = [(STSCHBluetoothAlternativeCarrier *)self roleString];
  leAddr = self->_leAddr;
  advertiseUUID = self->_advertiseUUID;
  auxiliaryRecords = [(STSCHAlternativeCarrier *)self auxiliaryRecords];
  v8 = [NSString stringWithFormat:@"{ type=ble, powerState=%lu, role=%@, leAddr=%@, advertiseUUID=%@, aux=%@ }", powerState, roleString, leAddr, advertiseUUID, auxiliaryRecords];

  return v8;
}

@end