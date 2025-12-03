@interface TUCallCapabilities
+ (BOOL)accountsMatchForSecondaryCalling;
+ (BOOL)accountsSupportSecondaryCalling;
+ (BOOL)areCTCapabilitiesValid;
+ (BOOL)areCallsOnOtherDevicesEnabled;
+ (BOOL)areRelayCallingFeaturesEnabled;
+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnection;
+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:(id)d;
+ (BOOL)canAttemptTelephonyCallsWithoutCellularConnection;
+ (BOOL)canAttemptTelephonyCallsWithoutCellularConnectionWithSenderIdentityCapabilities:(id)capabilities;
+ (BOOL)isCSCallingCurrentlyAvailable;
+ (BOOL)isDirectFaceTimeAudioCallingCurrentlyAvailable;
+ (BOOL)isDirectFaceTimeVideoCallingCurrentlyAvailable;
+ (BOOL)isDirectTelephonyCallingCurrentlyAvailable;
+ (BOOL)isEmergencyCallbackModeEnabled;
+ (BOOL)isEmergencyCallbackPossible;
+ (BOOL)isRelayCallingEnabled;
+ (BOOL)isRelayCallingEnabledForDeviceWithID:(id)d;
+ (BOOL)isSimultaneousVoiceAndDataSupportedForSIMWithUUID:(id)d;
+ (BOOL)isThumperCallingAllowedForCurrentDevice;
+ (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
+ (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)d;
+ (BOOL)isThumperCallingCurrentlyAvailable;
+ (BOOL)isThumperCallingEnabled;
+ (BOOL)isVoLTECallingCurrentlyAvailable;
+ (BOOL)isVoLTECallingEnabled;
+ (BOOL)isWiFiCallingCurrentlyAvailable;
+ (BOOL)isWiFiCallingEnabled;
+ (BOOL)isWiFiCallingRoamingEnabled;
+ (BOOL)supportsBasebandCalling;
+ (BOOL)supportsDisplayingFaceTimeAudioCalls;
+ (BOOL)supportsDisplayingFaceTimeVideoCalls;
+ (BOOL)supportsDisplayingTelephonyCalls;
+ (BOOL)supportsFaceTimeAudioRelayCalling;
+ (BOOL)supportsFaceTimeVideoRelayCalling;
+ (BOOL)supportsPrimaryCalling;
+ (BOOL)supportsRelayCalling;
+ (BOOL)supportsSimultaneousVoiceAndData;
+ (BOOL)supportsTelephonyRelayCalling;
+ (BOOL)supportsThumperCalling;
+ (BOOL)supportsThumperCallingOverCellularData;
+ (BOOL)supportsVoLTECalling;
+ (BOOL)supportsWiFiCalling;
+ (BOOL)supportsWiFiEmergencyCalling;
+ (NSArray)cloudCallingDevices;
+ (NSSet)senderIdentityCapabilities;
+ (NSString)outgoingRelayCallerID;
+ (TUCTCapabilityInfo)thumperCallingCapabilityInfo;
+ (TUCTCapabilityInfo)voLTECallingCapabilityInfo;
+ (TUCTCapabilityInfo)wiFiCallingCapabilityInfo;
+ (id)_senderIdentityCapabilitiesByUUID;
+ (id)client;
+ (id)debugDescription;
+ (id)senderIdentityCapabilitiesWithUUID:(id)d;
+ (int)faceTimeAudioCallSupport;
+ (int)faceTimeVideoCallSupport;
+ (int)relayCallingAvailability;
+ (int)telephonyCallSupport;
+ (void)_sendNotificationsAndCallbacksAfterRunningBlock:(id)block;
+ (void)addDelegate:(id)delegate queue:(id)queue;
+ (void)cancelPinRequestFromPrimaryDevice;
+ (void)endEmergencyCallbackMode;
+ (void)initializeCachedValues;
+ (void)invalidateAndRefreshThumperCallingProvisioningURL;
+ (void)invalidateAndRefreshWiFiCallingProvisioningURL;
+ (void)removeDelegate:(id)delegate;
+ (void)requestPinFromPrimaryDevice;
@end

@implementation TUCallCapabilities

+ (void)initializeCachedValues
{
  client = [self client];
}

uint64_t __28__TUCallCapabilities_client__block_invoke()
{
  client_client = objc_alloc_init(TUCallCapabilitiesXPCClient);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)client
{
  if (client_onceToken != -1)
  {
    +[TUCallCapabilities client];
  }

  v3 = client_client;

  return v3;
}

+ (BOOL)supportsPrimaryCalling
{
  client = [self client];
  state = [client state];
  supportsPrimaryCalling = [state supportsPrimaryCalling];

  return supportsPrimaryCalling;
}

+ (BOOL)supportsDisplayingFaceTimeAudioCalls
{
  client = [self client];
  state = [client state];
  supportsDisplayingFaceTimeAudioCalls = [state supportsDisplayingFaceTimeAudioCalls];

  return supportsDisplayingFaceTimeAudioCalls;
}

+ (BOOL)supportsDisplayingFaceTimeVideoCalls
{
  client = [self client];
  state = [client state];
  supportsDisplayingFaceTimeVideoCalls = [state supportsDisplayingFaceTimeVideoCalls];

  return supportsDisplayingFaceTimeVideoCalls;
}

+ (BOOL)supportsTelephonyRelayCalling
{
  client = [self client];
  state = [client state];
  supportsTelephonyRelayCalling = [state supportsTelephonyRelayCalling];

  return supportsTelephonyRelayCalling;
}

+ (NSString)outgoingRelayCallerID
{
  client = [self client];
  state = [client state];
  outgoingRelayCallerID = [state outgoingRelayCallerID];

  return outgoingRelayCallerID;
}

+ (BOOL)isThumperCallingEnabled
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities tu_containsObjectPassingTest:&__block_literal_global_54];

  return v3;
}

