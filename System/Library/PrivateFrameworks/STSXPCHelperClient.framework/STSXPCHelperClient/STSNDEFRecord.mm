@interface STSNDEFRecord
+ (BOOL)_parseNDEFData:(id)data outRecords:(id)records;
+ (id)ndefRecordsWithData:(id)data;
- (BOOL)isAlternativeCarrierRecord;
- (BOOL)isBluetoothLEConfigurationRecord;
- (BOOL)isCollisionResolutionRecord;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHandoverRequestRecord;
- (BOOL)isHandoverSelectErrorRecord;
- (BOOL)isHandoverSelectRecord;
- (BOOL)isISO18013DeviceEngagementRecord;
- (BOOL)isISO18013ReaderEngagementRecord;
- (BOOL)isNfcConfigurationRecord;
- (BOOL)isWiFiAwareConfigurationRecord;
- (STSNDEFRecord)initWithCoder:(id)coder;
- (id)description;
- (id)getAuxiliaryDataReferencesFromAlternativeCarrierRecord;
- (id)getCarrierDataReferenceFromAlternativeCarrierRecord;
- (unint64_t)getCarrierPowerStateFromAlternativeCarrierRecord;
- (void)_setIdLengthPresent:(BOOL)present;
- (void)encodeWithCoder:(id)coder;
- (void)setChunked:(BOOL)chunked;
- (void)setIdentifier:(id)identifier;
- (void)setMessageBegin:(BOOL)begin;
- (void)setMessageEnd:(BOOL)end;
- (void)setPayload:(id)payload;
- (void)setShortRecord:(BOOL)record;
@end

@implementation STSNDEFRecord

- (void)setMessageBegin:(BOOL)begin
{
  if (begin)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = v3 & 0x80 | self->_firstOctet & 0x7F;
}

- (void)setMessageEnd:(BOOL)end
{
  if (end)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xBF | v3;
}

- (void)setChunked:(BOOL)chunked
{
  if (chunked)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xDF | v3;
}

- (void)setShortRecord:(BOOL)record
{
  if (record)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xEF | v3;
}

- (void)_setIdLengthPresent:(BOOL)present
{
  if (present)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xF7 | v3;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_msgSend__setIdLengthPresent_(self, v4, 1);
    v5 = identifierCopy;
  }

  else
  {
    objc_msgSend__setIdLengthPresent_(self, v4, 0);
  }

  identifier = self->_identifier;
  self->_identifier = identifierCopy;
}

- (void)setPayload:(id)payload
{
  objc_storeStrong(&self->_payload, payload);
  payloadCopy = payload;
  v8 = objc_msgSend_length(self->_payload, v6, v7);

  objc_msgSend_setShortRecord_(self, v9, v8 < 0x100);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v26 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v5;
    v26 = 0;
    if (((v8->_firstOctet ^ self->_firstOctet) & 7) == 0)
    {
      v9 = objc_msgSend_length(self->_identifier, v6, v7);
      if (v9 == objc_msgSend_length(v8->_identifier, v10, v11))
      {
        identifier = self->_identifier;
        if (!identifier || objc_msgSend_isEqualToData_(identifier, v12, v8->_identifier))
        {
          v15 = objc_msgSend_length(self->_type, v12, v13);
          if (v15 == objc_msgSend_length(v8->_type, v16, v17))
          {
            type = self->_type;
            if (!type || objc_msgSend_isEqualToData_(type, v18, v8->_type))
            {
              v21 = objc_msgSend_length(self->_payload, v18, v19);
              if (v21 == objc_msgSend_length(v8->_payload, v22, v23))
              {
                payload = self->_payload;
                if (!payload || objc_msgSend_isEqualToData_(payload, v24, v8->_payload))
                {
                  v26 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)description
{
  if (self->_type)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_initWithData_encoding_(v4, v5, self->_type, 4);
    if (!v6)
    {
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@", self->_type);
    }
  }

  else
  {
    v6 = 0;
  }

  if (self->_identifier)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_msgSend_initWithData_encoding_(v7, v8, self->_identifier, 4);
    if (!v9)
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@", self->_identifier);
    }
  }

  else
  {
    v9 = 0;
  }

  v38 = MEMORY[0x277CCACA8];
  v37 = objc_msgSend_messageBegin(self, a2, v2);
  v12 = objc_msgSend_messageEnd(self, v10, v11);
  v15 = objc_msgSend_chunked(self, v13, v14);
  v18 = objc_msgSend_shortRecord(self, v16, v17);
  v21 = objc_msgSend_identifier(self, v19, v20);
  v24 = objc_msgSend_length(v21, v22, v23);
  v27 = objc_msgSend_typeNameFormat(self, v25, v26);
  v30 = objc_msgSend_length(self->_type, v28, v29);
  v33 = objc_msgSend_length(self->_payload, v31, v32);
  v35 = objc_msgSend_stringWithFormat_(v38, v34, @"{MB=%d,ME=%d,CF=%d,SR=%d,IL=%ld,TNF=%d,TypeLength=%ld,Type=%@,ID=%@,PayloadLength=%ld,Payload=%@}", v37, v12, v15, v18, v24, v27, v30, v6, v9, v33, self->_payload);

  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v4, self->_firstOctet, @"firstOctet");
  type = self->_type;
  if (type)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v5, type, @"type");
  }

  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v5, identifier, @"identifier");
  }

  payload = self->_payload;
  v9 = coderCopy;
  if (payload)
  {
    objc_msgSend_encodeObject_forKey_(coderCopy, v5, payload, @"payload");
    v9 = coderCopy;
  }
}

