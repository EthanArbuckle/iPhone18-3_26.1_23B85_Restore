@interface SUDefaultDownloadPolicy
- (BOOL)_inexpensiveHDM;
- (BOOL)_isCellularCapable;
- (BOOL)_isDownloadableForNetworkType:(int)a3 error:(int64_t *)a4 cellularFeesApply:(BOOL *)a5 powerRequired:(BOOL *)a6;
- (BOOL)cellularDataIsEnabled;
- (BOOL)hasEnoughDiskSpace;
- (BOOL)isDownloadAllowableForCellular;
- (BOOL)isDownloadAllowableForCellular2G;
- (BOOL)isDownloadAllowableForCellularIncludingInexpensiveHDM:(BOOL)a3;
- (BOOL)isDownloadAllowableForCellularRoaming;
- (BOOL)isDownloadAllowableForWiFi;
- (BOOL)isDownloadable;
- (BOOL)isDownloadableForCurrentNetworkConditions:(int64_t *)a3 cellularFeesApply:(BOOL *)a4 powerRequired:(BOOL *)a5;
- (BOOL)isSamePolicy:(id)a3;
- (NSString)description;
- (SUDefaultDownloadPolicy)initWithDescriptor:(id)a3;
- (id)_stringForBool:(BOOL)a3;
- (id)createSpaceOptions;
- (id)updateDiscoveryDate;
- (unint64_t)wifiOnlyPeriodInDays;
@end

@implementation SUDefaultDownloadPolicy

