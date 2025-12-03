@interface TUSenderIdentityCapabilities
- (BOOL)canAttemptEmergencyCallsWithoutCellularConnection;
- (BOOL)canAttemptTelephonyCallsWithoutCellularConnection;
- (BOOL)isCSCallingCurrentlyAvailable;
- (BOOL)isEmergencyWiFiCallingCurrentlyAvailable;
- (BOOL)isThumperCallingAllowedForCurrentDevice;
- (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
- (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)d;
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
- (TUSenderIdentityCapabilities)initWithSenderIdentityUUID:(id)d state:(id)state client:(id)client;
- (id)debugDescription;
- (int)thumperCallingProvisioningStatus;
- (int)wiFiCallingProvisioningStatus;
- (void)_sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities:(id)capabilities;
- (void)cancelPinRequestFromPrimaryDeviceForThumperCalling;
- (void)invalidateAndRefreshThumperCallingProvisioningURL;
- (void)invalidateAndRefreshWiFiCallingProvisioningURL;
- (void)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
- (void)requestPinFromPrimaryDeviceForThumperCalling;
@end

@implementation TUSenderIdentityCapabilities

- (BOOL)isThumperCallingEnabled
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isEnabled = [thumperCallingCapabilitiesState isEnabled];

  return isEnabled;
}

- (TUCTCapabilityInfo)thumperCallingCapabilityInfo
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  ctCapabilityInfo = [thumperCallingCapabilitiesState ctCapabilityInfo];

  return ctCapabilityInfo;
}

- (BOOL)isWiFiCallingEnabled
{
  supportsWiFiCalling = [(TUSenderIdentityCapabilities *)self supportsWiFiCalling];
  if (supportsWiFiCalling)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isEnabled = [wiFiCallingCapabilitiesState isEnabled];

    LOBYTE(supportsWiFiCalling) = isEnabled;
  }

  return supportsWiFiCalling;
}

- (BOOL)supportsWiFiCalling
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isSupported = [wiFiCallingCapabilitiesState isSupported];

  return isSupported;
}

- (BOOL)isVoLTECallingEnabled
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  isEnabled = [voLTECallingCapabilitiesState isEnabled];

  return isEnabled;
}

- (BOOL)supportsThumperCalling
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isSupported = [thumperCallingCapabilitiesState isSupported];

  return isSupported;
}

- (BOOL)supportsThumperCallingOverCellularData
{
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsCellularData = [state supportsCellularData];

  return supportsCellularData;
}

- (TUCTCapabilityInfo)wiFiCallingCapabilityInfo
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  ctCapabilityInfo = [wiFiCallingCapabilitiesState ctCapabilityInfo];

  return ctCapabilityInfo;
}

- (BOOL)supportsSimultaneousVoiceAndData
{
  state = [(TUSenderIdentityCapabilities *)self state];
  supportsSimultaneousVoiceAndData = [state supportsSimultaneousVoiceAndData];

  return supportsSimultaneousVoiceAndData;
}

- (BOOL)isWiFiCallingCurrentlyAvailable
{
  isWiFiCallingEnabled = [(TUSenderIdentityCapabilities *)self isWiFiCallingEnabled];
  if (isWiFiCallingEnabled)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isCurrentlyAvailable = [wiFiCallingCapabilitiesState isCurrentlyAvailable];

    LOBYTE(isWiFiCallingEnabled) = isCurrentlyAvailable;
  }

  return isWiFiCallingEnabled;
}

- (TUSenderIdentityCapabilities)initWithSenderIdentityUUID:(id)d state:(id)state client:(id)client
{
  dCopy = d;
  stateCopy = state;
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = TUSenderIdentityCapabilities;
  v11 = [(TUSenderIdentityCapabilities *)&v17 init];
  if (v11)
  {
    v12 = [dCopy copy];
    senderIdentityUUID = v11->_senderIdentityUUID;
    v11->_senderIdentityUUID = v12;

    v14 = [stateCopy copy];
    state = v11->_state;
    v11->_state = v14;

    objc_storeStrong(&v11->_client, client);
  }

  return v11;
}

