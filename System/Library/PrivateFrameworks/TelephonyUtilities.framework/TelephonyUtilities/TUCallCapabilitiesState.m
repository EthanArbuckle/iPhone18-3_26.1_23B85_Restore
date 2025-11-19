@interface TUCallCapabilitiesState
- (NSString)description;
- (TUCallCapabilitiesState)init;
- (TUCallCapabilitiesState)initWithCoder:(id)a3;
- (TUCloudCallingDevice)defaultPairedDevice;
- (id)copyWithZone:(_NSZone *)a3;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCallCapabilitiesState

- (TUCallCapabilitiesState)init
{
  v9.receiver = self;
  v9.super_class = TUCallCapabilitiesState;
  v2 = [(TUCallCapabilitiesState *)&v9 init];
  v3 = v2;
  if (v2)
  {
    cloudCallingDevices = v2->_cloudCallingDevices;
    v2->_cloudCallingDevices = MEMORY[0x1E695E0F0];

    relayCallingDisabledForDeviceID = v3->_relayCallingDisabledForDeviceID;
    v6 = MEMORY[0x1E695E0F8];
    v3->_relayCallingDisabledForDeviceID = MEMORY[0x1E695E0F8];

    senderIdentityCapabilitiesStateByUUID = v3->_senderIdentityCapabilitiesStateByUUID;
    v3->_senderIdentityCapabilitiesStateByUUID = v6;
  }

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>\n", objc_opt_class(), self];
  [v3 appendString:@"Device Capabilities:\n"];
  if ([(TUCallCapabilitiesState *)self supportsPrimaryCalling])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"    supportsPrimaryCalling: %@\n", v4];
  if ([(TUCallCapabilitiesState *)self supportsBasebandCalling])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"    supportsBasebandCalling: %@\n", v5];
  if ([(TUCallCapabilitiesState *)self supportsCellularData])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"    supportsCellularData: %@\n", v6];
  [v3 appendString:@"Displaying support:\n"];
  if ([(TUCallCapabilitiesState *)self supportsDisplayingTelephonyCalls])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"    supportsDisplayingTelephonyCalls: %@\n", v7];
  if ([(TUCallCapabilitiesState *)self supportsDisplayingFaceTimeAudioCalls])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 appendFormat:@"    supportsDisplayingFaceTimeAudioCalls: %@\n", v8];
  if ([(TUCallCapabilitiesState *)self supportsDisplayingFaceTimeVideoCalls])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"    supportsDisplayingFaceTimeVideoCalls: %@\n", v9];
  [v3 appendString:@"Calling Availability:\n"];
  if ([(TUCallCapabilitiesState *)self isFaceTimeAudioAvailable])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"    isFaceTimeAudioAvailable: %@\n", v10];
  if ([(TUCallCapabilitiesState *)self isFaceTimeVideoAvailable])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 appendFormat:@"    isFaceTimeVideoAvailable: %@\n", v11];
  [v3 appendString:@"CT Capability Validity:\n"];
  if ([(TUCallCapabilitiesState *)self areCTCapabilitiesValid])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 appendFormat:@"    areCTCapabilitiesValid: %@\n", v12];
  [v3 appendString:@"Secondary calling:\n"];
  if ([(TUCallCapabilitiesState *)self accountsMatchForSecondaryCalling])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 appendFormat:@"    accountsMatchForSecondaryCalling: %@\n", v13];
  if ([(TUCallCapabilitiesState *)self accountsSupportSecondaryCalling])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v3 appendFormat:@"    accountsSupportSecondaryCalling: %@\n", v14];
  [v3 appendString:@"Relay calling:\n"];
  if ([(TUCallCapabilitiesState *)self supportsRelayCalling])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  [v3 appendFormat:@"    supportsRelayCalling: %@\n", v15];
  if ([(TUCallCapabilitiesState *)self areRelayCallingFeaturesEnabled])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v3 appendFormat:@"    areRelayCallingFeaturesEnabled: %@\n", v16];
  if ([(TUCallCapabilitiesState *)self isRelayCallingEnabled])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v3 appendFormat:@"    isRelayCallingEnabled: %@\n", v17];
  [v3 appendFormat:@"    relayCallingAvailability: %d\n", -[TUCallCapabilitiesState relayCallingAvailability](self, "relayCallingAvailability")];
  v18 = [(TUCallCapabilitiesState *)self relayCallingDisabledForDeviceID];
  [v3 appendFormat:@"    relayCallingDisabledForDeviceID: %@\n", v18];

  [v3 appendString:@"Outgoing relay calling:\n"];
  if ([(TUCallCapabilitiesState *)self supportsTelephonyRelayCalling])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 appendFormat:@"    supportsTelephonyRelayCalling: %@\n", v19];
  if ([(TUCallCapabilitiesState *)self supportsFaceTimeAudioRelayCalling])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  [v3 appendFormat:@"    supportsFaceTimeAudioRelayCalling: %@\n", v20];
  if ([(TUCallCapabilitiesState *)self supportsFaceTimeVideoRelayCalling])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v3 appendFormat:@"    supportsFaceTimeVideoRelayCalling: %@\n", v21];
  v22 = [(TUCallCapabilitiesState *)self outgoingRelayCallerID];
  [v3 appendFormat:@"    outgoingRelayCallerID: %@\n", v22];

  [v3 appendString:@"Devices:\n"];
  v23 = [(TUCallCapabilitiesState *)self cloudCallingDevices];
  [v3 appendFormat:@"    cloudCallingDevices: %@\n", v23];

  [v3 appendString:@"Emergency callback:\n"];
  if ([(TUCallCapabilitiesState *)self isEmergencyCallbackModeEnabled])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 appendFormat:@"    emergencyCallbackModeEnabled: %@\n", v24];
  if ([(TUCallCapabilitiesState *)self isEmergencyCallbackPossible])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v3 appendFormat:@"    emergencyCallbackPossible: %@\n", v25];
  [v3 appendString:@"Sender Identity capabilities:\n"];
  v26 = [(TUCallCapabilitiesState *)self senderIdentityCapabilitiesStateByUUID];
  [v3 appendFormat:@"    senderIdentityCapabilitiesStateByUUID: %@\n", v26];

  return v3;
}

