@interface TUCallCapabilities
+ (BOOL)accountsMatchForSecondaryCalling;
+ (BOOL)accountsSupportSecondaryCalling;
+ (BOOL)areCTCapabilitiesValid;
+ (BOOL)areCallsOnOtherDevicesEnabled;
+ (BOOL)areRelayCallingFeaturesEnabled;
+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnection;
+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:(id)a3;
+ (BOOL)canAttemptTelephonyCallsWithoutCellularConnection;
+ (BOOL)canAttemptTelephonyCallsWithoutCellularConnectionWithSenderIdentityCapabilities:(id)a3;
+ (BOOL)isCSCallingCurrentlyAvailable;
+ (BOOL)isDirectFaceTimeAudioCallingCurrentlyAvailable;
+ (BOOL)isDirectFaceTimeVideoCallingCurrentlyAvailable;
+ (BOOL)isDirectTelephonyCallingCurrentlyAvailable;
+ (BOOL)isEmergencyCallbackModeEnabled;
+ (BOOL)isEmergencyCallbackPossible;
+ (BOOL)isRelayCallingEnabled;
+ (BOOL)isRelayCallingEnabledForDeviceWithID:(id)a3;
+ (BOOL)isSimultaneousVoiceAndDataSupportedForSIMWithUUID:(id)a3;
+ (BOOL)isThumperCallingAllowedForCurrentDevice;
+ (BOOL)isThumperCallingAllowedOnDefaultPairedSecondaryDevice;
+ (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)a3;
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
+ (id)senderIdentityCapabilitiesWithUUID:(id)a3;
+ (int)faceTimeAudioCallSupport;
+ (int)faceTimeVideoCallSupport;
+ (int)relayCallingAvailability;
+ (int)telephonyCallSupport;
+ (void)_sendNotificationsAndCallbacksAfterRunningBlock:(id)a3;
+ (void)addDelegate:(id)a3 queue:(id)a4;
+ (void)cancelPinRequestFromPrimaryDevice;
+ (void)endEmergencyCallbackMode;
+ (void)initializeCachedValues;
+ (void)invalidateAndRefreshThumperCallingProvisioningURL;
+ (void)invalidateAndRefreshWiFiCallingProvisioningURL;
+ (void)removeDelegate:(id)a3;
+ (void)requestPinFromPrimaryDevice;
@end

@implementation TUCallCapabilities

+ (void)initializeCachedValues
{
  v2 = [a1 client];
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
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsPrimaryCalling];

  return v4;
}

+ (BOOL)supportsDisplayingFaceTimeAudioCalls
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsDisplayingFaceTimeAudioCalls];

  return v4;
}

+ (BOOL)supportsDisplayingFaceTimeVideoCalls
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsDisplayingFaceTimeVideoCalls];

  return v4;
}

+ (BOOL)supportsTelephonyRelayCalling
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsTelephonyRelayCalling];

  return v4;
}

+ (NSString)outgoingRelayCallerID
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 outgoingRelayCallerID];

  return v4;
}

+ (BOOL)isThumperCallingEnabled
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 tu_containsObjectPassingTest:&__block_literal_global_54];

  return v3;
}

+ (NSSet)senderIdentityCapabilities
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [a1 client];
  v4 = [v3 state];
  v5 = [v4 senderIdentityCapabilitiesStateByUUID];

  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
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
        v15 = [a1 client];
        v16 = [(TUSenderIdentityCapabilities *)v14 initWithSenderIdentityUUID:v12 state:v13 client:v15];

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
  if ([a1 supportsPrimaryCalling] & 1) != 0 || (objc_msgSend(a1, "isWiFiCallingCurrentlyAvailable") & 1) != 0 || (objc_msgSend(a1, "isThumperCallingCurrentlyAvailable") & 1) != 0 || (objc_msgSend(a1, "isVoLTECallingCurrentlyAvailable"))
  {
    return 1;
  }

  return [a1 isCSCallingCurrentlyAvailable];
}

+ (BOOL)supportsRelayCalling
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsRelayCalling];

  return v4;
}

+ (BOOL)isRelayCallingEnabled
{
  if (![a1 supportsRelayCalling] || !objc_msgSend(a1, "accountsSupportSecondaryCalling"))
  {
    return 0;
  }

  v3 = [a1 client];
  v4 = [v3 state];
  v5 = [v4 isRelayCallingEnabled];

  return v5;
}

