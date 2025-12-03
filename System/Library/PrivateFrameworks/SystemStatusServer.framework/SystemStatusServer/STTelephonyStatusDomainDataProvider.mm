@interface STTelephonyStatusDomainDataProvider
- (BOOL)_shouldShowEmergencyOnlyStatusForStateProvider:(void *)provider registrationStatus:(uint64_t)status bootstrap:(int)bootstrap hidden:(char)hidden carrierBundleInfo:(void *)info;
- (BOOL)_simStatusMeansLocked:(void *)locked;
- (STTelephonyStatusDomainDataProvider)init;
- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)handle;
- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)handle stateProvider:(id)provider;
- (STTelephonyStatusDomainDataProvider)initWithStateProvider:(id)provider;
- (id)_SIMInfoForStateProvider:(void *)provider subscriptionInfo:(void *)info carrierBundleInfo:(uint64_t)bundleInfo slot:(void *)slot otherSlotSubscriptionInfo:;
- (uint64_t)_serviceStateForStateProvider:(void *)provider registrationStatus:(uint64_t)status bootstrap:(int)bootstrap hidden:(char)hidden carrierBundleInfo:(void *)info;
- (void)_updateDataForSlot:(uint64_t)slot;
- (void)dealloc;
- (void)invalidate;
@end

@implementation STTelephonyStatusDomainDataProvider

- (STTelephonyStatusDomainDataProvider)init
{
  v3 = STDefaultStatusDomainPublisherServerHandle();
  v4 = [(STTelephonyStatusDomainDataProvider *)self initWithServerHandle:v3];

  return v4;
}

- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_alloc_init(STTelephonyStateProvider);
  v6 = [(STTelephonyStatusDomainDataProvider *)self initWithServerHandle:handleCopy stateProvider:v5];

  return v6;
}

- (STTelephonyStatusDomainDataProvider)initWithStateProvider:(id)provider
{
  providerCopy = provider;
  v5 = STDefaultStatusDomainPublisherServerHandle();
  v6 = [(STTelephonyStatusDomainDataProvider *)self initWithServerHandle:v5 stateProvider:providerCopy];

  return v6;
}

- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)handle stateProvider:(id)provider
{
  handleCopy = handle;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = STTelephonyStatusDomainDataProvider;
  v8 = [(STTelephonyStatusDomainDataProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_telephonyStateProvider, provider);
    [providerCopy addObserver:v9];
    v10 = [objc_alloc(MEMORY[0x277D6BB98]) initWithServerHandle:handleCopy];
    telephonyDomainPublisher = v9->_telephonyDomainPublisher;
    v9->_telephonyDomainPublisher = v10;

    [(STTelephonyStatusDomainDataProvider *)v9 _updateDataForSlot:?];
  }

  return v9;
}

