@interface SUDefaultDownloadPolicy
- (BOOL)_inexpensiveHDM;
- (BOOL)_isCellularCapable;
- (BOOL)_isDownloadableForNetworkType:(int)type error:(int64_t *)error cellularFeesApply:(BOOL *)apply powerRequired:(BOOL *)required;
- (BOOL)cellularDataIsEnabled;
- (BOOL)hasEnoughDiskSpace;
- (BOOL)isDownloadAllowableForCellular;
- (BOOL)isDownloadAllowableForCellular2G;
- (BOOL)isDownloadAllowableForCellularIncludingInexpensiveHDM:(BOOL)m;
- (BOOL)isDownloadAllowableForCellularRoaming;
- (BOOL)isDownloadAllowableForWiFi;
- (BOOL)isDownloadable;
- (BOOL)isDownloadableForCurrentNetworkConditions:(int64_t *)conditions cellularFeesApply:(BOOL *)apply powerRequired:(BOOL *)required;
- (BOOL)isSamePolicy:(id)policy;
- (NSString)description;
- (SUDefaultDownloadPolicy)initWithDescriptor:(id)descriptor;
- (id)_stringForBool:(BOOL)bool;
- (id)createSpaceOptions;
- (id)updateDiscoveryDate;
- (unint64_t)wifiOnlyPeriodInDays;
@end

@implementation SUDefaultDownloadPolicy

