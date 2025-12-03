@interface STSCHNfcAlternativeCarrier
+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)bundle;
- (STSCHNfcAlternativeCarrier)initWithCoder:(id)coder;
- (STSCHNfcAlternativeCarrier)initWithMaxLcField:(int64_t)field maxLeField:(int64_t)leField auxiliaryRecords:(id)records;
- (STSCHNfcAlternativeCarrier)initWithNdefRecordBundle:(id)bundle;
- (id)_createCarrierConfigurationRecord;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCHNfcAlternativeCarrier

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STSCHNfcAlternativeCarrier;
  coderCopy = coder;
  [(STSCHAlternativeCarrier *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_maxLc forKey:{@"maxLc", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_maxLe forKey:@"maxLe"];
}

- (STSCHNfcAlternativeCarrier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = STSCHNfcAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_maxLc = [coderCopy decodeIntegerForKey:@"maxLc"];
    v5->_maxLe = [coderCopy decodeIntegerForKey:@"maxLe"];
  }

  return v5;
}

- (STSCHNfcAlternativeCarrier)initWithMaxLcField:(int64_t)field maxLeField:(int64_t)leField auxiliaryRecords:(id)records
{
  recordsCopy = records;
  v15.receiver = self;
  v15.super_class = STSCHNfcAlternativeCarrier;
  v9 = [(STSCHNfcAlternativeCarrier *)&v15 init];
  v10 = v9;
  if (v9)
  {
    leFieldCopy = 4096;
    if (field >= 1)
    {
      fieldCopy = field;
    }

    else
    {
      fieldCopy = 4096;
    }

    v9->_maxLc = fieldCopy;
    if (leField >= 1)
    {
      leFieldCopy = leField;
    }

    v9->_maxLe = leFieldCopy;
    [(STSCHAlternativeCarrier *)v9 setType:3];
    [(STSCHAlternativeCarrier *)v10 setPowerState:1];
    [(STSCHAlternativeCarrier *)v10 setAuxiliaryRecords:recordsCopy];
    _createCarrierConfigurationRecord = [(STSCHNfcAlternativeCarrier *)v10 _createCarrierConfigurationRecord];
    [(STSCHAlternativeCarrier *)v10 setCarrierRecord:_createCarrierConfigurationRecord];
  }

  return v10;
}

- (STSCHNfcAlternativeCarrier)initWithNdefRecordBundle:(id)bundle
{
  bundleCopy = bundle;
  v32.receiver = self;
  v32.super_class = STSCHNfcAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v32 initWithNdefRecordBundle:bundleCopy];
  if (!v5)
  {
    goto LABEL_19;
  }

  configurationRecord = [bundleCopy configurationRecord];
  payload = [configurationRecord payload];
  bytes = [payload bytes];

  configurationRecord2 = [bundleCopy configurationRecord];
  payload2 = [configurationRecord2 payload];
  v11 = [payload2 length];

  v5->_maxLc = -1;
  v5->_maxLe = -1;
  if (v11 <= 0)
  {
    v28 = @"Invalid payload length";
    v29 = 67;
    goto LABEL_23;
  }

  if (*bytes != 1)
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

  v15 = bytes + 1;
  v16 = bytes + 1;
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

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)bundle
{
  bundleCopy = bundle;
  configurationRecord = [bundleCopy configurationRecord];
  isNfcConfigurationRecord = [configurationRecord isNfcConfigurationRecord];

  if (isNfcConfigurationRecord)
  {
    v7 = [[self alloc] initWithNdefRecordBundle:bundleCopy];
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
  maxLc = [(STSCHNfcAlternativeCarrier *)self maxLc];
  v13 = 515;
  v14 = [(STSCHNfcAlternativeCarrier *)self maxLe]>> 8;
  maxLe = [(STSCHNfcAlternativeCarrier *)self maxLe];
  v5 = [STSNDEFRecord alloc];
  v6 = [NSData dataWithBytes:&v9 length:9];
  v7 = [(STSNDEFRecord *)v5 initWithFormat:4 type:v3 identifier:v4 payload:v6];

  return v7;
}

- (id)description
{
  powerState = [(STSCHAlternativeCarrier *)self powerState];
  maxLc = [(STSCHNfcAlternativeCarrier *)self maxLc];
  maxLe = [(STSCHNfcAlternativeCarrier *)self maxLe];
  auxiliaryRecords = [(STSCHAlternativeCarrier *)self auxiliaryRecords];
  v7 = [NSString stringWithFormat:@"{ type=nfc, powerState=%lu, maxLc=%ld, maxLe=%ld, aux=%@ }", powerState, maxLc, maxLe, auxiliaryRecords];

  return v7;
}

@end