+ (NSSet)senderIdentityCapabilities
{
  v25 = *MEMORY[0x1E69E9840];
  client = [self client];
  state = [client state];
  senderIdentityCapabilitiesStateByUUID = [state senderIdentityCapabilitiesStateByUUID];

  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(senderIdentityCapabilitiesStateByUUID, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = senderIdentityCapabilitiesStateByUUID;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v20}];
        v14 = [TUSenderIdentityCapabilities alloc];
        client2 = [self client];
        v16 = [(TUSenderIdentityCapabilities *)v14 initWithSenderIdentityUUID:v12 state:v13 client:client2];

        [v6 addObject:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = [v6 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t __45__TUCallCapabilities_isThumperCallingEnabled__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isThumperCallingEnabled];
  *a3 = result;
  return result;
}

+ (BOOL)isDirectTelephonyCallingCurrentlyAvailable
{
  if ([self supportsPrimaryCalling] & 1) != 0 || (objc_msgSend(self, "isWiFiCallingCurrentlyAvailable") & 1) != 0 || (objc_msgSend(self, "isThumperCallingCurrentlyAvailable") & 1) != 0 || (objc_msgSend(self, "isVoLTECallingCurrentlyAvailable"))
  {
    return 1;
  }

  return [self isCSCallingCurrentlyAvailable];
}

+ (BOOL)supportsRelayCalling
{
  client = [self client];
  state = [client state];
  supportsRelayCalling = [state supportsRelayCalling];

  return supportsRelayCalling;
}

+ (BOOL)isRelayCallingEnabled
{
  if (![self supportsRelayCalling] || !objc_msgSend(self, "accountsSupportSecondaryCalling"))
  {
    return 0;
  }

  client = [self client];
  state = [client state];
  isRelayCallingEnabled = [state isRelayCallingEnabled];

  return isRelayCallingEnabled;
}

+ (TUCTCapabilityInfo)thumperCallingCapabilityInfo
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  thumperCallingCapabilityInfo = [anyObject thumperCallingCapabilityInfo];

  return thumperCallingCapabilityInfo;
}