- (void)_updateDataForSlot:(uint64_t)slot
{
  if (slot)
  {
    v4 = *(slot + 8);
    v5 = [v4 subscriptionInfoForSlot:1];
    v6 = [v4 subscriptionInfoForSlot:2];
    v7 = v6;
    v25 = v5;
    v27 = v6;
    if (a2 == 2)
    {
      if (!v6 || ![v6 isHiddenSIM] || (objc_msgSend(v7, "isBootstrap") & 1) != 0 || !objc_msgSend(v7, "isProvidingDataConnection"))
      {
        v28 = 0;
        v29 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      if (a2 != 1)
      {
        v8 = 0;
        if (a2 > 1)
        {
          v9 = 0;
          v11 = 0;
LABEL_18:
          v28 = v9;
          v29 = v11;
          if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
          {
            v12 = 0;
            v13 = 0;
LABEL_21:
            isCellularRadioCapabilityActive = [v4 isCellularRadioCapabilityActive];
            isDualSIMEnabled = [v4 isDualSIMEnabled];
            isRadioModuleDead = [v4 isRadioModuleDead];
            isUsingStewieForSOS = [v4 isUsingStewieForSOS];
            isInactiveSOSEnabled = [v4 isInactiveSOSEnabled];
            isUsingStewieConnection = [v4 isUsingStewieConnection];
            isUsingStewieConnectionOverInternet = [v4 isUsingStewieConnectionOverInternet];
            v22 = *(slot + 16);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __58__STTelephonyStatusDomainDataProvider__updateDataForSlot___block_invoke;
            v30[3] = &unk_279D34B40;
            v33 = v28;
            v34 = v12;
            v31 = v29;
            v32 = v13;
            v35 = isCellularRadioCapabilityActive;
            v36 = isDualSIMEnabled;
            v37 = isRadioModuleDead;
            v38 = isUsingStewieForSOS;
            v39 = isInactiveSOSEnabled;
            v40 = isUsingStewieConnection;
            v41 = isUsingStewieConnectionOverInternet;
            v23 = v13;
            v24 = v29;
            [v22 updateDataWithBlock:v30];

            return;
          }

LABEL_20:
          v14 = [v4 carrierBundleInfoForSlot:{2, v25}];
          v13 = [(STTelephonyStatusDomainDataProvider *)slot _SIMInfoForStateProvider:v4 subscriptionInfo:v7 carrierBundleInfo:v14 slot:2 otherSlotSubscriptionInfo:v5];

          v12 = 1;
          goto LABEL_21;
        }

LABEL_15:
        v9 = 1;
        v10 = [v4 carrierBundleInfoForSlot:{1, v25}];
        v11 = [(STTelephonyStatusDomainDataProvider *)slot _SIMInfoForStateProvider:v4 subscriptionInfo:v5 carrierBundleInfo:v10 slot:1 otherSlotSubscriptionInfo:v7];

        a2 = v8;
        goto LABEL_18;
      }

      if (!v5 || ![v5 isHiddenSIM] || (objc_msgSend(v5, "isBootstrap") & 1) != 0 || (objc_msgSend(v5, "isProvidingDataConnection") & 1) == 0)
      {
        v8 = 1;
        goto LABEL_15;
      }
    }

    v8 = 0;
    goto LABEL_15;
  }
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_telephonyDomainPublisher;
  }

  [(STTelephonyStatusDomainDataProvider *)self invalidate];
  [(STTelephonyStatusDomainDataProvider *)selfCopy invalidate];
  v3.receiver = selfCopy;
  v3.super_class = STTelephonyStatusDomainDataProvider;
  [(STTelephonyStatusDomainDataProvider *)&v3 dealloc];
}

- (void)invalidate
{
  selfCopy = self;
  if (self)
  {
    self = self->_telephonyStateProvider;
  }

  [(STTelephonyStatusDomainDataProvider *)self removeObserver:selfCopy];
}

