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
  v7.receiver = self;
  v7.super_class = STSCHBluetoothAlternativeCarrier;
  v4 = a3;
  [(STSCHAlternativeCarrier *)&v7 encodeWithCoder:v4];
  objc_msgSend_encodeObject_forKey_(v4, v5, self->_leAddr, @"leAddr", v7.receiver, v7.super_class);
  objc_msgSend_encodeInteger_forKey_(v4, v6, self->_leRole, @"leRole");
}

- (STSCHBluetoothAlternativeCarrier)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STSCHBluetoothAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"leAddr");
    leAddr = v5->_leAddr;
    v5->_leAddr = v8;

    v5->_leRole = objc_msgSend_decodeIntegerForKey_(v4, v10, @"leRole");
  }

  return v5;
}

- (STSCHBluetoothAlternativeCarrier)initWithAddress:(id)a3 advertiseUUID:(id)a4 role:(unint64_t)a5 powerState:(unint64_t)a6 auxiliaryRecords:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v32.receiver = self;
  v32.super_class = STSCHBluetoothAlternativeCarrier;
  v18 = [(STSCHBluetoothAlternativeCarrier *)&v32 init];
  if (v18)
  {
    if (v13 && objc_msgSend_length(v13, v16, v17) != 7)
    {
      sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithAddress:advertiseUUID:role:powerState:auxiliaryRecords:]", 47, v18, @"Invalid leAddr: %@", v19, v20, v13);
    }

    else
    {
      if (!v14 || objc_msgSend_length(v14, v16, v17) == 16)
      {
        objc_storeStrong(&v18->_leAddr, a3);
        objc_storeStrong(&v18->_advertiseUUID, a4);
        v18->_leRole = a5;
        objc_msgSend_setAuxiliaryRecords_(v18, v23, v15);
        objc_msgSend_setType_(v18, v24, 2);
        if (a6 >= 3)
        {
          objc_msgSend_setPowerState_(v18, v25, 3);
        }

        else
        {
          objc_msgSend_setPowerState_(v18, v25, a6);
        }

        v28 = objc_msgSend__createCarrierConfigurationRecord(v18, v26, v27);
        objc_msgSend_setCarrierRecord_(v18, v29, v28);

        goto LABEL_10;
      }

      sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithAddress:advertiseUUID:role:powerState:auxiliaryRecords:]", 52, v18, @"Invalid advertiseUUID: %@", v21, v22, v14);
    }

    v30 = 0;
    goto LABEL_14;
  }

LABEL_10:
  v30 = v18;
LABEL_14:

  return v30;
}

- (STSCHBluetoothAlternativeCarrier)initWithNdefRecordBundle:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = STSCHBluetoothAlternativeCarrier;
  v7 = [(STSCHAlternativeCarrier *)&v38 initWithNdefRecordBundle:v4];
  if (v7)
  {
    v8 = objc_msgSend_configurationRecord(v4, v5, v6);
    v11 = objc_msgSend_payload(v8, v9, v10);
    v12 = v11;
    v15 = objc_msgSend_bytes(v12, v13, v14);

    v18 = objc_msgSend_configurationRecord(v4, v16, v17);
    v21 = objc_msgSend_payload(v18, v19, v20);
    v24 = objc_msgSend_length(v21, v22, v23);

    if (v24 >= 2)
    {
      while (1)
      {
        v28 = v15 + 2;
        v29 = v24 - 2;
        v30 = *v15 - 1;
        v31 = __OFSUB__(v24 - 2, v30);
        v24 = v24 - 2 - v30;
        if (v24 < 0 != v31)
        {
          v37 = *v15 - 1;
          sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 87, v7, @"Not enough room for TLV: %ld expected %d", v26, v27, v29);
          goto LABEL_20;
        }

        v32 = v15[1];
        if (v32 == 7)
        {
          break;
        }

        if (v32 == 28)
        {
          if (*v15 == 2)
          {
            v7->_leRole = objc_msgSend_roleFromSpec_(v7, v25, *v28);
          }

          else
          {
            sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 102, v7, @"Invalid role length : %d", v26, v27, *v15 - 1);
          }

          goto LABEL_17;
        }

        if (v32 == 27)
        {
          if (*v15 != 8)
          {
            sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 95, v7, @"Invalid address length : %d", v26, v27, *v15 - 1);
            goto LABEL_17;
          }

          v33 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v25, (v15 + 2), 7);
          v34 = 40;
