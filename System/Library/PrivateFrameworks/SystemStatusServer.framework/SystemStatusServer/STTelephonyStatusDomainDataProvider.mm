@interface STTelephonyStatusDomainDataProvider
- (BOOL)_shouldShowEmergencyOnlyStatusForStateProvider:(void *)a1 registrationStatus:(uint64_t)a2 bootstrap:(int)a3 hidden:(char)a4 carrierBundleInfo:(void *)a5;
- (BOOL)_simStatusMeansLocked:(void *)a1;
- (STTelephonyStatusDomainDataProvider)init;
- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)a3;
- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)a3 stateProvider:(id)a4;
- (STTelephonyStatusDomainDataProvider)initWithStateProvider:(id)a3;
- (id)_SIMInfoForStateProvider:(void *)a3 subscriptionInfo:(void *)a4 carrierBundleInfo:(uint64_t)a5 slot:(void *)a6 otherSlotSubscriptionInfo:;
- (uint64_t)_serviceStateForStateProvider:(void *)a1 registrationStatus:(uint64_t)a2 bootstrap:(int)a3 hidden:(char)a4 carrierBundleInfo:(void *)a5;
- (void)_updateDataForSlot:(uint64_t)a1;
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

- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(STTelephonyStateProvider);
  v6 = [(STTelephonyStatusDomainDataProvider *)self initWithServerHandle:v4 stateProvider:v5];

  return v6;
}

- (STTelephonyStatusDomainDataProvider)initWithStateProvider:(id)a3
{
  v4 = a3;
  v5 = STDefaultStatusDomainPublisherServerHandle();
  v6 = [(STTelephonyStatusDomainDataProvider *)self initWithServerHandle:v5 stateProvider:v4];

  return v6;
}

- (STTelephonyStatusDomainDataProvider)initWithServerHandle:(id)a3 stateProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = STTelephonyStatusDomainDataProvider;
  v8 = [(STTelephonyStatusDomainDataProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_telephonyStateProvider, a4);
    [v7 addObserver:v9];
    v10 = [objc_alloc(MEMORY[0x277D6BB98]) initWithServerHandle:v6];
    telephonyDomainPublisher = v9->_telephonyDomainPublisher;
    v9->_telephonyDomainPublisher = v10;

    [(STTelephonyStatusDomainDataProvider *)v9 _updateDataForSlot:?];
  }

  return v9;
}

- (void)_updateDataForSlot:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
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
            v15 = [v4 isCellularRadioCapabilityActive];
            v16 = [v4 isDualSIMEnabled];
            v17 = [v4 isRadioModuleDead];
            v18 = [v4 isUsingStewieForSOS];
            v19 = [v4 isInactiveSOSEnabled];
            v20 = [v4 isUsingStewieConnection];
            v21 = [v4 isUsingStewieConnectionOverInternet];
            v22 = *(a1 + 16);
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __58__STTelephonyStatusDomainDataProvider__updateDataForSlot___block_invoke;
            v30[3] = &unk_279D34B40;
            v33 = v28;
            v34 = v12;
            v31 = v29;
            v32 = v13;
            v35 = v15;
            v36 = v16;
            v37 = v17;
            v38 = v18;
            v39 = v19;
            v40 = v20;
            v41 = v21;
            v23 = v13;
            v24 = v29;
            [v22 updateDataWithBlock:v30];

            return;
          }

LABEL_20:
          v14 = [v4 carrierBundleInfoForSlot:{2, v25}];
          v13 = [(STTelephonyStatusDomainDataProvider *)a1 _SIMInfoForStateProvider:v4 subscriptionInfo:v7 carrierBundleInfo:v14 slot:2 otherSlotSubscriptionInfo:v5];

          v12 = 1;
          goto LABEL_21;
        }

LABEL_15:
        v9 = 1;
        v10 = [v4 carrierBundleInfoForSlot:{1, v25}];
        v11 = [(STTelephonyStatusDomainDataProvider *)a1 _SIMInfoForStateProvider:v4 subscriptionInfo:v5 carrierBundleInfo:v10 slot:1 otherSlotSubscriptionInfo:v7];

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
  v2 = self;
  if (self)
  {
    self = self->_telephonyDomainPublisher;
  }

  [(STTelephonyStatusDomainDataProvider *)self invalidate];
  [(STTelephonyStatusDomainDataProvider *)v2 invalidate];
  v3.receiver = v2;
  v3.super_class = STTelephonyStatusDomainDataProvider;
  [(STTelephonyStatusDomainDataProvider *)&v3 dealloc];
}

- (void)invalidate
{
  v2 = self;
  if (self)
  {
    self = self->_telephonyStateProvider;
  }

  [(STTelephonyStatusDomainDataProvider *)self removeObserver:v2];
}

