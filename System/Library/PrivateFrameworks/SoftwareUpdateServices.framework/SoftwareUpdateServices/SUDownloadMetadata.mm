@interface SUDownloadMetadata
- (BOOL)isEnabledForNetworkType:(int)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDownloadPolicy:(id)policy;
- (SUDownloadMetadata)init;
- (SUDownloadMetadata)initWithCoder:(id)coder;
- (id)_stringForBool:(BOOL)bool;
- (id)activeDownloadPolicy:(id)policy;
- (id)availableDownloadPolicyIfDifferentFromActive:(id)active;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)applyDownloadPolicy:(id)policy;
- (void)encodeWithCoder:(id)coder;
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

- (SUDownloadMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SUDownloadMetadata *)self init];
  if (v5)
  {
    -[SUDownloadMetadata setAutoDownload:](v5, "setAutoDownload:", [coderCopy decodeBoolForKey:@"isAutoDownload"]);
    -[SUDownloadMetadata setDownloadOnly:](v5, "setDownloadOnly:", [coderCopy decodeBoolForKey:@"isDownloadOnly"]);
    -[SUDownloadMetadata setActiveDownloadPolicyType:](v5, "setActiveDownloadPolicyType:", [coderCopy decodeIntForKey:@"activeDownloadPolicy"]);
    -[SUDownloadMetadata setEnabledFor2G:](v5, "setEnabledFor2G:", [coderCopy decodeBoolForKey:@"enabledFor2G"]);
    -[SUDownloadMetadata setEnabledFor3G:](v5, "setEnabledFor3G:", [coderCopy decodeBoolForKey:@"enabledFor3G"]);
    -[SUDownloadMetadata setEnabledFor4G:](v5, "setEnabledFor4G:", [coderCopy decodeBoolForKey:@"enabledFor4G"]);
    -[SUDownloadMetadata setEnabledForWifi:](v5, "setEnabledForWifi:", [coderCopy decodeBoolForKey:@"enabledForWifi"]);
    -[SUDownloadMetadata setEnabledOnBatteryPower:](v5, "setEnabledOnBatteryPower:", [coderCopy decodeBoolForKey:@"enabledOnBatteryPower"]);
    -[SUDownloadMetadata setEnforceWifiOnlyOverride:](v5, "setEnforceWifiOnlyOverride:", [coderCopy decodeBoolForKey:@"enforceWifiOnlyOverride"]);
    -[SUDownloadMetadata setDownloadFeeAgreementStatus:](v5, "setDownloadFeeAgreementStatus:", [coderCopy decodeIntForKey:@"downloadFeeAgreementStatus"]);
    -[SUDownloadMetadata setTermsAndConditionsAgreementStatus:](v5, "setTermsAndConditionsAgreementStatus:", [coderCopy decodeIntForKey:@"termsAndConditionsAgreementStatus"]);
    -[SUDownloadMetadata setEnabledForCellularRoaming:](v5, "setEnabledForCellularRoaming:", [coderCopy decodeBoolForKey:@"enabledForCellularRoaming"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  autoDownload = self->_autoDownload;
  coderCopy = coder;
  [coderCopy encodeBool:autoDownload forKey:@"isAutoDownload"];
  [coderCopy encodeBool:self->_downloadOnly forKey:@"isDownloadOnly"];
  [coderCopy encodeInt:self->_activeDownloadPolicyType forKey:@"activeDownloadPolicy"];
  [coderCopy encodeBool:self->_enabledFor2G forKey:@"enabledFor2G"];
  [coderCopy encodeBool:self->_enabledFor3G forKey:@"enabledFor3G"];
  [coderCopy encodeBool:self->_enabledFor4G forKey:@"enabledFor4G"];
  [coderCopy encodeBool:self->_enabledForWifi forKey:@"enabledForWifi"];
  [coderCopy encodeBool:self->_enabledOnBatteryPower forKey:@"enabledOnBatteryPower"];
  [coderCopy encodeBool:self->_enforceWifiOnlyOverride forKey:@"enforceWifiOnlyOverride"];
  [coderCopy encodeInt:self->_downloadFeeAgreementStatus forKey:@"downloadFeeAgreementStatus"];
  [coderCopy encodeInt:self->_termsAndConditionsAgreementStatus forKey:@"termsAndConditionsAgreementStatus"];
  [coderCopy encodeBool:self->_enabledForCellularRoaming forKey:@"enabledForCellularRoaming"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (void)applyDownloadPolicy:(id)policy
{
  policyCopy = policy;
  if (policyCopy)
  {
    v9 = policyCopy;
    v5 = ([policyCopy isDownloadFreeForCellular] & 1) != 0 || -[SUDownloadMetadata downloadFeeAgreementStatus](self, "downloadFeeAgreementStatus") == 1;
    enforceWifiOnlyOverride = [(SUDownloadMetadata *)self enforceWifiOnlyOverride];
    [(SUDownloadMetadata *)self setActiveDownloadPolicyType:[SUDownloadPolicyFactory downloadPolicyTypeForClass:v9]];
    -[SUDownloadMetadata setEnabledOnBatteryPower:](self, "setEnabledOnBatteryPower:", [v9 isPowerRequired] ^ 1);
    if (enforceWifiOnlyOverride || !v5)
    {
      [(SUDownloadMetadata *)self setEnabledFor2G:0];
      [(SUDownloadMetadata *)self setEnabledFor3G:0];
      isDownloadAllowableForCellular = 0;
    }

    else
    {
      -[SUDownloadMetadata setEnabledFor2G:](self, "setEnabledFor2G:", [v9 isDownloadAllowableForCellular2G]);
      -[SUDownloadMetadata setEnabledFor3G:](self, "setEnabledFor3G:", [v9 isDownloadAllowableForCellular]);
      isDownloadAllowableForCellular = [v9 isDownloadAllowableForCellular];
    }

    [(SUDownloadMetadata *)self setEnabledFor4G:isDownloadAllowableForCellular];
    if ([(SUDownloadMetadata *)self isEnabledFor2G]|| [(SUDownloadMetadata *)self isEnabledFor3G]|| [(SUDownloadMetadata *)self isEnabledFor4G])
    {
      isDownloadAllowableForCellularRoaming = [v9 isDownloadAllowableForCellularRoaming];
    }

    else
    {
      isDownloadAllowableForCellularRoaming = 0;
    }

    [(SUDownloadMetadata *)self setEnabledForCellularRoaming:isDownloadAllowableForCellularRoaming];
    -[SUDownloadMetadata setEnabledForWifi:](self, "setEnabledForWifi:", [v9 isDownloadAllowableForWiFi]);
    policyCopy = v9;
  }
}

- (id)activeDownloadPolicy:(id)policy
{
  if (policy)
  {
    v4 = [SUDownloadPolicyFactory downloadPolicyForType:self->_activeDownloadPolicyType forDescriptor:policy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)availableDownloadPolicyIfDifferentFromActive:(id)active
{
  activeCopy = active;
  v5 = [(SUDownloadMetadata *)self activeDownloadPolicy:activeCopy];
  v6 = [SUDownloadPolicyFactory userDownloadPolicyForDescriptor:activeCopy existingPolicy:v5];

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

- (BOOL)matchesDownloadPolicy:(id)policy
{
  policyCopy = policy;
  if (self->_activeDownloadPolicyType == +[SUDownloadPolicyFactory downloadPolicyTypeForClass:](SUDownloadPolicyFactory, "downloadPolicyTypeForClass:", policyCopy) && (v5 = [policyCopy isPowerRequired], v5 != -[SUDownloadMetadata isEnabledOnBatteryPower](self, "isEnabledOnBatteryPower")) && (v6 = objc_msgSend(policyCopy, "isDownloadAllowableForWiFi"), v6 == -[SUDownloadMetadata isEnabledForWifi](self, "isEnabledForWifi")) && (v7 = objc_msgSend(policyCopy, "isDownloadAllowableForCellular2G"), v7 == -[SUDownloadMetadata isEnabledFor2G](self, "isEnabledFor2G")) && (v8 = objc_msgSend(policyCopy, "isDownloadAllowableForCellular"), v8 == -[SUDownloadMetadata isEnabledFor3G](self, "isEnabledFor3G")) && (v9 = objc_msgSend(policyCopy, "isDownloadAllowableForCellular"), v9 == -[SUDownloadMetadata isEnabledFor4G](self, "isEnabledFor4G")))
  {
    isDownloadAllowableForCellularRoaming = [policyCopy isDownloadAllowableForCellularRoaming];
    v10 = isDownloadAllowableForCellularRoaming ^ [(SUDownloadMetadata *)self isEnabledForCellularRoaming]^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)isEnabledForNetworkType:(int)type
{
  if (type > 1)
  {
    if (type != 2)
    {
      if (type == 3)
      {
        return [(SUDownloadMetadata *)self isEnabledFor3G];
      }

      return [(SUDownloadMetadata *)self isEnabledFor4G];
    }

    return [(SUDownloadMetadata *)self isEnabledFor2G];
  }

  else
  {
    if (type)
    {
      if (type == 1)
      {
        return [(SUDownloadMetadata *)self isEnabledForWifi];
      }

      return [(SUDownloadMetadata *)self isEnabledFor4G];
    }

    return 0;
  }
}

- (id)_stringForBool:(BOOL)bool
{
  if (bool)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_16;
  }

  if (self == equalCopy)
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