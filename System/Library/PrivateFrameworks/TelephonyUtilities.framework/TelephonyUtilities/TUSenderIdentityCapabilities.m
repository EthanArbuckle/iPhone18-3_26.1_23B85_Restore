@interface TUSenderIdentityCapabilities
- (BOOL)canAttemptEmergencyCallsWithoutCellularConnection;
- (BOOL)canAttemptTelephonyCallsWithoutCellularConnection;
- (BOOL)isCSCallingCurrentlyAvailable;
- (BOOL)isEmergencyWiFiCallingCurrentlyAvailable;
- (BOOL)isThumperCallingAllowedForCurrentDevice;
- (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
- (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)a3;
- (BOOL)isThumperCallingCurrentlyAvailable;
- (BOOL)isThumperCallingEnabled;
- (BOOL)isThumperCallingProvisioningURLInvalid;
- (BOOL)isVoLTECallingCurrentlyAvailable;
- (BOOL)isVoLTECallingEnabled;
- (BOOL)isWiFiCallingCurrentlyAvailable;
- (BOOL)isWiFiCallingEnabled;
- (BOOL)isWiFiCallingProvisioningURLInvalid;
- (BOOL)isWiFiCallingRoamingEnabled;
- (BOOL)supportsEmergencyWiFiCalling;
- (BOOL)supportsSimultaneousVoiceAndData;
- (BOOL)supportsThumperCalling;
- (BOOL)supportsThumperCallingOverCellularData;
- (BOOL)supportsVoLTECalling;
- (BOOL)supportsWiFiCalling;
- (BOOL)supportsWiFiCallingRoaming;
- (NSData)thumperCallingProvisioningPostData;
- (NSData)wiFiCallingProvisioningPostData;
- (NSURL)thumperCallingProvisioningURL;
- (NSURL)wiFiCallingProvisioningURL;
- (TUCTCapabilityInfo)thumperCallingCapabilityInfo;
- (TUCTCapabilityInfo)voLTECallingCapabilityInfo;
- (TUCTCapabilityInfo)wiFiCallingCapabilityInfo;
- (TUSenderIdentityCapabilities)initWithSenderIdentityUUID:(id)a3 state:(id)a4 client:(id)a5;
- (id)debugDescription;
- (int)thumperCallingProvisioningStatus;
- (int)wiFiCallingProvisioningStatus;
- (void)_sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities:(id)a3;
- (void)cancelPinRequestFromPrimaryDeviceForThumperCalling;
- (void)invalidateAndRefreshThumperCallingProvisioningURL;
- (void)invalidateAndRefreshWiFiCallingProvisioningURL;
- (void)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
- (void)requestPinFromPrimaryDeviceForThumperCalling;
@end

@implementation TUSenderIdentityCapabilities

- (BOOL)isThumperCallingEnabled
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 isEnabled];

  return v4;
}

- (TUCTCapabilityInfo)thumperCallingCapabilityInfo
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 ctCapabilityInfo];

  return v4;
}

- (BOOL)isWiFiCallingEnabled
{
  v3 = [(TUSenderIdentityCapabilities *)self supportsWiFiCalling];
  if (v3)
  {
    v4 = [(TUSenderIdentityCapabilities *)self state];
    v5 = [v4 wiFiCallingCapabilitiesState];
    v6 = [v5 isEnabled];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)supportsWiFiCalling
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 isSupported];

  return v4;
}

- (BOOL)isVoLTECallingEnabled
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 voLTECallingCapabilitiesState];
  v4 = [v3 isEnabled];

  return v4;
}

- (BOOL)supportsThumperCalling
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 isSupported];

  return v4;
}

- (BOOL)supportsThumperCallingOverCellularData
{
  v2 = [(TUSenderIdentityCapabilities *)self client];
  v3 = [v2 state];
  v4 = [v3 supportsCellularData];

  return v4;
}