- (STSNDEFRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = STSNDEFRecord;
  v6 = [(STSNDEFRecord *)&v20 init];
  if (v6)
  {
    v6->_firstOctet = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"firstOctet");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"type");
    type = v6->_type;
    v6->_type = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"identifier");
    identifier = v6->_identifier;
    v6->_identifier = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"payload");
    payload = v6->_payload;
    v6->_payload = v17;
  }

  return v6;
}

+ (id)ndefRecordsWithData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_new();
  if (objc_msgSend__parseNDEFData_outRecords_(STSNDEFRecord, v5, dataCopy, v4))
  {
    v11 = objc_msgSend_copy(v4, v6, v7);
  }

  else
  {
    sub_2645011D4(OS_LOG_TYPE_INFO, 0, "+[STSNDEFRecord ndefRecordsWithData:]", 290, @"Invalid NDEF data: %@", v8, v9, v10, dataCopy);
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_parseNDEFData:(id)data outRecords:(id)records
{
  recordsCopy = records;
  v7 = objc_msgSend_inputStreamWithData_(MEMORY[0x277CBEAE0], v6, data);
  objc_msgSend_open(v7, v8, v9);
  if (objc_msgSend_hasBytesAvailable(v7, v10, v11))
  {
    while (1)
    {
      v54 = 0;
      v53 = 0;
      v52 = 0;
      if (objc_msgSend_read_maxLength_(v7, v12, &v54 + 1, 1) != 1)
      {
        break;
      }

      v15 = HIBYTE(v54);
      if (objc_msgSend_read_maxLength_(v7, v14, &v52, 1) != 1)
      {
        break;
      }

      if ((v15 & 0x10) != 0)
      {
        v51 = 0;
        if (objc_msgSend_read_maxLength_(v7, v16, &v51, 1) != 1)
        {
          goto LABEL_30;
        }

        v18 = v51;
      }

      else
      {
        if (objc_msgSend_read_maxLength_(v7, v16, &v53, 4) != 4)
        {
          break;
        }

        v18 = bswap32(v53);
      }

      v53 = v18;
      if ((v15 & 8) != 0 && objc_msgSend_read_maxLength_(v7, v17, &v54, 1) != 1)
      {
        break;
      }

      if (v52)
      {
        v19 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v17, v52);
        v20 = v19;
        v23 = objc_msgSend_mutableBytes(v20, v21, v22);
        maxLength = objc_msgSend_read_maxLength_(v7, v24, v23, v52);
        if (maxLength != v52)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v19 = 0;
      }

      if (v54)
      {
        v26 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v17, v54);
        v27 = v26;
        v30 = objc_msgSend_mutableBytes(v27, v28, v29);
        v32 = objc_msgSend_read_maxLength_(v7, v31, v30, v54);
        if (v32 != v54)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v26 = 0;
      }

      if (v53)
      {
        v33 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v17, v53);
        v34 = v33;
        v37 = objc_msgSend_mutableBytes(v34, v35, v36);
        v39 = objc_msgSend_read_maxLength_(v7, v38, v37, v53);
        if (v39 < 0 || v39 != v53)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v33 = 0;
      }

      v40 = objc_opt_new();
      *(v40 + 8) = HIBYTE(v54);
      v41 = *(v40 + 24);
      *(v40 + 24) = v19;
      v42 = v19;

      v43 = *(v40 + 16);
      *(v40 + 16) = v26;
      v44 = v26;

      v45 = *(v40 + 32);
      *(v40 + 32) = v33;

      objc_msgSend_addObject_(recordsCopy, v46, v40);
      if ((objc_msgSend_hasBytesAvailable(v7, v47, v48) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v19 = 0;
LABEL_27:
    v26 = 0;
LABEL_28:
    v33 = 0;
LABEL_29:

LABEL_30:
    v49 = 0;
  }

  else
  {
LABEL_25:
    objc_msgSend_close(v7, v12, v13);
    v49 = 1;
  }

  return v49;
}

- (BOOL)isWiFiAwareConfigurationRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "application/vnd.wfa.nanapplication/vnd.bluetooth.le.oob", 23);
  if (objc_msgSend_typeNameFormat(self, v4, v5) == 2)
  {
    v8 = objc_msgSend_type(self, v6, v7);
    isEqualToData = objc_msgSend_isEqualToData_(v8, v9, v3);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isBluetoothLEConfigurationRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "application/vnd.bluetooth.le.oob", 32);
  if (objc_msgSend_typeNameFormat(self, v4, v5) == 2)
  {
    v8 = objc_msgSend_type(self, v6, v7);
    isEqualToData = objc_msgSend_isEqualToData_(v8, v9, v3);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isNfcConfigurationRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, &unk_264507628, 17);
  v5 = objc_msgSend_dataUsingEncoding_(@"nfc", v4, 4);
  if (objc_msgSend_typeNameFormat(self, v6, v7) == 4)
  {
    v10 = objc_msgSend_type(self, v8, v9);
    if (objc_msgSend_isEqualToData_(v10, v11, v3))
    {
      v14 = objc_msgSend_identifier(self, v12, v13);
      isEqualToData = objc_msgSend_isEqualToData_(v14, v15, v5);
    }

    else
    {
      isEqualToData = 0;
    }
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isHandoverRequestRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "Hr", 2);
  if (objc_msgSend_typeNameFormat(self, v4, v5) == 1)
  {
    v8 = objc_msgSend_type(self, v6, v7);
    isEqualToData = objc_msgSend_isEqualToData_(v8, v9, v3);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isHandoverSelectRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "Hs", 2);
  if (objc_msgSend_typeNameFormat(self, v4, v5) == 1)
  {
    v8 = objc_msgSend_type(self, v6, v7);
    isEqualToData = objc_msgSend_isEqualToData_(v8, v9, v3);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isCollisionResolutionRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "cr", 2);
  if (objc_msgSend_typeNameFormat(self, v4, v5) == 1)
  {
    v8 = objc_msgSend_type(self, v6, v7);
    isEqualToData = objc_msgSend_isEqualToData_(v8, v9, v3);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isAlternativeCarrierRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "ac", 2);
  if (objc_msgSend_typeNameFormat(self, v4, v5) == 1)
  {
    v8 = objc_msgSend_type(self, v6, v7);
    isEqualToData = objc_msgSend_isEqualToData_(v8, v9, v3);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isHandoverSelectErrorRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "err", 3);
  if (objc_msgSend_typeNameFormat(self, v4, v5) == 1)
  {
    v8 = objc_msgSend_type(self, v6, v7);
    isEqualToData = objc_msgSend_isEqualToData_(v8, v9, v3);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isISO18013DeviceEngagementRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "mdoc", 4);
  v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v4, "iso.org:18013:deviceengagement", 30);
  if (objc_msgSend_typeNameFormat(self, v6, v7) == 4)
  {
    v10 = objc_msgSend_type(self, v8, v9);
    if (objc_msgSend_isEqualToData_(v10, v11, v5))
    {
      v14 = objc_msgSend_identifier(self, v12, v13);
      isEqualToData = objc_msgSend_isEqualToData_(v14, v15, v3);
    }

    else
    {
      isEqualToData = 0;
    }
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (BOOL)isISO18013ReaderEngagementRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "mdocreader", 10);
  v5 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v4, "iso.org:18013:readerengagement", 30);
  if (objc_msgSend_typeNameFormat(self, v6, v7) == 4)
  {
    v10 = objc_msgSend_type(self, v8, v9);
    if (objc_msgSend_isEqualToData_(v10, v11, v5))
    {
      v14 = objc_msgSend_identifier(self, v12, v13);
      isEqualToData = objc_msgSend_isEqualToData_(v14, v15, v3);
    }

    else
    {
      isEqualToData = 0;
    }
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

- (unint64_t)getCarrierPowerStateFromAlternativeCarrierRecord
{
  if (!objc_msgSend_isAlternativeCarrierRecord(self, a2, v2))
  {
    return 3;
  }

  v6 = objc_msgSend_payload(self, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8);

  if (!v9)
  {
    return 3;
  }

  v12 = objc_msgSend_payload(self, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_bytes(v13, v14, v15);

  return *v16 & 3;
}

- (id)getCarrierDataReferenceFromAlternativeCarrierRecord
{
  if (!objc_msgSend_isAlternativeCarrierRecord(self, a2, v2))
  {
    goto LABEL_5;
  }

  v6 = objc_msgSend_payload(self, v4, v5);
  v9 = objc_msgSend_length(v6, v7, v8);

  if (v9 < 2)
  {
    goto LABEL_5;
  }

  v12 = objc_msgSend_payload(self, v10, v11);
  v13 = v12;
  v16 = objc_msgSend_bytes(v13, v14, v15);

  v17 = *(v16 + 1);
  v20 = objc_msgSend_payload(self, v18, v19);
  v23 = objc_msgSend_length(v20, v21, v22);

  if (v23 < v17)
  {
    sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSNDEFRecord(ConnectionHandover) getCarrierDataReferenceFromAlternativeCarrierRecord]", 92, self, @"Invalid length", v25, v26, v29);
LABEL_5:
    v27 = 0;
    goto LABEL_6;
  }

  v27 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, v16 + 2, v17);
LABEL_6:

  return v27;
}