+ (TUCTCapabilityInfo)thumperCallingCapabilityInfo
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 thumperCallingCapabilityInfo];

  return v4;
}

+ (int)telephonyCallSupport
{
  result = [a1 supportsDisplayingTelephonyCalls];
  if (result)
  {
    if ([a1 isDirectTelephonyCallingCurrentlyAvailable])
    {
      return 3;
    }

    else
    {
      result = [a1 areRelayCallingFeaturesEnabled];
      if (result)
      {
        if ([a1 supportsTelephonyRelayCalling])
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
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsDisplayingTelephonyCalls];

  return v4;
}

+ (int)faceTimeAudioCallSupport
{
  result = [a1 supportsDisplayingFaceTimeAudioCalls];
  if (result)
  {
    if ([a1 isDirectFaceTimeAudioCallingCurrentlyAvailable])
    {
      return 3;
    }

    else
    {
      result = [a1 areRelayCallingFeaturesEnabled];
      if (result)
      {
        if ([a1 supportsFaceTimeAudioRelayCalling])
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
  result = [a1 supportsDisplayingFaceTimeVideoCalls];
  if (result)
  {
    if ([a1 isDirectFaceTimeVideoCallingCurrentlyAvailable])
    {
      return 3;
    }

    else
    {
      result = [a1 areRelayCallingFeaturesEnabled];
      if (result)
      {
        return [a1 supportsFaceTimeVideoRelayCalling];
      }
    }
  }

  return result;
}

+ (BOOL)isDirectFaceTimeAudioCallingCurrentlyAvailable
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 isFaceTimeAudioAvailable];

  return v4;
}

+ (BOOL)isDirectFaceTimeVideoCallingCurrentlyAvailable
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 isFaceTimeVideoAvailable];

  return v4;
}

+ (BOOL)accountsSupportSecondaryCalling
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 accountsSupportSecondaryCalling];

  return v4;
}

+ (BOOL)areRelayCallingFeaturesEnabled
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 areRelayCallingFeaturesEnabled];

  return v4;
}

+ (NSArray)cloudCallingDevices
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 cloudCallingDevices];

  return v4;
}

+ (int)relayCallingAvailability
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 relayCallingAvailability];

  return v4;
}

+ (BOOL)isEmergencyCallbackModeEnabled
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 isEmergencyCallbackModeEnabled];

  return v4;
}

+ (BOOL)isEmergencyCallbackPossible
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 isEmergencyCallbackPossible];

  return v4;
}

+ (id)_senderIdentityCapabilitiesByUUID
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [a1 client];
  v4 = [v3 state];
  v5 = [v4 senderIdentityCapabilitiesStateByUUID];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
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
        v15 = [a1 client];
        v16 = [(TUSenderIdentityCapabilities *)v14 initWithSenderIdentityUUID:v12 state:v13 client:v15];

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
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 supportsSimultaneousVoiceAndData];

  return v4;
}

+ (BOOL)isWiFiCallingCurrentlyAvailable
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isWiFiCallingCurrentlyAvailable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  if ([a1 isWiFiCallingCurrentlyAvailable])
  {
    return 1;
  }

  if ([a1 supportsPrimaryCalling])
  {
    return 0;
  }

  if ([a1 isThumperCallingCurrentlyAvailable])
  {
    return 1;
  }

  return [a1 areRelayCallingFeaturesEnabled];
}

+ (BOOL)canAttemptTelephonyCallsWithoutCellularConnectionWithSenderIdentityCapabilities:(id)a3
{
  v4 = a3;
  if (([v4 isWiFiCallingCurrentlyAvailable] & 1) == 0)
  {
    if ([a1 supportsPrimaryCalling])
    {
      v5 = 0;
      goto LABEL_7;
    }

    if (([v4 isThumperCallingCurrentlyAvailable] & 1) == 0)
    {
      v5 = [a1 areRelayCallingFeaturesEnabled];
      goto LABEL_7;
    }
  }

  v5 = 1;
LABEL_7:

  return v5;
}

+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnection
{
  v3 = [a1 canAttemptTelephonyCallsWithoutCellularConnection];
  if (v3)
  {
    v4 = [a1 senderIdentityCapabilities];
    v5 = [v4 anyObject];
    v6 = [v5 isEmergencyWiFiCallingCurrentlyAvailable];

    LOBYTE(v3) = v6;
  }

  return v3;
}

