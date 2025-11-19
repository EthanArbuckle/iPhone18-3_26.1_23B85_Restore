@interface SUDownloadMetadata
- (BOOL)isEnabledForNetworkType:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDownloadPolicy:(id)a3;
- (SUDownloadMetadata)init;
- (SUDownloadMetadata)initWithCoder:(id)a3;
- (id)_stringForBool:(BOOL)a3;
- (id)activeDownloadPolicy:(id)a3;
- (id)availableDownloadPolicyIfDifferentFromActive:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)applyDownloadPolicy:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUDownloadMetadata

- (SUDownloadMetadata)init
{
  v5.receiver = self;
  v5.super_class = SUDownloadMetadata;
  v2 = [(SUDownloadMetadata *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SUDownloadMetadata *)v2 setActiveDownloadPolicyType:3];
    v3->_enforceWifiOnlyOverride = 0;
    v3->_enabledForCellularRoaming = 0;
  }

  return v3;
}

- (SUDownloadMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloadMetadata *)self init];
  if (v5)
  {
    -[SUDownloadMetadata setAutoDownload:](v5, "setAutoDownload:", [v4 decodeBoolForKey:@"isAutoDownload"]);
    -[SUDownloadMetadata setDownloadOnly:](v5, "setDownloadOnly:", [v4 decodeBoolForKey:@"isDownloadOnly"]);
    -[SUDownloadMetadata setActiveDownloadPolicyType:](v5, "setActiveDownloadPolicyType:", [v4 decodeIntForKey:@"activeDownloadPolicy"]);
    -[SUDownloadMetadata setEnabledFor2G:](v5, "setEnabledFor2G:", [v4 decodeBoolForKey:@"enabledFor2G"]);
    -[SUDownloadMetadata setEnabledFor3G:](v5, "setEnabledFor3G:", [v4 decodeBoolForKey:@"enabledFor3G"]);
    -[SUDownloadMetadata setEnabledFor4G:](v5, "setEnabledFor4G:", [v4 decodeBoolForKey:@"enabledFor4G"]);
    -[SUDownloadMetadata setEnabledForWifi:](v5, "setEnabledForWifi:", [v4 decodeBoolForKey:@"enabledForWifi"]);
    -[SUDownloadMetadata setEnabledOnBatteryPower:](v5, "setEnabledOnBatteryPower:", [v4 decodeBoolForKey:@"enabledOnBatteryPower"]);
    -[SUDownloadMetadata setEnforceWifiOnlyOverride:](v5, "setEnforceWifiOnlyOverride:", [v4 decodeBoolForKey:@"enforceWifiOnlyOverride"]);
    -[SUDownloadMetadata setDownloadFeeAgreementStatus:](v5, "setDownloadFeeAgreementStatus:", [v4 decodeIntForKey:@"downloadFeeAgreementStatus"]);
    -[SUDownloadMetadata setTermsAndConditionsAgreementStatus:](v5, "setTermsAndConditionsAgreementStatus:", [v4 decodeIntForKey:@"termsAndConditionsAgreementStatus"]);
    -[SUDownloadMetadata setEnabledForCellularRoaming:](v5, "setEnabledForCellularRoaming:", [v4 decodeBoolForKey:@"enabledForCellularRoaming"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  autoDownload = self->_autoDownload;
  v5 = a3;
  [v5 encodeBool:autoDownload forKey:@"isAutoDownload"];
  [v5 encodeBool:self->_downloadOnly forKey:@"isDownloadOnly"];
  [v5 encodeInt:self->_activeDownloadPolicyType forKey:@"activeDownloadPolicy"];
  [v5 encodeBool:self->_enabledFor2G forKey:@"enabledFor2G"];
  [v5 encodeBool:self->_enabledFor3G forKey:@"enabledFor3G"];
  [v5 encodeBool:self->_enabledFor4G forKey:@"enabledFor4G"];
  [v5 encodeBool:self->_enabledForWifi forKey:@"enabledForWifi"];
  [v5 encodeBool:self->_enabledOnBatteryPower forKey:@"enabledOnBatteryPower"];
  [v5 encodeBool:self->_enforceWifiOnlyOverride forKey:@"enforceWifiOnlyOverride"];
  [v5 encodeInt:self->_downloadFeeAgreementStatus forKey:@"downloadFeeAgreementStatus"];
  [v5 encodeInt:self->_termsAndConditionsAgreementStatus forKey:@"termsAndConditionsAgreementStatus"];
  [v5 encodeBool:self->_enabledForCellularRoaming forKey:@"enabledForCellularRoaming"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAutoDownload:self->_autoDownload];
  [v4 setDownloadOnly:self->_downloadOnly];
  [v4 setActiveDownloadPolicyType:self->_activeDownloadPolicyType];
  [v4 setEnabledFor2G:self->_enabledFor2G];
  [v4 setEnabledFor3G:self->_enabledFor3G];
  [v4 setEnabledFor4G:self->_enabledFor4G];
  [v4 setEnabledForWifi:self->_enabledForWifi];
  [v4 setEnabledOnBatteryPower:self->_enabledOnBatteryPower];
  [v4 setEnforceWifiOnlyOverride:self->_enforceWifiOnlyOverride];
  [v4 setDownloadFeeAgreementStatus:self->_downloadFeeAgreementStatus];
  [v4 setTermsAndConditionsAgreementStatus:self->_termsAndConditionsAgreementStatus];
  [v4 setEnabledForCellularRoaming:self->_enabledForCellularRoaming];
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setAutoDownload:self->_autoDownload];
  [v4 setDownloadOnly:self->_downloadOnly];
  [v4 setActiveDownloadPolicyType:self->_activeDownloadPolicyType];
  [v4 setEnabledFor2G:self->_enabledFor2G];
  [v4 setEnabledFor3G:self->_enabledFor3G];
  [v4 setEnabledFor4G:self->_enabledFor4G];
  [v4 setEnabledForWifi:self->_enabledForWifi];
  [v4 setEnabledOnBatteryPower:self->_enabledOnBatteryPower];
  [v4 setEnforceWifiOnlyOverride:self->_enforceWifiOnlyOverride];
  [v4 setDownloadFeeAgreementStatus:self->_downloadFeeAgreementStatus];
  [v4 setTermsAndConditionsAgreementStatus:self->_termsAndConditionsAgreementStatus];
  [v4 setEnabledForCellularRoaming:self->_enabledForCellularRoaming];
  return v4;
}

- (void)applyDownloadPolicy:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = ([v4 isDownloadFreeForCellular] & 1) != 0 || -[SUDownloadMetadata downloadFeeAgreementStatus](self, "downloadFeeAgreementStatus") == 1;
    v6 = [(SUDownloadMetadata *)self enforceWifiOnlyOverride];
    [(SUDownloadMetadata *)self setActiveDownloadPolicyType:[SUDownloadPolicyFactory downloadPolicyTypeForClass:v9]];
    -[SUDownloadMetadata setEnabledOnBatteryPower:](self, "setEnabledOnBatteryPower:", [v9 isPowerRequired] ^ 1);
    if (v6 || !v5)
    {
      [(SUDownloadMetadata *)self setEnabledFor2G:0];
      [(SUDownloadMetadata *)self setEnabledFor3G:0];
      v7 = 0;
    }

    else
    {
      -[SUDownloadMetadata setEnabledFor2G:](self, "setEnabledFor2G:", [v9 isDownloadAllowableForCellular2G]);
      -[SUDownloadMetadata setEnabledFor3G:](self, "setEnabledFor3G:", [v9 isDownloadAllowableForCellular]);
      v7 = [v9 isDownloadAllowableForCellular];
    }

    [(SUDownloadMetadata *)self setEnabledFor4G:v7];
    if ([(SUDownloadMetadata *)self isEnabledFor2G]|| [(SUDownloadMetadata *)self isEnabledFor3G]|| [(SUDownloadMetadata *)self isEnabledFor4G])
    {
      v8 = [v9 isDownloadAllowableForCellularRoaming];
    }

    else
    {
      v8 = 0;
    }

    [(SUDownloadMetadata *)self setEnabledForCellularRoaming:v8];
    -[SUDownloadMetadata setEnabledForWifi:](self, "setEnabledForWifi:", [v9 isDownloadAllowableForWiFi]);
    v4 = v9;
  }
}

