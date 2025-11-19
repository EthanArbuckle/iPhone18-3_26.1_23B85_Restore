@interface STSNDEFRecord
+ (BOOL)_parseNDEFData:(id)a3 outRecords:(id)a4;
+ (id)ndefRecordsWithData:(id)a3;
- (BOOL)isAlternativeCarrierRecord;
- (BOOL)isBluetoothLEConfigurationRecord;
- (BOOL)isCollisionResolutionRecord;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHandoverRequestRecord;
- (BOOL)isHandoverSelectErrorRecord;
- (BOOL)isHandoverSelectRecord;
- (BOOL)isISO18013DeviceEngagementRecord;
- (BOOL)isISO18013ReaderEngagementRecord;
- (BOOL)isNfcConfigurationRecord;
- (BOOL)isWiFiAwareConfigurationRecord;
- (STSNDEFRecord)initWithCoder:(id)a3;
- (id)description;
- (id)getAuxiliaryDataReferencesFromAlternativeCarrierRecord;
- (id)getCarrierDataReferenceFromAlternativeCarrierRecord;
- (unint64_t)getCarrierPowerStateFromAlternativeCarrierRecord;
- (void)_setIdLengthPresent:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setChunked:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setMessageBegin:(BOOL)a3;
- (void)setMessageEnd:(BOOL)a3;
- (void)setPayload:(id)a3;
- (void)setShortRecord:(BOOL)a3;
@end

@implementation STSNDEFRecord

- (void)setMessageBegin:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = v3 & 0x80 | self->_firstOctet & 0x7F;
}

- (void)setMessageEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xBF | v3;
}

- (void)setChunked:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xDF | v3;
}

- (void)setShortRecord:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xEF | v3;
}

- (void)_setIdLengthPresent:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_firstOctet = self->_firstOctet & 0xF7 | v3;
}

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  if (v6)
  {
    [(STSNDEFRecord *)self _setIdLengthPresent:1];
    v4 = v6;
  }

  else
  {
    [(STSNDEFRecord *)self _setIdLengthPresent:0];
  }

  identifier = self->_identifier;
  self->_identifier = v6;
}