- (TUCTCapabilityInfo)wiFiCallingCapabilityInfo
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 ctCapabilityInfo];

  return v4;
}

- (BOOL)supportsSimultaneousVoiceAndData
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 supportsSimultaneousVoiceAndData];

  return v3;
}

- (BOOL)isWiFiCallingCurrentlyAvailable
{
  v3 = [(TUSenderIdentityCapabilities *)self isWiFiCallingEnabled];
  if (v3)
  {
    v4 = [(TUSenderIdentityCapabilities *)self state];
    v5 = [v4 wiFiCallingCapabilitiesState];
    v6 = [v5 isCurrentlyAvailable];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (TUSenderIdentityCapabilities)initWithSenderIdentityUUID:(id)a3 state:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = TUSenderIdentityCapabilities;
  v11 = [(TUSenderIdentityCapabilities *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    senderIdentityUUID = v11->_senderIdentityUUID;
    v11->_senderIdentityUUID = v12;

    v14 = [v9 copy];
    state = v11->_state;
    v11->_state = v14;

    objc_storeStrong(&v11->_client, a5);
  }

  return v11;
}

- (BOOL)canAttemptTelephonyCallsWithoutCellularConnection
{
  if ([(TUSenderIdentityCapabilities *)self isWiFiCallingCurrentlyAvailable])
  {
    return 1;
  }

  v4 = [(TUSenderIdentityCapabilities *)self client];
  v5 = [v4 state];
  if ([v5 supportsPrimaryCalling])
  {
    v3 = 0;
  }

  else if ([(TUSenderIdentityCapabilities *)self isThumperCallingCurrentlyAvailable])
  {
    v3 = 1;
  }

  else
  {
    v6 = [(TUSenderIdentityCapabilities *)self client];
    v7 = [v6 state];
    v3 = [v7 areRelayCallingFeaturesEnabled];
  }

  return v3;
}

- (BOOL)canAttemptEmergencyCallsWithoutCellularConnection
{
  v3 = [(TUSenderIdentityCapabilities *)self canAttemptTelephonyCallsWithoutCellularConnection];
  if (v3)
  {

    LOBYTE(v3) = [(TUSenderIdentityCapabilities *)self isEmergencyWiFiCallingCurrentlyAvailable];
  }

  return v3;
}

- (BOOL)isCSCallingCurrentlyAvailable
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 csCallingCapabilitiesState];
  v4 = [v3 isCurrentlyAvailable];

  return v4;
}

- (BOOL)supportsVoLTECalling
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 voLTECallingCapabilitiesState];
  v4 = [v3 isSupported];

  return v4;
}

- (TUCTCapabilityInfo)voLTECallingCapabilityInfo
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 voLTECallingCapabilitiesState];
  v4 = [v3 ctCapabilityInfo];

  return v4;
}

- (BOOL)isVoLTECallingCurrentlyAvailable
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 voLTECallingCapabilitiesState];
  v4 = [v3 isCurrentlyAvailable];

  return v4;
}

- (BOOL)supportsWiFiCallingRoaming
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 isRoamingSupported];

  return v4;
}

- (BOOL)isWiFiCallingRoamingEnabled
{
  v3 = [(TUSenderIdentityCapabilities *)self supportsWiFiCallingRoaming];
  if (v3)
  {
    v4 = [(TUSenderIdentityCapabilities *)self state];
    v5 = [v4 wiFiCallingCapabilitiesState];
    v6 = [v5 isRoamingEnabled];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)supportsEmergencyWiFiCalling
{
  v3 = [(TUSenderIdentityCapabilities *)self supportsWiFiCalling];
  if (v3)
  {
    v4 = [(TUSenderIdentityCapabilities *)self state];
    v5 = [v4 wiFiCallingCapabilitiesState];
    v6 = [v5 isEmergencySupported];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)isEmergencyWiFiCallingCurrentlyAvailable
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 isEmergencyCurrentlyAvailable];

  return v4;
}

