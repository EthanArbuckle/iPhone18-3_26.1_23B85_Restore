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
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_powerState forKey:@"powerState"];
  [coderCopy encodeObject:self->_carrierRecord forKey:@"carrierRecord"];
  [coderCopy encodeObject:self->_auxiliaryRecords forKey:@"auxiliaryRecords"];
}

- (STSCHAlternativeCarrier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = STSCHAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_powerState = [coderCopy decodeIntegerForKey:@"powerState"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrierRecord"];
    carrierRecord = v5->_carrierRecord;
    v5->_carrierRecord = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"auxiliaryRecords"];
    auxiliaryRecords = v5->_auxiliaryRecords;
    v5->_auxiliaryRecords = v10;
  }

  return v5;
}

- (STSCHAlternativeCarrier)initWithNdefRecordBundle:(id)bundle
{
  bundleCopy = bundle;
  v19.receiver = self;
  v19.super_class = STSCHAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v19 init];
  if (v5)
  {
    configurationRecord = [bundleCopy configurationRecord];
    isWiFiAwareConfigurationRecord = [configurationRecord isWiFiAwareConfigurationRecord];

    if (isWiFiAwareConfigurationRecord)
    {
      v8 = 1;
    }

    else
    {
      configurationRecord2 = [bundleCopy configurationRecord];
      isBluetoothLEConfigurationRecord = [configurationRecord2 isBluetoothLEConfigurationRecord];

      if (isBluetoothLEConfigurationRecord)
      {
        v8 = 2;
      }

      else
      {
        configurationRecord3 = [bundleCopy configurationRecord];
        isNfcConfigurationRecord = [configurationRecord3 isNfcConfigurationRecord];

        if (!isNfcConfigurationRecord)
        {
          v5->_type = 0;
          goto LABEL_9;
        }

        v8 = 3;
      }
    }

    v5->_type = v8;
LABEL_9:
    alternativeRecord = [bundleCopy alternativeRecord];
    v5->_powerState = [alternativeRecord getCarrierPowerStateFromAlternativeCarrierRecord];

    configurationRecord4 = [bundleCopy configurationRecord];
    carrierRecord = v5->_carrierRecord;
    v5->_carrierRecord = configurationRecord4;

    auxiliaryRecords = [bundleCopy auxiliaryRecords];
    auxiliaryRecords = v5->_auxiliaryRecords;
    v5->_auxiliaryRecords = auxiliaryRecords;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v8 = 0;
    if ([(STSNDEFRecord *)self->_carrierRecord isEqual:v6[3]])
    {
      v7 = [(NSArray *)self->_auxiliaryRecords count];
      if (v7 == [v6[4] count] && (!-[NSArray count](self->_auxiliaryRecords, "count") || -[NSArray isEqualToArray:](self->_auxiliaryRecords, "isEqualToArray:", v6[4])))
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createAlternativeCarrierRecord
{
  identifier = [(STSNDEFRecord *)self->_carrierRecord identifier];
  v6 = identifier;
  if (!identifier)
  {
    v7 = @"Missing carrier data reference";
    v8 = 99;
    goto LABEL_5;
  }

  if ([identifier length] >= 0x100)
  {
    v7 = @"Invalid carrier reference length";
    v8 = 102;
LABEL_5:
    sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[STSCHAlternativeCarrier createAlternativeCarrierRecord]", v8, self, v7, v4, v5, v22);
    v9 = 0;
    goto LABEL_14;
  }

  v23 = [NSData dataWithBytes:"ac" length:2];
  v29 = self->_powerState & 3;
  v10 = [NSMutableData dataWithBytes:&v29 length:1];
  v29 = [v6 length];
  [v10 appendBytes:&v29 length:1];
  [v10 appendData:v6];
  v28 = 0;
  v11 = +[NSMutableData data];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_auxiliaryRecords;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v25;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        identifier2 = [v18 identifier];
        v29 = [identifier2 length];

        [v11 appendBytes:&v29 length:1];
        identifier3 = [v18 identifier];
        [v11 appendData:identifier3];

        v28 = ++v15;
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  [v10 appendBytes:&v28 length:1];
  [v10 appendData:v11];
  v9 = [[STSNDEFRecord alloc] initWithFormat:1 type:v23 identifier:0 payload:v10];

LABEL_14:

  return v9;
}

- (id)createNdefRecordBundle
{
  v3 = [STSCHNdefRecordBundle alloc];
  createAlternativeCarrierRecord = [(STSCHAlternativeCarrier *)self createAlternativeCarrierRecord];
  _createCarrierConfigurationRecord = [(STSCHAlternativeCarrier *)self _createCarrierConfigurationRecord];
  v6 = [(STSCHNdefRecordBundle *)v3 initWithAlternativeRecord:createAlternativeCarrierRecord configurationRecord:_createCarrierConfigurationRecord auxiliaryRecords:self->_auxiliaryRecords errorRecord:0];

  return v6;
}

@end