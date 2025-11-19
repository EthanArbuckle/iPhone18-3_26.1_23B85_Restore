@interface WFPrivateAddressConfig
- (BOOL)isEqual:(id)a3;
- (WFPrivateAddressConfig)initWithPrivateAddressConfigDictionary:(id)a3 ssid:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFPrivateAddressConfig

- (WFPrivateAddressConfig)initWithPrivateAddressConfigDictionary:(id)a3 ssid:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 || ![v6 count])
  {
    goto LABEL_35;
  }

  if (!v7)
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

  objc_storeStrong(&v8->_ssid, a4);
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
    *&v32[10] = v6;
    _os_log_impl(&dword_273ECD000, v9, v10, "%s: %@ private address config: %@", buf, 0x20u);
  }

  v12 = *MEMORY[0x277D298E0];
  v13 = [v6 objectForKeyedSubscript:*MEMORY[0x277D298E0]];

  if (v13)
  {
    v14 = [v6 objectForKeyedSubscript:v12];
    self->_carrierBundleBased = [v14 BOOLValue];
  }

  v15 = *MEMORY[0x277D298C0];
  v16 = [v6 objectForKeyedSubscript:*MEMORY[0x277D298C0]];

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

  v17 = [v6 objectForKeyedSubscript:v15];
  v18 = [v17 intValue];

  v19 = 0;
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v19 = 1;
      goto LABEL_28;
    }

    if (v18 == 4)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v18 != 1)
    {
      if (v18 != 2)
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
      *v32 = v18;
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
  v3 = [(WFPrivateAddressConfig *)self ssid];
  v4 = [v3 hash];
  v5 = [(WFPrivateAddressConfig *)self disabledReason];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 ssid];
    v7 = [(WFPrivateAddressConfig *)self ssid];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 disabledReason];
      v9 = v8 == [(WFPrivateAddressConfig *)self disabledReason];
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
  v6 = [(WFPrivateAddressConfig *)self ssid];
  v7 = [(WFPrivateAddressConfig *)self disabledReason];
  if (v7 > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_279EBE430 + v7);
  }

  v9 = [v3 stringWithFormat:@"<%@ : %p %@ disabled reason: %@>", v5, self, v6, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    [v5 setDisabledReason:{-[WFPrivateAddressConfig disabledReason](self, "disabledReason")}];
    [v5 setCarrierBundleBased:{-[WFPrivateAddressConfig isCarrierBundleBased](self, "isCarrierBundleBased")}];
    v6 = [(WFPrivateAddressConfig *)self ssid];
    v7 = [v6 copyWithZone:a3];
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