+ (BOOL)canAttemptEmergencyCallsWithoutCellularConnectionWithUUID:(id)a3
{
  v4 = [a1 senderIdentityCapabilitiesWithUUID:a3];
  if (v4 && [a1 canAttemptTelephonyCallsWithoutCellularConnectionWithSenderIdentityCapabilities:v4])
  {
    v5 = [v4 isEmergencyWiFiCallingCurrentlyAvailable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)supportsBasebandCalling
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsBasebandCalling];

  return v4;
}

+ (BOOL)isSimultaneousVoiceAndDataSupportedForSIMWithUUID:(id)a3
{
  v3 = [a1 senderIdentityCapabilitiesWithUUID:a3];
  v4 = [v3 supportsSimultaneousVoiceAndData];

  return v4;
}

+ (BOOL)areCTCapabilitiesValid
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 areCTCapabilitiesValid];

  return v4;
}

+ (BOOL)isCSCallingCurrentlyAvailable
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 tu_containsObjectPassingTest:&__block_literal_global_11];

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
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 supportsWiFiCalling];

  return v4;
}

+ (BOOL)isWiFiCallingEnabled
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 isWiFiCallingEnabled];

  return v4;
}

+ (BOOL)isWiFiCallingRoamingEnabled
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 isWiFiCallingRoamingEnabled];

  return v4;
}

+ (TUCTCapabilityInfo)wiFiCallingCapabilityInfo
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 wiFiCallingCapabilityInfo];

  return v4;
}

+ (BOOL)supportsWiFiEmergencyCalling
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 supportsEmergencyWiFiCalling];

  return v4;
}

+ (BOOL)supportsVoLTECalling
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 supportsVoLTECalling];

  return v4;
}

+ (BOOL)isVoLTECallingEnabled
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 isVoLTECallingEnabled];

  return v4;
}

+ (TUCTCapabilityInfo)voLTECallingCapabilityInfo
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 anyObject];
  v4 = [v3 voLTECallingCapabilityInfo];

  return v4;
}

+ (BOOL)isVoLTECallingCurrentlyAvailable
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 tu_containsObjectPassingTest:&__block_literal_global_48];

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
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 accountsMatchForSecondaryCalling];

  return v4;
}

+ (BOOL)supportsThumperCalling
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 tu_containsObjectPassingTest:&__block_literal_global_50];

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
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsCellularData];

  return v4;
}

+ (BOOL)isThumperCallingAllowedForCurrentDevice
{
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 tu_containsObjectPassingTest:&__block_literal_global_52];

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
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 tu_containsObjectPassingTest:&__block_literal_global_56];

  return v3;
}

uint64_t __56__TUCallCapabilities_isThumperCallingCurrentlyAvailable__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isThumperCallingCurrentlyAvailable];
  *a3 = result;
  return result;
}

+ (BOOL)isThumperCallingAllowedOnSecondaryDeviceWithID:(id)a3
{
  v4 = a3;
  v5 = [a1 senderIdentityCapabilities];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__TUCallCapabilities_isThumperCallingAllowedOnSecondaryDeviceWithID___block_invoke;
  v10[3] = &unk_1E74254B0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 tu_anyObjectPassingTest:v10];
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
  v2 = [a1 senderIdentityCapabilities];
  v3 = [v2 tu_anyObjectPassingTest:&__block_literal_global_58];
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
  v3 = [a1 senderIdentityCapabilities];
  v2 = [v3 anyObject];
  [v2 invalidateAndRefreshWiFiCallingProvisioningURL];
}

+ (void)invalidateAndRefreshThumperCallingProvisioningURL
{
  v3 = [a1 senderIdentityCapabilities];
  v2 = [v3 anyObject];
  [v2 invalidateAndRefreshThumperCallingProvisioningURL];
}

+ (BOOL)areCallsOnOtherDevicesEnabled
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 isRelayCallingEnabled];

  return v4;
}

+ (BOOL)isRelayCallingEnabledForDeviceWithID:(id)a3
{
  v4 = a3;
  v5 = [a1 client];
  v6 = [v5 state];
  v7 = [v6 relayCallingDisabledForDeviceID];
  v8 = [v7 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v8 BOOLValue];
  return v4 ^ 1;
}

+ (BOOL)supportsFaceTimeAudioRelayCalling
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsFaceTimeAudioRelayCalling];

  return v4;
}