+ (int)telephonyCallSupport
{
  result = [self supportsDisplayingTelephonyCalls];
  if (result)
  {
    if ([self isDirectTelephonyCallingCurrentlyAvailable])
    {
      return 3;
    }

    else
    {
      result = [self areRelayCallingFeaturesEnabled];
      if (result)
      {
        if ([self supportsTelephonyRelayCalling])
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

+ (BOOL)supportsDisplayingTelephonyCalls
{
  client = [self client];
  state = [client state];
  supportsDisplayingTelephonyCalls = [state supportsDisplayingTelephonyCalls];

  return supportsDisplayingTelephonyCalls;
}

+ (int)faceTimeAudioCallSupport
{
  result = [self supportsDisplayingFaceTimeAudioCalls];
  if (result)
  {
    if ([self isDirectFaceTimeAudioCallingCurrentlyAvailable])
    {
      return 3;
    }

    else
    {
      result = [self areRelayCallingFeaturesEnabled];
      if (result)
      {
        if ([self supportsFaceTimeAudioRelayCalling])
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

+ (int)faceTimeVideoCallSupport
{
  result = [self supportsDisplayingFaceTimeVideoCalls];
  if (result)
  {
    if ([self isDirectFaceTimeVideoCallingCurrentlyAvailable])
    {
      return 3;
    }

    else
    {
      result = [self areRelayCallingFeaturesEnabled];
      if (result)
      {
        return [self supportsFaceTimeVideoRelayCalling];
      }
    }
  }

  return result;
}

+ (BOOL)isDirectFaceTimeAudioCallingCurrentlyAvailable
{
  client = [self client];
  state = [client state];
  isFaceTimeAudioAvailable = [state isFaceTimeAudioAvailable];

  return isFaceTimeAudioAvailable;
}

+ (BOOL)isDirectFaceTimeVideoCallingCurrentlyAvailable
{
  client = [self client];
  state = [client state];
  isFaceTimeVideoAvailable = [state isFaceTimeVideoAvailable];

  return isFaceTimeVideoAvailable;
}

+ (BOOL)accountsSupportSecondaryCalling
{
  client = [self client];
  state = [client state];
  accountsSupportSecondaryCalling = [state accountsSupportSecondaryCalling];

  return accountsSupportSecondaryCalling;
}

+ (BOOL)areRelayCallingFeaturesEnabled
{
  client = [self client];
  state = [client state];
  areRelayCallingFeaturesEnabled = [state areRelayCallingFeaturesEnabled];

  return areRelayCallingFeaturesEnabled;
}

+ (NSArray)cloudCallingDevices
{
  client = [self client];
  state = [client state];
  cloudCallingDevices = [state cloudCallingDevices];

  return cloudCallingDevices;
}

+ (int)relayCallingAvailability
{
  client = [self client];
  state = [client state];
  relayCallingAvailability = [state relayCallingAvailability];

  return relayCallingAvailability;
}

+ (BOOL)isEmergencyCallbackModeEnabled
{
  client = [self client];
  state = [client state];
  isEmergencyCallbackModeEnabled = [state isEmergencyCallbackModeEnabled];

  return isEmergencyCallbackModeEnabled;
}

+ (BOOL)isEmergencyCallbackPossible
{
  client = [self client];
  state = [client state];
  isEmergencyCallbackPossible = [state isEmergencyCallbackPossible];

  return isEmergencyCallbackPossible;
}

+ (id)_senderIdentityCapabilitiesByUUID
{
  v25 = *MEMORY[0x1E69E9840];
  client = [self client];
  state = [client state];
  senderIdentityCapabilitiesStateByUUID = [state senderIdentityCapabilitiesStateByUUID];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(senderIdentityCapabilitiesStateByUUID, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = senderIdentityCapabilitiesStateByUUID;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v20}];
        v14 = [TUSenderIdentityCapabilities alloc];
        client2 = [self client];
        v16 = [(TUSenderIdentityCapabilities *)v14 initWithSenderIdentityUUID:v12 state:v13 client:client2];

        [v6 setObject:v16 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v17 = [v6 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)supportsSimultaneousVoiceAndData
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  supportsSimultaneousVoiceAndData = [anyObject supportsSimultaneousVoiceAndData];

  return supportsSimultaneousVoiceAndData;
}

+ (BOOL)isWiFiCallingCurrentlyAvailable
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(senderIdentityCapabilities);
        }

        if ([*(*(&v8 + 1) + 8 * i) isWiFiCallingCurrentlyAvailable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [senderIdentityCapabilities countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (BOOL)canAttemptTelephonyCallsWithoutCellularConnection
{
  if ([self isWiFiCallingCurrentlyAvailable])
  {
    return 1;
  }

  if ([self supportsPrimaryCalling])
  {
    return 0;
  }

  if ([self isThumperCallingCurrentlyAvailable])
  {
    return 1;
  }

  return [self areRelayCallingFeaturesEnabled];
}

+ (BOOL)canAttemptTelephonyCallsWithoutCellularConnectionWithSenderIdentityCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  if (([capabilitiesCopy isWiFiCallingCurrentlyAvailable] & 1) == 0)
  {
    if ([self supportsPrimaryCalling])
    {
      areRelayCallingFeaturesEnabled = 0;
      goto LABEL_7;
    }

    if (([capabilitiesCopy isThumperCallingCurrentlyAvailable] & 1) == 0)
    {
      areRelayCallingFeaturesEnabled = [self areRelayCallingFeaturesEnabled];
      goto LABEL_7;
    }
  }

  areRelayCallingFeaturesEnabled = 1;
LABEL_7:

  return areRelayCallingFeaturesEnabled;
}

+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnection
{
  canAttemptTelephonyCallsWithoutCellularConnection = [self canAttemptTelephonyCallsWithoutCellularConnection];
  if (canAttemptTelephonyCallsWithoutCellularConnection)
  {
    senderIdentityCapabilities = [self senderIdentityCapabilities];
    anyObject = [senderIdentityCapabilities anyObject];
    isEmergencyWiFiCallingCurrentlyAvailable = [anyObject isEmergencyWiFiCallingCurrentlyAvailable];

    LOBYTE(canAttemptTelephonyCallsWithoutCellularConnection) = isEmergencyWiFiCallingCurrentlyAvailable;
  }

  return canAttemptTelephonyCallsWithoutCellularConnection;
}

+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:(id)d
{
  v4 = [self senderIdentityCapabilitiesWithUUID:d];
  if (v4 && [self canAttemptTelephonyCallsWithoutCellularConnectionWithSenderIdentityCapabilities:v4])
  {
    isEmergencyWiFiCallingCurrentlyAvailable = [v4 isEmergencyWiFiCallingCurrentlyAvailable];
  }

  else
  {
    isEmergencyWiFiCallingCurrentlyAvailable = 0;
  }

  return isEmergencyWiFiCallingCurrentlyAvailable;
}

+ (BOOL)supportsBasebandCalling
{
  client = [self client];
  state = [client state];
  supportsBasebandCalling = [state supportsBasebandCalling];

  return supportsBasebandCalling;
}

+ (BOOL)isSimultaneousVoiceAndDataSupportedForSIMWithUUID:(id)d
{
  v3 = [self senderIdentityCapabilitiesWithUUID:d];
  supportsSimultaneousVoiceAndData = [v3 supportsSimultaneousVoiceAndData];

  return supportsSimultaneousVoiceAndData;
}

+ (BOOL)areCTCapabilitiesValid
{
  client = [self client];
  state = [client state];
  areCTCapabilitiesValid = [state areCTCapabilitiesValid];

  return areCTCapabilitiesValid;
}

+ (BOOL)isCSCallingCurrentlyAvailable
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities tu_containsObjectPassingTest:&__block_literal_global_11];

  return v3;
}

uint64_t __51__TUCallCapabilities_isCSCallingCurrentlyAvailable__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isCSCallingCurrentlyAvailable];
  *a3 = result;
  return result;
}

+ (BOOL)supportsWiFiCalling
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  supportsWiFiCalling = [anyObject supportsWiFiCalling];

  return supportsWiFiCalling;
}

+ (BOOL)isWiFiCallingEnabled
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  isWiFiCallingEnabled = [anyObject isWiFiCallingEnabled];

  return isWiFiCallingEnabled;
}

+ (BOOL)isWiFiCallingRoamingEnabled
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  isWiFiCallingRoamingEnabled = [anyObject isWiFiCallingRoamingEnabled];

  return isWiFiCallingRoamingEnabled;
}

+ (TUCTCapabilityInfo)wiFiCallingCapabilityInfo
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  wiFiCallingCapabilityInfo = [anyObject wiFiCallingCapabilityInfo];

  return wiFiCallingCapabilityInfo;
}

+ (BOOL)supportsWiFiEmergencyCalling
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  supportsEmergencyWiFiCalling = [anyObject supportsEmergencyWiFiCalling];

  return supportsEmergencyWiFiCalling;
}

