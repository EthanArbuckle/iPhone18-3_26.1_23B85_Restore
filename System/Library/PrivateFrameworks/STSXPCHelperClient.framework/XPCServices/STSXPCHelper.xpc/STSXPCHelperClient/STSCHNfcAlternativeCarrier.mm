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
  v5.receiver = self;
  v5.super_class = STSCHNfcAlternativeCarrier;
  v4 = a3;
  [(STSCHAlternativeCarrier *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_maxLc forKey:{@"maxLc", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_maxLe forKey:@"maxLe"];
}

- (STSCHNfcAlternativeCarrier)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STSCHNfcAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_maxLc = [v4 decodeIntegerForKey:@"maxLc"];
    v5->_maxLe = [v4 decodeIntegerForKey:@"maxLe"];
  }

  return v5;
}

- (STSCHNfcAlternativeCarrier)initWithMaxLcField:(int64_t)a3 maxLeField:(int64_t)a4 auxiliaryRecords:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = STSCHNfcAlternativeCarrier;
  v9 = [(STSCHNfcAlternativeCarrier *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v11 = 4096;
    if (a3 >= 1)
    {
      v12 = a3;
    }

    else
    {
      v12 = 4096;
    }

    v9->_maxLc = v12;
    if (a4 >= 1)
    {
      v11 = a4;
    }

    v9->_maxLe = v11;
    [(STSCHAlternativeCarrier *)v9 setType:3];
    [(STSCHAlternativeCarrier *)v10 setPowerState:1];
    [(STSCHAlternativeCarrier *)v10 setAuxiliaryRecords:v8];
    v13 = [(STSCHNfcAlternativeCarrier *)v10 _createCarrierConfigurationRecord];
    [(STSCHAlternativeCarrier *)v10 setCarrierRecord:v13];
  }

  return v10;
}

- (STSCHNfcAlternativeCarrier)initWithNdefRecordBundle:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = STSCHNfcAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v32 initWithNdefRecordBundle:v4];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = [v4 configurationRecord];
  v7 = [v6 payload];
  v8 = [v7 bytes];

  v9 = [v4 configurationRecord];
  v10 = [v9 payload];
  v11 = [v10 length];

  v5->_maxLc = -1;
  v5->_maxLe = -1;
  if (v11 <= 0)
  {
    v28 = @"Invalid payload length";
    v29 = 67;
    goto LABEL_23;
  }

  if (*v8 != 1)
  {
    v28 = @"Invalid version";
    v29 = 72;
    goto LABEL_23;
  }

  v14 = v11 - 1;
  if (v11 == 1)
  {
LABEL_19:
    v27 = v5;
    goto LABEL_24;
  }

  v15 = v8 + 1;
  v16 = v8 + 1;
  while (1)
  {
    v18 = *v16;
    v16 += 2;
    v17 = v18;
    v19 = (v14 - 2);
    v20 = &v14[-v18 - 2];
    if ((v14 - 2) < v18)
    {
      break;
    }

    v21 = v15[1];
    if (v21 == 2)
    {
      v5->_maxLe = 0;
      if (v17)
      {
        v25 = 0;
        v23 = v17 - 1;
        do
        {
          v5->_maxLe = v25 << 8;
          v26 = *v16++;
          v5->_maxLe = v26 | (v25 << 8);
          LODWORD(v17) = v17 - 1;
          v25 = v26 | (v25 << 8);
        }

        while (v17);
        goto LABEL_16;
      }
    }

    else
    {
      if (v21 != 1)
      {
        sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSCHNfcAlternativeCarrier initWithNdefRecordBundle:]", 101, v5, @"Unrecognized tag: 0x%X", v12, v13, v21);
        v16 += v17;
        v19 = v20;
        goto LABEL_18;
      }

      v5->_maxLc = 0;
      if (v17)
      {
        v22 = 0;
        v23 = v17 - 1;
        do
        {
          v5->_maxLc = v22 << 8;
          v24 = *v16++;
          v5->_maxLc = v24 | (v22 << 8);
          LODWORD(v17) = v17 - 1;
          v22 = v24 | (v22 << 8);
        }

        while (v17);
LABEL_16:
        v19 = &v14[-v23 - 3];
      }
    }

LABEL_18:
    v14 = v19;
    v15 = v16;
    if (v19 <= 0)
    {
      goto LABEL_19;
    }
  }

  v28 = @"Invalid tag length";
  v29 = 86;
LABEL_23:
  sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHNfcAlternativeCarrier initWithNdefRecordBundle:]", v29, v5, v28, v12, v13, v31);
  v27 = 0;
LABEL_24:

  return v27;
}

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 configurationRecord];
  v6 = [v5 isNfcConfigurationRecord];

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

- (id)_createCarrierConfigurationRecord
{
  v3 = [NSData dataWithBytes:"iso.org:18013:nfc" length:17];
  v4 = [@"nfc" dataUsingEncoding:4];
  v9 = 769;
  v10 = 1;
  v11 = [(STSCHNfcAlternativeCarrier *)self maxLc]>> 8;
  v12 = [(STSCHNfcAlternativeCarrier *)self maxLc];
  v13 = 515;
  v14 = [(STSCHNfcAlternativeCarrier *)self maxLe]>> 8;
  v15 = [(STSCHNfcAlternativeCarrier *)self maxLe];
  v5 = [STSNDEFRecord alloc];
  v6 = [NSData dataWithBytes:&v9 length:9];
  v7 = [(STSNDEFRecord *)v5 initWithFormat:4 type:v3 identifier:v4 payload:v6];

  return v7;
}

- (id)description
{
  v3 = [(STSCHAlternativeCarrier *)self powerState];
  v4 = [(STSCHNfcAlternativeCarrier *)self maxLc];
  v5 = [(STSCHNfcAlternativeCarrier *)self maxLe];
  v6 = [(STSCHAlternativeCarrier *)self auxiliaryRecords];
  v7 = [NSString stringWithFormat:@"{ type=nfc, powerState=%lu, maxLc=%ld, maxLe=%ld, aux=%@ }", v3, v4, v5, v6];

  return v7;
}

@end