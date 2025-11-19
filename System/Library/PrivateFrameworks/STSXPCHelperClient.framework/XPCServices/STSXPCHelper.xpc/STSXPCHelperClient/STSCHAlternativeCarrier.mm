@interface STSCHAlternativeCarrier
- (BOOL)isEqual:(id)a3;
- (STSCHAlternativeCarrier)initWithCoder:(id)a3;
- (STSCHAlternativeCarrier)initWithNdefRecordBundle:(id)a3;
- (id)createAlternativeCarrierRecord;
- (id)createNdefRecordBundle;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCHAlternativeCarrier

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_powerState forKey:@"powerState"];
  [v5 encodeObject:self->_carrierRecord forKey:@"carrierRecord"];
  [v5 encodeObject:self->_auxiliaryRecords forKey:@"auxiliaryRecords"];
}

- (STSCHAlternativeCarrier)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSCHAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v13 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_powerState = [v4 decodeIntegerForKey:@"powerState"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrierRecord"];
    carrierRecord = v5->_carrierRecord;
    v5->_carrierRecord = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"auxiliaryRecords"];
    auxiliaryRecords = v5->_auxiliaryRecords;
    v5->_auxiliaryRecords = v10;
  }

  return v5;
}

- (STSCHAlternativeCarrier)initWithNdefRecordBundle:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = STSCHAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v19 init];
  if (v5)
  {
    v6 = [v4 configurationRecord];
    v7 = [v6 isWiFiAwareConfigurationRecord];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v4 configurationRecord];
      v10 = [v9 isBluetoothLEConfigurationRecord];

      if (v10)
      {
        v8 = 2;
      }

      else
      {
        v11 = [v4 configurationRecord];
        v12 = [v11 isNfcConfigurationRecord];

        if (!v12)
        {
          v5->_type = 0;
          goto LABEL_9;
        }

        v8 = 3;
      }
    }

    v5->_type = v8;
LABEL_9:
    v13 = [v4 alternativeRecord];
    v5->_powerState = [v13 getCarrierPowerStateFromAlternativeCarrierRecord];

    v14 = [v4 configurationRecord];
    carrierRecord = v5->_carrierRecord;
    v5->_carrierRecord = v14;

    v16 = [v4 auxiliaryRecords];
    auxiliaryRecords = v5->_auxiliaryRecords;
    v5->_auxiliaryRecords = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  v3 = [(STSNDEFRecord *)self->_carrierRecord identifier];
  v6 = v3;
  if (!v3)
  {
    v7 = @"Missing carrier data reference";
    v8 = 99;
    goto LABEL_5;
  }

  if ([v3 length] >= 0x100)
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
        v19 = [v18 identifier];
        v29 = [v19 length];

        [v11 appendBytes:&v29 length:1];
        v20 = [v18 identifier];
        [v11 appendData:v20];

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
  v4 = [(STSCHAlternativeCarrier *)self createAlternativeCarrierRecord];
  v5 = [(STSCHAlternativeCarrier *)self _createCarrierConfigurationRecord];
  v6 = [(STSCHNdefRecordBundle *)v3 initWithAlternativeRecord:v4 configurationRecord:v5 auxiliaryRecords:self->_auxiliaryRecords errorRecord:0];

  return v6;
}

@end