+ (BOOL)supportsFaceTimeVideoRelayCalling
{
  v2 = [a1 client];
  v3 = [v2 state];
  v4 = [v3 supportsFaceTimeVideoRelayCalling];

  return v4;
}

+ (void)requestPinFromPrimaryDevice
{
  v3 = [a1 senderIdentityCapabilities];
  v2 = [v3 anyObject];
  [v2 requestPinFromPrimaryDeviceForThumperCalling];
}

+ (void)cancelPinRequestFromPrimaryDevice
{
  v3 = [a1 senderIdentityCapabilities];
  v2 = [v3 anyObject];
  [v2 cancelPinRequestFromPrimaryDeviceForThumperCalling];
}

+ (void)endEmergencyCallbackMode
{
  v2 = [a1 client];
  [v2 endEmergencyCallbackMode];
}

+ (id)senderIdentityCapabilitiesWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 client];
  v6 = [v5 state];
  v7 = [v6 senderIdentityCapabilitiesStateByUUID];
  v8 = [v7 objectForKeyedSubscript:v4];

  v9 = [TUSenderIdentityCapabilities alloc];
  v10 = [a1 client];
  v11 = [(TUSenderIdentityCapabilities *)v9 initWithSenderIdentityUUID:v4 state:v8 client:v10];

  return v11;
}

+ (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 client];
  [v8 addDelegate:v7 queue:v6];
}

+ (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [a1 client];
  [v5 removeDelegate:v4];
}