+ (BOOL)supportsVoLTECalling
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  supportsVoLTECalling = [anyObject supportsVoLTECalling];

  return supportsVoLTECalling;
}

+ (BOOL)isVoLTECallingEnabled
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  isVoLTECallingEnabled = [anyObject isVoLTECallingEnabled];

  return isVoLTECallingEnabled;
}

+ (TUCTCapabilityInfo)voLTECallingCapabilityInfo
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  voLTECallingCapabilityInfo = [anyObject voLTECallingCapabilityInfo];

  return voLTECallingCapabilityInfo;
}

+ (BOOL)isVoLTECallingCurrentlyAvailable
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities tu_containsObjectPassingTest:&__block_literal_global_48];

  return v3;
}

uint64_t __54__TUCallCapabilities_isVoLTECallingCurrentlyAvailable__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isVoLTECallingCurrentlyAvailable];
  *a3 = result;
  return result;
}

+ (BOOL)accountsMatchForSecondaryCalling
{
  client = [self client];
  state = [client state];
  accountsMatchForSecondaryCalling = [state accountsMatchForSecondaryCalling];

  return accountsMatchForSecondaryCalling;
}

+ (BOOL)supportsThumperCalling
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities tu_containsObjectPassingTest:&__block_literal_global_50];

  return v3;
}

uint64_t __44__TUCallCapabilities_supportsThumperCalling__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 supportsThumperCalling];
  *a3 = result;
  return result;
}

+ (BOOL)supportsThumperCallingOverCellularData
{
  client = [self client];
  state = [client state];
  supportsCellularData = [state supportsCellularData];

  return supportsCellularData;
}

+ (BOOL)isThumperCallingAllowedForCurrentDevice
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities tu_containsObjectPassingTest:&__block_literal_global_52];

  return v3;
}

uint64_t __61__TUCallCapabilities_isThumperCallingAllowedForCurrentDevice__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isThumperCallingAllowedForCurrentDevice];
  *a3 = result;
  return result;
}

+ (BOOL)isThumperCallingCurrentlyAvailable
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities tu_containsObjectPassingTest:&__block_literal_global_56];

  return v3;
}

uint64_t __56__TUCallCapabilities_isThumperCallingCurrentlyAvailable__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isThumperCallingCurrentlyAvailable];
  *a3 = result;
  return result;
}

+ (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)d
{
  dCopy = d;
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__TUCallCapabilities_isThumperCallingAllowedOnSecondaryDeviceWithID___block_invoke;
  v10[3] = &unk_1E74254B0;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [senderIdentityCapabilities tu_anyObjectPassingTest:v10];
  v8 = v7 != 0;

  return v8;
}

uint64_t __69__TUCallCapabilities_isThumperCallingAllowedOnSecondaryDeviceWithID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isThumperCallingAllowedOnSecondaryDeviceWithID:*(a1 + 32)];
  *a3 = result;
  return result;
}

+ (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  v3 = [senderIdentityCapabilities tu_anyObjectPassingTest:&__block_literal_global_58];
  v4 = v3 != 0;

  return v4;
}

uint64_t __75__TUCallCapabilities_isThumperCallingAllowedOnDefaultPairedSecondaryDevice__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isThumperCallingAllowedOnDefaultPairedSecondaryDevice];
  *a3 = result;
  return result;
}

+ (void)invalidateAndRefreshWiFiCallingProvisioningURL
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  [anyObject invalidateAndRefreshWiFiCallingProvisioningURL];
}

+ (void)invalidateAndRefreshThumperCallingProvisioningURL
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  [anyObject invalidateAndRefreshThumperCallingProvisioningURL];
}

+ (BOOL)areCallsOnOtherDevicesEnabled
{
  client = [self client];
  state = [client state];
  isRelayCallingEnabled = [state isRelayCallingEnabled];

  return isRelayCallingEnabled;
}

+ (BOOL)isRelayCallingEnabledForDeviceWithID:(id)d
{
  dCopy = d;
  client = [self client];
  state = [client state];
  relayCallingDisabledForDeviceID = [state relayCallingDisabledForDeviceID];
  v8 = [relayCallingDisabledForDeviceID objectForKeyedSubscript:dCopy];

  LOBYTE(dCopy) = [v8 BOOLValue];
  return dCopy ^ 1;
}

+ (BOOL)supportsFaceTimeAudioRelayCalling
{
  client = [self client];
  state = [client state];
  supportsFaceTimeAudioRelayCalling = [state supportsFaceTimeAudioRelayCalling];

  return supportsFaceTimeAudioRelayCalling;
}