- (void)setPayload:(id)a3
{
  objc_storeStrong(&self->_payload, a3);
  v5 = a3;
  v6 = [(NSData *)self->_payload length];

  [(STSNDEFRecord *)self setShortRecord:v6 < 0x100];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v13 = 0;
    if (((v6->_firstOctet ^ self->_firstOctet) & 7) == 0)
    {
      v7 = [(NSData *)self->_identifier length];
      if (v7 == [(NSData *)v6->_identifier length])
      {
        identifier = self->_identifier;
        if (!identifier || [(NSData *)identifier isEqualToData:v6->_identifier])
        {
          v9 = [(NSData *)self->_type length];
          if (v9 == [(NSData *)v6->_type length])
          {
            type = self->_type;
            if (!type || [(NSData *)type isEqualToData:v6->_type])
            {
              v11 = [(NSData *)self->_payload length];
              if (v11 == [(NSData *)v6->_payload length])
              {
                payload = self->_payload;
                if (!payload || [(NSData *)payload isEqualToData:v6->_payload])
                {
                  v13 = 1;
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
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  if (self->_type)
  {
    v3 = [[NSString alloc] initWithData:self->_type encoding:4];
    if (!v3)
    {
      v3 = [NSString stringWithFormat:@"%@", self->_type];
    }
  }

  else
  {
    v3 = 0;
  }

  if (self->_identifier)
  {
    v4 = [[NSString alloc] initWithData:self->_identifier encoding:4];
    if (!v4)
    {
      v4 = [NSString stringWithFormat:@"%@", self->_identifier];
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = [(STSNDEFRecord *)self messageBegin];
  v5 = [(STSNDEFRecord *)self messageEnd];
  v6 = [(STSNDEFRecord *)self chunked];
  v7 = [(STSNDEFRecord *)self shortRecord];
  v8 = [(STSNDEFRecord *)self identifier];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"{MB=%d,ME=%d,CF=%d,SR=%d,IL=%ld,TNF=%d,TypeLength=%ld,Type=%@,ID=%@,PayloadLength=%ld,Payload=%@}", v11, v5, v6, v7, [v8 length], -[STSNDEFRecord typeNameFormat](self, "typeNameFormat"), -[NSData length](self->_type, "length"), v3, v4, -[NSData length](self->_payload, "length"), self->_payload);

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:self->_firstOctet forKey:@"firstOctet"];
  type = self->_type;
  if (type)
  {
    [v8 encodeObject:type forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v8 encodeObject:identifier forKey:@"identifier"];
  }

  payload = self->_payload;
  v7 = v8;
  if (payload)
  {
    [v8 encodeObject:payload forKey:@"payload"];
    v7 = v8;
  }
}

- (STSNDEFRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSNDEFRecord;
  v5 = [(STSNDEFRecord *)&v13 init];
  if (v5)
  {
    v5->_firstOctet = [v4 decodeIntegerForKey:@"firstOctet"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v10;
  }

  return v5;
}

+ (id)ndefRecordsWithData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([STSNDEFRecord _parseNDEFData:v3 outRecords:v4])
  {
    v8 = [v4 copy];
  }

  else
  {
    sub_100024938(OS_LOG_TYPE_INFO, 0, "+[STSNDEFRecord ndefRecordsWithData:]", 290, @"Invalid NDEF data: %@", v5, v6, v7, v3);
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_parseNDEFData:(id)a3 outRecords:(id)a4
{
  v5 = a4;
  v6 = [NSInputStream inputStreamWithData:a3];
  [v6 open];
  if ([v6 hasBytesAvailable])
  {
    while (1)
    {
      v29 = 0;
      v28 = 0;
      v27 = 0;
      if ([v6 read:&v29 + 1 maxLength:1] != 1)
      {
        break;
      }

      v7 = HIBYTE(v29);
      if ([v6 read:&v27 maxLength:1] != 1)
      {
        break;
      }

      if ((v7 & 0x10) != 0)
      {
        v26 = 0;
        if ([v6 read:&v26 maxLength:1] != 1)
        {
          goto LABEL_30;
        }

        v8 = v26;
      }

      else
      {
        if ([v6 read:&v28 maxLength:4] != 4)
        {
          break;
        }

        v8 = bswap32(v28);
      }

      v28 = v8;
      if ((v7 & 8) != 0 && [v6 read:&v29 maxLength:1] != 1)
      {
        break;
      }

      if (v27)
      {
        v9 = [NSMutableData dataWithLength:?];
        v10 = [v9 mutableBytes];
        v11 = [v6 read:v10 maxLength:v27];
        if (v11 != v27)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = 0;
      }

      if (v29)
      {
        v12 = [NSMutableData dataWithLength:?];
        v13 = [v12 mutableBytes];
        v14 = [v6 read:v13 maxLength:v29];
        if (v14 != v29)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v12 = 0;
      }

      if (v28)
      {
        v15 = [NSMutableData dataWithLength:?];
        v16 = [v15 mutableBytes];
        v17 = [v6 read:v16 maxLength:v28];
        if ((v17 & 0x8000000000000000) != 0 || v17 != v28)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = 0;
      }

      v18 = objc_opt_new();
      *(v18 + 8) = HIBYTE(v29);
      v19 = *(v18 + 24);
      *(v18 + 24) = v9;
      v20 = v9;

      v21 = *(v18 + 16);
      *(v18 + 16) = v12;
      v22 = v12;

      v23 = *(v18 + 32);
      *(v18 + 32) = v15;

      [v5 addObject:v18];
      if (([v6 hasBytesAvailable] & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v9 = 0;
LABEL_27:
    v12 = 0;
LABEL_28:
    v15 = 0;
LABEL_29:

LABEL_30:
    v24 = 0;
  }

  else
  {
LABEL_25:
    [v6 close];
    v24 = 1;
  }

  return v24;
}

- (BOOL)isWiFiAwareConfigurationRecord
{
  v3 = [NSData dataWithBytes:"application/vnd.wfa.nanapplication/vnd.bluetooth.le.oob" length:23];
  if ([(STSNDEFRecord *)self typeNameFormat]== 2)
  {
    v4 = [(STSNDEFRecord *)self type];
    v5 = [v4 isEqualToData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isBluetoothLEConfigurationRecord
{
  v3 = [NSData dataWithBytes:"application/vnd.bluetooth.le.oob" length:32];
  if ([(STSNDEFRecord *)self typeNameFormat]== 2)
  {
    v4 = [(STSNDEFRecord *)self type];
    v5 = [v4 isEqualToData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isNfcConfigurationRecord
{
  v3 = [NSData dataWithBytes:"iso.org:18013:nfc" length:17];
  v4 = [@"nfc" dataUsingEncoding:4];
  if ([(STSNDEFRecord *)self typeNameFormat]== 4)
  {
    v5 = [(STSNDEFRecord *)self type];
    if ([v5 isEqualToData:v3])
    {
      v6 = [(STSNDEFRecord *)self identifier];
      v7 = [v6 isEqualToData:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isHandoverRequestRecord
{
  v3 = [NSData dataWithBytes:"Hr" length:2];
  if ([(STSNDEFRecord *)self typeNameFormat]== 1)
  {
    v4 = [(STSNDEFRecord *)self type];
    v5 = [v4 isEqualToData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isHandoverSelectRecord
{
  v3 = [NSData dataWithBytes:"Hs" length:2];
  if ([(STSNDEFRecord *)self typeNameFormat]== 1)
  {
    v4 = [(STSNDEFRecord *)self type];
    v5 = [v4 isEqualToData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isCollisionResolutionRecord
{
  v3 = [NSData dataWithBytes:"cr" length:2];
  if ([(STSNDEFRecord *)self typeNameFormat]== 1)
  {
    v4 = [(STSNDEFRecord *)self type];
    v5 = [v4 isEqualToData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isAlternativeCarrierRecord
{
  v3 = [NSData dataWithBytes:"ac" length:2];
  if ([(STSNDEFRecord *)self typeNameFormat]== 1)
  {
    v4 = [(STSNDEFRecord *)self type];
    v5 = [v4 isEqualToData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isHandoverSelectErrorRecord
{
  v3 = [NSData dataWithBytes:"err" length:3];
  if ([(STSNDEFRecord *)self typeNameFormat]== 1)
  {
    v4 = [(STSNDEFRecord *)self type];
    v5 = [v4 isEqualToData:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isISO18013DeviceEngagementRecord
{
  v3 = [NSData dataWithBytes:"mdoc" length:4];
  v4 = [NSData dataWithBytes:"iso.org:18013:deviceengagement" length:30];
  if ([(STSNDEFRecord *)self typeNameFormat]== 4)
  {
    v5 = [(STSNDEFRecord *)self type];
    if ([v5 isEqualToData:v4])
    {
      v6 = [(STSNDEFRecord *)self identifier];
      v7 = [v6 isEqualToData:v3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isISO18013ReaderEngagementRecord
{
  v3 = [NSData dataWithBytes:"mdocreader" length:10];
  v4 = [NSData dataWithBytes:"iso.org:18013:readerengagement" length:30];
  if ([(STSNDEFRecord *)self typeNameFormat]== 4)
  {
    v5 = [(STSNDEFRecord *)self type];
    if ([v5 isEqualToData:v4])
    {
      v6 = [(STSNDEFRecord *)self identifier];
      v7 = [v6 isEqualToData:v3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)getCarrierPowerStateFromAlternativeCarrierRecord
{
  if (![(STSNDEFRecord *)self isAlternativeCarrierRecord])
  {
    return 3;
  }

  v3 = [(STSNDEFRecord *)self payload];
  v4 = [v3 length];

  if (!v4)
  {
    return 3;
  }

  v5 = [(STSNDEFRecord *)self payload];
  v6 = [v5 bytes];

  return *v6 & 3;
}

- (id)getCarrierDataReferenceFromAlternativeCarrierRecord
{
  if (![(STSNDEFRecord *)self isAlternativeCarrierRecord])
  {
    goto LABEL_5;
  }

  v3 = [(STSNDEFRecord *)self payload];
  v4 = [v3 length];

  if (v4 < 2)
  {
    goto LABEL_5;
  }

  v5 = [(STSNDEFRecord *)self payload];
  v6 = [v5 bytes];

  v7 = v6[1];
  v8 = [(STSNDEFRecord *)self payload];
  v9 = [v8 length];

  if (v9 < v7)
  {
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSNDEFRecord(ConnectionHandover) getCarrierDataReferenceFromAlternativeCarrierRecord]", 92, self, @"Invalid length", v10, v11, v14);
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v12 = [NSData dataWithBytes:v6 + 2 length:v7];
LABEL_6:

  return v12;
}

- (id)getAuxiliaryDataReferencesFromAlternativeCarrierRecord
{
  v3 = +[NSMutableArray array];
  if (![(STSNDEFRecord *)self isAlternativeCarrierRecord])
  {
    v15 = 0;
    goto LABEL_9;
  }

  v4 = [(STSNDEFRecord *)self payload];
  v5 = [v4 length];

  v6 = [(STSNDEFRecord *)self payload];
  v7 = [v6 bytes];

  if (v5 == 1)
  {
    v14 = 111;
  }

  else
  {
    v12 = v7[1];
    v11 = (v7 + 1);
    v10 = v12;
    v13 = v12 + 1;
    if (v5 - 1 != v13)
    {
      v17 = v11[v13];
      v18 = &v5[-v10 - 3];
      if (v11[v13])
      {
        v19 = &v5[-v10] == 3;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v20 = &v11[v13 + 1];
        v21 = 1;
        do
        {
          v24 = *v20;
          v22 = v20 + 1;
          v23 = v24;
          v25 = v18 - 1 >= v24;
          v18 = v18 - 1 - v24;
          if (v25)
          {
            v26 = [NSData dataWithBytes:v22 length:v23];
            [v3 addObject:v26];
          }

          else
          {
            sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSNDEFRecord(ConnectionHandover) getAuxiliaryDataReferencesFromAlternativeCarrierRecord]", 137, self, @"Invalid length", v8, v9, v27);
          }

          if (v21 >= v17)
          {
            break;
          }

          v20 = &v22[v23];
          ++v21;
        }

        while (v18);
      }

      goto LABEL_8;
    }

    v14 = 120;
  }

  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSNDEFRecord(ConnectionHandover) getAuxiliaryDataReferencesFromAlternativeCarrierRecord]", v14, self, @"Invalid length", v8, v9, v27);
LABEL_8:
  v15 = v3;
LABEL_9:

  return v15;
}

@end