- (SUDefaultDownloadPolicy)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v19.receiver = self;
  v19.super_class = SUDefaultDownloadPolicy;
  v5 = [(SUDefaultDownloadPolicy *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(SUDefaultDownloadPolicy *)v5 setDescriptor:descriptorCopy];
    v7 = +[SUNetworkMonitor sharedInstance];
    [(SUDefaultDownloadPolicy *)v6 setNetworkMonitor:v7];

    _isCellularCapable = [(SUDefaultDownloadPolicy *)v6 _isCellularCapable];
    v6->_cellularCapable = _isCellularCapable;
    v6->_cellularFeeAgreementStatus = 0;
    if (_isCellularCapable)
    {
      v9 = objc_alloc_init(SUCarrierDownloadPolicyProperties);
      carrierPolicy = v6->_carrierPolicy;
      v6->_carrierPolicy = v9;

      SULogInfo(@"Carrier SU download policy: %@", v11, v12, v13, v14, v15, v16, v17, v6->_carrierPolicy);
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = SUStringFromDownloadPolicyType([SUDownloadPolicyFactory downloadPolicyTypeForClass:self]);
  v5 = [(SUDefaultDownloadPolicy *)self _stringForBool:[(SUDefaultDownloadPolicy *)self isDownloadable]];
  v6 = [(SUDefaultDownloadPolicy *)self _stringForBool:[(SUDefaultDownloadPolicy *)self isDownloadFreeForCellular]];
  v7 = [(SUDefaultDownloadPolicy *)self _stringForBool:[(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular]];
  v8 = [(SUDefaultDownloadPolicy *)self _stringForBool:[(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular2G]];
  v9 = [(SUDefaultDownloadPolicy *)self _stringForBool:[(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellularRoaming]];
  v10 = [(SUDefaultDownloadPolicy *)self _stringForBool:[(SUDefaultDownloadPolicy *)self isDownloadAllowableForWiFi]];
  v11 = [v3 stringWithFormat:@"<%@>\n            \tisDownloadable: %@\n            \tCellularDownloadFree: %@\n            \tCellularDownloadAllowable: %@\n            \tCellularDownloadAllowableOver2G: %@\n            \tCellularDownloadAllowableWhileRoaming: %@\n            \tWiFiDownloadAllowable: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
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

- (BOOL)_isCellularCapable
{
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v2 = +[SUPreferences sharedInstance];
    networkMonitorOverride = [v2 networkMonitorOverride];

    if (networkMonitorOverride && ([networkMonitorOverride intValue] & 0x80000000) == 0 && objc_msgSend(networkMonitorOverride, "intValue") < 10000)
    {
      intValue = [networkMonitorOverride intValue];
      SULogDebug(@"device is considered cellular capable because networkMonitorOverride (%d) exists", v5, v6, v7, v8, v9, v10, v11, intValue);

      LOBYTE(v12) = 1;
      return v12;
    }
  }

  v12 = +[SUUtility hasCellularRadio];
  if (v12)
  {

    LOBYTE(v12) = +[SUUtility isCellularDataCapable];
  }

  return v12;
}

- (BOOL)isSamePolicy:(id)policy
{
  if (!policy)
  {
    return 0;
  }

  policyCopy = policy;
  LODWORD(self) = [SUDownloadPolicyFactory downloadPolicyTypeForClass:self];
  v5 = [SUDownloadPolicyFactory downloadPolicyTypeForClass:policyCopy];

  return self == v5;
}

- (id)createSpaceOptions
{
  descriptor = [(SUDefaultDownloadPolicy *)self descriptor];
  if (descriptor)
  {
    v11 = objc_alloc_init(SUSpacePurgeOptions);
    [(SUSpacePurgeOptions *)v11 setNeededBytes:[SUUtility totalDiskSpaceForUpdate:descriptor]];
    descriptor2 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableCacheDelete:](v11, "setEnableCacheDelete:", [descriptor2 cdLevel4Disabled] ^ 1);

    descriptor3 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableAppOffload:](v11, "setEnableAppOffload:", [descriptor3 appDemotionDisabled] ^ 1);

    descriptor4 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableMobileAssetSuspend:](v11, "setEnableMobileAssetSuspend:", [descriptor4 maSuspensionDisabled] ^ 1);

    [(SUSpacePurgeOptions *)v11 setCacheDeleteUrgency:4];
    [(SUSpacePurgeOptions *)v11 setAppOffloadUrgency:4];
  }

  else
  {
    SULogInfo(@"Unable to create space options for null descriptor", v3, v4, v5, v6, v7, v8, v9, v16);
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasEnoughDiskSpace
{
  createSpaceOptions = [(SUDefaultDownloadPolicy *)self createSpaceOptions];
  if (createSpaceOptions)
  {
    v10 = [SUSpace hasSufficientSpaceWithOptions:createSpaceOptions error:0];
    hasSufficientFreeSpace = [v10 hasSufficientFreeSpace];
  }

  else
  {
    SULogInfo(@"Unable to determine sufficient space with null space options", v2, v3, v4, v5, v6, v7, v8, v13);
    hasSufficientFreeSpace = 0;
  }

  return hasSufficientFreeSpace;
}

- (BOOL)isDownloadable
{
  if ([(SUDefaultDownloadPolicy *)self isDownloadAllowableForWiFi])
  {
    return 1;
  }

  return [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular];
}

- (BOOL)isDownloadAllowableForWiFi
{
  isDownloadable = [(SUDescriptor *)self->_descriptor isDownloadable];
  if (isDownloadable)
  {
    if (+[SUUtility isWiFiCapable])
    {
      LOBYTE(isDownloadable) = 1;
    }

    else
    {

      LOBYTE(isDownloadable) = +[SUUtility isVirtualDevice];
    }
  }

  return isDownloadable;
}

- (BOOL)isDownloadAllowableForCellularRoaming
{
  if ([(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular])
  {
    return 1;
  }

  return [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular2G];
}

- (BOOL)isDownloadableForCurrentNetworkConditions:(int64_t *)conditions cellularFeesApply:(BOOL *)apply powerRequired:(BOOL *)required
{
  networkMonitor = [(SUDefaultDownloadPolicy *)self networkMonitor];
  currentNetworkType = [networkMonitor currentNetworkType];

  return [(SUDefaultDownloadPolicy *)self _isDownloadableForNetworkType:currentNetworkType error:conditions cellularFeesApply:apply powerRequired:required];
}

- (BOOL)isDownloadAllowableForCellular
{
  allowInexpensiveHDMUnlimited = [(SUCarrierDownloadPolicyProperties *)self->_carrierPolicy allowInexpensiveHDMUnlimited];

  return [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellularIncludingInexpensiveHDM:allowInexpensiveHDMUnlimited];
}

- (id)updateDiscoveryDate
{
  v3 = +[SUState currentState];
  updateDiscoveryDates = [v3 updateDiscoveryDates];
  productBuildVersion = [(SUDescriptor *)self->_descriptor productBuildVersion];
  v6 = [updateDiscoveryDates objectForKey:productBuildVersion];

  return v6;
}

- (BOOL)cellularDataIsEnabled
{
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v2 = +[SUPreferences sharedInstance];
    networkMonitorOverride = [v2 networkMonitorOverride];

    if (networkMonitorOverride && ([networkMonitorOverride intValue] & 0x80000000) == 0 && objc_msgSend(networkMonitorOverride, "intValue") < 10000)
    {
      intValue = [networkMonitorOverride intValue];
      SULogDebug(@"device is considered cellular capable because networkMonitorOverride (%d) exists", v5, v6, v7, v8, v9, v10, v11, intValue);

      return 1;
    }
  }

  return +[SUUtility cellularDataIsEnabled];
}

- (BOOL)isDownloadAllowableForCellularIncludingInexpensiveHDM:(BOOL)m
{
  mCopy = m;
  if (![(SUDescriptor *)self->_descriptor isDownloadable]|| ![(SUDescriptor *)self->_descriptor isDownloadableOverCellular])
  {
    v13 = @"Cellular download not allowable due to SU asset configuration";
    goto LABEL_10;
  }

  if (!self->_cellularCapable)
  {
    v13 = @"Cellular download not allowed because device is not cellular capable";
    goto LABEL_10;
  }

  if (![(SUDefaultDownloadPolicy *)self cellularDataIsEnabled])
  {
    v13 = @"Cellular download not allowed because cellular data not enabled for device";
    goto LABEL_10;
  }

  carrierPolicy = self->_carrierPolicy;
  if (!carrierPolicy)
  {
    v13 = @"Cellular download not allowed because we have no carrier policy";
    goto LABEL_10;
  }

  if (![(SUCarrierDownloadPolicyProperties *)carrierPolicy isDownloadAllowable])
  {
    v13 = @"Cellular download not allowed because carrier policy prevents cellular download";
    goto LABEL_10;
  }

  if (self->_cellularFeeAgreementStatus == 2)
  {
    v13 = @"Cellular download not allowed because cellular fee agreement declined";
LABEL_10:
    SULogInfo(v13, v5, v6, v7, v8, v9, v10, v11, v54);
    return 0;
  }

  if (mCopy && [(SUDefaultDownloadPolicy *)self _inexpensiveHDM])
  {
    SULogInfo(@"Network type is inexpensive HDM. SU download allowed", v15, v16, v17, v18, v19, v20, v21, v54);
    return 1;
  }

  v22 = +[SUPreferences sharedInstance];
  disableUserWiFiOnlyPeriod = [v22 disableUserWiFiOnlyPeriod];

  if (!disableUserWiFiOnlyPeriod)
  {
    updateDiscoveryDate = [(SUDefaultDownloadPolicy *)self updateDiscoveryDate];
    numberOfDaysToWaitForCellularDownload = [(SUCarrierDownloadPolicyProperties *)self->_carrierPolicy numberOfDaysToWaitForCellularDownload];
    v40 = numberOfDaysToWaitForCellularDownload;
    if (updateDiscoveryDate)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v42 = [SUUtility addToDate:updateDiscoveryDate numberOfDays:v40];
      v43 = [date laterDate:v42];
      v44 = [v43 isEqualToDate:v42];

      if (v44)
      {
        v45 = [SUUtility prettyPrintDate:updateDiscoveryDate];
        v55 = [SUUtility prettyPrintDate:date];
        SULogInfo(@"Cellular download not allowed because wifi-only days unmet. Discovery date: %@ Current date: %@ DaysToWait: %lu", v46, v47, v48, v49, v50, v51, v52, v45);

LABEL_26:
        return 0;
      }
    }

    else if (numberOfDaysToWaitForCellularDownload)
    {
      SULogInfo(@"Cellular download not allowed because unknown update discovery date", v33, v34, v35, v36, v37, v38, v39, v54);
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  SULogInfo(@"SUDisableUserWiFiOnlyPeriod is set; will not apply the wifi-only-period check", v24, v25, v26, v27, v28, v29, v30, v54);
LABEL_29:
  maximumDownloadSizeInBytes = [(SUCarrierDownloadPolicyProperties *)self->_carrierPolicy maximumDownloadSizeInBytes];
  if ((maximumDownloadSizeInBytes & 0x8000000000000000) == 0 && maximumDownloadSizeInBytes < [(SUDescriptor *)self->_descriptor downloadSize])
  {
    v13 = @"Cellular download not allowed because update is larger than carrier maximum download size";
    goto LABEL_10;
  }

  return 1;
}

- (BOOL)isDownloadAllowableForCellular2G
{
  isDownloadAllowableForCellular = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular];
  if (isDownloadAllowableForCellular)
  {
    if (self->_cellularCapable)
    {
      carrierPolicy = self->_carrierPolicy;

      LOBYTE(isDownloadAllowableForCellular) = [(SUCarrierDownloadPolicyProperties *)carrierPolicy isDownloadAllowableOver2G];
    }

    else
    {
      LOBYTE(isDownloadAllowableForCellular) = 1;
    }
  }

  return isDownloadAllowableForCellular;
}

- (unint64_t)wifiOnlyPeriodInDays
{
  if ([(SUDescriptor *)self->_descriptor updateType]!= 3 && self->_cellularCapable)
  {
    carrierPolicy = self->_carrierPolicy;
    if (carrierPolicy)
    {
      [(SUCarrierDownloadPolicyProperties *)carrierPolicy numberOfDaysToWaitForCellularDownload];
    }
  }

  return 0;
}

- (BOOL)_isDownloadableForNetworkType:(int)type error:(int64_t *)error cellularFeesApply:(BOOL *)apply powerRequired:(BOOL *)required
{
  if (!error)
  {
    if (![(SUDefaultDownloadPolicy *)self isDownloadable])
    {
      return 0;
    }

LABEL_5:
    if (apply)
    {
      *apply = [(SUDefaultDownloadPolicy *)self cellularDownloadFeesApply];
    }

    batteryPolicySatisfied = [(SUDefaultDownloadPolicy *)self batteryPolicySatisfied];
    if (required)
    {
      *required = !batteryPolicySatisfied;
    }

    if (![(SUDefaultDownloadPolicy *)self hasEnoughDiskSpace])
    {
      if (error)
      {
        batteryPolicySatisfied = 0;
        v12 = 6;
        goto LABEL_16;
      }

      return 0;
    }

    if (![(SUDefaultDownloadPolicy *)self allowExpensiveNetwork]&& [(SUNetworkMonitor *)self->_networkMonitor isCurrentNetworkTypeExpensive])
    {
      SULogInfo(@"%s preventing download on expensive network", v13, v14, v15, v16, v17, v18, v19, "[SUDefaultDownloadPolicy _isDownloadableForNetworkType:error:cellularFeesApply:powerRequired:]");
      if (error)
      {
        batteryPolicySatisfied = 0;
        v12 = 83;
        goto LABEL_16;
      }

      return 0;
    }

    networkMonitor = [(SUDefaultDownloadPolicy *)self networkMonitor];
    isBootstrap = [networkMonitor isBootstrap];

    networkMonitor2 = [(SUDefaultDownloadPolicy *)self networkMonitor];
    isPathSatisfied = [networkMonitor2 isPathSatisfied];

    networkMonitor3 = [(SUDefaultDownloadPolicy *)self networkMonitor];
    typeCopy = type;
    isCellularRoaming = [networkMonitor3 isCellularRoaming];

    networkMonitor4 = [(SUDefaultDownloadPolicy *)self networkMonitor];
    isCellularDataRoamingEnabled = [networkMonitor4 isCellularDataRoamingEnabled];

    LODWORD(networkMonitor4) = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellularRoaming];
    isDownloadAllowableForCellular = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular];
    isDownloadAllowableForCellular2G = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular2G];
    isDownloadAllowableForWiFi = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForWiFi];
    v44 = isCellularDataRoamingEnabled;
    v30 = networkMonitor4;
    SULogInfo(@"%s networkType:%d, powerRequired:%d, isBootstrap:%d, isPathSatisfied:%d, isRoaming:%d, isRoamingDataEnabled:%d, isRoamingDataAllowed:%d, allowedOverCellular:%d, allowedOverCellular2G:%d, allowedOverWiFi:%d", v31, v32, v33, v34, v35, v36, v37, "[SUDefaultDownloadPolicy _isDownloadableForNetworkType:error:cellularFeesApply:powerRequired:]");
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __95__SUDefaultDownloadPolicy__isDownloadableForNetworkType_error_cellularFeesApply_powerRequired___block_invoke;
    v53[3] = &__block_descriptor_33_e11_q24__0q8q16l;
    v54 = networkMonitor4;
    v38 = MEMORY[0x26D668B30](v53);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __95__SUDefaultDownloadPolicy__isDownloadableForNetworkType_error_cellularFeesApply_powerRequired___block_invoke_2;
    v47[3] = &unk_279CACDF8;
    v50 = isDownloadAllowableForCellular;
    v51 = isDownloadAllowableForCellular2G;
    v52 = isDownloadAllowableForWiFi;
    v48 = v38;
    errorCopy = error;
    v39 = v38;
    v40 = MEMORY[0x26D668B30](v47);
    v41 = v40;
    if ((typeCopy - 2) >= 8)
    {
      if (typeCopy != 1)
      {
        if (typeCopy)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (!isDownloadAllowableForWiFi)
      {
LABEL_34:
        (*(v40 + 16))(v40);
LABEL_35:
        batteryPolicySatisfied = 0;
LABEL_36:

        return batteryPolicySatisfied;
      }
    }

    else if (!isDownloadAllowableForCellular || isCellularRoaming && (v44 & v30) == 0 || typeCopy == 2 && !isDownloadAllowableForCellular2G || ((isBootstrap ^ 1 | isPathSatisfied) & 1) == 0)
    {
      goto LABEL_34;
    }

    if (error)
    {
      v42 = batteryPolicySatisfied;
    }

    else
    {
      v42 = 1;
    }

    if ((v42 & 1) == 0)
    {
      batteryPolicySatisfied = 0;
      *error = 24;
    }

    goto LABEL_36;
  }

  *error = 0;
  if ([(SUDefaultDownloadPolicy *)self isDownloadable])
  {
    goto LABEL_5;
  }

  batteryPolicySatisfied = 0;
  v12 = 31;
LABEL_16:
  *error = v12;
  return batteryPolicySatisfied;
}

uint64_t __95__SUDefaultDownloadPolicy__isDownloadableForNetworkType_error_cellularFeesApply_powerRequired___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

uint64_t __95__SUDefaultDownloadPolicy__isDownloadableForNetworkType_error_cellularFeesApply_powerRequired___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    v2 = *(result + 40);
    if (*(result + 49) == 1)
    {
      if (!v2)
      {
        return result;
      }

      v3 = *(result + 50);
      v4 = *(result + 32);
      v5 = *(*(v1 + 32) + 16);
    }

    else
    {
      if (!v2)
      {
        return result;
      }

      v8 = *(result + 50);
      v9 = *(result + 32);
      v5 = *(*(v1 + 32) + 16);
    }

    result = v5();
    **(v1 + 40) = result;
  }

  else
  {
    v6 = *(result + 40);
    if (v6)
    {
      v7 = 31;
      if (*(result + 50))
      {
        v7 = 9;
      }

      *v6 = v7;
    }
  }

  return result;
}

- (BOOL)_inexpensiveHDM
{
  currentCellularType = [(SUNetworkMonitor *)self->_networkMonitor currentCellularType];
  isCurrentNetworkTypeExpensive = [(SUNetworkMonitor *)self->_networkMonitor isCurrentNetworkTypeExpensive];
  v5 = currentCellularType == 5 && !isCurrentNetworkTypeExpensive;
  if (currentCellularType != 5 || isCurrentNetworkTypeExpensive)
  {
    v6 = SUStringFromNetworkType(currentCellularType);
    SULogInfo(@"Device does not currently fall within 5G HDM policy: Network type: %@ NWPath isExpensive: %@", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v5;
}

@end