+ (BOOL)supportsFaceTimeVideoRelayCalling
{
  client = [self client];
  state = [client state];
  supportsFaceTimeVideoRelayCalling = [state supportsFaceTimeVideoRelayCalling];

  return supportsFaceTimeVideoRelayCalling;
}

+ (void)requestPinFromPrimaryDevice
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  [anyObject requestPinFromPrimaryDeviceForThumperCalling];
}

+ (void)cancelPinRequestFromPrimaryDevice
{
  senderIdentityCapabilities = [self senderIdentityCapabilities];
  anyObject = [senderIdentityCapabilities anyObject];
  [anyObject cancelPinRequestFromPrimaryDeviceForThumperCalling];
}

+ (void)endEmergencyCallbackMode
{
  client = [self client];
  [client endEmergencyCallbackMode];
}

+ (id)senderIdentityCapabilitiesWithUUID:(id)d
{
  dCopy = d;
  client = [self client];
  state = [client state];
  senderIdentityCapabilitiesStateByUUID = [state senderIdentityCapabilitiesStateByUUID];
  v8 = [senderIdentityCapabilitiesStateByUUID objectForKeyedSubscript:dCopy];

  v9 = [TUSenderIdentityCapabilities alloc];
  client2 = [self client];
  v11 = [(TUSenderIdentityCapabilities *)v9 initWithSenderIdentityUUID:dCopy state:v8 client:client2];

  return v11;
}

+ (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  client = [self client];
  [client addDelegate:delegateCopy queue:queueCopy];
}

+ (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  client = [self client];
  [client removeDelegate:delegateCopy];
}