- (BOOL)canAttemptTelephonyCallsWithoutCellularConnection
{
  if ([(TUSenderIdentityCapabilities *)self isWiFiCallingCurrentlyAvailable])
  {
    return 1;
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  if ([state supportsPrimaryCalling])
  {
    areRelayCallingFeaturesEnabled = 0;
  }

  else if ([(TUSenderIdentityCapabilities *)self isThumperCallingCurrentlyAvailable])
  {
    areRelayCallingFeaturesEnabled = 1;
  }

  else
  {
    client2 = [(TUSenderIdentityCapabilities *)self client];
    state2 = [client2 state];
    areRelayCallingFeaturesEnabled = [state2 areRelayCallingFeaturesEnabled];
  }

  return areRelayCallingFeaturesEnabled;
}

- (BOOL)canAttemptEmergencyCallsWithoutCellularConnection
{
  canAttemptTelephonyCallsWithoutCellularConnection = [(TUSenderIdentityCapabilities *)self canAttemptTelephonyCallsWithoutCellularConnection];
  if (canAttemptTelephonyCallsWithoutCellularConnection)
  {

    LOBYTE(canAttemptTelephonyCallsWithoutCellularConnection) = [(TUSenderIdentityCapabilities *)self isEmergencyWiFiCallingCurrentlyAvailable];
  }

  return canAttemptTelephonyCallsWithoutCellularConnection;
}

- (BOOL)isCSCallingCurrentlyAvailable
{
  state = [(TUSenderIdentityCapabilities *)self state];
  csCallingCapabilitiesState = [state csCallingCapabilitiesState];
  isCurrentlyAvailable = [csCallingCapabilitiesState isCurrentlyAvailable];

  return isCurrentlyAvailable;
}

- (BOOL)supportsVoLTECalling
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  isSupported = [voLTECallingCapabilitiesState isSupported];

  return isSupported;
}

- (TUCTCapabilityInfo)voLTECallingCapabilityInfo
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  ctCapabilityInfo = [voLTECallingCapabilitiesState ctCapabilityInfo];

  return ctCapabilityInfo;
}

- (BOOL)isVoLTECallingCurrentlyAvailable
{
  state = [(TUSenderIdentityCapabilities *)self state];
  voLTECallingCapabilitiesState = [state voLTECallingCapabilitiesState];
  isCurrentlyAvailable = [voLTECallingCapabilitiesState isCurrentlyAvailable];

  return isCurrentlyAvailable;
}

- (BOOL)supportsWiFiCallingRoaming
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isRoamingSupported = [wiFiCallingCapabilitiesState isRoamingSupported];

  return isRoamingSupported;
}

- (BOOL)isWiFiCallingRoamingEnabled
{
  supportsWiFiCallingRoaming = [(TUSenderIdentityCapabilities *)self supportsWiFiCallingRoaming];
  if (supportsWiFiCallingRoaming)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isRoamingEnabled = [wiFiCallingCapabilitiesState isRoamingEnabled];

    LOBYTE(supportsWiFiCallingRoaming) = isRoamingEnabled;
  }

  return supportsWiFiCallingRoaming;
}

- (BOOL)supportsEmergencyWiFiCalling
{
  supportsWiFiCalling = [(TUSenderIdentityCapabilities *)self supportsWiFiCalling];
  if (supportsWiFiCalling)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
    isEmergencySupported = [wiFiCallingCapabilitiesState isEmergencySupported];

    LOBYTE(supportsWiFiCalling) = isEmergencySupported;
  }

  return supportsWiFiCalling;
}

- (BOOL)isEmergencyWiFiCallingCurrentlyAvailable
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isEmergencyCurrentlyAvailable = [wiFiCallingCapabilitiesState isEmergencyCurrentlyAvailable];

  return isEmergencyCurrentlyAvailable;
}

- (int)wiFiCallingProvisioningStatus
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  provisioningStatus = [wiFiCallingCapabilitiesState provisioningStatus];

  return provisioningStatus;
}

- (NSURL)wiFiCallingProvisioningURL
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  provisioningURL = [wiFiCallingCapabilitiesState provisioningURL];

  return provisioningURL;
}

- (BOOL)isWiFiCallingProvisioningURLInvalid
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  isProvisioningURLInvalid = [wiFiCallingCapabilitiesState isProvisioningURLInvalid];

  return isProvisioningURLInvalid;
}

- (NSData)wiFiCallingProvisioningPostData
{
  state = [(TUSenderIdentityCapabilities *)self state];
  wiFiCallingCapabilitiesState = [state wiFiCallingCapabilitiesState];
  provisioningPostData = [wiFiCallingCapabilitiesState provisioningPostData];

  return provisioningPostData;
}

