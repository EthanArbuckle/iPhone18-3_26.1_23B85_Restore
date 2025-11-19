@interface STSCHNfcAlternativeCarrier
+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3;
- (STSCHNfcAlternativeCarrier)initWithCoder:(id)a3;
- (STSCHNfcAlternativeCarrier)initWithMaxLcField:(int64_t)a3 maxLeField:(int64_t)a4 auxiliaryRecords:(id)a5;
- (STSCHNfcAlternativeCarrier)initWithNdefRecordBundle:(id)a3;
- (id)_createCarrierConfigurationRecord;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCHNfcAlternativeCarrier

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = STSCHNfcAlternativeCarrier;
  v4 = a3;
  [(STSCHAlternativeCarrier *)&v7 encodeWithCoder:v4];
  objc_msgSend_encodeInteger_forKey_(v4, v5, self->_maxLc, @"maxLc", v7.receiver, v7.super_class);
  objc_msgSend_encodeInteger_forKey_(v4, v6, self->_maxLe, @"maxLe");
}

- (STSCHNfcAlternativeCarrier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSCHNfcAlternativeCarrier;
  v6 = [(STSCHAlternativeCarrier *)&v9 initWithCoder:v4];
  if (v6)
  {
    v6->_maxLc = objc_msgSend_decodeIntegerForKey_(v4, v5, @"maxLc");
    v6->_maxLe = objc_msgSend_decodeIntegerForKey_(v4, v7, @"maxLe");
  }

  return v6;
}

- (STSCHNfcAlternativeCarrier)initWithMaxLcField:(int64_t)a3 maxLeField:(int64_t)a4 auxiliaryRecords:(id)a5
{
  v8 = a5;
  v21.receiver = self;
  v21.super_class = STSCHNfcAlternativeCarrier;
  v9 = [(STSCHNfcAlternativeCarrier *)&v21 init];
  v11 = v9;
  if (v9)
  {
    v12 = 4096;
    if (a3 >= 1)
    {
      v13 = a3;
    }

    else
    {
      v13 = 4096;
    }

    v9->_maxLc = v13;
    if (a4 >= 1)
    {
      v12 = a4;
    }

    v9->_maxLe = v12;
    objc_msgSend_setType_(v9, v10, 3);
    objc_msgSend_setPowerState_(v11, v14, 1);
    objc_msgSend_setAuxiliaryRecords_(v11, v15, v8);
    v18 = objc_msgSend__createCarrierConfigurationRecord(v11, v16, v17);
    objc_msgSend_setCarrierRecord_(v11, v19, v18);
  }

  return v11;
}

- (STSCHNfcAlternativeCarrier)initWithNdefRecordBundle:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = STSCHNfcAlternativeCarrier;
  v7 = [(STSCHAlternativeCarrier *)&v45 initWithNdefRecordBundle:v4];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = objc_msgSend_configurationRecord(v4, v5, v6);
  v11 = objc_msgSend_payload(v8, v9, v10);
  v12 = v11;
  v15 = objc_msgSend_bytes(v12, v13, v14);

  v18 = objc_msgSend_configurationRecord(v4, v16, v17);
  v21 = objc_msgSend_payload(v18, v19, v20);
  v24 = objc_msgSend_length(v21, v22, v23);

  v7->_maxLc = -1;
  v7->_maxLe = -1;
  if (v24 <= 0)
  {
    v41 = @"Invalid payload length";
    v42 = 67;
    goto LABEL_23;
  }

  if (*v15 != 1)
  {
    v41 = @"Invalid version";
    v42 = 72;
    goto LABEL_23;
  }

  v27 = v24 - 1;
  if (v24 == 1)
  {
LABEL_19:
    v40 = v7;
    goto LABEL_24;
  }

  v28 = v15 + 1;
  v29 = v15 + 1;
  while (1)
  {
    v31 = *v29;
    v29 += 2;
    v30 = v31;
    v32 = v27 - 2;
    v33 = v27 - 2 - v31;
    if (v27 - 2 < v31)
    {
      break;
    }

    v34 = v28[1];
    if (v34 == 2)
    {
      v7->_maxLe = 0;
      if (v30)
      {
        v38 = 0;
        v36 = v30 - 1;
        do
        {
          v7->_maxLe = v38 << 8;
          v39 = *v29++;
          v7->_maxLe = v39 | (v38 << 8);
          LODWORD(v30) = v30 - 1;
          v38 = v39 | (v38 << 8);
        }

        while (v30);
        goto LABEL_16;
      }
    }

    else
    {
      if (v34 != 1)
      {
        sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSCHNfcAlternativeCarrier initWithNdefRecordBundle:]", 101, v7, @"Unrecognized tag: 0x%X", v25, v26, v34);
        v29 += v30;
        v32 = v33;
        goto LABEL_18;
      }

      v7->_maxLc = 0;
      if (v30)
      {
        v35 = 0;
        v36 = v30 - 1;
        do
        {
          v7->_maxLc = v35 << 8;
          v37 = *v29++;
          v7->_maxLc = v37 | (v35 << 8);
          LODWORD(v30) = v30 - 1;
          v35 = v37 | (v35 << 8);
        }

        while (v30);
LABEL_16:
        v32 = v27 - v36 - 3;
      }
    }

LABEL_18:
    v27 = v32;
    v28 = v29;
    if (v32 <= 0)
    {
      goto LABEL_19;
    }
  }

  v41 = @"Invalid tag length";
  v42 = 86;
LABEL_23:
  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSCHNfcAlternativeCarrier initWithNdefRecordBundle:]", v42, v7, v41, v25, v26, v44);
  v40 = 0;
LABEL_24:

  return v40;
}

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_configurationRecord(v4, v5, v6);
  isNfcConfigurationRecord = objc_msgSend_isNfcConfigurationRecord(v7, v8, v9);

  if (isNfcConfigurationRecord)
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

- (id)_createCarrierConfigurationRecord
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, &unk_264507659, 17);
  v5 = objc_msgSend_dataUsingEncoding_(@"nfc", v4, 4);
  v21 = 769;
  v22 = 1;
  v23 = objc_msgSend_maxLc(self, v6, v7) >> 8;
  v24 = objc_msgSend_maxLc(self, v8, v9);
  v25 = 515;
  v26 = objc_msgSend_maxLe(self, v10, v11) >> 8;
  v27 = objc_msgSend_maxLe(self, v12, v13);
  v14 = [STSNDEFRecord alloc];
  v16 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v15, &v21, 9);
  v18 = objc_msgSend_initWithFormat_type_identifier_payload_(v14, v17, 4, v3, v5, v16);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_powerState(self, a2, v2);
  v8 = objc_msgSend_maxLc(self, v6, v7);
  v11 = objc_msgSend_maxLe(self, v9, v10);
  v14 = objc_msgSend_auxiliaryRecords(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v4, v15, @"{ type=nfc,powerState=%lu,maxLc=%ld,maxLe=%ld,aux=%@ }", v5, v8, v11, v14);

  return v16;
}

@end