- (id)_SIMInfoForStateProvider:(void *)provider subscriptionInfo:(void *)info carrierBundleInfo:(uint64_t)bundleInfo slot:(void *)slot otherSlotSubscriptionInfo:
{
  providerCopy = provider;
  slotCopy = slot;
  v12 = MEMORY[0x277D6BA28];
  infoCopy = info;
  v14 = a2;
  v15 = objc_alloc_init(v12);
  if (providerCopy && [providerCopy isHiddenSIM])
  {
    v16 = [providerCopy isBootstrap] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 ^ 1;
  [v15 setSIMPresent:{objc_msgSend(v14, "isSIMPresentForSlot:", bundleInfo) & (v16 ^ 1)}];
  [v15 setBootstrap:{objc_msgSend(providerCopy, "isBootstrap")}];
  sIMLabel = [providerCopy SIMLabel];
  [v15 setLabel:sIMLabel];

  shortSIMLabel = [providerCopy shortSIMLabel];
  [v15 setShortLabel:shortSIMLabel];

  [v15 setSignalStrengthBars:{objc_msgSend(providerCopy, "signalStrengthBars")}];
  [v15 setMaxSignalStrengthBars:{objc_msgSend(providerCopy, "maxSignalStrengthBars")}];
  LODWORD(shortSIMLabel) = [providerCopy isBootstrap];
  [v15 setServiceState:{-[STTelephonyStatusDomainDataProvider _serviceStateForStateProvider:registrationStatus:bootstrap:hidden:carrierBundleInfo:](v14, objc_msgSend(providerCopy, "registrationStatus"), shortSIMLabel, v16, infoCopy)}];
  [v15 setCellularServiceState:{-[STTelephonyStatusDomainDataProvider _serviceStateForStateProvider:registrationStatus:bootstrap:hidden:carrierBundleInfo:](v14, objc_msgSend(providerCopy, "cellularRegistrationStatus"), shortSIMLabel, v16, infoCopy)}];
  v20 = v14;
  v21 = providerCopy;
  v22 = infoCopy;
  if (![v20 isUsingStewieForSOS] || !objc_msgSend(v20, "isUsingStewieConnection"))
  {
    if ([v20 isRadioModuleDead])
    {
      registrationStatus = 3;
    }

    else
    {
      registrationStatus = [v21 registrationStatus];
    }

    isBootstrap = [v21 isBootstrap];
    if (providerCopy && [v21 isHiddenSIM])
    {
      v27 = [v21 isBootstrap] ^ 1;
    }

    else
    {
      v27 = 0;
    }

    v28 = [STTelephonyStatusDomainDataProvider _shouldShowEmergencyOnlyStatusForStateProvider:v20 registrationStatus:registrationStatus bootstrap:isBootstrap hidden:v27 carrierBundleInfo:v22];
    if (!v28 && registrationStatus == 2)
    {
      operatorName = [v21 operatorName];
      goto LABEL_18;
    }

    sIMStatus = [v21 SIMStatus];
    v31 = sIMStatus;
    v48 = v17;
    if (!sIMStatus)
    {
      goto LABEL_20;
    }

    if ([sIMStatus compare:*MEMORY[0x277CC3ED8]])
    {
      if ([v31 compare:*MEMORY[0x277CC3ED0]] && objc_msgSend(v31, "compare:", *MEMORY[0x277CC3EF8]))
      {
        if (![STTelephonyStatusDomainDataProvider _simStatusMeansLocked:v31])
        {
LABEL_20:
          v32 = 0;
          goto LABEL_29;
        }

        v33 = @"LOCKED_SIM";
      }

      else
      {
        v33 = @"BAD_SIM";
      }
    }

    else
    {
      v33 = @"NO_SIM";
    }

    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v34 localizedStringForKey:v33 value:&stru_287CFDAC8 table:@"SystemStatusServer-Telephony"];

LABEL_29:
    if (registrationStatus - 3 >= 2)
    {
      if (registrationStatus > 1)
      {
        v37 = 0;
        if (v28)
        {
LABEL_34:
          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = [v38 localizedStringForKey:@"SOS_ONLY" value:&stru_287CFDAC8 table:@"SystemStatusServer-Telephony"];

          if (v32)
          {
            [v20 needsUserIdentificationModule];
            v40 = v32;
            v29 = v32;
          }

          else
          {
            v40 = 0;
            v29 = 0;
          }

LABEL_45:
          v41 = v40;
          v42 = v29;
          operatorName = v39;

          v17 = v48;
          goto LABEL_46;
        }

LABEL_37:
        if (-[STTelephonyStatusDomainDataProvider _simStatusMeansLocked:](v31) || [v20 needsUserIdentificationModule])
        {
          v29 = 0;
          if (v32)
          {
            v40 = v32;
          }

          else
          {
            v40 = v37;
          }

          v39 = v40;
        }

        else
        {
          v29 = 0;
          v40 = v37;
          v39 = v37;
        }

        goto LABEL_45;
      }

      v35 = @"SEARCHING";
    }

    else
    {
      v35 = @"NO_SERVICE";
    }

    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:v35 value:&stru_287CFDAC8 table:@"SystemStatusServer-Telephony"];

    if (v28)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  operatorName = [v23 localizedStringForKey:@"SATELLITE" value:&stru_287CFDAC8 table:@"SystemStatusServer-Telephony"];

LABEL_18:
  v29 = 0;
LABEL_46:

  v43 = v29;
  [v15 setServiceDescription:operatorName];
  [v15 setSecondaryServiceDescription:v43];

  dataConnectionType = [v21 dataConnectionType];
  if (slotCopy && [slotCopy isHiddenSIM] && (objc_msgSend(slotCopy, "isBootstrap") & 1) == 0 && objc_msgSend(slotCopy, "isProvidingDataConnection"))
  {
    dataConnectionType = [slotCopy dataConnectionType];
    v45 = 1;
  }

  else
  {
    v45 = 0;
  }

  if ((dataConnectionType - 1) >= 0x10)
  {
    v46 = 0;
  }

  else
  {
    v46 = dataConnectionType;
  }

  [v15 setDataNetworkType:v46];
  [v15 setProvidingDataConnection:{(v45 | objc_msgSend(v21, "isProvidingDataConnection")) & v17}];
  [v15 setPreferredForDataConnections:{objc_msgSend(v21, "isPreferredForDataConnections")}];
  [v15 setRegisteredWithoutCellular:{objc_msgSend(v21, "isRegisteredWithoutCellular")}];
  [v15 setCallForwardingEnabled:{objc_msgSend(v21, "callForwardingIndicator") == 1}];

  return v15;
}

