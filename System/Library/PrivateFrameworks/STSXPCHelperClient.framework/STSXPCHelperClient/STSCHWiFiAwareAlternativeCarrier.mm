@interface STSCHWiFiAwareAlternativeCarrier
+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)bundle;
- (BOOL)isEqual:(id)equal;
- (STSCHWiFiAwareAlternativeCarrier)initWithCoder:(id)coder;
- (STSCHWiFiAwareAlternativeCarrier)initWithNdefRecordBundle:(id)bundle;
- (STSCHWiFiAwareAlternativeCarrier)initWithSecurityInfo:(id)info discoveryChannelInfo:(id)channelInfo powerState:(unint64_t)state auxiliaryRecords:(id)records;
- (id)_createCarrierConfigurationRecord;
- (id)description;
- (void)_initWithCarrierConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCHWiFiAwareAlternativeCarrier

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = STSCHWiFiAwareAlternativeCarrier;
  coderCopy = coder;
  [(STSCHAlternativeCarrier *)&v7 encodeWithCoder:coderCopy];
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, self->_securityInfo, @"securityInfos", v7.receiver, v7.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_discoveryChannelInfo, @"discoveryChannelInfo");
}

- (STSCHWiFiAwareAlternativeCarrier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = STSCHWiFiAwareAlternativeCarrier;
  v5 = [(STSCHAlternativeCarrier *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v11, v10, @"securityInfos");
    securityInfo = v5->_securityInfo;
    v5->_securityInfo = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"discoveryChannelInfo");
    discoveryChannelInfo = v5->_discoveryChannelInfo;
    v5->_discoveryChannelInfo = v16;
  }

  return v5;
}

- (void)_initWithCarrierConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((objc_msgSend_isWiFiAwareConfigurationRecord(configurationCopy, v4, v5) & 1) == 0)
  {
    sub_2645010D8(OS_LOG_TYPE_INFO, 0, "[STSCHWiFiAwareAlternativeCarrier _initWithCarrierConfiguration:]", 313, self, @"Not WiFi Aware Carrier Configuration record", v8, v9, v63);
    goto LABEL_47;
  }

  v10 = objc_msgSend_payload(configurationCopy, v6, v7);
  v11 = v10;
  v14 = objc_msgSend_bytes(v11, v12, v13);

  v17 = objc_msgSend_payload(configurationCopy, v15, v16);
  v20 = objc_msgSend_length(v17, v18, v19);

  v23 = objc_msgSend_array(MEMORY[0x277CBEB18], v21, v22);
  v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25);
  if (v20 < 1)
  {
    v50 = 0;
    v30 = 0;
    v49 = 0;
LABEL_38:
    v51 = 0;
    goto LABEL_39;
  }

  v30 = 0;
  v66 = -1;
  v31 = 0x277CBE000uLL;
  v64 = -1;
  v65 = -1;
  do
  {
    v32 = *v14;
    v33 = v14[1];
    v34 = v14 + 2;
    switch(v33)
    {
      case 3:
        if (v32 >= 2)
        {
          v47 = objc_msgSend_dataWithBytes_length_(*(v31 + 2704), v26, (v14 + 2), (v32 - 1));

          v30 = v47;
        }

        break;
      case 2:
        v42 = objc_alloc_init(STSDiffieHellmanParameter);
        objc_msgSend_setPublicKeyGroup_(v42, v43, __rev16(*(v14 + 1)));
        if (v32 >= 4)
        {
          v45 = objc_msgSend_dataWithBytes_length_(*(v31 + 2704), v44, (v14 + 4), (v32 - 3));
          objc_msgSend_setPublicKey_(v42, v46, v45);
        }

        objc_msgSend_addObject_(v29, v44, v42);

        break;
      case 1:
        if (v32 >= 2)
        {
          v67 = v30;
          v35 = v29;
          v36 = v31;
          v37 = (v32 - 1);
          v38 = v34;
          do
          {
            v39 = *v38++;
            v40 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v26, v39);
            objc_msgSend_addObject_(v23, v41, v40);

            --v37;
          }

          while (v37);
          v31 = v36;
          v29 = v35;
          v30 = v67;
        }

        break;
      default:
        if (v33 == 4 && v32 == 2)
        {
          v66 = *v34;
        }

        else if (v33 == 5 && v32 == 3)
        {
          v64 = v14[2];
          v65 = v14[3];
        }

        else if (v33 != 221)
        {
          sub_2645010D8(OS_LOG_TYPE_DEFAULT, 0, "[STSCHWiFiAwareAlternativeCarrier _initWithCarrierConfiguration:]", 359, self, @"Unknown tag:%d", v27, v28, v14[1]);
        }

        break;
    }

    v14 = &v34[v32 - 1];
    v20 = v20 - 2 - (v32 - 1);
  }

  while (v20 > 0);
  if ((v66 & 0x80000000) != 0)
  {
    v49 = 0;
  }

  else
  {
    v49 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v66);
  }

  if ((v64 & 0x80000000) != 0)
  {
    v50 = 0;
  }

  else
  {
    v50 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v64);
  }

  if ((v65 & 0x80000000) != 0)
  {
    goto LABEL_38;
  }

  v51 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v65);