LABEL_13:
          v35 = *(&v7->super.super.isa + v34);
          *(&v7->super.super.isa + v34) = v33;
        }

LABEL_17:
        v15 = &v28[v30];
        if (v24 <= 1)
        {
          goto LABEL_20;
        }
      }

      if (*v15 != 17)
      {
        sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHBluetoothAlternativeCarrier initWithNdefRecordBundle:]", 108, v7, @"Invalid advertise UUID length: %d", v26, v27, *v15 - 1);
        goto LABEL_17;
      }

      v33 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v25, (v15 + 2), 16);
      v34 = 48;
      goto LABEL_13;
    }
  }

LABEL_20:

  return v7;
}

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_configurationRecord(v4, v5, v6);
  isBluetoothLEConfigurationRecord = objc_msgSend_isBluetoothLEConfigurationRecord(v7, v8, v9);

  if (isBluetoothLEConfigurationRecord)
  {
    v11 = [a1 alloc];
    v13 = objc_msgSend_initWithNdefRecordBundle_(v11, v12, v4);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSData)humanReadableLEAddress
{
  leAddr = self->_leAddr;
  if (leAddr)
  {
    leAddr = objc_msgSend_STS_reverseBytes(leAddr, a2, v2);
    v3 = vars8;
  }

  return leAddr;
}

- (NSData)humanReadableAdvertiseUUID
{
  advertiseUUID = self->_advertiseUUID;
  if (advertiseUUID)
  {
    advertiseUUID = objc_msgSend_STS_reverseBytes(advertiseUUID, a2, v2);
    v3 = vars8;
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
    return off_279B5FD40[v2];
  }
}

- (id)_createCarrierConfigurationRecord
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "application/vnd.bluetooth.le.oob", 32);
  v5 = objc_msgSend_dataUsingEncoding_(@"0", v4, 4);
  memset(v29, 0, sizeof(v29));
  leRole = self->_leRole;
  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8, 0, 0, 0, 0);
  v11 = objc_msgSend_BOOLForKey_(v9, v10, @"BTOOBDataExtras");

  v15 = (leRole == 4 || leRole == 1) && v11 == 0;
  if (v15 || objc_msgSend_length(self->_leAddr, v12, v13) != 7)
  {
    v18 = 0;
  }

  else
  {
    LOWORD(v29[0]) = 6920;
    v16 = objc_msgSend_bytes(self->_leAddr, v12, v13, *&v29[0]);
    v17 = *(v16 + 3);
    *(v29 + 2) = *v16;
    *(v29 + 5) = v17;
    v18 = 9;
  }

  if (leRole != 1 && leRole != 4)
  {
    v28 = objc_msgSend_length(self->_advertiseUUID, v12, v13);
    if (v28 == 16)
    {
      *(v29 | v18) = 1809;
      *(v29 | v18 | 2) = *objc_msgSend_bytes(self->_advertiseUUID, v12, v13);
      v18 |= 0x12u;
    }
  }

  v20 = v29 + v18;
  *v20 = 7170;
  v20[2] = objc_msgSend_specRole(self, v12, v13);
  v22 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v21, v29, v18 + 3);
  v23 = [STSNDEFRecord alloc];
  v25 = objc_msgSend_initWithFormat_type_identifier_payload_(v23, v24, 2, v3, v5, v22);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_powerState(self, a2, v2);
  v8 = objc_msgSend_roleString(self, v6, v7);
  leAddr = self->_leAddr;
  advertiseUUID = self->_advertiseUUID;
  v13 = objc_msgSend_auxiliaryRecords(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v4, v14, @"{ type=ble,powerState=%lu,role=%@,leAddr=%@,advertiseUUID=%@,aux=%@ }", v5, v8, leAddr, advertiseUUID, v13);

  return v15;
}

@end