+ (void)_sendNotificationsAndCallbacksAfterRunningBlock:(id)block
{
  v104 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  supportsTelephonyCalls = [self supportsTelephonyCalls];
  supportsFaceTimeAudioCalls = [self supportsFaceTimeAudioCalls];
  supportsFaceTimeVideoCalls = [self supportsFaceTimeVideoCalls];
  isDirectFaceTimeAudioCallingCurrentlyAvailable = [self isDirectFaceTimeAudioCallingCurrentlyAvailable];
  isDirectFaceTimeVideoCallingCurrentlyAvailable = [self isDirectFaceTimeVideoCallingCurrentlyAvailable];
  supportsRelayCalling = [self supportsRelayCalling];
  isRelayCallingEnabled = [self isRelayCallingEnabled];
  areRelayCallingFeaturesEnabled = [self areRelayCallingFeaturesEnabled];
  cloudCallingDevices = [self cloudCallingDevices];
  outgoingRelayCallerID = [self outgoingRelayCallerID];
  relayCallingAvailability = [self relayCallingAvailability];
  isEmergencyCallbackModeEnabled = [self isEmergencyCallbackModeEnabled];
  isEmergencyCallbackPossible = [self isEmergencyCallbackPossible];
  _senderIdentityCapabilitiesByUUID = [self _senderIdentityCapabilitiesByUUID];
  v74 = blockCopy;
  (*(blockCopy + 2))(blockCopy);
  supportsTelephonyCalls2 = [self supportsTelephonyCalls];
  supportsFaceTimeAudioCalls2 = [self supportsFaceTimeAudioCalls];
  supportsFaceTimeVideoCalls2 = [self supportsFaceTimeVideoCalls];
  isDirectFaceTimeAudioCallingCurrentlyAvailable2 = [self isDirectFaceTimeAudioCallingCurrentlyAvailable];
  isDirectFaceTimeVideoCallingCurrentlyAvailable2 = [self isDirectFaceTimeVideoCallingCurrentlyAvailable];
  supportsRelayCalling2 = [self supportsRelayCalling];
  isRelayCallingEnabled2 = [self isRelayCallingEnabled];
  areRelayCallingFeaturesEnabled2 = [self areRelayCallingFeaturesEnabled];
  cloudCallingDevices2 = [self cloudCallingDevices];
  outgoingRelayCallerID2 = [self outgoingRelayCallerID];
  relayCallingAvailability2 = [self relayCallingAvailability];
  isEmergencyCallbackModeEnabled2 = [self isEmergencyCallbackModeEnabled];
  isEmergencyCallbackPossible2 = [self isEmergencyCallbackPossible];
  selfCopy = self;
  _senderIdentityCapabilitiesByUUID2 = [self _senderIdentityCapabilitiesByUUID];
  v83 = cloudCallingDevices;
  if (supportsTelephonyCalls != supportsTelephonyCalls2)
  {
    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = supportsTelephonyCalls;
      *&v101[4] = 1024;
      *&v101[6] = supportsTelephonyCalls2;
      _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Telephony support changed from %d to %d", buf, 0xEu);
    }

    client = [self client];
    [client performDelegateCallbackBlock:&__block_literal_global_67];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"TUCallCapabilitiesSupportsTelephonyCallsChangedNotification" object:0];

    cloudCallingDevices = v83;
  }

  v17 = _senderIdentityCapabilitiesByUUID2;
  if (supportsFaceTimeAudioCalls != supportsFaceTimeAudioCalls2)
  {
    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = supportsFaceTimeAudioCalls;
      *&v101[4] = 1024;
      *&v101[6] = supportsFaceTimeAudioCalls2;
      _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "FaceTime Audio support changed from %d to %d", buf, 0xEu);
    }

    client2 = [self client];
    [client2 performDelegateCallbackBlock:&__block_literal_global_71];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"TUCallCapabilitiesSupportsFaceTimeAudioCallsChangedNotification" object:0];
  }

  if (supportsFaceTimeVideoCalls != supportsFaceTimeVideoCalls2)
  {
    v21 = TUDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = supportsFaceTimeVideoCalls;
      *&v101[4] = 1024;
      *&v101[6] = supportsFaceTimeVideoCalls2;
      _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "FaceTime Video support changed from %d to %d", buf, 0xEu);
    }

    client3 = [self client];
    [client3 performDelegateCallbackBlock:&__block_literal_global_76];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 postNotificationName:@"TUCallCapabilitiesSupportsFaceTimeVideoCallsChangedNotification" object:0];
  }

  if (isDirectFaceTimeAudioCallingCurrentlyAvailable != isDirectFaceTimeAudioCallingCurrentlyAvailable2 || isDirectFaceTimeVideoCallingCurrentlyAvailable != isDirectFaceTimeVideoCallingCurrentlyAvailable2)
  {
    v24 = TUDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v101 = isDirectFaceTimeAudioCallingCurrentlyAvailable;
      *&v101[4] = 1024;
      *&v101[6] = isDirectFaceTimeVideoCallingCurrentlyAvailable;
      LOWORD(v102) = 1024;
      *(&v102 + 2) = isDirectFaceTimeAudioCallingCurrentlyAvailable2;
      HIWORD(v102) = 1024;
      v103 = isDirectFaceTimeVideoCallingCurrentlyAvailable2;
      _os_log_impl(&dword_1956FD000, v24, OS_LOG_TYPE_DEFAULT, "FaceTime availability changed from (audio=%d video=%d) to (audio=%d video=%d)", buf, 0x1Au);
    }

    client4 = [self client];
    [client4 performDelegateCallbackBlock:&__block_literal_global_81];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 postNotificationName:@"TUCallCapabilitiesFaceTimeAvailabilityChangedNotification" object:0];
  }

  if (supportsRelayCalling != supportsRelayCalling2 || isRelayCallingEnabled != isRelayCallingEnabled2)
  {
    v27 = TUDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v101 = supportsRelayCalling;
      *&v101[4] = 1024;
      *&v101[6] = isRelayCallingEnabled;
      LOWORD(v102) = 1024;
      *(&v102 + 2) = supportsRelayCalling2;
      HIWORD(v102) = 1024;
      v103 = isRelayCallingEnabled2;
      _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "Relay capabilities changed from (supported=%d enabled=%d) to (supported=%d enabled=%d)", buf, 0x1Au);
    }

    client5 = [self client];
    [client5 performDelegateCallbackBlock:&__block_literal_global_86];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 postNotificationName:@"TUCallCapabilitiesRelayCallingChangedNotification" object:0];
  }

  if (relayCallingAvailability != relayCallingAvailability2)
  {
    v30 = TUDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = relayCallingAvailability;
      *&v101[4] = 1024;
      *&v101[6] = relayCallingAvailability2;
      _os_log_impl(&dword_1956FD000, v30, OS_LOG_TYPE_DEFAULT, "Relay calling availability changed from %d to %d", buf, 0xEu);
    }

    client6 = [self client];
    [client6 performDelegateCallbackBlock:&__block_literal_global_91];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 postNotificationName:@"TUCallCapabilitiesRelayCallingAvailabilityChangedNotification" object:0];
  }

  if (areRelayCallingFeaturesEnabled != areRelayCallingFeaturesEnabled2)
  {
    v33 = TUDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = areRelayCallingFeaturesEnabled;
      *&v101[4] = 1024;
      *&v101[6] = areRelayCallingFeaturesEnabled2;
      _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Relay calling features changed from %d to %d", buf, 0xEu);
    }

    client7 = [self client];
    [client7 performDelegateCallbackBlock:&__block_literal_global_96];
  }

  if (([cloudCallingDevices isEqualToArray:cloudCallingDevices2] & 1) == 0)
  {
    v35 = TUDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "Cloud calling devices changed", buf, 2u);
    }

    client8 = [self client];
    [client8 performDelegateCallbackBlock:&__block_literal_global_101];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 postNotificationName:@"TUCallCapabilitiesCloudCallingDevicesChangedNotification" object:0];
  }

  if ((TUStringsAreEqualOrNil(outgoingRelayCallerID, outgoingRelayCallerID2) & 1) == 0)
  {
    v38 = TUDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v101 = outgoingRelayCallerID;
      *&v101[8] = 2112;
      v102 = outgoingRelayCallerID2;
      _os_log_impl(&dword_1956FD000, v38, OS_LOG_TYPE_DEFAULT, "Outgoing relay caller ID changed from %@ to %@", buf, 0x16u);
    }

    client9 = [self client];
    [client9 performDelegateCallbackBlock:&__block_literal_global_106];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 postNotificationName:@"TUCallCapabilitiesOutgoingRelayCallerIDChangedNotification" object:0];
  }

  if (isEmergencyCallbackModeEnabled != isEmergencyCallbackModeEnabled2)
  {
    v41 = TUDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = isEmergencyCallbackModeEnabled;
      *&v101[4] = 1024;
      *&v101[6] = isEmergencyCallbackModeEnabled2;
      _os_log_impl(&dword_1956FD000, v41, OS_LOG_TYPE_DEFAULT, "Emergency Callback Mode changed from %d to %d", buf, 0xEu);
    }

    client10 = [self client];
    [client10 performDelegateCallbackBlock:&__block_literal_global_111];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 postNotificationName:@"TUCallCapabilitiesEmergencyCallbackModeChangedNotification" object:0];
  }

  v82 = cloudCallingDevices2;
  if (isEmergencyCallbackPossible != isEmergencyCallbackPossible2)
  {
    v44 = TUDefaultLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = isEmergencyCallbackPossible;
      *&v101[4] = 1024;
      *&v101[6] = isEmergencyCallbackPossible2;
      _os_log_impl(&dword_1956FD000, v44, OS_LOG_TYPE_DEFAULT, "Emergency Callback Possible changed from %d to %d", buf, 0xEu);
    }

    client11 = [self client];
    [client11 performDelegateCallbackBlock:&__block_literal_global_116];

    defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter10 postNotificationName:@"TUCallCapabilitiesEmergencyCallbackPossibleChangedNotification" object:0];
  }

  v47 = [_senderIdentityCapabilitiesByUUID2 mutableCopy];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v48 = _senderIdentityCapabilitiesByUUID;
  v49 = [v48 countByEnumeratingWithState:&v94 objects:v99 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v95;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v95 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v94 + 1) + 8 * i);
        v54 = [v48 objectForKeyedSubscript:v53];
        v55 = [v17 objectForKeyedSubscript:v53];
        if (v55)
        {
          [v47 setObject:0 forKeyedSubscript:v53];
          [v55 _sendNotificationsAndCallbacksComparingToOldSenderIdentityCapabilities:v54];
        }

        else
        {
          client12 = [selfCopy client];
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_2;
          v93[3] = &unk_1E7424DA0;
          v93[4] = v53;
          [client12 performDelegateCallbackBlock:v93];

          v17 = _senderIdentityCapabilitiesByUUID2;
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v94 objects:v99 count:16];
    }

    while (v50);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v57 = v47;
  v58 = [v57 countByEnumeratingWithState:&v89 objects:v98 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v90;
    do
    {
      for (j = 0; j != v59; ++j)
      {
        if (*v90 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v89 + 1) + 8 * j);
        client13 = [selfCopy client];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_3;
        v88[3] = &unk_1E7424DA0;
        v88[4] = v62;
        [client13 performDelegateCallbackBlock:v88];
      }

      v59 = [v57 countByEnumeratingWithState:&v89 objects:v98 count:16];
    }

    while (v59);
  }

  v64 = *MEMORY[0x1E69E9840];
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeTelephonyCallingSupport];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_69(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeFaceTimeAudioCallingSupport];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_74(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeFaceTimeVideoCallingSupport];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_79(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeFaceTimeCallingAvailability];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_84(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeRelayCallingCapabilities];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_89(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeRelayCallingAvailability];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_94(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeRelayCallingFeatures];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_99(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeCloudCallingDevices];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_104(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeOutgoingRelayCallerID];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_109(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeEmergencyCallbackMode];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_114(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 didChangeEmergencyCallbackPossible];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didRemoveCapabilitiesForSenderIdentityWithUUID:*(a1 + 32)];
  }
}