- (id)_SIMInfoForStateProvider:(void *)a3 subscriptionInfo:(void *)a4 carrierBundleInfo:(uint64_t)a5 slot:(void *)a6 otherSlotSubscriptionInfo:
{
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277D6BA28];
  v13 = a4;
  v14 = a2;
  v15 = objc_alloc_init(v12);
  if (v10 && [v10 isHiddenSIM])
  {
    v16 = [v10 isBootstrap] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 ^ 1;
  [v15 setSIMPresent:{objc_msgSend(v14, "isSIMPresentForSlot:", a5) & (v16 ^ 1)}];
  [v15 setBootstrap:{objc_msgSend(v10, "isBootstrap")}];
  v18 = [v10 SIMLabel];
  [v15 setLabel:v18];

  v19 = [v10 shortSIMLabel];
  [v15 setShortLabel:v19];

  [v15 setSignalStrengthBars:{objc_msgSend(v10, "signalStrengthBars")}];
  [v15 setMaxSignalStrengthBars:{objc_msgSend(v10, "maxSignalStrengthBars")}];
  LODWORD(v19) = [v10 isBootstrap];
  [v15 setServiceState:{-[STTelephonyStatusDomainDataProvider _serviceStateForStateProvider:registrationStatus:bootstrap:hidden:carrierBundleInfo:](v14, objc_msgSend(v10, "registrationStatus"), v19, v16, v13)}];
  [v15 setCellularServiceState:{-[STTelephonyStatusDomainDataProvider _serviceStateForStateProvider:registrationStatus:bootstrap:hidden:carrierBundleInfo:](v14, objc_msgSend(v10, "cellularRegistrationStatus"), v19, v16, v13)}];
  v20 = v14;
  v21 = v10;
  v22 = v13;
  if (![v20 isUsingStewieForSOS] || !objc_msgSend(v20, "isUsingStewieConnection"))
  {
    if ([v20 isRadioModuleDead])
    {
      v25 = 3;
    }

    else
    {
      v25 = [v21 registrationStatus];
    }

    v26 = [v21 isBootstrap];
    if (v10 && [v21 isHiddenSIM])
    {
      v27 = [v21 isBootstrap] ^ 1;
    }

    else
    {
      v27 = 0;
    }

    v28 = [STTelephonyStatusDomainDataProvider _shouldShowEmergencyOnlyStatusForStateProvider:v20 registrationStatus:v25 bootstrap:v26 hidden:v27 carrierBundleInfo:v22];
    if (!v28 && v25 == 2)
    {
      v24 = [v21 operatorName];
      goto LABEL_18;
    }

    v30 = [v21 SIMStatus];
    v31 = v30;
    v48 = v17;
    if (!v30)
    {
      goto LABEL_20;
    }

    if ([v30 compare:*MEMORY[0x277CC3ED8]])
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
    if (v25 - 3 >= 2)
    {
      if (v25 > 1)
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
          v24 = v39;

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
  v24 = [v23 localizedStringForKey:@"SATELLITE" value:&stru_287CFDAC8 table:@"SystemStatusServer-Telephony"];

LABEL_18:
  v29 = 0;
LABEL_46:

  v43 = v29;
  [v15 setServiceDescription:v24];
  [v15 setSecondaryServiceDescription:v43];

  v44 = [v21 dataConnectionType];
  if (v11 && [v11 isHiddenSIM] && (objc_msgSend(v11, "isBootstrap") & 1) == 0 && objc_msgSend(v11, "isProvidingDataConnection"))
  {
    v44 = [v11 dataConnectionType];
    v45 = 1;
  }

  else
  {
    v45 = 0;
  }

  if ((v44 - 1) >= 0x10)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
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

- (uint64_t)_serviceStateForStateProvider:(void *)a1 registrationStatus:(uint64_t)a2 bootstrap:(int)a3 hidden:(char)a4 carrierBundleInfo:(void *)a5
{
  v9 = a2 == 2;
  v10 = a1;
  v11 = a5;
  v12 = [STTelephonyStatusDomainDataProvider _shouldShowEmergencyOnlyStatusForStateProvider:v10 registrationStatus:a2 bootstrap:a3 hidden:a4 carrierBundleInfo:v11];
  v13 = 2 * v9;
  if (a2 == 1)
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

- (BOOL)_shouldShowEmergencyOnlyStatusForStateProvider:(void *)a1 registrationStatus:(uint64_t)a2 bootstrap:(int)a3 hidden:(char)a4 carrierBundleInfo:(void *)a5
{
  v9 = a1;
  v10 = a5;
  v12 = 0;
  if ((a4 & 1) == 0 && [v9 hasCellularTelephony])
  {
    v11 = a2 == 2 ? a3 : 0;
    if ((a2 == 4 || v11) && ![v10 suppressSOSOnlyWithLimitedService])
    {
      v12 = 1;
    }
  }

  return v12;
}

- (BOOL)_simStatusMeansLocked:(void *)a1
{
  v1 = a1;
  if ([v1 compare:*MEMORY[0x277CC3EE8]])
  {
    v2 = [v1 compare:*MEMORY[0x277CC3EF0]] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

@end