- (int)wiFiCallingProvisioningStatus
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 provisioningStatus];

  return v4;
}

- (NSURL)wiFiCallingProvisioningURL
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 provisioningURL];

  return v4;
}

- (BOOL)isWiFiCallingProvisioningURLInvalid
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 isProvisioningURLInvalid];

  return v4;
}

- (NSData)wiFiCallingProvisioningPostData
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 wiFiCallingCapabilitiesState];
  v4 = [v3 provisioningPostData];

  return v4;
}

- (BOOL)isThumperCallingAllowedForCurrentDevice
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 isApproved];

  return v4;
}

- (BOOL)isThumperCallingCurrentlyAvailable
{
  v3 = [(TUSenderIdentityCapabilities *)self isThumperCallingEnabled];
  if (v3)
  {
    v4 = [(TUSenderIdentityCapabilities *)self state];
    v5 = [v4 thumperCallingCapabilitiesState];
    v6 = [v5 isCurrentlyAvailable];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (int)thumperCallingProvisioningStatus
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 provisioningStatus];

  return v4;
}

- (NSURL)thumperCallingProvisioningURL
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 provisioningURL];

  return v4;
}

- (BOOL)isThumperCallingProvisioningURLInvalid
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 isProvisioningURLInvalid];

  return v4;
}

- (NSData)thumperCallingProvisioningPostData
{
  v2 = [(TUSenderIdentityCapabilities *)self state];
  v3 = [v2 thumperCallingCapabilitiesState];
  v4 = [v3 provisioningPostData];

  return v4;
}

- (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityCapabilities *)self client];
  v6 = [v5 state];
  v7 = [v6 supportsPrimaryCalling];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s can only be called from devices with [TUCallCapabilities supportsPrimaryCalling] = YES", "-[TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:]"];
    NSLog(&cfstr_TuassertionFai.isa, v8);

    if (_TUAssertShouldCrashApplication())
    {
      v9 = [(TUSenderIdentityCapabilities *)self client];
      v10 = [v9 state];
      v11 = [v10 supportsPrimaryCalling];

      if ((v11 & 1) == 0)
      {
        [TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:];
      }
    }
  }

  v12 = [(TUSenderIdentityCapabilities *)self state];
  v13 = [v12 thumperCallingCapabilitiesState];

  v14 = [v13 approvedSecondaryDeviceIDs];
  v15 = [v14 containsObject:v4];

  return v15;
}

- (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice
{
  v3 = [(TUSenderIdentityCapabilities *)self client];
  v4 = [v3 state];
  v5 = [v4 supportsPrimaryCalling];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s can only be called from devices with [TUCallCapabilities supportsPrimaryCalling] = YES", "-[TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice]"];
    NSLog(&cfstr_TuassertionFai.isa, v6);

    if (_TUAssertShouldCrashApplication())
    {
      v7 = [(TUSenderIdentityCapabilities *)self client];
      v8 = [v7 state];
      v9 = [v8 supportsPrimaryCalling];

      if ((v9 & 1) == 0)
      {
        [TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice];
      }
    }
  }

  v10 = [(TUSenderIdentityCapabilities *)self state];
  v11 = [v10 thumperCallingCapabilitiesState];

  if ([v11 supportsDefaultPairedDevice])
  {
    v12 = [(TUSenderIdentityCapabilities *)self client];
    v13 = [v12 state];
    v14 = [v13 defaultPairedDevice];
    v15 = [v14 uniqueID];
    v16 = [(TUSenderIdentityCapabilities *)self isThumperCallingAllowedOnSecondaryDeviceWithID:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)invalidateAndRefreshWiFiCallingProvisioningURL
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to invalidate and refresh WiFi calling provisioning URL", v6, 2u);
  }

  v4 = [(TUSenderIdentityCapabilities *)self client];
  v5 = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [v4 invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:v5];
}

