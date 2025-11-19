@interface STSCHWiFiAwareDiscoveryChannelInfo
- (BOOL)isEqual:(id)a3;
- (STSCHWiFiAwareDiscoveryChannelInfo)initWithCoder:(id)a3;
- (STSCHWiFiAwareDiscoveryChannelInfo)initWithSupportedBands:(id)a3 operatingClass:(id)a4 channelNumber:(id)a5;
- (id)asData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCHWiFiAwareDiscoveryChannelInfo

- (void)encodeWithCoder:(id)a3
{
  supportedBands = self->_supportedBands;
  v8 = a3;
  objc_msgSend_encodeObject_forKey_(v8, v5, supportedBands, @"supportedBands");
  objc_msgSend_encodeObject_forKey_(v8, v6, self->_operatingClass, @"operatingClass");
  objc_msgSend_encodeObject_forKey_(v8, v7, self->_channelNumber, @"channelNumber");
}

- (STSCHWiFiAwareDiscoveryChannelInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = STSCHWiFiAwareDiscoveryChannelInfo;
  v6 = [(STSCHWiFiAwareDiscoveryChannelInfo *)&v16 init];
  if (v6)
  {
    v7 = objc_msgSend_decodeObjectForKey_(v4, v5, @"supportedBands");
    supportedBands = v6->_supportedBands;
    v6->_supportedBands = v7;

    v10 = objc_msgSend_decodeObjectForKey_(v4, v9, @"operatingClass");
    operatingClass = v6->_operatingClass;
    v6->_operatingClass = v10;

    v13 = objc_msgSend_decodeObjectForKey_(v4, v12, @"channelNumber");
    channelNumber = v6->_channelNumber;
    v6->_channelNumber = v13;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v9 = v6;
        if (self->_supportedBands)
        {
          v10 = objc_msgSend_supportedBands(v6, v7, v8);

          supportedBands = self->_supportedBands;
          if (v10)
          {
            v12 = objc_msgSend_supportedBands(v9, v7, v8);
            isEqual = objc_msgSend_isEqual_(supportedBands, v13, v12);

            if ((isEqual & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_12;
          }

          if (supportedBands)
          {
            goto LABEL_24;
          }
        }

        v18 = objc_msgSend_supportedBands(v9, v7, v8);

        if (v18)
        {
          goto LABEL_24;
        }

LABEL_12:
        if (self->_operatingClass)
        {
          v19 = objc_msgSend_operatingClass(v9, v15, v16);

          operatingClass = self->_operatingClass;
          if (v19)
          {
            v21 = objc_msgSend_operatingClass(v9, v15, v16);
            v23 = objc_msgSend_isEqual_(operatingClass, v22, v21);

            if ((v23 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_18;
          }

          if (operatingClass)
          {
            goto LABEL_24;
          }
        }

        v26 = objc_msgSend_operatingClass(v9, v15, v16);

        if (v26)
        {
          goto LABEL_24;
        }

LABEL_18:
        if (self->_channelNumber)
        {
          v27 = objc_msgSend_channelNumber(v9, v24, v25);

          channelNumber = self->_channelNumber;
          if (v27)
          {
            v29 = objc_msgSend_channelNumber(v9, v24, v25);
            v31 = objc_msgSend_isEqual_(channelNumber, v30, v29);

            if (v31)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }

          if (channelNumber)
          {
            goto LABEL_24;
          }
        }

        v32 = objc_msgSend_channelNumber(v9, v24, v25);

        if (!v32)
        {
LABEL_27:
          v17 = 1;
          goto LABEL_25;
        }

LABEL_24:
        v17 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v17 = 0;
  }

LABEL_26:

  return v17;
}

- (STSCHWiFiAwareDiscoveryChannelInfo)initWithSupportedBands:(id)a3 operatingClass:(id)a4 channelNumber:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = STSCHWiFiAwareDiscoveryChannelInfo;
  v12 = [(STSCHWiFiAwareDiscoveryChannelInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_supportedBands, a3);
    objc_storeStrong(&v13->_operatingClass, a4);
    objc_storeStrong(&v13->_channelNumber, a5);
  }

  return v13;
}

- (id)asData
{
  v6 = objc_msgSend_data(MEMORY[0x277CBEB28], a2, v2);
  supportedBands = self->_supportedBands;
  if (supportedBands)
  {
    v17 = 1026;
    v18 = objc_msgSend_intValue(supportedBands, v4, v5);
    objc_msgSend_appendBytes_length_(v6, v8, &v17, 3);
  }

  operatingClass = self->_operatingClass;
  if (operatingClass && self->_channelNumber)
  {
    v14 = 1283;
    v15 = objc_msgSend_intValue(operatingClass, v4, v5);
    v16 = objc_msgSend_intValue(self->_channelNumber, v10, v11);
    objc_msgSend_appendBytes_length_(v6, v12, &v14, 4);
  }

  return v6;
}

@end