void __58__STTelephonyStatusDomainDataProvider__updateDataForSlot___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    [v3 setSIMOneInfo:*(a1 + 32)];
  }

  if (*(a1 + 49) == 1)
  {
    [v3 setSIMTwoInfo:*(a1 + 40)];
  }

  [v3 setCellularRadioCapabilityEnabled:*(a1 + 50)];
  [v3 setDualSIMEnabled:*(a1 + 51)];
  [v3 setRadioModuleDead:*(a1 + 52)];
  [v3 setUsingStewieForSOS:*(a1 + 53)];
  [v3 setInactiveSOSEnabled:*(a1 + 54)];
  [v3 setUsingStewieConnection:*(a1 + 55)];
  [v3 setUsingStewieConnectionOverInternet:*(a1 + 56)];
}

- (uint64_t)_serviceStateForStateProvider:(void *)provider registrationStatus:(uint64_t)status bootstrap:(int)bootstrap hidden:(char)hidden carrierBundleInfo:(void *)info
{
  v9 = status == 2;
  providerCopy = provider;
  infoCopy = info;
  v12 = [STTelephonyStatusDomainDataProvider _shouldShowEmergencyOnlyStatusForStateProvider:providerCopy registrationStatus:status bootstrap:bootstrap hidden:hidden carrierBundleInfo:infoCopy];
  v13 = 2 * v9;
  if (status == 1)
  {
    v13 = 1;
  }

  if (v12)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

- (BOOL)_shouldShowEmergencyOnlyStatusForStateProvider:(void *)provider registrationStatus:(uint64_t)status bootstrap:(int)bootstrap hidden:(char)hidden carrierBundleInfo:(void *)info
{
  providerCopy = provider;
  infoCopy = info;
  v12 = 0;
  if ((hidden & 1) == 0 && [providerCopy hasCellularTelephony])
  {
    v11 = status == 2 ? bootstrap : 0;
    if ((status == 4 || v11) && ![infoCopy suppressSOSOnlyWithLimitedService])
    {
      v12 = 1;
    }
  }

  return v12;
}

- (BOOL)_simStatusMeansLocked:(void *)locked
{
  lockedCopy = locked;
  if ([lockedCopy compare:*MEMORY[0x277CC3EE8]])
  {
    v2 = [lockedCopy compare:*MEMORY[0x277CC3EF0]] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

@end