- (SUDefaultDownloadPolicy)initWithDescriptor:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SUDefaultDownloadPolicy;
  v5 = [(SUDefaultDownloadPolicy *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(SUDefaultDownloadPolicy *)v5 setDescriptor:v4];
    v7 = +[SUNetworkMonitor sharedInstance];
    [(SUDefaultDownloadPolicy *)v6 setNetworkMonitor:v7];

    v8 = [(SUDefaultDownloadPolicy *)v6 _isCellularCapable];
    v6->_cellularCapable = v8;
    v6->_cellularFeeAgreementStatus = 0;
    if (v8)
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

- (BOOL)_isCellularCapable
{
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v2 = +[SUPreferences sharedInstance];
    v3 = [v2 networkMonitorOverride];

    if (v3 && ([v3 intValue] & 0x80000000) == 0 && objc_msgSend(v3, "intValue") < 10000)
    {
      v4 = [v3 intValue];
      SULogDebug(@"device is considered cellular capable because networkMonitorOverride (%d) exists", v5, v6, v7, v8, v9, v10, v11, v4);

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

- (BOOL)isSamePolicy:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  LODWORD(self) = [SUDownloadPolicyFactory downloadPolicyTypeForClass:self];
  v5 = [SUDownloadPolicyFactory downloadPolicyTypeForClass:v4];

  return self == v5;
}

- (id)createSpaceOptions
{
  v10 = [(SUDefaultDownloadPolicy *)self descriptor];
  if (v10)
  {
    v11 = objc_alloc_init(SUSpacePurgeOptions);
    [(SUSpacePurgeOptions *)v11 setNeededBytes:[SUUtility totalDiskSpaceForUpdate:v10]];
    v12 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableCacheDelete:](v11, "setEnableCacheDelete:", [v12 cdLevel4Disabled] ^ 1);

    v13 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableAppOffload:](v11, "setEnableAppOffload:", [v13 appDemotionDisabled] ^ 1);

    v14 = [(SUDefaultDownloadPolicy *)self descriptor];
    -[SUSpacePurgeOptions setEnableMobileAssetSuspend:](v11, "setEnableMobileAssetSuspend:", [v14 maSuspensionDisabled] ^ 1);

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
  v9 = [(SUDefaultDownloadPolicy *)self createSpaceOptions];
  if (v9)
  {
    v10 = [SUSpace hasSufficientSpaceWithOptions:v9 error:0];
    v11 = [v10 hasSufficientFreeSpace];
  }

  else
  {
    SULogInfo(@"Unable to determine sufficient space with null space options", v2, v3, v4, v5, v6, v7, v8, v13);
    v11 = 0;
  }

  return v11;
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
  v2 = [(SUDescriptor *)self->_descriptor isDownloadable];
  if (v2)
  {
    if (+[SUUtility isWiFiCapable])
    {
      LOBYTE(v2) = 1;
    }

    else
    {

      LOBYTE(v2) = +[SUUtility isVirtualDevice];
    }
  }

  return v2;
}

- (BOOL)isDownloadAllowableForCellularRoaming
{
  if ([(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular])
  {
    return 1;
  }

  return [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular2G];
}

- (BOOL)isDownloadableForCurrentNetworkConditions:(int64_t *)a3 cellularFeesApply:(BOOL *)a4 powerRequired:(BOOL *)a5
{
  v9 = [(SUDefaultDownloadPolicy *)self networkMonitor];
  v10 = [v9 currentNetworkType];

  return [(SUDefaultDownloadPolicy *)self _isDownloadableForNetworkType:v10 error:a3 cellularFeesApply:a4 powerRequired:a5];
}

- (BOOL)isDownloadAllowableForCellular
{
  v3 = [(SUCarrierDownloadPolicyProperties *)self->_carrierPolicy allowInexpensiveHDMUnlimited];

  return [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellularIncludingInexpensiveHDM:v3];
}

- (id)updateDiscoveryDate
{
  v3 = +[SUState currentState];
  v4 = [v3 updateDiscoveryDates];
  v5 = [(SUDescriptor *)self->_descriptor productBuildVersion];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (BOOL)cellularDataIsEnabled
{
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v2 = +[SUPreferences sharedInstance];
    v3 = [v2 networkMonitorOverride];

    if (v3 && ([v3 intValue] & 0x80000000) == 0 && objc_msgSend(v3, "intValue") < 10000)
    {
      v4 = [v3 intValue];
      SULogDebug(@"device is considered cellular capable because networkMonitorOverride (%d) exists", v5, v6, v7, v8, v9, v10, v11, v4);

      return 1;
    }
  }

  return +[SUUtility cellularDataIsEnabled];
}

- (BOOL)isDownloadAllowableForCellularIncludingInexpensiveHDM:(BOOL)a3
{
  v3 = a3;
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

  if (v3 && [(SUDefaultDownloadPolicy *)self _inexpensiveHDM])
  {
    SULogInfo(@"Network type is inexpensive HDM. SU download allowed", v15, v16, v17, v18, v19, v20, v21, v54);
    return 1;
  }

  v22 = +[SUPreferences sharedInstance];
  v23 = [v22 disableUserWiFiOnlyPeriod];

  if (!v23)
  {
    v31 = [(SUDefaultDownloadPolicy *)self updateDiscoveryDate];
    v32 = [(SUCarrierDownloadPolicyProperties *)self->_carrierPolicy numberOfDaysToWaitForCellularDownload];
    v40 = v32;
    if (v31)
    {
      v41 = [MEMORY[0x277CBEAA8] date];
      v42 = [SUUtility addToDate:v31 numberOfDays:v40];
      v43 = [v41 laterDate:v42];
      v44 = [v43 isEqualToDate:v42];

      if (v44)
      {
        v45 = [SUUtility prettyPrintDate:v31];
        v55 = [SUUtility prettyPrintDate:v41];
        SULogInfo(@"Cellular download not allowed because wifi-only days unmet. Discovery date: %@ Current date: %@ DaysToWait: %lu", v46, v47, v48, v49, v50, v51, v52, v45);

LABEL_26:
        return 0;
      }
    }

    else if (v32)
    {
      SULogInfo(@"Cellular download not allowed because unknown update discovery date", v33, v34, v35, v36, v37, v38, v39, v54);
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  SULogInfo(@"SUDisableUserWiFiOnlyPeriod is set; will not apply the wifi-only-period check", v24, v25, v26, v27, v28, v29, v30, v54);
LABEL_29:
  v53 = [(SUCarrierDownloadPolicyProperties *)self->_carrierPolicy maximumDownloadSizeInBytes];
  if ((v53 & 0x8000000000000000) == 0 && v53 < [(SUDescriptor *)self->_descriptor downloadSize])
  {
    v13 = @"Cellular download not allowed because update is larger than carrier maximum download size";
    goto LABEL_10;
  }

  return 1;
}

- (BOOL)isDownloadAllowableForCellular2G
{
  v3 = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular];
  if (v3)
  {
    if (self->_cellularCapable)
    {
      carrierPolicy = self->_carrierPolicy;

      LOBYTE(v3) = [(SUCarrierDownloadPolicyProperties *)carrierPolicy isDownloadAllowableOver2G];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
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

- (BOOL)_isDownloadableForNetworkType:(int)a3 error:(int64_t *)a4 cellularFeesApply:(BOOL *)a5 powerRequired:(BOOL *)a6
{
  if (!a4)
  {
    if (![(SUDefaultDownloadPolicy *)self isDownloadable])
    {
      return 0;
    }

LABEL_5:
    if (a5)
    {
      *a5 = [(SUDefaultDownloadPolicy *)self cellularDownloadFeesApply];
    }

    v11 = [(SUDefaultDownloadPolicy *)self batteryPolicySatisfied];
    if (a6)
    {
      *a6 = !v11;
    }

    if (![(SUDefaultDownloadPolicy *)self hasEnoughDiskSpace])
    {
      if (a4)
      {
        v11 = 0;
        v12 = 6;
        goto LABEL_16;
      }

      return 0;
    }

    if (![(SUDefaultDownloadPolicy *)self allowExpensiveNetwork]&& [(SUNetworkMonitor *)self->_networkMonitor isCurrentNetworkTypeExpensive])
    {
      SULogInfo(@"%s preventing download on expensive network", v13, v14, v15, v16, v17, v18, v19, "[SUDefaultDownloadPolicy _isDownloadableForNetworkType:error:cellularFeesApply:powerRequired:]");
      if (a4)
      {
        v11 = 0;
        v12 = 83;
        goto LABEL_16;
      }

      return 0;
    }

    v20 = [(SUDefaultDownloadPolicy *)self networkMonitor];
    v46 = [v20 isBootstrap];

    v21 = [(SUDefaultDownloadPolicy *)self networkMonitor];
    v22 = [v21 isPathSatisfied];

    v23 = [(SUDefaultDownloadPolicy *)self networkMonitor];
    v45 = a3;
    v24 = [v23 isCellularRoaming];

    v25 = [(SUDefaultDownloadPolicy *)self networkMonitor];
    v26 = [v25 isCellularDataRoamingEnabled];

    LODWORD(v25) = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellularRoaming];
    v27 = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular];
    v28 = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForCellular2G];
    v29 = [(SUDefaultDownloadPolicy *)self isDownloadAllowableForWiFi];
    v44 = v26;
    v30 = v25;
    SULogInfo(@"%s networkType:%d, powerRequired:%d, isBootstrap:%d, isPathSatisfied:%d, isRoaming:%d, isRoamingDataEnabled:%d, isRoamingDataAllowed:%d, allowedOverCellular:%d, allowedOverCellular2G:%d, allowedOverWiFi:%d", v31, v32, v33, v34, v35, v36, v37, "[SUDefaultDownloadPolicy _isDownloadableForNetworkType:error:cellularFeesApply:powerRequired:]");
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __95__SUDefaultDownloadPolicy__isDownloadableForNetworkType_error_cellularFeesApply_powerRequired___block_invoke;
    v53[3] = &__block_descriptor_33_e11_q24__0q8q16l;
    v54 = v25;
    v38 = MEMORY[0x26D668B30](v53);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __95__SUDefaultDownloadPolicy__isDownloadableForNetworkType_error_cellularFeesApply_powerRequired___block_invoke_2;
    v47[3] = &unk_279CACDF8;
    v50 = v27;
    v51 = v28;
    v52 = v29;
    v48 = v38;
    v49 = a4;
    v39 = v38;
    v40 = MEMORY[0x26D668B30](v47);
    v41 = v40;
    if ((v45 - 2) >= 8)
    {
      if (v45 != 1)
      {
        if (v45)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (!v29)
      {
LABEL_34:
        (*(v40 + 16))(v40);
LABEL_35:
        v11 = 0;
LABEL_36:

        return v11;
      }
    }

    else if (!v27 || v24 && (v44 & v30) == 0 || v45 == 2 && !v28 || ((v46 ^ 1 | v22) & 1) == 0)
    {
      goto LABEL_34;
    }

    if (a4)
    {
      v42 = v11;
    }

    else
    {
      v42 = 1;
    }

    if ((v42 & 1) == 0)
    {
      v11 = 0;
      *a4 = 24;
    }

    goto LABEL_36;
  }

  *a4 = 0;
  if ([(SUDefaultDownloadPolicy *)self isDownloadable])
  {
    goto LABEL_5;
  }

  v11 = 0;
  v12 = 31;
LABEL_16:
  *a4 = v12;
  return v11;
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
  v3 = [(SUNetworkMonitor *)self->_networkMonitor currentCellularType];
  v4 = [(SUNetworkMonitor *)self->_networkMonitor isCurrentNetworkTypeExpensive];
  v5 = v3 == 5 && !v4;
  if (v3 != 5 || v4)
  {
    v6 = SUStringFromNetworkType(v3);
    SULogInfo(@"Device does not currently fall within 5G HDM policy: Network type: %@ NWPath isExpensive: %@", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v5;
}

@end