- (id)activeDownloadPolicy:(id)a3
{
  if (a3)
  {
    v4 = [SUDownloadPolicyFactory downloadPolicyForType:self->_activeDownloadPolicyType forDescriptor:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)availableDownloadPolicyIfDifferentFromActive:(id)a3
{
  v4 = a3;
  v5 = [(SUDownloadMetadata *)self activeDownloadPolicy:v4];
  v6 = [SUDownloadPolicyFactory userDownloadPolicyForDescriptor:v4 existingPolicy:v5];

  if (v6 && ([v5 isSamePolicy:v6] & 1) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)matchesDownloadPolicy:(id)a3
{
  v4 = a3;
  if (self->_activeDownloadPolicyType == +[SUDownloadPolicyFactory downloadPolicyTypeForClass:](SUDownloadPolicyFactory, "downloadPolicyTypeForClass:", v4) && (v5 = [v4 isPowerRequired], v5 != -[SUDownloadMetadata isEnabledOnBatteryPower](self, "isEnabledOnBatteryPower")) && (v6 = objc_msgSend(v4, "isDownloadAllowableForWiFi"), v6 == -[SUDownloadMetadata isEnabledForWifi](self, "isEnabledForWifi")) && (v7 = objc_msgSend(v4, "isDownloadAllowableForCellular2G"), v7 == -[SUDownloadMetadata isEnabledFor2G](self, "isEnabledFor2G")) && (v8 = objc_msgSend(v4, "isDownloadAllowableForCellular"), v8 == -[SUDownloadMetadata isEnabledFor3G](self, "isEnabledFor3G")) && (v9 = objc_msgSend(v4, "isDownloadAllowableForCellular"), v9 == -[SUDownloadMetadata isEnabledFor4G](self, "isEnabledFor4G")))
  {
    v12 = [v4 isDownloadAllowableForCellularRoaming];
    v10 = v12 ^ [(SUDownloadMetadata *)self isEnabledForCellularRoaming]^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isEnabledForNetworkType:(int)a3
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        return [(SUDownloadMetadata *)self isEnabledFor3G];
      }

      return [(SUDownloadMetadata *)self isEnabledFor4G];
    }

    return [(SUDownloadMetadata *)self isEnabledFor2G];
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        return [(SUDownloadMetadata *)self isEnabledForWifi];
      }

      return [(SUDownloadMetadata *)self isEnabledFor4G];
    }

    return 0;
  }
}