+ (void)_sendNotificationsAndCallbacksAfterRunningBlock:(id)a3
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 supportsTelephonyCalls];
  v6 = [a1 supportsFaceTimeAudioCalls];
  v7 = [a1 supportsFaceTimeVideoCalls];
  v67 = [a1 isDirectFaceTimeAudioCallingCurrentlyAvailable];
  v66 = [a1 isDirectFaceTimeVideoCallingCurrentlyAvailable];
  v78 = [a1 supportsRelayCalling];
  v69 = [a1 isRelayCallingEnabled];
  v81 = [a1 areRelayCallingFeaturesEnabled];
  v8 = [a1 cloudCallingDevices];
  v85 = [a1 outgoingRelayCallerID];
  v79 = [a1 relayCallingAvailability];
  v71 = [a1 isEmergencyCallbackModeEnabled];
  v72 = [a1 isEmergencyCallbackPossible];
  v73 = [a1 _senderIdentityCapabilitiesByUUID];
  v74 = v4;
  (*(v4 + 2))(v4);
  v9 = [a1 supportsTelephonyCalls];
  v10 = [a1 supportsFaceTimeAudioCalls];
  v11 = [a1 supportsFaceTimeVideoCalls];
  v75 = [a1 isDirectFaceTimeAudioCallingCurrentlyAvailable];
  v65 = [a1 isDirectFaceTimeVideoCallingCurrentlyAvailable];
  v76 = [a1 supportsRelayCalling];
  v68 = [a1 isRelayCallingEnabled];
  v80 = [a1 areRelayCallingFeaturesEnabled];
  v12 = [a1 cloudCallingDevices];
  v84 = [a1 outgoingRelayCallerID];
  v77 = [a1 relayCallingAvailability];
  v70 = [a1 isEmergencyCallbackModeEnabled];
  v13 = [a1 isEmergencyCallbackPossible];
  v87 = a1;
  v86 = [a1 _senderIdentityCapabilitiesByUUID];
  v83 = v8;
  if (v5 != v9)
  {
    v14 = TUDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = v5;
      *&v101[4] = 1024;
      *&v101[6] = v9;
      _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Telephony support changed from %d to %d", buf, 0xEu);
    }

    v15 = [a1 client];
    [v15 performDelegateCallbackBlock:&__block_literal_global_67];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 postNotificationName:@"TUCallCapabilitiesSupportsTelephonyCallsChangedNotification" object:0];

    v8 = v83;
  }

  v17 = v86;
  if (v6 != v10)
  {
    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = v6;
      *&v101[4] = 1024;
      *&v101[6] = v10;
      _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "FaceTime Audio support changed from %d to %d", buf, 0xEu);
    }

    v19 = [a1 client];
    [v19 performDelegateCallbackBlock:&__block_literal_global_71];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 postNotificationName:@"TUCallCapabilitiesSupportsFaceTimeAudioCallsChangedNotification" object:0];
  }

  if (v7 != v11)
  {
    v21 = TUDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = v7;
      *&v101[4] = 1024;
      *&v101[6] = v11;
      _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "FaceTime Video support changed from %d to %d", buf, 0xEu);
    }

    v22 = [a1 client];
    [v22 performDelegateCallbackBlock:&__block_literal_global_76];

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 postNotificationName:@"TUCallCapabilitiesSupportsFaceTimeVideoCallsChangedNotification" object:0];
  }

  if (v67 != v75 || v66 != v65)
  {
    v24 = TUDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v101 = v67;
      *&v101[4] = 1024;
      *&v101[6] = v66;
      LOWORD(v102) = 1024;
      *(&v102 + 2) = v75;
      HIWORD(v102) = 1024;
      v103 = v65;
      _os_log_impl(&dword_1956FD000, v24, OS_LOG_TYPE_DEFAULT, "FaceTime availability changed from (audio=%d video=%d) to (audio=%d video=%d)", buf, 0x1Au);
    }

    v25 = [a1 client];
    [v25 performDelegateCallbackBlock:&__block_literal_global_81];

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    [v26 postNotificationName:@"TUCallCapabilitiesFaceTimeAvailabilityChangedNotification" object:0];
  }

  if (v78 != v76 || v69 != v68)
  {
    v27 = TUDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v101 = v78;
      *&v101[4] = 1024;
      *&v101[6] = v69;
      LOWORD(v102) = 1024;
      *(&v102 + 2) = v76;
      HIWORD(v102) = 1024;
      v103 = v68;
      _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "Relay capabilities changed from (supported=%d enabled=%d) to (supported=%d enabled=%d)", buf, 0x1Au);
    }

    v28 = [a1 client];
    [v28 performDelegateCallbackBlock:&__block_literal_global_86];

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 postNotificationName:@"TUCallCapabilitiesRelayCallingChangedNotification" object:0];
  }

  if (v79 != v77)
  {
    v30 = TUDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = v79;
      *&v101[4] = 1024;
      *&v101[6] = v77;
      _os_log_impl(&dword_1956FD000, v30, OS_LOG_TYPE_DEFAULT, "Relay calling availability changed from %d to %d", buf, 0xEu);
    }

    v31 = [a1 client];
    [v31 performDelegateCallbackBlock:&__block_literal_global_91];

    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 postNotificationName:@"TUCallCapabilitiesRelayCallingAvailabilityChangedNotification" object:0];
  }

  if (v81 != v80)
  {
    v33 = TUDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = v81;
      *&v101[4] = 1024;
      *&v101[6] = v80;
      _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Relay calling features changed from %d to %d", buf, 0xEu);
    }

    v34 = [a1 client];
    [v34 performDelegateCallbackBlock:&__block_literal_global_96];
  }

  if (([v8 isEqualToArray:v12] & 1) == 0)
  {
    v35 = TUDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "Cloud calling devices changed", buf, 2u);
    }

    v36 = [a1 client];
    [v36 performDelegateCallbackBlock:&__block_literal_global_101];

    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 postNotificationName:@"TUCallCapabilitiesCloudCallingDevicesChangedNotification" object:0];
  }

  if ((TUStringsAreEqualOrNil(v85, v84) & 1) == 0)
  {
    v38 = TUDefaultLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v101 = v85;
      *&v101[8] = 2112;
      v102 = v84;
      _os_log_impl(&dword_1956FD000, v38, OS_LOG_TYPE_DEFAULT, "Outgoing relay caller ID changed from %@ to %@", buf, 0x16u);
    }

    v39 = [a1 client];
    [v39 performDelegateCallbackBlock:&__block_literal_global_106];

    v40 = [MEMORY[0x1E696AD88] defaultCenter];
    [v40 postNotificationName:@"TUCallCapabilitiesOutgoingRelayCallerIDChangedNotification" object:0];
  }

  if (v71 != v70)
  {
    v41 = TUDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = v71;
      *&v101[4] = 1024;
      *&v101[6] = v70;
      _os_log_impl(&dword_1956FD000, v41, OS_LOG_TYPE_DEFAULT, "Emergency Callback Mode changed from %d to %d", buf, 0xEu);
    }

    v42 = [a1 client];
    [v42 performDelegateCallbackBlock:&__block_literal_global_111];

    v43 = [MEMORY[0x1E696AD88] defaultCenter];
    [v43 postNotificationName:@"TUCallCapabilitiesEmergencyCallbackModeChangedNotification" object:0];
  }

  v82 = v12;
  if (v72 != v13)
  {
    v44 = TUDefaultLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v101 = v72;
      *&v101[4] = 1024;
      *&v101[6] = v13;
      _os_log_impl(&dword_1956FD000, v44, OS_LOG_TYPE_DEFAULT, "Emergency Callback Possible changed from %d to %d", buf, 0xEu);
    }

    v45 = [a1 client];
    [v45 performDelegateCallbackBlock:&__block_literal_global_116];

    v46 = [MEMORY[0x1E696AD88] defaultCenter];
    [v46 postNotificationName:@"TUCallCapabilitiesEmergencyCallbackPossibleChangedNotification" object:0];
  }

  v47 = [v86 mutableCopy];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v48 = v73;
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
          v56 = [v87 client];
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_2;
          v93[3] = &unk_1E7424DA0;
          v93[4] = v53;
          [v56 performDelegateCallbackBlock:v93];

          v17 = v86;
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
        v63 = [v87 client];
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = __70__TUCallCapabilities__sendNotificationsAndCallbacksAfterRunningBlock___block_invoke_3;
        v88[3] = &unk_1E7424DA0;
        v88[4] = v62;
        [v63 performDelegateCallbackBlock:v88];
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
  [v3 appendFormat:@"    supportsTelephonyCalls: %d\n", objc_msgSend(a1, "supportsTelephonyCalls")];
  [v3 appendFormat:@"    supportsFaceTimeAudioCalls: %d\n", objc_msgSend(a1, "supportsFaceTimeAudioCalls")];
  [v3 appendFormat:@"    supportsFaceTimeVideoCalls: %d\n", objc_msgSend(a1, "supportsFaceTimeVideoCalls")];
  [v3 appendFormat:@"    canAttemptTelephonyCallsWithoutCellularConnection: %d\n", objc_msgSend(a1, "canAttemptTelephonyCallsWithoutCellularConnection")];
  [v3 appendFormat:@"    canAttemptEmergencyCallsWithoutCellularConnection: %d\n", objc_msgSend(a1, "canAttemptEmergencyCallsWithoutCellularConnection")];
  [v3 appendString:@"Primary/Secondary Device:\n"];
  [v3 appendFormat:@"    supportsPrimaryCalling: %d\n", objc_msgSend(a1, "supportsPrimaryCalling")];
  [v3 appendString:@"Call support:\n"];
  [v3 appendFormat:@"    telephonyCallSupport: %d\n", objc_msgSend(a1, "telephonyCallSupport")];
  [v3 appendFormat:@"    faceTimeAudioCallSupport: %d\n", objc_msgSend(a1, "faceTimeAudioCallSupport")];
  [v3 appendFormat:@"    faceTimeVideoCallSupport: %d\n", objc_msgSend(a1, "faceTimeVideoCallSupport")];
  [v3 appendString:@"Displaying support:\n"];
  [v3 appendFormat:@"    supportsDisplayingTelephonyCalls: %d\n", objc_msgSend(a1, "supportsDisplayingTelephonyCalls")];
  [v3 appendFormat:@"    supportsDisplayingFaceTimeAudioCalls: %d\n", objc_msgSend(a1, "supportsDisplayingFaceTimeAudioCalls")];
  [v3 appendFormat:@"    supportsDisplayingFaceTimeVideoCalls: %d\n", objc_msgSend(a1, "supportsDisplayingFaceTimeVideoCalls")];
  [v3 appendString:@"Call Availability:\n"];
  [v3 appendFormat:@"    isDirectTelephonyCallingCurrentlyAvailable: %d\n", objc_msgSend(a1, "isDirectTelephonyCallingCurrentlyAvailable")];
  [v3 appendFormat:@"    isDirectFaceTimeAudioCallingCurrentlyAvailable: %d\n", objc_msgSend(a1, "isDirectFaceTimeAudioCallingCurrentlyAvailable")];
  [v3 appendFormat:@"    isDirectFaceTimeVideoCallingCurrentlyAvailable: %d\n", objc_msgSend(a1, "isDirectFaceTimeVideoCallingCurrentlyAvailable")];
  [v3 appendString:@"System capabilities:\n"];
  [v3 appendFormat:@"    supportsSimultaneousVoiceAndData: %d\n", objc_msgSend(a1, "supportsSimultaneousVoiceAndData")];
  [v3 appendString:@"Wi-Fi calling:\n"];
  [v3 appendFormat:@"    supportsWiFiCalling: %d\n", objc_msgSend(a1, "supportsWiFiCalling")];
  [v3 appendFormat:@"    isWiFiCallingEnabled: %d\n", objc_msgSend(a1, "isWiFiCallingEnabled")];
  [v3 appendFormat:@"    isWiFiCallingCurrentlyAvailable: %d\n", objc_msgSend(a1, "isWiFiCallingCurrentlyAvailable")];
  [v3 appendString:@"VoLTE calling:\n"];
  [v3 appendFormat:@"    supportsVoLTECalling: %d\n", objc_msgSend(a1, "supportsVoLTECalling")];
  [v3 appendFormat:@"    isVoLTECallingEnabled: %d\n", objc_msgSend(a1, "isVoLTECallingEnabled")];
  [v3 appendFormat:@"    isVoLTECallingCurrentlyAvailable: %d\n", objc_msgSend(a1, "isVoLTECallingCurrentlyAvailable")];
  [v3 appendString:@"Secondary calling:\n"];
  [v3 appendFormat:@"    accountsMatchForSecondaryCalling: %d\n", objc_msgSend(a1, "accountsMatchForSecondaryCalling")];
  [v3 appendFormat:@"    accountsSupportSecondaryCalling: %d\n", objc_msgSend(a1, "accountsSupportSecondaryCalling")];
  [v3 appendString:@"Thumper calling:\n"];
  [v3 appendFormat:@"    supportsThumperCalling: %d\n", objc_msgSend(a1, "supportsThumperCalling")];
  [v3 appendFormat:@"    isThumperCallingAllowedForCurrentDevice: %d\n", objc_msgSend(a1, "isThumperCallingAllowedForCurrentDevice")];
  [v3 appendFormat:@"    isThumperCallingEnabled: %d\n", objc_msgSend(a1, "isThumperCallingEnabled")];
  [v3 appendFormat:@"    supportsThumperCallingOverCellularData: %d\n", objc_msgSend(a1, "supportsThumperCallingOverCellularData")];
  [v3 appendFormat:@"    isThumperCallingCurrentlyAvailable: %d\n", objc_msgSend(a1, "isThumperCallingCurrentlyAvailable")];
  [v3 appendString:@"Relay calling:\n"];
  [v3 appendFormat:@"    supportsRelayingToOtherDevices: %d\n", objc_msgSend(a1, "supportsRelayingToOtherDevices")];
  [v3 appendFormat:@"    supportsRelayCalling: %d\n", objc_msgSend(a1, "supportsRelayCalling")];
  [v3 appendFormat:@"    isRelayCallingEnabled: %d\n", objc_msgSend(a1, "isRelayCallingEnabled")];
  [v3 appendFormat:@"    isRelayCallingGuaranteed: %d\n", objc_msgSend(a1, "relayCallingAvailability") == 2];
  [v3 appendFormat:@"    areRelayCallingFeaturesEnabled: %d\n", objc_msgSend(a1, "areRelayCallingFeaturesEnabled")];
  [v3 appendString:@"Outgoing relay calling:\n"];
  [v3 appendFormat:@"    supportsTelephonyRelayCalling: %d\n", objc_msgSend(a1, "supportsTelephonyRelayCalling")];
  [v3 appendFormat:@"    supportsFaceTimeAudioRelayCalling: %d\n", objc_msgSend(a1, "supportsFaceTimeAudioRelayCalling")];
  [v3 appendFormat:@"    supportsFaceTimeVideoRelayCalling: %d\n", objc_msgSend(a1, "supportsFaceTimeVideoRelayCalling")];
  v4 = [a1 outgoingRelayCallerID];
  [v3 appendFormat:@"    outgoingRelayCallerID: %@\n", v4];

  [v3 appendString:@"Emergency callback mode:\n"];
  [v3 appendFormat:@"    isEmergencyCallbackModeEnabled: %d\n", objc_msgSend(a1, "isEmergencyCallbackModeEnabled")];
  [v3 appendFormat:@"    isEmergencyCallbackPossible: %d\n", objc_msgSend(a1, "isEmergencyCallbackPossible")];

  return v3;
}

@end