- (void)invalidateAndRefreshThumperCallingProvisioningURL
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to invalidate and refresh Thumper calling provisioning URL", v6, 2u);
  }

  v4 = [(TUSenderIdentityCapabilities *)self client];
  v5 = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [v4 invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:v5];
}

- (void)requestPinFromPrimaryDeviceForThumperCalling
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to request PIN from primary device for Thumper calling", v5, 2u);
  }

  v4 = [(TUSenderIdentityCapabilities *)self client];
  [v4 requestPinFromPrimaryDevice];
}

- (void)cancelPinRequestFromPrimaryDeviceForThumperCalling
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to cancel PIN from primary device for Thumper calling", v5, 2u);
  }

  v4 = [(TUSenderIdentityCapabilities *)self client];
  [v4 cancelPinRequestFromPrimaryDevice];
}

- (void)_sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 isWiFiCallingEnabled];
  v53 = [v4 isVoLTECallingEnabled];
  v55 = [v4 supportsThumperCalling];
  v44 = [v4 supportsThumperCallingOverCellularData];
  v51 = [v4 isThumperCallingEnabled];
  v6 = [v4 thumperCallingCapabilityInfo];
  v49 = [v6 provisioningStatus];

  v7 = [v4 wiFiCallingCapabilityInfo];
  v45 = [v7 provisioningURL];

  v8 = [v4 thumperCallingCapabilityInfo];
  v46 = [v8 provisioningURL];

  v9 = [v4 state];
  v10 = [v9 thumperCallingCapabilitiesState];
  v43 = [v10 isAssociated];

  v11 = [v4 state];

  v12 = [v11 thumperCallingCapabilitiesState];
  v47 = [v12 supportsDefaultPairedDevice];

  v13 = [(TUSenderIdentityCapabilities *)self isWiFiCallingEnabled];
  v14 = [(TUSenderIdentityCapabilities *)self isVoLTECallingEnabled];
  v54 = [(TUSenderIdentityCapabilities *)self supportsThumperCalling];
  v52 = [(TUSenderIdentityCapabilities *)self supportsThumperCallingOverCellularData];
  v50 = [(TUSenderIdentityCapabilities *)self isThumperCallingEnabled];
  v15 = [(TUSenderIdentityCapabilities *)self thumperCallingCapabilityInfo];
  v48 = [v15 provisioningStatus];

  v16 = [(TUSenderIdentityCapabilities *)self wiFiCallingCapabilityInfo];
  v17 = [v16 provisioningURL];

  v18 = [(TUSenderIdentityCapabilities *)self thumperCallingCapabilityInfo];
  v19 = [v18 provisioningURL];

  v20 = [(TUSenderIdentityCapabilities *)self state];
  v21 = [v20 thumperCallingCapabilitiesState];
  v42 = [v21 isAssociated];

  v22 = [(TUSenderIdentityCapabilities *)self state];
  v23 = [v22 thumperCallingCapabilitiesState];
  v24 = [v23 supportsDefaultPairedDevice];

  v25 = 0x1E696A000;
  if (v5 != v13)
  {
    v26 = TUDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v62 = v5;
      *&v62[4] = 1024;
      *&v62[6] = v13;
      _os_log_impl(&dword_1956FD000, v26, OS_LOG_TYPE_DEFAULT, "WiFi capabilities changed from %d to %d", buf, 0xEu);
    }

    v27 = [(TUSenderIdentityCapabilities *)self client];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke;
    v60[3] = &unk_1E7424DA0;
    v60[4] = self;
    [v27 performDelegateCallbackBlock:v60];

    v25 = 0x1E696A000uLL;
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 postNotificationName:@"TUCallCapabilitiesWiFiCallingChangedNotification" object:0];
  }

  if (v53 != v14)
  {
    v29 = TUDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v62 = v53;
      *&v62[4] = 1024;
      *&v62[6] = v14;
      _os_log_impl(&dword_1956FD000, v29, OS_LOG_TYPE_DEFAULT, "VoLTE capabilities changed from %d to %d", buf, 0xEu);
    }

    v30 = [(TUSenderIdentityCapabilities *)self client];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_12;
    v59[3] = &unk_1E7424DA0;
    v59[4] = self;
    [v30 performDelegateCallbackBlock:v59];

    v31 = [*(v25 + 3464) defaultCenter];
    [v31 postNotificationName:@"TUCallCapabilitiesVoLTECallingChangedNotification" object:0];
  }

  if (v55 != v54 || ((v44 ^ v52) & 1) != 0 || ((v51 ^ v50) & 1) != 0 || v49 != v48 || ((v47 ^ v24) & 1) != 0 || v43 != v42)
  {
    v32 = TUDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67111936;
      *v62 = v55;
      *&v62[4] = 1024;
      *&v62[6] = v44;
      LOWORD(v63) = 1024;
      *(&v63 + 2) = v51;
      HIWORD(v63) = 1024;
      v64 = v49;
      v65 = 1024;
      v66 = v43;
      v67 = 1024;
      v68 = v47;
      v69 = 1024;
      v70 = v54;
      v71 = 1024;
      v72 = v52;
      v73 = 1024;
      v74 = v50;
      v75 = 1024;
      v76 = v48;
      v77 = 1024;
      v78 = v42;
      v79 = 1024;
      v80 = v24;
      _os_log_impl(&dword_1956FD000, v32, OS_LOG_TYPE_DEFAULT, "Thumper capabilities changed from (supported=%d overCellularData=%d enabled=%d provisioningStatus=%d, associated=%d, supportsDefaultPairedDevice=%d) to (supported=%d overCellularData=%d enabled=%d provisioningStatus=%d, associated=%d, supportsDefaultPairedDevice=%d)", buf, 0x4Au);
    }

    v33 = [(TUSenderIdentityCapabilities *)self client];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_15;
    v58[3] = &unk_1E7424DA0;
    v58[4] = self;
    [v33 performDelegateCallbackBlock:v58];

    v34 = [*(v25 + 3464) defaultCenter];
    [v34 postNotificationName:@"TUCallCapabilitiesThumperCallingChangedNotification" object:0];
  }

  if ((TUObjectsAreEqualOrNil(v45, v17) & 1) == 0)
  {
    v35 = TUDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v62 = v45;
      *&v62[8] = 2112;
      v63 = v17;
      _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "WiFi calling URL changed from %@ to %@", buf, 0x16u);
    }

    v36 = [(TUSenderIdentityCapabilities *)self client];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_18;
    v57[3] = &unk_1E7424DA0;
    v57[4] = self;
    [v36 performDelegateCallbackBlock:v57];

    v37 = [*(v25 + 3464) defaultCenter];
    [v37 postNotificationName:@"TUCallCapabilitiesWiFiCallingProvisioningURLChangedNotification" object:0];
  }

  if ((TUObjectsAreEqualOrNil(v46, v19) & 1) == 0)
  {
    v38 = TUDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v62 = v46;
      *&v62[8] = 2112;
      v63 = v19;
      _os_log_impl(&dword_1956FD000, v38, OS_LOG_TYPE_DEFAULT, "Thumper calling URL changed from %@ to %@", buf, 0x16u);
    }

    v39 = [(TUSenderIdentityCapabilities *)self client];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_21;
    v56[3] = &unk_1E7424DA0;
    v56[4] = self;
    [v39 performDelegateCallbackBlock:v56];

    v40 = [*(v25 + 3464) defaultCenter];
    [v40 postNotificationName:@"TUCallCapabilitiesThumperCallingProvisioningURLChangedNotification" object:0];
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeWiFiCallingCapabilitiesForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_12(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeVoLTECallingCapabilitiesForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_15(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeWiFiCallingProvisionalURLForSenderIdentityWithUUID:v3];
  }
}

