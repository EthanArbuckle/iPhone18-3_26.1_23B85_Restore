@interface WFPrivateAddressConfig
- (BOOL)isEqual:(id)equal;
- (WFPrivateAddressConfig)initWithPrivateAddressConfigDictionary:(id)dictionary ssid:(id)ssid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFPrivateAddressConfig

- (WFPrivateAddressConfig)initWithPrivateAddressConfigDictionary:(id)dictionary ssid:(id)ssid
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  ssidCopy = ssid;
  if (!dictionaryCopy || ![dictionaryCopy count])
  {
    goto LABEL_35;
  }

  if (!ssidCopy)
  {
    [WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:];
    goto LABEL_35;
  }

  v28.receiver = self;
  v28.super_class = WFPrivateAddressConfig;
  v8 = [(WFPrivateAddressConfig *)&v28 init];
  self = v8;
  if (!v8)
  {
LABEL_35:

    self = 0;
    goto LABEL_36;
  }

  objc_storeStrong(&v8->_ssid, ssid);
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v9 && os_log_type_enabled(v9, v10))
  {
    ssid = self->_ssid;
    *buf = 136315650;
    v30 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
    v31 = 2112;
    *v32 = ssid;
    *&v32[8] = 2112;
    *&v32[10] = dictionaryCopy;
    _os_log_impl(&dword_273ECD000, v9, v10, "%s: %@ private address config: %@", buf, 0x20u);
  }

  v12 = *MEMORY[0x277D298E0];
  v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D298E0]];

  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:v12];
    self->_carrierBundleBased = [v14 BOOLValue];
  }

  v15 = *MEMORY[0x277D298C0];
  v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D298C0]];

  if (!v16)
  {
    v20 = WFLogForCategory(0);
    v21 = OSLogForWFLogLevel(4uLL);
    v19 = 0;
    if (WFCurrentLogLevel() >= 4 && v20)
    {
      if (os_log_type_enabled(v20, v21))
      {
        v22 = self->_ssid;
        *buf = 136315394;
        v30 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
        v31 = 2112;
        *v32 = v22;
        _os_log_impl(&dword_273ECD000, v20, v21, "%s: missing disabled reason key for %@, defaulting to none", buf, 0x16u);
      }

      v19 = 0;
    }

    goto LABEL_33;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:v15];
  intValue = [v17 intValue];

  v19 = 0;
  if (intValue > 2)
  {
    if (intValue == 3)
    {
      v19 = 1;
      goto LABEL_28;
    }

    if (intValue == 4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (intValue != 1)
    {
      if (intValue != 2)
      {
        goto LABEL_28;
      }

LABEL_23:
      v19 = 2;
      goto LABEL_28;
    }

    if (self->_carrierBundleBased)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }
  }

LABEL_28:
  v20 = WFLogForCategory(0);
  v23 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v20)
  {
    v20 = v20;
    if (os_log_type_enabled(v20, v23))
    {
      v24 = *(&off_279EBE430 + v19);
      v25 = self->_ssid;
      *buf = 136315906;
      v30 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
      v31 = 1024;
      *v32 = intValue;
      *&v32[4] = 2112;
      *&v32[6] = v24;
      *&v32[14] = 2112;
      *&v32[16] = v25;
      _os_log_impl(&dword_273ECD000, v20, v23, "%s: disable reason: %d (%@) for %@", buf, 0x26u);
    }
  }

LABEL_33:

  self->_disabledReason = v19;
LABEL_36:

  v26 = *MEMORY[0x277D85DE8];
  return self;
}

- (unint64_t)hash
{
  ssid = [(WFPrivateAddressConfig *)self ssid];
  v4 = [ssid hash];
  disabledReason = [(WFPrivateAddressConfig *)self disabledReason];

  return disabledReason ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ssid = [v5 ssid];
    ssid2 = [(WFPrivateAddressConfig *)self ssid];
    if ([ssid isEqualToString:ssid2])
    {
      disabledReason = [v5 disabledReason];
      v9 = disabledReason == [(WFPrivateAddressConfig *)self disabledReason];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(WFPrivateAddressConfig *)self ssid];
  disabledReason = [(WFPrivateAddressConfig *)self disabledReason];
  if (disabledReason > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_279EBE430 + disabledReason);
  }

  v9 = [v3 stringWithFormat:@"<%@ : %p %@ disabled reason: %@>", v5, self, ssid, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    [v5 setDisabledReason:{-[WFPrivateAddressConfig disabledReason](self, "disabledReason")}];
    [v5 setCarrierBundleBased:{-[WFPrivateAddressConfig isCarrierBundleBased](self, "isCarrierBundleBased")}];
    ssid = [(WFPrivateAddressConfig *)self ssid];
    v7 = [ssid copyWithZone:zone];
    [v5 setSsid:v7];
  }

  return v5;
}

- (void)initWithPrivateAddressConfigDictionary:ssid:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFPrivateAddressConfig initWithPrivateAddressConfigDictionary:ssid:]";
    _os_log_impl(&dword_273ECD000, v0, v1, "%s: ssid is null", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end