- (TUCloudCallingDevice)defaultPairedDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TUCallCapabilitiesState *)self cloudCallingDevices];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (TUCallCapabilitiesState)initWithCoder:(id)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCallCapabilitiesState *)self init];
  if (v5)
  {
    -[TUCallCapabilitiesState setSupportsPrimaryCalling:](v5, "setSupportsPrimaryCalling:", [v4 decodeBoolForKey:@"supportsPrimaryCalling"]);
    -[TUCallCapabilitiesState setSupportsBasebandCalling:](v5, "setSupportsBasebandCalling:", [v4 decodeBoolForKey:@"supportsBasebandCalling"]);
    -[TUCallCapabilitiesState setSupportsCellularData:](v5, "setSupportsCellularData:", [v4 decodeBoolForKey:@"supportsCellularData"]);
    -[TUCallCapabilitiesState setSupportsDisplayingTelephonyCalls:](v5, "setSupportsDisplayingTelephonyCalls:", [v4 decodeBoolForKey:@"supportsDisplayingTelephonyCalls"]);
    -[TUCallCapabilitiesState setSupportsDisplayingFaceTimeAudioCalls:](v5, "setSupportsDisplayingFaceTimeAudioCalls:", [v4 decodeBoolForKey:@"supportsDisplayingFaceTimeAudioCalls"]);
    -[TUCallCapabilitiesState setSupportsDisplayingFaceTimeVideoCalls:](v5, "setSupportsDisplayingFaceTimeVideoCalls:", [v4 decodeBoolForKey:@"supportsDisplayingFaceTimeVideoCalls"]);
    -[TUCallCapabilitiesState setFaceTimeAudioAvailable:](v5, "setFaceTimeAudioAvailable:", [v4 decodeBoolForKey:@"faceTimeAudioAvailable"]);
    -[TUCallCapabilitiesState setFaceTimeVideoAvailable:](v5, "setFaceTimeVideoAvailable:", [v4 decodeBoolForKey:@"faceTimeVideoAvailable"]);
    -[TUCallCapabilitiesState setCtCapabilitiesValid:](v5, "setCtCapabilitiesValid:", [v4 decodeBoolForKey:@"ctCapabilitiesValid"]);
    -[TUCallCapabilitiesState setSupportsRelayCalling:](v5, "setSupportsRelayCalling:", [v4 decodeBoolForKey:@"supportsRelayCalling"]);
    -[TUCallCapabilitiesState setAccountsMatchForSecondaryCalling:](v5, "setAccountsMatchForSecondaryCalling:", [v4 decodeBoolForKey:@"accountsMatchForSecondaryCalling"]);
    -[TUCallCapabilitiesState setAccountsSupportSecondaryCalling:](v5, "setAccountsSupportSecondaryCalling:", [v4 decodeBoolForKey:@"accountsSupportSecondaryCalling"]);
    -[TUCallCapabilitiesState setRelayCallingFeaturesEnabled:](v5, "setRelayCallingFeaturesEnabled:", [v4 decodeBoolForKey:@"relayCallingFeaturesEnabled"]);
    -[TUCallCapabilitiesState setRelayCallingEnabled:](v5, "setRelayCallingEnabled:", [v4 decodeBoolForKey:@"relayCallingEnabled"]);
    -[TUCallCapabilitiesState setRelayCallingAvailability:](v5, "setRelayCallingAvailability:", [v4 decodeIntForKey:@"relayCallingAvailability"]);
    v6 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v24[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"relayCallingDisabledForDeviceID"];
    [(TUCallCapabilitiesState *)v5 setRelayCallingDisabledForDeviceID:v9];

    -[TUCallCapabilitiesState setSupportsTelephonyRelayCalling:](v5, "setSupportsTelephonyRelayCalling:", [v4 decodeBoolForKey:@"supportsTelephonyRelayCalling"]);
    -[TUCallCapabilitiesState setSupportsFaceTimeAudioRelayCalling:](v5, "setSupportsFaceTimeAudioRelayCalling:", [v4 decodeBoolForKey:@"supportsFaceTimeAudioRelayCalling"]);
    -[TUCallCapabilitiesState setSupportsFaceTimeVideoRelayCalling:](v5, "setSupportsFaceTimeVideoRelayCalling:", [v4 decodeBoolForKey:@"supportsFaceTimeVideoRelayCalling"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outgoingRelayCallerID"];
    [(TUCallCapabilitiesState *)v5 setOutgoingRelayCallerID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"cloudCallingDevices"];
    [(TUCallCapabilitiesState *)v5 setCloudCallingDevices:v14];

    -[TUCallCapabilitiesState setEmergencyCallbackModeEnabled:](v5, "setEmergencyCallbackModeEnabled:", [v4 decodeBoolForKey:@"emergencyCallbackModeEnabled"]);
    -[TUCallCapabilitiesState setEmergencyCallbackPossible:](v5, "setEmergencyCallbackPossible:", [v4 decodeBoolForKey:@"emergencyCallbackPossible"]);
    v15 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
    v17 = [v15 setWithArray:v16];
    v18 = NSStringFromSelector(sel_senderIdentityCapabilitiesStateByUUID);
    v19 = [v4 decodeObjectOfClasses:v17 forKey:v18];
    [(TUCallCapabilitiesState *)v5 setSenderIdentityCapabilitiesStateByUUID:v19];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[TUCallCapabilitiesState supportsPrimaryCalling](self forKey:{"supportsPrimaryCalling"), @"supportsPrimaryCalling"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsBasebandCalling](self forKey:{"supportsBasebandCalling"), @"supportsBasebandCalling"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsCellularData](self forKey:{"supportsCellularData"), @"supportsCellularData"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsDisplayingTelephonyCalls](self forKey:{"supportsDisplayingTelephonyCalls"), @"supportsDisplayingTelephonyCalls"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsDisplayingFaceTimeAudioCalls](self forKey:{"supportsDisplayingFaceTimeAudioCalls"), @"supportsDisplayingFaceTimeAudioCalls"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsDisplayingFaceTimeVideoCalls](self forKey:{"supportsDisplayingFaceTimeVideoCalls"), @"supportsDisplayingFaceTimeVideoCalls"}];
  [v4 encodeBool:-[TUCallCapabilitiesState isFaceTimeAudioAvailable](self forKey:{"isFaceTimeAudioAvailable"), @"faceTimeAudioAvailable"}];
  [v4 encodeBool:-[TUCallCapabilitiesState isFaceTimeVideoAvailable](self forKey:{"isFaceTimeVideoAvailable"), @"faceTimeVideoAvailable"}];
  [v4 encodeBool:-[TUCallCapabilitiesState areCTCapabilitiesValid](self forKey:{"areCTCapabilitiesValid"), @"ctCapabilitiesValid"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsRelayCalling](self forKey:{"supportsRelayCalling"), @"supportsRelayCalling"}];
  [v4 encodeBool:-[TUCallCapabilitiesState accountsMatchForSecondaryCalling](self forKey:{"accountsMatchForSecondaryCalling"), @"accountsMatchForSecondaryCalling"}];
  [v4 encodeBool:-[TUCallCapabilitiesState accountsSupportSecondaryCalling](self forKey:{"accountsSupportSecondaryCalling"), @"accountsSupportSecondaryCalling"}];
  [v4 encodeBool:-[TUCallCapabilitiesState areRelayCallingFeaturesEnabled](self forKey:{"areRelayCallingFeaturesEnabled"), @"relayCallingFeaturesEnabled"}];
  [v4 encodeBool:-[TUCallCapabilitiesState isRelayCallingEnabled](self forKey:{"isRelayCallingEnabled"), @"relayCallingEnabled"}];
  [v4 encodeInt:-[TUCallCapabilitiesState relayCallingAvailability](self forKey:{"relayCallingAvailability"), @"relayCallingAvailability"}];
  v5 = [(TUCallCapabilitiesState *)self relayCallingDisabledForDeviceID];
  [v4 encodeObject:v5 forKey:@"relayCallingDisabledForDeviceID"];

  [v4 encodeBool:-[TUCallCapabilitiesState supportsTelephonyRelayCalling](self forKey:{"supportsTelephonyRelayCalling"), @"supportsTelephonyRelayCalling"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsFaceTimeAudioRelayCalling](self forKey:{"supportsFaceTimeAudioRelayCalling"), @"supportsFaceTimeAudioRelayCalling"}];
  [v4 encodeBool:-[TUCallCapabilitiesState supportsFaceTimeVideoRelayCalling](self forKey:{"supportsFaceTimeVideoRelayCalling"), @"supportsFaceTimeVideoRelayCalling"}];
  v6 = [(TUCallCapabilitiesState *)self outgoingRelayCallerID];
  [v4 encodeObject:v6 forKey:@"outgoingRelayCallerID"];

  v7 = [(TUCallCapabilitiesState *)self cloudCallingDevices];
  [v4 encodeObject:v7 forKey:@"cloudCallingDevices"];

  [v4 encodeBool:-[TUCallCapabilitiesState isEmergencyCallbackModeEnabled](self forKey:{"isEmergencyCallbackModeEnabled"), @"emergencyCallbackModeEnabled"}];
  [v4 encodeBool:-[TUCallCapabilitiesState isEmergencyCallbackPossible](self forKey:{"isEmergencyCallbackPossible"), @"emergencyCallbackPossible"}];
  v9 = [(TUCallCapabilitiesState *)self senderIdentityCapabilitiesStateByUUID];
  v8 = NSStringFromSelector(sel_senderIdentityCapabilitiesStateByUUID);
  [v4 encodeObject:v9 forKey:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(TUCallCapabilitiesState *)self publiclyAccessibleCopyWithZone:a3];
  v5 = [(TUCallCapabilitiesState *)self relayCallingDisabledForDeviceID];
  [v4 setRelayCallingDisabledForDeviceID:v5];

  v6 = [(TUCallCapabilitiesState *)self outgoingRelayCallerID];
  [v4 setOutgoingRelayCallerID:v6];

  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  v8 = [(TUCallCapabilitiesState *)self cloudCallingDevices];
  v9 = [v7 initWithArray:v8 copyItems:1];
  [v4 setCloudCallingDevices:v9];

  [v4 setEmergencyCallbackModeEnabled:{-[TUCallCapabilitiesState isEmergencyCallbackModeEnabled](self, "isEmergencyCallbackModeEnabled")}];
  [v4 setEmergencyCallbackPossible:{-[TUCallCapabilitiesState isEmergencyCallbackPossible](self, "isEmergencyCallbackPossible")}];
  v10 = [(TUCallCapabilitiesState *)self senderIdentityCapabilitiesStateByUUID];
  [v4 setSenderIdentityCapabilitiesStateByUUID:v10];

  return v4;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSupportsPrimaryCalling:{-[TUCallCapabilitiesState supportsPrimaryCalling](self, "supportsPrimaryCalling")}];
  [v4 setSupportsBasebandCalling:{-[TUCallCapabilitiesState supportsBasebandCalling](self, "supportsBasebandCalling")}];
  [v4 setSupportsCellularData:{-[TUCallCapabilitiesState supportsCellularData](self, "supportsCellularData")}];
  [v4 setSupportsDisplayingTelephonyCalls:{-[TUCallCapabilitiesState supportsDisplayingTelephonyCalls](self, "supportsDisplayingTelephonyCalls")}];
  [v4 setSupportsDisplayingFaceTimeAudioCalls:{-[TUCallCapabilitiesState supportsDisplayingFaceTimeAudioCalls](self, "supportsDisplayingFaceTimeAudioCalls")}];
  [v4 setSupportsDisplayingFaceTimeVideoCalls:{-[TUCallCapabilitiesState supportsDisplayingFaceTimeVideoCalls](self, "supportsDisplayingFaceTimeVideoCalls")}];
  [v4 setFaceTimeAudioAvailable:{-[TUCallCapabilitiesState isFaceTimeAudioAvailable](self, "isFaceTimeAudioAvailable")}];
  [v4 setFaceTimeVideoAvailable:{-[TUCallCapabilitiesState isFaceTimeVideoAvailable](self, "isFaceTimeVideoAvailable")}];
  [v4 setCtCapabilitiesValid:{-[TUCallCapabilitiesState areCTCapabilitiesValid](self, "areCTCapabilitiesValid")}];
  [v4 setSupportsRelayCalling:{-[TUCallCapabilitiesState supportsRelayCalling](self, "supportsRelayCalling")}];
  [v4 setAccountsMatchForSecondaryCalling:{-[TUCallCapabilitiesState accountsMatchForSecondaryCalling](self, "accountsMatchForSecondaryCalling")}];
  [v4 setAccountsSupportSecondaryCalling:{-[TUCallCapabilitiesState accountsSupportSecondaryCalling](self, "accountsSupportSecondaryCalling")}];
  [v4 setRelayCallingFeaturesEnabled:{-[TUCallCapabilitiesState areRelayCallingFeaturesEnabled](self, "areRelayCallingFeaturesEnabled")}];
  [v4 setRelayCallingEnabled:{-[TUCallCapabilitiesState isRelayCallingEnabled](self, "isRelayCallingEnabled")}];
  [v4 setRelayCallingAvailability:{-[TUCallCapabilitiesState relayCallingAvailability](self, "relayCallingAvailability")}];
  [v4 setSupportsTelephonyRelayCalling:{-[TUCallCapabilitiesState supportsTelephonyRelayCalling](self, "supportsTelephonyRelayCalling")}];
  [v4 setSupportsFaceTimeAudioRelayCalling:{-[TUCallCapabilitiesState supportsFaceTimeAudioRelayCalling](self, "supportsFaceTimeAudioRelayCalling")}];
  v19 = v4;
  [v4 setSupportsFaceTimeVideoRelayCalling:{-[TUCallCapabilitiesState supportsFaceTimeVideoRelayCalling](self, "supportsFaceTimeVideoRelayCalling")}];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = [(TUCallCapabilitiesState *)self senderIdentityCapabilitiesStateByUUID];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(TUCallCapabilitiesState *)self senderIdentityCapabilitiesStateByUUID];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [(TUCallCapabilitiesState *)self senderIdentityCapabilitiesStateByUUID];
        v15 = [v14 objectForKeyedSubscript:v13];
        v16 = [v15 publiclyAccessibleCopy];
        [v7 setObject:v16 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [v19 setSenderIdentityCapabilitiesStateByUUID:v7];
  v17 = *MEMORY[0x1E69E9840];

  return v19;
}

@end