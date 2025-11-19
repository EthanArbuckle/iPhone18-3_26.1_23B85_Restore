@interface STSCHWiFiAwareAlternativeCarrier
+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (STSCHWiFiAwareAlternativeCarrier)initWithCoder:(id)a3;
- (STSCHWiFiAwareAlternativeCarrier)initWithNdefRecordBundle:(id)a3;
- (STSCHWiFiAwareAlternativeCarrier)initWithSecurityInfo:(id)a3 discoveryChannelInfo:(id)a4 powerState:(unint64_t)a5 auxiliaryRecords:(id)a6;
- (id)_createCarrierConfigurationRecord;
- (id)description;
- (void)_initWithCarrierConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCHWiFiAwareAlternativeCarrier

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STSCHWiFiAwareAlternativeCarrier;
  v4 = a3;
  [(STSCHAlternativeCarrier *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_securityInfo forKey:{@"securityInfos", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_discoveryChannelInfo forKey:@"discoveryChannelInfo"];
}

- (STSCHWiFiAwareAlternativeCarrier)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSCHWiFiAwareAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"securityInfos"];
    securityInfo = v5->_securityInfo;
    v5->_securityInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveryChannelInfo"];
    discoveryChannelInfo = v5->_discoveryChannelInfo;
    v5->_discoveryChannelInfo = v10;
  }

  return v5;
}

- (void)_initWithCarrierConfiguration:(id)a3
{
  v42 = a3;
  if (([v42 isWiFiAwareConfigurationRecord] & 1) == 0)
  {
    sub_10002483C(OS_LOG_TYPE_INFO, 0, "[STSCHWiFiAwareAlternativeCarrier _initWithCarrierConfiguration:]", 313, self, @"Not WiFi Aware Carrier Configuration record", v4, v5, v37);
    goto LABEL_47;
  }

  v6 = [v42 payload];
  v7 = [v6 bytes];

  v8 = [v42 payload];
  v9 = [v8 length];

  v10 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  if (v9 < 1)
  {
    v30 = 0;
    v14 = 0;
    v29 = 0;
LABEL_38:
    v31 = 0;
    goto LABEL_39;
  }

  v14 = 0;
  v40 = -1;
  v15 = &AnalyticsSendEventLazy_ptr;
  v38 = -1;
  v39 = -1;
  do
  {
    v16 = *v7;
    v17 = v7[1];
    v18 = v7 + 2;
    switch(v17)
    {
      case 3:
        if (v16 >= 2)
        {
          v27 = [v15[245] dataWithBytes:v7 + 2 length:(v16 - 1)];

          v14 = v27;
        }

        break;
      case 2:
        v25 = objc_alloc_init(STSDiffieHellmanParameter);
        [(STSDiffieHellmanParameter *)v25 setPublicKeyGroup:__rev16(*(v7 + 1))];
        if (v16 >= 4)
        {
          v26 = [v15[245] dataWithBytes:v7 + 4 length:(v16 - 3)];
          [(STSDiffieHellmanParameter *)v25 setPublicKey:v26];
        }

        [v13 addObject:v25];

        break;
      case 1:
        if (v16 >= 2)
        {
          v41 = v14;
          v19 = v13;
          v20 = v15;
          v21 = (v16 - 1);
          v22 = v18;
          do
          {
            v23 = *v22++;
            v24 = [NSNumber numberWithUnsignedChar:v23];
            [v10 addObject:v24];

            --v21;
          }

          while (v21);
          v15 = v20;
          v13 = v19;
          v14 = v41;
        }

        break;
      default:
        if (v17 == 4 && v16 == 2)
        {
          v40 = *v18;
        }

        else if (v17 == 5 && v16 == 3)
        {
          v38 = v7[2];
          v39 = v7[3];
        }

        else if (v17 != 221)
        {
          sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[STSCHWiFiAwareAlternativeCarrier _initWithCarrierConfiguration:]", 359, self, @"Unknown tag:%d", v11, v12, v7[1]);
        }

        break;
    }

    v7 = &v18[v16 - 1];
    v9 = v9 - 2 - (v16 - 1);
  }

  while (v9 > 0);
  if (v40 < 0)
  {
    v29 = 0;
  }

  else
  {
    v29 = [NSNumber numberWithInt:?];
  }

  if (v38 < 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = [NSNumber numberWithInt:?];
  }

  if (v39 < 0)
  {
    goto LABEL_38;
  }

  v31 = [NSNumber numberWithInt:?];
LABEL_39:
  if (v29 || v30 || v31)
  {
    v33 = [[STSCHWiFiAwareDiscoveryChannelInfo alloc] initWithSupportedBands:v29 operatingClass:v30 channelNumber:v31];
    discoveryChannelInfo = self->_discoveryChannelInfo;
    self->_discoveryChannelInfo = v33;

    if (v14)
    {
      goto LABEL_43;
    }

LABEL_45:
    v32 = 0;
    goto LABEL_46;
  }

  if (!v14)
  {
    goto LABEL_45;
  }

LABEL_43:
  v32 = [[NSString alloc] initWithData:v14 encoding:4];
LABEL_46:
  v35 = [[STSCHWiFiAwareSecurityInfo alloc] initWithCipherSuites:v10 dhInfo:v13 passphrase:v32];
  securityInfo = self->_securityInfo;
  self->_securityInfo = v35;

LABEL_47:
}