LABEL_39:
  if (v49 || v50 || v51)
  {
    v55 = [STSCHWiFiAwareDiscoveryChannelInfo alloc];
    v57 = objc_msgSend_initWithSupportedBands_operatingClass_channelNumber_(v55, v56, v49, v50, v51);
    discoveryChannelInfo = self->_discoveryChannelInfo;
    self->_discoveryChannelInfo = v57;

    if (v30)
    {
      goto LABEL_43;
    }

LABEL_45:
    v54 = 0;
    goto LABEL_46;
  }

  if (!v30)
  {
    goto LABEL_45;
  }

LABEL_43:
  v52 = objc_alloc(MEMORY[0x277CCACA8]);
  v54 = objc_msgSend_initWithData_encoding_(v52, v53, v30, 4);
LABEL_46:
  v59 = [STSCHWiFiAwareSecurityInfo alloc];
  v61 = objc_msgSend_initWithCipherSuites_dhInfo_passphrase_(v59, v60, v23, v29, v54);
  securityInfo = self->_securityInfo;
  self->_securityInfo = v61;

LABEL_47:
}

- (STSCHWiFiAwareAlternativeCarrier)initWithSecurityInfo:(id)info discoveryChannelInfo:(id)channelInfo powerState:(unint64_t)state auxiliaryRecords:(id)records
{
  infoCopy = info;
  channelInfoCopy = channelInfo;
  recordsCopy = records;
  v24.receiver = self;
  v24.super_class = STSCHWiFiAwareAlternativeCarrier;
  v14 = [(STSCHWiFiAwareAlternativeCarrier *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_securityInfo, info);
    objc_storeStrong(&v15->_discoveryChannelInfo, channelInfo);
    objc_msgSend_setType_(v15, v16, 1);
    if (state >= 3)
    {
      objc_msgSend_setPowerState_(v15, v17, 3);
    }

    else
    {
      objc_msgSend_setPowerState_(v15, v17, state);
    }

    objc_msgSend_setAuxiliaryRecords_(v15, v18, recordsCopy);
    v21 = objc_msgSend__createCarrierConfigurationRecord(v15, v19, v20);
    objc_msgSend_setCarrierRecord_(v15, v22, v21);
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = STSCHWiFiAwareAlternativeCarrier;
  if ([(STSCHAlternativeCarrier *)&v13 isEqual:equalCopy])
  {
    v6 = equalCopy;
    securityInfo = self->_securityInfo;
    v8 = v6[5];
    if (securityInfo)
    {
      if (!v8 || (objc_msgSend_isEqual_(securityInfo, v5, v8) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v8)
    {
      goto LABEL_13;
    }

    discoveryChannelInfo = self->_discoveryChannelInfo;
    v11 = v6[6];
    if (discoveryChannelInfo)
    {
      if (v11 && (objc_msgSend_isEqual_(discoveryChannelInfo, v5, v11) & 1) != 0)
      {
        goto LABEL_11;
      }
    }

    else if (!v11)
    {
LABEL_11:
      v9 = 1;
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_powerState(self, a2, v2);
  v8 = objc_msgSend_description(self->_securityInfo, v6, v7);
  v11 = objc_msgSend_description(self->_discoveryChannelInfo, v9, v10);
  v14 = objc_msgSend_auxiliaryRecords(self, v12, v13);
  v17 = objc_msgSend_description(v14, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @"{ type=wifi,powerState=%lu,securityInfo={%@},discoveryInfo={%@},aux=%@ }", v5, v8, v11, v17);

  return v19;
}

- (STSCHWiFiAwareAlternativeCarrier)initWithNdefRecordBundle:(id)bundle
{
  bundleCopy = bundle;
  v11.receiver = self;
  v11.super_class = STSCHWiFiAwareAlternativeCarrier;
  v7 = [(STSCHAlternativeCarrier *)&v11 initWithNdefRecordBundle:bundleCopy];
  if (v7)
  {
    v8 = objc_msgSend_configurationRecord(bundleCopy, v5, v6);
    objc_msgSend__initWithCarrierConfiguration_(v7, v9, v8);
  }

  return v7;
}

+ (id)connectionHandoverAlternativeCarrierWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v7 = objc_msgSend_configurationRecord(bundleCopy, v5, v6);
  isWiFiAwareConfigurationRecord = objc_msgSend_isWiFiAwareConfigurationRecord(v7, v8, v9);

  if (isWiFiAwareConfigurationRecord)
  {
    v11 = [self alloc];
    v13 = objc_msgSend_initWithNdefRecordBundle_(v11, v12, bundleCopy);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_createCarrierConfigurationRecord
{
  v3 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, "application/vnd.wfa.nanapplication/vnd.bluetooth.le.oob", 23);
  v5 = objc_msgSend_dataUsingEncoding_(@"W", v4, 4);
  v8 = objc_msgSend_data(MEMORY[0x277CBEB28], v6, v7);
  v11 = objc_msgSend_asData(self->_securityInfo, v9, v10);
  objc_msgSend_appendData_(v8, v12, v11);

  v15 = objc_msgSend_discoveryChannelInfo(self, v13, v14);
  v18 = objc_msgSend_asData(v15, v16, v17);
  objc_msgSend_appendData_(v8, v19, v18);

  v20 = [STSNDEFRecord alloc];
  v22 = objc_msgSend_initWithFormat_type_identifier_payload_(v20, v21, 2, v3, v5, v8);

  return v22;
}

@end