void __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_21(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) senderIdentityUUID];
    [v4 didChangeThumperCallingProvisionalURLForSenderIdentityWithUUID:v3];
  }
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"== TUSenderIdentityCapabilities ==\n"];
  [v3 appendString:@"CDMA:\n"];
  [v3 appendFormat:@"    supportsSimultaneousVoiceAndData: %d\n", -[TUSenderIdentityCapabilities supportsSimultaneousVoiceAndData](self, "supportsSimultaneousVoiceAndData")];
  [v3 appendString:@"Wi-Fi calling:\n"];
  [v3 appendFormat:@"    supportsWiFiCalling: %d\n", -[TUSenderIdentityCapabilities supportsWiFiCalling](self, "supportsWiFiCalling")];
  [v3 appendFormat:@"    isWiFiCallingEnabled: %d\n", -[TUSenderIdentityCapabilities isWiFiCallingEnabled](self, "isWiFiCallingEnabled")];
  [v3 appendFormat:@"    isWiFiCallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isWiFiCallingCurrentlyAvailable](self, "isWiFiCallingCurrentlyAvailable")];
  [v3 appendFormat:@"    supportsEmergencyWiFiCalling: %d\n", -[TUSenderIdentityCapabilities supportsEmergencyWiFiCalling](self, "supportsEmergencyWiFiCalling")];
  [v3 appendFormat:@"    isEmergencyWiFiCallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isEmergencyWiFiCallingCurrentlyAvailable](self, "isEmergencyWiFiCallingCurrentlyAvailable")];
  [v3 appendString:@"VoLTE calling:\n"];
  [v3 appendFormat:@"    supportsVoLTECalling: %d\n", -[TUSenderIdentityCapabilities supportsVoLTECalling](self, "supportsVoLTECalling")];
  [v3 appendFormat:@"    isVoLTECallingEnabled: %d\n", -[TUSenderIdentityCapabilities isVoLTECallingEnabled](self, "isVoLTECallingEnabled")];
  [v3 appendFormat:@"    isVoLTECallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isVoLTECallingCurrentlyAvailable](self, "isVoLTECallingCurrentlyAvailable")];
  [v3 appendString:@"Thumper calling:\n"];
  [v3 appendFormat:@"    supportsThumperCalling: %d\n", -[TUSenderIdentityCapabilities supportsThumperCalling](self, "supportsThumperCalling")];
  [v3 appendFormat:@"    isThumperCallingAllowedForCurrentDevice: %d\n", -[TUSenderIdentityCapabilities isThumperCallingAllowedForCurrentDevice](self, "isThumperCallingAllowedForCurrentDevice")];
  [v3 appendFormat:@"    isThumperCallingEnabled: %d\n", -[TUSenderIdentityCapabilities isThumperCallingEnabled](self, "isThumperCallingEnabled")];
  [v3 appendFormat:@"    supportsThumperCallingOverCellularData: %d\n", -[TUSenderIdentityCapabilities supportsThumperCallingOverCellularData](self, "supportsThumperCallingOverCellularData")];
  [v3 appendFormat:@"    isThumperCallingCurrentlyAvailable: %d\n", -[TUSenderIdentityCapabilities isThumperCallingCurrentlyAvailable](self, "isThumperCallingCurrentlyAvailable")];

  return v3;
}

- (void)isThumperCallingAllowedOnSecondaryDeviceWithID:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:]" object:? file:? lineNumber:? description:?];
}

- (void)isThumperCallingAllowedOnDefaultPairedSecondaryDevice
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice]" object:? file:? lineNumber:? description:?];
}

- (void)setThumperCallingAllowed:onSecondaryDeviceWithID:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities setThumperCallingAllowed:onSecondaryDeviceWithID:]" object:? file:? lineNumber:? description:?];
}

- (void)setThumperCallingAllowedOnDefaultPairedSecondaryDevice:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:"-[TUSenderIdentityCapabilities setThumperCallingAllowedOnDefaultPairedSecondaryDevice:]" object:? file:? lineNumber:? description:?];
}

@end