- (BOOL)isThumperCallingAllowedForCurrentDevice
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isApproved = [thumperCallingCapabilitiesState isApproved];

  return isApproved;
}

- (BOOL)isThumperCallingCurrentlyAvailable
{
  isThumperCallingEnabled = [(TUSenderIdentityCapabilities *)self isThumperCallingEnabled];
  if (isThumperCallingEnabled)
  {
    state = [(TUSenderIdentityCapabilities *)self state];
    thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
    isCurrentlyAvailable = [thumperCallingCapabilitiesState isCurrentlyAvailable];

    LOBYTE(isThumperCallingEnabled) = isCurrentlyAvailable;
  }

  return isThumperCallingEnabled;
}

- (int)thumperCallingProvisioningStatus
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  provisioningStatus = [thumperCallingCapabilitiesState provisioningStatus];

  return provisioningStatus;
}

- (NSURL)thumperCallingProvisioningURL
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  provisioningURL = [thumperCallingCapabilitiesState provisioningURL];

  return provisioningURL;
}

- (BOOL)isThumperCallingProvisioningURLInvalid
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isProvisioningURLInvalid = [thumperCallingCapabilitiesState isProvisioningURLInvalid];

  return isProvisioningURLInvalid;
}

- (NSData)thumperCallingProvisioningPostData
{
  state = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  provisioningPostData = [thumperCallingCapabilitiesState provisioningPostData];

  return provisioningPostData;
}

- (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if ((supportsPrimaryCalling & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s can only be called from devices with [TUCallCapabilities supportsPrimaryCalling] = YES", "-[TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:]"];
    NSLog(&cfstr_TuassertionFai.isa, v8);

    if (_TUAssertShouldCrashApplication())
    {
      client2 = [(TUSenderIdentityCapabilities *)self client];
      state2 = [client2 state];
      supportsPrimaryCalling2 = [state2 supportsPrimaryCalling];

      if ((supportsPrimaryCalling2 & 1) == 0)
      {
        [TUSenderIdentityCapabilities isThumperCallingAllowedOnSecondaryDeviceWithID:];
      }
    }
  }

  state3 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state3 thumperCallingCapabilitiesState];

  approvedSecondaryDeviceIDs = [thumperCallingCapabilitiesState approvedSecondaryDeviceIDs];
  v15 = [approvedSecondaryDeviceIDs containsObject:dCopy];

  return v15;
}

- (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice
{
  client = [(TUSenderIdentityCapabilities *)self client];
  state = [client state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  if ((supportsPrimaryCalling & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s can only be called from devices with [TUCallCapabilities supportsPrimaryCalling] = YES", "-[TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice]"];
    NSLog(&cfstr_TuassertionFai.isa, v6);

    if (_TUAssertShouldCrashApplication())
    {
      client2 = [(TUSenderIdentityCapabilities *)self client];
      state2 = [client2 state];
      supportsPrimaryCalling2 = [state2 supportsPrimaryCalling];

      if ((supportsPrimaryCalling2 & 1) == 0)
      {
        [TUSenderIdentityCapabilities isThumperCallingAllowedOnDefaultPairedSecondaryDevice];
      }
    }
  }

  state3 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState = [state3 thumperCallingCapabilitiesState];

  if ([thumperCallingCapabilitiesState supportsDefaultPairedDevice])
  {
    client3 = [(TUSenderIdentityCapabilities *)self client];
    state4 = [client3 state];
    defaultPairedDevice = [state4 defaultPairedDevice];
    uniqueID = [defaultPairedDevice uniqueID];
    v16 = [(TUSenderIdentityCapabilities *)self isThumperCallingAllowedOnSecondaryDeviceWithID:uniqueID];
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

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)invalidateAndRefreshThumperCallingProvisioningURL
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to invalidate and refresh Thumper calling provisioning URL", v6, 2u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  senderIdentityUUID = [(TUSenderIdentityCapabilities *)self senderIdentityUUID];
  [client invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityWithUUID:senderIdentityUUID];
}

- (void)requestPinFromPrimaryDeviceForThumperCalling
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to request PIN from primary device for Thumper calling", v5, 2u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  [client requestPinFromPrimaryDevice];
}

- (void)cancelPinRequestFromPrimaryDeviceForThumperCalling
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Asked to cancel PIN from primary device for Thumper calling", v5, 2u);
  }

  client = [(TUSenderIdentityCapabilities *)self client];
  [client cancelPinRequestFromPrimaryDevice];
}