- (STSCHWiFiAwareAlternativeCarrier)initWithSecurityInfo:(id)a3 discoveryChannelInfo:(id)a4 powerState:(unint64_t)a5 auxiliaryRecords:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = STSCHWiFiAwareAlternativeCarrier;
  v14 = [(STSCHWiFiAwareAlternativeCarrier *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_securityInfo, a3);
    objc_storeStrong(&v15->_discoveryChannelInfo, a4);
    [(STSCHAlternativeCarrier *)v15 setType:1];
    if (a5 >= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = a5;
    }

    [(STSCHAlternativeCarrier *)v15 setPowerState:v16];
    [(STSCHAlternativeCarrier *)v15 setAuxiliaryRecords:v13];
    v17 = [(STSCHWiFiAwareAlternativeCarrier *)v15 _createCarrierConfigurationRecord];
    [(STSCHAlternativeCarrier *)v15 setCarrierRecord:v17];
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STSCHWiFiAwareAlternativeCarrier;
  if ([(STSCHAlternativeCarrier *)&v12 isEqual:v4])
  {
    v5 = v4;
    securityInfo = self->_securityInfo;
    v7 = v5[5];
    if (securityInfo)
    {
      if (!v7 || ![(STSCHWiFiAwareSecurityInfo *)securityInfo isEqual:?])
      {
        goto LABEL_13;
      }
    }

    else if (v7)
    {
      goto LABEL_13;
    }

    discoveryChannelInfo = self->_discoveryChannelInfo;
    v10 = v5[6];
    if (discoveryChannelInfo)
    {
      if (v10 && [(STSCHWiFiAwareDiscoveryChannelInfo *)discoveryChannelInfo isEqual:?])
      {
        goto LABEL_11;
      }
    }

    else if (!v10)
    {
LABEL_11:
      v8 = 1;
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)description
{
  v3 = [(STSCHAlternativeCarrier *)self powerState];
  v4 = [(STSCHWiFiAwareSecurityInfo *)self->_securityInfo description];
  v5 = [(STSCHWiFiAwareDiscoveryChannelInfo *)self->_discoveryChannelInfo description];
  v6 = [(STSCHAlternativeCarrier *)self auxiliaryRecords];
  v7 = [v6 description];
  v8 = [NSString stringWithFormat:@"{ type=wifi, powerState=%lu, securityInfo={%@}, discoveryInfo={%@}, aux=%@ }", v3, v4, v5, v7];

  return v8;
}

- (STSCHWiFiAwareAlternativeCarrier)initWithNdefRecordBundle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STSCHWiFiAwareAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v8 initWithNdefRecordBundle:v4];
  if (v5)
  {
    v6 = [v4 configurationRecord];
    [(STSCHWiFiAwareAlternativeCarrier *)v5 _initWithCarrierConfiguration:v6];
  }

  return v5;
}

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)a3
{
  v4 = a3;
  v5 = [v4 configurationRecord];
  v6 = [v5 isWiFiAwareConfigurationRecord];

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
  v3 = [NSData dataWithBytes:"application/vnd.wfa.naniso.org:18013:nfc" length:23];
  v4 = [@"W" dataUsingEncoding:4];
  v5 = +[NSMutableData data];
  v6 = [(STSCHWiFiAwareSecurityInfo *)self->_securityInfo asData];
  [v5 appendData:v6];

  v7 = [(STSCHWiFiAwareAlternativeCarrier *)self discoveryChannelInfo];
  v8 = [v7 asData];
  [v5 appendData:v8];

  v9 = [[STSNDEFRecord alloc] initWithFormat:2 type:v3 identifier:v4 payload:v5];

  return v9;
}

@end