- (id)_stringForBool:(BOOL)a3
{
  if (a3)
  {
    return @"Yes";
  }

  else
  {
    return @"No";
  }
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v13 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isAutoDownload]];
  v12 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isDownloadOnly]];
  v3 = SUStringFromDownloadPolicyType(self->_activeDownloadPolicyType);
  v4 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isEnabledFor2G]];
  v5 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isEnabledFor3G]];
  v6 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isEnabledFor4G]];
  v7 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isEnabledForCellularRoaming]];
  v8 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isEnabledForWifi]];
  v9 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self isEnabledOnBatteryPower]];
  v10 = [(SUDownloadMetadata *)self _stringForBool:[(SUDownloadMetadata *)self enforceWifiOnlyOverride]];
  v15 = [v14 stringWithFormat:@"\n            \tisAutoDownload: %@\n            \tisDownloadOnly: %@\n            \tactiveDownloadPolicyType: %@\n            \tisEnabledFor2G: %@\n            \tisEnabledFor3G: %@\n            \tisEnabledFor4G: %@\n            \tisEnabledForCellularRoaming: %@\n            \tisEnabledForWifi: %@\n            \tisEnabledOnBatteryPower: %@\n            \tenforceWifiOnlyOverride: %@\n            \tDownloadFeeAgreementStatus: %d\n            \tTermsAndConditionsAgreementStatus: %d", v13, v12, v3, v4, v5, v6, v7, v8, v9, v10, -[SUDownloadMetadata downloadFeeAgreementStatus](self, "downloadFeeAgreementStatus"), -[SUDownloadMetadata termsAndConditionsAgreementStatus](self, "termsAndConditionsAgreementStatus")];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_16;
  }

  if (self == v4)
  {
    v19 = 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    autoDownload = self->_autoDownload;
    if (autoDownload != [(SUDownloadMetadata *)v6 isAutoDownload])
    {
      goto LABEL_18;
    }

    downloadOnly = self->_downloadOnly;
    if (downloadOnly != [(SUDownloadMetadata *)v6 isDownloadOnly])
    {
      goto LABEL_18;
    }

    activeDownloadPolicyType = self->_activeDownloadPolicyType;
    if (activeDownloadPolicyType != [(SUDownloadMetadata *)v6 activeDownloadPolicyType])
    {
      goto LABEL_18;
    }

    enabledFor2G = self->_enabledFor2G;
    if (enabledFor2G != [(SUDownloadMetadata *)v6 isEnabledFor2G])
    {
      goto LABEL_18;
    }

    enabledFor3G = self->_enabledFor3G;
    if (enabledFor3G == [(SUDownloadMetadata *)v6 isEnabledFor3G]&& (enabledFor4G = self->_enabledFor4G, enabledFor4G == [(SUDownloadMetadata *)v6 isEnabledFor4G]) && (enabledForWifi = self->_enabledForWifi, enabledForWifi == [(SUDownloadMetadata *)v6 isEnabledForWifi]) && (enabledOnBatteryPower = self->_enabledOnBatteryPower, enabledOnBatteryPower == [(SUDownloadMetadata *)v6 isEnabledOnBatteryPower]) && (enforceWifiOnlyOverride = self->_enforceWifiOnlyOverride, enforceWifiOnlyOverride == [(SUDownloadMetadata *)v6 enforceWifiOnlyOverride]) && (downloadFeeAgreementStatus = self->_downloadFeeAgreementStatus, downloadFeeAgreementStatus == [(SUDownloadMetadata *)v6 downloadFeeAgreementStatus]) && (termsAndConditionsAgreementStatus = self->_termsAndConditionsAgreementStatus, termsAndConditionsAgreementStatus == [(SUDownloadMetadata *)v6 termsAndConditionsAgreementStatus]))
    {
      enabledForCellularRoaming = self->_enabledForCellularRoaming;
      v19 = enabledForCellularRoaming == [(SUDownloadMetadata *)v6 isEnabledForCellularRoaming];
    }

    else
    {
LABEL_18:
      v19 = 0;
    }
  }

  else
  {
LABEL_16:
    v19 = 0;
  }

LABEL_20:

  return v19;
}

- (unint64_t)hash
{
  v2 = 3;
  if (!self->_autoDownload)
  {
    v2 = 1;
  }

  if (self->_enabledFor2G)
  {
    v2 |= 4uLL;
  }

  if (self->_enabledFor3G)
  {
    v2 |= 8uLL;
  }

  if (self->_enabledForWifi)
  {
    v2 |= 0x10uLL;
  }

  if (self->_enabledOnBatteryPower)
  {
    v2 |= 0x20uLL;
  }

  if (self->_enforceWifiOnlyOverride)
  {
    v2 |= 0x40uLL;
  }

  if (self->_enabledForCellularRoaming)
  {
    v2 |= 0x80uLL;
  }

  if (self->_enabledFor4G)
  {
    v2 |= 0x100uLL;
  }

  if (self->_downloadOnly)
  {
    v2 |= 0x200uLL;
  }

  return self->_termsAndConditionsAgreementStatus + 8 * (self->_downloadFeeAgreementStatus + 8 * (self->_activeDownloadPolicyType + 8 * v2));
}

@end