- (id)getAuxiliaryDataReferencesFromAlternativeCarrierRecord
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  if (!objc_msgSend_isAlternativeCarrierRecord(self, v5, v6))
  {
    v28 = 0;
    goto LABEL_9;
  }

  v9 = objc_msgSend_payload(self, v7, v8);
  v12 = objc_msgSend_length(v9, v10, v11);

  v15 = objc_msgSend_payload(self, v13, v14);
  v16 = v15;
  v19 = objc_msgSend_bytes(v16, v17, v18);

  if (v12 == 1)
  {
    v27 = 111;
  }

  else
  {
    v25 = *(v19 + 1);
    v24 = v19 + 1;
    v23 = v25;
    v26 = v25 + 1;
    if (v12 - 1 != v26)
    {
      v30 = *(v24 + v26);
      v31 = v12 - v23 - 3;
      if (*(v24 + v26))
      {
        v32 = v12 - v23 == 3;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v33 = (v24 + v26 + 1);
        v34 = 1;
        do
        {
          v37 = *v33;
          v35 = (v33 + 1);
          v36 = v37;
          v38 = v31 - 1 >= v37;
          v31 = v31 - 1 - v37;
          if (v38)
          {
            v39 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v20, v35, v36);
            objc_msgSend_addObject_(v4, v40, v39);
          }

          else
          {
            sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSNDEFRecord(ConnectionHandover) getAuxiliaryDataReferencesFromAlternativeCarrierRecord]", 137, self, @"Invalid length", v21, v22, v41);
          }

          if (v34 >= v30)
          {
            break;
          }

          v33 = (v35 + v36);
          ++v34;
        }

        while (v31);
      }

      goto LABEL_8;
    }

    v27 = 120;
  }

  sub_2645010D8(OS_LOG_TYPE_ERROR, 0, "[STSNDEFRecord(ConnectionHandover) getAuxiliaryDataReferencesFromAlternativeCarrierRecord]", v27, self, @"Invalid length", v21, v22, v41);
LABEL_8:
  v28 = v4;
LABEL_9:

  return v28;
}

@end