- (void)_sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities:(id)capabilities
{
  v81 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  isWiFiCallingEnabled = [capabilitiesCopy isWiFiCallingEnabled];
  isVoLTECallingEnabled = [capabilitiesCopy isVoLTECallingEnabled];
  supportsThumperCalling = [capabilitiesCopy supportsThumperCalling];
  supportsThumperCallingOverCellularData = [capabilitiesCopy supportsThumperCallingOverCellularData];
  isThumperCallingEnabled = [capabilitiesCopy isThumperCallingEnabled];
  thumperCallingCapabilityInfo = [capabilitiesCopy thumperCallingCapabilityInfo];
  provisioningStatus = [thumperCallingCapabilityInfo provisioningStatus];

  wiFiCallingCapabilityInfo = [capabilitiesCopy wiFiCallingCapabilityInfo];
  provisioningURL = [wiFiCallingCapabilityInfo provisioningURL];

  thumperCallingCapabilityInfo2 = [capabilitiesCopy thumperCallingCapabilityInfo];
  provisioningURL2 = [thumperCallingCapabilityInfo2 provisioningURL];

  state = [capabilitiesCopy state];
  thumperCallingCapabilitiesState = [state thumperCallingCapabilitiesState];
  isAssociated = [thumperCallingCapabilitiesState isAssociated];

  state2 = [capabilitiesCopy state];

  thumperCallingCapabilitiesState2 = [state2 thumperCallingCapabilitiesState];
  supportsDefaultPairedDevice = [thumperCallingCapabilitiesState2 supportsDefaultPairedDevice];

  isWiFiCallingEnabled2 = [(TUSenderIdentityCapabilities *)self isWiFiCallingEnabled];
  isVoLTECallingEnabled2 = [(TUSenderIdentityCapabilities *)self isVoLTECallingEnabled];
  supportsThumperCalling2 = [(TUSenderIdentityCapabilities *)self supportsThumperCalling];
  supportsThumperCallingOverCellularData2 = [(TUSenderIdentityCapabilities *)self supportsThumperCallingOverCellularData];
  isThumperCallingEnabled2 = [(TUSenderIdentityCapabilities *)self isThumperCallingEnabled];
  thumperCallingCapabilityInfo3 = [(TUSenderIdentityCapabilities *)self thumperCallingCapabilityInfo];
  provisioningStatus2 = [thumperCallingCapabilityInfo3 provisioningStatus];

  wiFiCallingCapabilityInfo2 = [(TUSenderIdentityCapabilities *)self wiFiCallingCapabilityInfo];
  provisioningURL3 = [wiFiCallingCapabilityInfo2 provisioningURL];

  thumperCallingCapabilityInfo4 = [(TUSenderIdentityCapabilities *)self thumperCallingCapabilityInfo];
  provisioningURL4 = [thumperCallingCapabilityInfo4 provisioningURL];

  state3 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState3 = [state3 thumperCallingCapabilitiesState];
  isAssociated2 = [thumperCallingCapabilitiesState3 isAssociated];

  state4 = [(TUSenderIdentityCapabilities *)self state];
  thumperCallingCapabilitiesState4 = [state4 thumperCallingCapabilitiesState];
  supportsDefaultPairedDevice2 = [thumperCallingCapabilitiesState4 supportsDefaultPairedDevice];

  v25 = 0x1E696A000;
  if (isWiFiCallingEnabled != isWiFiCallingEnabled2)
  {
    v26 = TUDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v62 = isWiFiCallingEnabled;
      *&v62[4] = 1024;
      *&v62[6] = isWiFiCallingEnabled2;
      _os_log_impl(&dword_1956FD000, v26, OS_LOG_TYPE_DEFAULT, "WiFi capabilities changed from %d to %d", buf, 0xEu);
    }

    client = [(TUSenderIdentityCapabilities *)self client];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke;
    v60[3] = &unk_1E7424DA0;
    v60[4] = self;
    [client performDelegateCallbackBlock:v60];

    v25 = 0x1E696A000uLL;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"TUCallCapabilitiesWiFiCallingChangedNotification" object:0];
  }

  if (isVoLTECallingEnabled != isVoLTECallingEnabled2)
  {
    v29 = TUDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v62 = isVoLTECallingEnabled;
      *&v62[4] = 1024;
      *&v62[6] = isVoLTECallingEnabled2;
      _os_log_impl(&dword_1956FD000, v29, OS_LOG_TYPE_DEFAULT, "VoLTE capabilities changed from %d to %d", buf, 0xEu);
    }

    client2 = [(TUSenderIdentityCapabilities *)self client];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_12;
    v59[3] = &unk_1E7424DA0;
    v59[4] = self;
    [client2 performDelegateCallbackBlock:v59];

    defaultCenter2 = [*(v25 + 3464) defaultCenter];
    [defaultCenter2 postNotificationName:@"TUCallCapabilitiesVoLTECallingChangedNotification" object:0];
  }

  if (supportsThumperCalling != supportsThumperCalling2 || ((supportsThumperCallingOverCellularData ^ supportsThumperCallingOverCellularData2) & 1) != 0 || ((isThumperCallingEnabled ^ isThumperCallingEnabled2) & 1) != 0 || provisioningStatus != provisioningStatus2 || ((supportsDefaultPairedDevice ^ supportsDefaultPairedDevice2) & 1) != 0 || isAssociated != isAssociated2)
  {
    v32 = TUDefaultLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67111936;
      *v62 = supportsThumperCalling;
      *&v62[4] = 1024;
      *&v62[6] = supportsThumperCallingOverCellularData;
      LOWORD(v63) = 1024;
      *(&v63 + 2) = isThumperCallingEnabled;
      HIWORD(v63) = 1024;
      v64 = provisioningStatus;
      v65 = 1024;
      v66 = isAssociated;
      v67 = 1024;
      v68 = supportsDefaultPairedDevice;
      v69 = 1024;
      v70 = supportsThumperCalling2;
      v71 = 1024;
      v72 = supportsThumperCallingOverCellularData2;
      v73 = 1024;
      v74 = isThumperCallingEnabled2;
      v75 = 1024;
      v76 = provisioningStatus2;
      v77 = 1024;
      v78 = isAssociated2;
      v79 = 1024;
      v80 = supportsDefaultPairedDevice2;
      _os_log_impl(&dword_1956FD000, v32, OS_LOG_TYPE_DEFAULT, "Thumper capabilities changed from (supported=%d overCellularData=%d enabled=%d provisioningStatus=%d, associated=%d, supportsDefaultPairedDevice=%d) to (supported=%d overCellularData=%d enabled=%d provisioningStatus=%d, associated=%d, supportsDefaultPairedDevice=%d)", buf, 0x4Au);
    }

    client3 = [(TUSenderIdentityCapabilities *)self client];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_15;
    v58[3] = &unk_1E7424DA0;
    v58[4] = self;
    [client3 performDelegateCallbackBlock:v58];

    defaultCenter3 = [*(v25 + 3464) defaultCenter];
    [defaultCenter3 postNotificationName:@"TUCallCapabilitiesThumperCallingChangedNotification" object:0];
  }

  if ((TUObjectsAreEqualOrNil(provisioningURL, provisioningURL3) & 1) == 0)
  {
    v35 = TUDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v62 = provisioningURL;
      *&v62[8] = 2112;
      v63 = provisioningURL3;
      _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "WiFi calling URL changed from %@ to %@", buf, 0x16u);
    }

    client4 = [(TUSenderIdentityCapabilities *)self client];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_18;
    v57[3] = &unk_1E7424DA0;
    v57[4] = self;
    [client4 performDelegateCallbackBlock:v57];

    defaultCenter4 = [*(v25 + 3464) defaultCenter];
    [defaultCenter4 postNotificationName:@"TUCallCapabilitiesWiFiCallingProvisioningURLChangedNotification" object:0];
  }

  if ((TUObjectsAreEqualOrNil(provisioningURL2, provisioningURL4) & 1) == 0)
  {
    v38 = TUDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v62 = provisioningURL2;
      *&v62[8] = 2112;
      v63 = provisioningURL4;
      _os_log_impl(&dword_1956FD000, v38, OS_LOG_TYPE_DEFAULT, "Thumper calling URL changed from %@ to %@", buf, 0x16u);
    }

    client5 = [(TUSenderIdentityCapabilities *)self client];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __103__TUSenderIdentityCapabilities__sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities___block_invoke_21;
    v56[3] = &unk_1E7424DA0;
    v56[4] = self;
    [client5 performDelegateCallbackBlock:v56];

    defaultCenter5 = [*(v25 + 3464) defaultCenter];
    [defaultCenter5 postNotificationName:@"TUCallCapabilitiesThumperCallingProvisioningURLChangedNotification" object:0];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
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