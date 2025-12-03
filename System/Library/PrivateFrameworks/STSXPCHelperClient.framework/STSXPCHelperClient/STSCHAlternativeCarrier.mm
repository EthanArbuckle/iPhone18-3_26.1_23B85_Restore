@interface STSCHAlternativeCarrier
- (BOOL)isEqual:(id)equal;
- (STSCHAlternativeCarrier)initWithCoder:(id)coder;
- (STSCHAlternativeCarrier)initWithNdefRecordBundle:(id)bundle;
- (id)createAlternativeCarrierRecord;
- (id)createNdefRecordBundle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCHAlternativeCarrier

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, type, @"type");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v6, self->_powerState, @"powerState");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_carrierRecord, @"carrierRecord");
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_auxiliaryRecords, @"auxiliaryRecords");
}

- (STSCHAlternativeCarrier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = STSCHAlternativeCarrier;
  v6 = [(STSCHAlternativeCarrier *)&v21 init];
  if (v6)
  {
    v6->_type = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"type");
    v6->_powerState = objc_msgSend_decodeIntegerForKey_(coderCopy, v7, @"powerState");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v8, @"carrierRecord");
    carrierRecord = v6->_carrierRecord;
    v6->_carrierRecord = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v16 = objc_msgSend_setWithObjects_(v12, v15, v13, v14, 0);
    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v17, v16, @"auxiliaryRecords");
    auxiliaryRecords = v6->_auxiliaryRecords;
    v6->_auxiliaryRecords = v18;
  }

  return v6;
}

- (STSCHAlternativeCarrier)initWithNdefRecordBundle:(id)bundle
{
  bundleCopy = bundle;
  v35.receiver = self;
  v35.super_class = STSCHAlternativeCarrier;
  v7 = [(STSCHAlternativeCarrier *)&v35 init];
  if (v7)
  {
    v8 = objc_msgSend_configurationRecord(bundleCopy, v5, v6);
    isWiFiAwareConfigurationRecord = objc_msgSend_isWiFiAwareConfigurationRecord(v8, v9, v10);

    if (isWiFiAwareConfigurationRecord)
    {
      v14 = 1;
    }

    else
    {
      v15 = objc_msgSend_configurationRecord(bundleCopy, v12, v13);
      isBluetoothLEConfigurationRecord = objc_msgSend_isBluetoothLEConfigurationRecord(v15, v16, v17);

      if (isBluetoothLEConfigurationRecord)
      {
        v14 = 2;
      }

      else
      {
        v19 = objc_msgSend_configurationRecord(bundleCopy, v12, v13);
        isNfcConfigurationRecord = objc_msgSend_isNfcConfigurationRecord(v19, v20, v21);

        if (!isNfcConfigurationRecord)
        {
          v7->_type = 0;
          goto LABEL_9;
        }

        v14 = 3;
      }
    }

    v7->_type = v14;
LABEL_9:
    v23 = objc_msgSend_alternativeRecord(bundleCopy, v12, v13);
    v7->_powerState = objc_msgSend_getCarrierPowerStateFromAlternativeCarrierRecord(v23, v24, v25);

    v28 = objc_msgSend_configurationRecord(bundleCopy, v26, v27);
    carrierRecord = v7->_carrierRecord;
    v7->_carrierRecord = v28;

    v32 = objc_msgSend_auxiliaryRecords(bundleCopy, v30, v31);
    auxiliaryRecords = v7->_auxiliaryRecords;
    v7->_auxiliaryRecords = v32;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v16 = 0;
    if (objc_msgSend_isEqual_(self->_carrierRecord, v7, v6->_carrierRecord))
    {
      v10 = objc_msgSend_count(self->_auxiliaryRecords, v8, v9);
      if (v10 == objc_msgSend_count(v6->_auxiliaryRecords, v11, v12) && (!objc_msgSend_count(self->_auxiliaryRecords, v13, v14) || objc_msgSend_isEqualToArray_(self->_auxiliaryRecords, v15, v6->_auxiliaryRecords)))
      {
        v16 = 1;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)createAlternativeCarrierRecord
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identifier(self->_carrierRecord, a2, v2);
  v9 = v4;
  if (!v4)
  {
    v11 = @"Missing carrier data reference";
    v12 = 99;
    goto LABEL_5;
  }

  if (objc_msgSend_length(v4, v5, v6) >= 0x100)
  {
    v11 = @"Invalid carrier reference length";
    v12 = 102;
LABEL_5:
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHAlternativeCarrier createAlternativeCarrierRecord]", v12, self, v11, v7, v8, v47);
    v13 = 0;
    goto LABEL_14;
  }

  v48 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v10, "ac", 2);
  v54 = self->_powerState & 3;
  v15 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEB28], v14, &v54, 1);
  v54 = objc_msgSend_length(v9, v16, v17);
  objc_msgSend_appendBytes_length_(v15, v18, &v54, 1);
  objc_msgSend_appendData_(v15, v19, v9);
  v53 = 0;
  v22 = objc_msgSend_data(MEMORY[0x277CBEB28], v20, v21);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v23 = self->_auxiliaryRecords;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v49, v55, 16);
  if (v25)
  {
    v28 = v25;
    v29 = 0;
    v30 = *v50;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v23);
        }

        v32 = *(*(&v49 + 1) + 8 * i);
        v33 = objc_msgSend_identifier(v32, v26, v27);
        v54 = objc_msgSend_length(v33, v34, v35);

        objc_msgSend_appendBytes_length_(v22, v36, &v54, 1);
        v39 = objc_msgSend_identifier(v32, v37, v38);
        objc_msgSend_appendData_(v22, v40, v39);

        v53 = ++v29;
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v49, v55, 16);
    }

    while (v28);
  }

  objc_msgSend_appendBytes_length_(v15, v41, &v53, 1);
  objc_msgSend_appendData_(v15, v42, v22);
  v43 = [STSNDEFRecord alloc];
  v13 = objc_msgSend_initWithFormat_type_identifier_payload_(v43, v44, 1, v48, 0, v15);

LABEL_14:
  v45 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createNdefRecordBundle
{
  v3 = [STSCHNdefRecordBundle alloc];
  v6 = objc_msgSend_createAlternativeCarrierRecord(self, v4, v5);
  v9 = objc_msgSend__createCarrierConfigurationRecord(self, v7, v8);
  v11 = objc_msgSend_initWithAlternativeRecord_configurationRecord_auxiliaryRecords_errorRecord_(v3, v10, v6, v9, self->_auxiliaryRecords, 0);

  return v11;
}

@end