void __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 didAddCapabilitiesForSenderIdentityWithUUID:*(a1 + 32)];
  }
}

+ (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"== TUCallCapabilities ==\n"];
  [v3 appendString:@"General Support:\n"];
  [v3 appendFormat:@"    supportsTelephonyCalls: %d\n", objc_msgSend(self, "supportsTelephonyCalls")];
  [v3 appendFormat:@"    supportsFaceTimeAudioCalls: %d\n", objc_msgSend(self, "supportsFaceTimeAudioCalls")];
  [v3 appendFormat:@"    supportsFaceTimeVideoCalls: %d\n", objc_msgSend(self, "supportsFaceTimeVideoCalls")];
  [v3 appendFormat:@"    canAttemptTelephonyCallsWithoutCellularConnection: %d\n", objc_msgSend(self, "canAttemptTelephonyCallsWithoutCellularConnection")];
  [v3 appendFormat:@"    canAttemptEmergencyCallsWithoutCellularConnection: %d\n", objc_msgSend(self, "canAttemptEmergencyCallsWithoutCellularConnection")];
  [v3 appendString:@"Primary/Secondary Device:\n"];
  [v3 appendFormat:@"    supportsPrimaryCalling: %d\n", objc_msgSend(self, "supportsPrimaryCalling")];
  [v3 appendString:@"Call support:\n"];
  [v3 appendFormat:@"    telephonyCallSupport: %d\n", objc_msgSend(self, "telephonyCallSupport")];
  [v3 appendFormat:@"    faceTimeAudioCallSupport: %d\n", objc_msgSend(self, "faceTimeAudioCallSupport")];
  [v3 appendFormat:@"    faceTimeVideoCallSupport: %d\n", objc_msgSend(self, "faceTimeVideoCallSupport")];
  [v3 appendString:@"Displaying support:\n"];
  [v3 appendFormat:@"    supportsDisplayingTelephonyCalls: %d\n", objc_msgSend(self, "supportsDisplayingTelephonyCalls")];
  [v3 appendFormat:@"    supportsDisplayingFaceTimeAudioCalls: %d\n", objc_msgSend(self, "supportsDisplayingFaceTimeAudioCalls")];
  [v3 appendFormat:@"    supportsDisplayingFaceTimeVideoCalls: %d\n", objc_msgSend(self, "supportsDisplayingFaceTimeVideoCalls")];
  [v3 appendString:@"Call Availability:\n"];
  [v3 appendFormat:@"    isDirectTelephonyCallingCurrentlyAvailable: %d\n", objc_msgSend(self, "isDirectTelephonyCallingCurrentlyAvailable")];
  [v3 appendFormat:@"    isDirectFaceTimeAudioCallingCurrentlyAvailable: %d\n", objc_msgSend(self, "isDirectFaceTimeAudioCallingCurrentlyAvailable")];
  [v3 appendFormat:@"    isDirectFaceTimeVideoCallingCurrentlyAvailable: %d\n", objc_msgSend(self, "isDirectFaceTimeVideoCallingCurrentlyAvailable")];
  [v3 appendString:@"System capabilities:\n"];
  [v3 appendFormat:@"    supportsSimultaneousVoiceAndData: %d\n", objc_msgSend(self, "supportsSimultaneousVoiceAndData")];
  [v3 appendString:@"Wi-Fi calling:\n"];
  [v3 appendFormat:@"    supportsWiFiCalling: %d\n", objc_msgSend(self, "supportsWiFiCalling")];
  [v3 appendFormat:@"    isWiFiCallingEnabled: %d\n", objc_msgSend(self, "isWiFiCallingEnabled")];
  [v3 appendFormat:@"    isWiFiCallingCurrentlyAvailable: %d\n", objc_msgSend(self, "isWiFiCallingCurrentlyAvailable")];
  [v3 appendString:@"VoLTE calling:\n"];
  [v3 appendFormat:@"    supportsVoLTECalling: %d\n", objc_msgSend(self, "supportsVoLTECalling")];
  [v3 appendFormat:@"    isVoLTECallingEnabled: %d\n", objc_msgSend(self, "isVoLTECallingEnabled")];
  [v3 appendFormat:@"    isVoLTECallingCurrentlyAvailable: %d\n", objc_msgSend(self, "isVoLTECallingCurrentlyAvailable")];
  [v3 appendString:@"Secondary calling:\n"];
  [v3 appendFormat:@"    accountsMatchForSecondaryCalling: %d\n", objc_msgSend(self, "accountsMatchForSecondaryCalling")];
  [v3 appendFormat:@"    accountsSupportSecondaryCalling: %d\n", objc_msgSend(self, "accountsSupportSecondaryCalling")];
  [v3 appendString:@"Thumper calling:\n"];
  [v3 appendFormat:@"    supportsThumperCalling: %d\n", objc_msgSend(self, "supportsThumperCalling")];
  [v3 appendFormat:@"    isThumperCallingAllowedForCurrentDevice: %d\n", objc_msgSend(self, "isThumperCallingAllowedForCurrentDevice")];
  [v3 appendFormat:@"    isThumperCallingEnabled: %d\n", objc_msgSend(self, "isThumperCallingEnabled")];
  [v3 appendFormat:@"    supportsThumperCallingOverCellularData: %d\n", objc_msgSend(self, "supportsThumperCallingOverCellularData")];
  [v3 appendFormat:@"    isThumperCallingCurrentlyAvailable: %d\n", objc_msgSend(self, "isThumperCallingCurrentlyAvailable")];
  [v3 appendString:@"Relay calling:\n"];
  [v3 appendFormat:@"    supportsRelayingToOtherDevices: %d\n", objc_msgSend(self, "supportsRelayingToOtherDevices")];
  [v3 appendFormat:@"    supportsRelayCalling: %d\n", objc_msgSend(self, "supportsRelayCalling")];
  [v3 appendFormat:@"    isRelayCallingEnabled: %d\n", objc_msgSend(self, "isRelayCallingEnabled")];
  [v3 appendFormat:@"    isRelayCallingGuaranteed: %d\n", objc_msgSend(self, "relayCallingAvailability") == 2];
  [v3 appendFormat:@"    areRelayCallingFeaturesEnabled: %d\n", objc_msgSend(self, "areRelayCallingFeaturesEnabled")];
  [v3 appendString:@"Outgoing relay calling:\n"];
  [v3 appendFormat:@"    supportsTelephonyRelayCalling: %d\n", objc_msgSend(self, "supportsTelephonyRelayCalling")];
  [v3 appendFormat:@"    supportsFaceTimeAudioRelayCalling: %d\n", objc_msgSend(self, "supportsFaceTimeAudioRelayCalling")];
  [v3 appendFormat:@"    supportsFaceTimeVideoRelayCalling: %d\n", objc_msgSend(self, "supportsFaceTimeVideoRelayCalling")];
  outgoingRelayCallerID = [self outgoingRelayCallerID];
  [v3 appendFormat:@"    outgoingRelayCallerID: %@\n", outgoingRelayCallerID];

  [v3 appendString:@"Emergency callback mode:\n"];
  [v3 appendFormat:@"    isEmergencyCallbackModeEnabled: %d\n", objc_msgSend(self, "isEmergencyCallbackModeEnabled")];
  [v3 appendFormat:@"    isEmergencyCallbackPossible: %d\n", objc_msgSend(self, "isEmergencyCallbackPossible")];

  return v3;
}

@end