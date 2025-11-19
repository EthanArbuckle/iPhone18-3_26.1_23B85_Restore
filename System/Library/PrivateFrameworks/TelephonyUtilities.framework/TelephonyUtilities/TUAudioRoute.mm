@interface TUAudioRoute
- (BOOL)_routeTypeEqualTo:(id)a3;
- (BOOL)isA2DPRoute;
- (BOOL)isAirTunes;
- (BOOL)isBluetooth;
- (BOOL)isBluetoothLE;
- (BOOL)isBluetoothManaged;
- (BOOL)isCarAudio;
- (BOOL)isCurrentlyPicked;
- (BOOL)isDefaultRoute;
- (BOOL)isHandset;
- (BOOL)isHeadphoneJackConnected;
- (BOOL)isInEarDetectionEnabled;
- (BOOL)isInEarDetectionSupported;
- (BOOL)isPartnerRouteRoutable;
- (BOOL)isPreferred;
- (BOOL)isPreferredAndActive;
- (BOOL)isReceiver;
- (BOOL)isSiblingRoutePresent;
- (BOOL)isSpeaker;
- (BOOL)isWiredHeadphones;
- (BOOL)isWiredHeadset;
- (BOOL)isWirelessHeadset;
- (BOOL)supportsSharePlay;
- (NSString)mxBluetoothProductIdentifier;
- (TUAudioRoute)initWithCoder:(id)a3;
- (TUAudioRoute)initWithDictionary:(id)a3;
- (id)customDescription;
- (id)identifiersOfOtherConnectedDevices;
- (id)modelIdentifier;
- (int64_t)bluetoothEndpointType;
- (int64_t)deviceType;
- (unsigned)bluetoothProductIdentifierAsUInt32;
- (void)bluetoothProductIdentifierAsUInt32;
- (void)encodeWithCoder:(id)a3;
- (void)identifiersOfOtherConnectedDevices;
- (void)isA2DPRoute;
- (void)isBluetooth;
- (void)isBluetoothManaged;
- (void)isCurrentlyPicked;
- (void)isDefaultRoute;
- (void)isHeadphoneJackConnected;
- (void)isInEarDetectionEnabled;
- (void)isInEarDetectionSupported;
- (void)isPartnerRouteRoutable;
- (void)isPreferred;
- (void)isPreferredAndActive;
- (void)isSiblingRoutePresent;
- (void)isWiredHeadset;
- (void)isWirelessHeadset;
- (void)modelIdentifier;
- (void)mxBluetoothProductIdentifier;
- (void)supportsSharePlay;
@end

@implementation TUAudioRoute

- (BOOL)isA2DPRoute
{
  if (![(TUAudioRoute *)self isBluetooth])
  {
    return 0;
  }

  v3 = [(TUAudioRoute *)self route];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAVSystemController_RouteDescriptionKey_BTDetails_IsA2DPRouteSymbolLoc_ptr;
  v12 = getAVSystemController_RouteDescriptionKey_BTDetails_IsA2DPRouteSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_BTDetails_IsA2DPRouteSymbolLoc_ptr)
  {
    v5 = MediaExperienceLibrary_0();
    v10[3] = dlsym(v5, "AVSystemController_RouteDescriptionKey_BTDetails_IsA2DPRoute");
    getAVSystemController_RouteDescriptionKey_BTDetails_IsA2DPRouteSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    [TUAudioRoute isA2DPRoute];
  }

  v6 = [v3 objectForKeyedSubscript:*v4];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)isBluetooth
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_IsBTRouteSymbolLoc_ptr;
  v13 = getAVSystemController_RouteDescriptionKey_IsBTRouteSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_IsBTRouteSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v11[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_IsBTRoute");
    getAVSystemController_RouteDescriptionKey_IsBTRouteSymbolLoc_ptr = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    [TUAudioRoute isBluetooth];
  }

  if (!*v3)
  {
    return 0;
  }

  v5 = *v3;
  v6 = [(TUAudioRoute *)self route];
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = [v7 BOOLValue];
  return v8;
}

- (BOOL)isAirTunes
{
  v2 = [(TUAudioRoute *)self avAudioRouteName];
  v3 = [v2 isEqualToString:@"AirTunes"];

  return v3;
}

- (BOOL)isCarAudio
{
  v2 = [(TUAudioRoute *)self avAudioRouteName];
  v3 = [v2 isEqualToString:@"CarAudioOutput"];

  return v3;
}

- (BOOL)isDefaultRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getAVSystemController_PickableRouteType_DefaultSymbolLoc_ptr;
  v9 = getAVSystemController_PickableRouteType_DefaultSymbolLoc_ptr;
  if (!getAVSystemController_PickableRouteType_DefaultSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v7[3] = dlsym(v4, "AVSystemController_PickableRouteType_Default");
    getAVSystemController_PickableRouteType_DefaultSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    [TUAudioRoute isDefaultRoute];
  }

  return [(TUAudioRoute *)self _routeTypeEqualTo:*v3];
}

- (BOOL)isCurrentlyPicked
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr_0;
  v11 = getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr_0;
  if (!getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr_0)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked");
    getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr_0 = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute isCurrentlyPicked];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (int64_t)bluetoothEndpointType
{
  if (![(TUAudioRoute *)self isBluetooth])
  {
    return 0;
  }

  v3 = getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType();

  if (v3)
  {
    v4 = [(TUAudioRoute *)self route];
    v5 = getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType();
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_Headphones();
    if (v7 && (v8 = v7, getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_Headphones(), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v6 isEqualToString:v9], v9, v8, (v10 & 1) != 0))
    {
      v3 = 1;
    }

    else
    {
      v11 = getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_Vehicle();
      if (v11 && (v12 = v11, getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_Vehicle(), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v6 isEqualToString:v13], v13, v12, (v14 & 1) != 0))
      {
        v3 = 2;
      }

      else
      {
        v15 = getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_Speakers();
        if (v15 && (v16 = v15, getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_Speakers(), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v6 isEqualToString:v17], v17, v16, (v18 & 1) != 0))
        {
          v3 = 3;
        }

        else
        {
          v3 = getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_TTY();
          if (v3)
          {
            v19 = getAVSystemController_RouteDescriptionKey_BTDetails_EndpointType_TTY();
            v20 = [v6 isEqualToString:v19];

            if (v20)
            {
              v3 = 4;
            }

            else
            {
              v3 = 0;
            }
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)isBluetoothLE
{
  v2 = [(TUAudioRoute *)self avAudioRouteName];
  v3 = [v2 isEqualToString:@"BluetoothLEOutput"];

  return v3;
}

- (BOOL)isBluetoothManaged
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_BTDetails_IsBTManagedSymbolLoc_ptr;
  v11 = getAVSystemController_RouteDescriptionKey_BTDetails_IsBTManagedSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_BTDetails_IsBTManagedSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_BTDetails_IsBTManaged");
    getAVSystemController_RouteDescriptionKey_BTDetails_IsBTManagedSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute isBluetoothManaged];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (int64_t)deviceType
{
  v2 = [(TUAudioRoute *)self mxBluetoothProductIdentifier];
  if ([v2 hasSuffix:{@"76, 8194"}] & 1) != 0 || (objc_msgSend(v2, "hasSuffix:", @"76,8207"))
  {
    v3 = 1;
  }

  else if ([v2 hasSuffix:{@"76, 8206"}])
  {
    v3 = 18;
  }

  else if ([v2 hasSuffix:{@"76, 8212"}] & 1) != 0 || (objc_msgSend(v2, "hasSuffix:", @"76,8228"))
  {
    v3 = 29;
  }

  else if ([v2 hasSuffix:{@"76, 8229"}] & 1) != 0 || (objc_msgSend(v2, "hasSuffix:", @"76,8198"))
  {
    v3 = 2;
  }

  else if ([v2 hasSuffix:{@"76, 8197"}])
  {
    v3 = 3;
  }

  else if ([v2 hasSuffix:{@"76, 8195"}])
  {
    v3 = 4;
  }

  else
  {
    if ([v2 hasSuffix:{@"76, 8201"}])
    {
      goto LABEL_18;
    }

    if ([v2 hasSuffix:{@"76, 8203"}])
    {
      v3 = 16;
      goto LABEL_4;
    }

    if ([v2 hasSuffix:{@"76, 8204"}])
    {
      v3 = 17;
      goto LABEL_4;
    }

    if ([v2 hasSuffix:{@"76, 8205"}])
    {
      v3 = 19;
      goto LABEL_4;
    }

    if ([v2 hasSuffix:{@"76, 8202"}] & 1) != 0 || (objc_msgSend(v2, "hasSuffix:", @"76,8223"))
    {
      v3 = 20;
      goto LABEL_4;
    }

    if ([v2 hasSuffix:{@"76, 8208"}])
    {
      v3 = 21;
      goto LABEL_4;
    }

    if ([v2 hasSuffix:{@"76, 8209"}] & 1) != 0 || (objc_msgSend(v2, "hasSuffix:", @"76,8214"))
    {
      v3 = 24;
      goto LABEL_4;
    }

    if ([v2 hasSuffix:{@"76, 8215"}])
    {
LABEL_18:
      v3 = 5;
    }

    else if ([v2 hasSuffix:{@"76, 8218"}])
    {
      v3 = 31;
    }

    else if ([v2 hasSuffix:{@"76, 8230"}])
    {
      v3 = 33;
    }

    else if ([v2 hasSuffix:{@"76, 8221"}])
    {
      v3 = 34;
    }

    else if ([v2 hasSuffix:{@"76, 8239"}])
    {
      v3 = 38;
    }

    else if ([v2 hasSuffix:{@"76, 8231"}])
    {
      v3 = 39;
    }

    else if ([v2 hasSuffix:{@"76, 8217"}] & 1) != 0 || (objc_msgSend(v2, "hasSuffix:", @"76,8219"))
    {
      v3 = 36;
    }

    else if ([v2 hasSuffix:{@"76, 8210"}])
    {
      v3 = 25;
    }

    else if ([v2 hasSuffix:{@"76, 8211"}])
    {
      v3 = 26;
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_4:

  return v3;
}

- (BOOL)isInEarDetectionSupported
{
  if (![(TUAudioRoute *)self isPreferred])
  {
    return 0;
  }

  v3 = [(TUAudioRoute *)self route];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupportedSymbolLoc_ptr;
  v12 = getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupportedSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupportedSymbolLoc_ptr)
  {
    v5 = MediaExperienceLibrary_0();
    v10[3] = dlsym(v5, "AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupported");
    getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupportedSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    [TUAudioRoute isInEarDetectionSupported];
  }

  v6 = [v3 objectForKeyedSubscript:*v4];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)isPreferred
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_IsPreferredExternalRouteSymbolLoc_ptr;
  v11 = getAVSystemController_RouteDescriptionKey_IsPreferredExternalRouteSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_IsPreferredExternalRouteSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_IsPreferredExternalRoute");
    getAVSystemController_RouteDescriptionKey_IsPreferredExternalRouteSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute isPreferred];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isPreferredAndActive
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActiveSymbolLoc_ptr;
  v11 = getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActiveSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActiveSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActive");
    getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActiveSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute isPreferredAndActive];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isReceiver
{
  v2 = [(TUAudioRoute *)self avAudioRouteName];
  v3 = [v2 isEqualToString:@"Receiver"];

  return v3;
}

- (BOOL)isSpeaker
{
  v2 = [(TUAudioRoute *)self avAudioRouteName];
  v3 = [v2 isEqualToString:@"Speaker"];

  return v3;
}

- (id)identifiersOfOtherConnectedDevices
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(TUAudioRoute *)self route];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v5 = getAVSystemController_RouteDescriptionKey_OtherDevicesConnectedSymbolLoc_ptr;
  v32 = getAVSystemController_RouteDescriptionKey_OtherDevicesConnectedSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_OtherDevicesConnectedSymbolLoc_ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getAVSystemController_RouteDescriptionKey_OtherDevicesConnectedSymbolLoc_block_invoke;
    v27 = &unk_1E7424CD8;
    v28 = &v29;
    v6 = MediaExperienceLibrary_0();
    v30[3] = dlsym(v6, "AVSystemController_RouteDescriptionKey_OtherDevicesConnected");
    getAVSystemController_RouteDescriptionKey_OtherDevicesConnectedSymbolLoc_ptr = *(v28[1] + 24);
    v5 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v5)
  {
    [TUAudioRoute identifiersOfOtherConnectedDevices];
  }

  v7 = [v4 objectForKeyedSubscript:*v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v13 = getAVSystemController_RouteDescriptionKey_OtherDevicesConnected_UniqueIDSymbolLoc_ptr;
        v32 = getAVSystemController_RouteDescriptionKey_OtherDevicesConnected_UniqueIDSymbolLoc_ptr;
        if (!getAVSystemController_RouteDescriptionKey_OtherDevicesConnected_UniqueIDSymbolLoc_ptr)
        {
          v24 = MEMORY[0x1E69E9820];
          v25 = 3221225472;
          v26 = __getAVSystemController_RouteDescriptionKey_OtherDevicesConnected_UniqueIDSymbolLoc_block_invoke;
          v27 = &unk_1E7424CD8;
          v28 = &v29;
          v14 = MediaExperienceLibrary_0();
          v15 = dlsym(v14, "AVSystemController_RouteDescriptionKey_OtherDevicesConnected_UniqueID");
          *(v28[1] + 24) = v15;
          getAVSystemController_RouteDescriptionKey_OtherDevicesConnected_UniqueIDSymbolLoc_ptr = *(v28[1] + 24);
          v13 = v30[3];
        }

        _Block_object_dispose(&v29, 8);
        if (!v13)
        {
          [TUAudioRoute identifiersOfOtherConnectedDevices];
        }

        v16 = [v12 objectForKeyedSubscript:{*v13, v20}];
        if (v16)
        {
          [v3 addObject:v16];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v33 count:16];
    }

    while (v9);
  }

  v17 = [v3 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)isInEarDetectionEnabled
{
  if (![(TUAudioRoute *)self isInEarDetectionSupported])
  {
    return 0;
  }

  v3 = [(TUAudioRoute *)self route];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabledSymbolLoc_ptr;
  v12 = getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabledSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabledSymbolLoc_ptr)
  {
    v5 = MediaExperienceLibrary_0();
    v10[3] = dlsym(v5, "AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabled");
    getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabledSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    [TUAudioRoute isInEarDetectionEnabled];
  }

  v6 = [v3 objectForKeyedSubscript:*v4];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)isWiredHeadphones
{
  if ([(TUAudioRoute *)self isHeadphoneJackConnected]&& ![(TUAudioRoute *)self isWiredHeadset])
  {
    return 1;
  }

  v3 = [(TUAudioRoute *)self avAudioRouteName];
  v4 = [v3 isEqualToString:@"Headphone"];

  return v4;
}

- (BOOL)isHeadphoneJackConnected
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_HeadphoneJackIsConnectedAttributeSymbolLoc_ptr;
  v11 = getAVSystemController_HeadphoneJackIsConnectedAttributeSymbolLoc_ptr;
  if (!getAVSystemController_HeadphoneJackIsConnectedAttributeSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_HeadphoneJackIsConnectedAttribute");
    getAVSystemController_HeadphoneJackIsConnectedAttributeSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute isHeadphoneJackConnected];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isWiredHeadset
{
  v6 = [(TUAudioRoute *)self isHeadphoneJackConnected];
  if (v6)
  {
    v2 = [(TUAudioRoute *)self route];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v7 = getAVSystemController_HeadphoneJackHasInputAttributeSymbolLoc_ptr;
    v15 = getAVSystemController_HeadphoneJackHasInputAttributeSymbolLoc_ptr;
    if (!getAVSystemController_HeadphoneJackHasInputAttributeSymbolLoc_ptr)
    {
      v8 = MediaExperienceLibrary_0();
      v13[3] = dlsym(v8, "AVSystemController_HeadphoneJackHasInputAttribute");
      getAVSystemController_HeadphoneJackHasInputAttributeSymbolLoc_ptr = v13[3];
      v7 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v7)
    {
      [TUAudioRoute isWiredHeadset];
    }

    v3 = *v7;
    v4 = [v2 objectForKeyedSubscript:v3];
    if ([v4 BOOLValue])
    {
      v9 = 1;
LABEL_8:

      return v9;
    }
  }

  v10 = [(TUAudioRoute *)self avAudioRouteName];
  v9 = [v10 isEqualToString:@"Headset"];

  if (v6)
  {
    goto LABEL_8;
  }

  return v9;
}

- (BOOL)isWirelessHeadset
{
  v2 = [(TUAudioRoute *)self avAudioRouteName];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getAVSystemController_PickableRouteType_WirelessSymbolLoc_ptr;
  v10 = getAVSystemController_PickableRouteType_WirelessSymbolLoc_ptr;
  if (!getAVSystemController_PickableRouteType_WirelessSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v8[3] = dlsym(v4, "AVSystemController_PickableRouteType_Wireless");
    getAVSystemController_PickableRouteType_WirelessSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [TUAudioRoute isWirelessHeadset];
  }

  v5 = [v2 isEqualToString:*v3];

  return v5;
}

- (BOOL)isPartnerRouteRoutable
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_BTDetails_PartnerRouteRoutableSymbolLoc_ptr;
  v11 = getAVSystemController_RouteDescriptionKey_BTDetails_PartnerRouteRoutableSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_BTDetails_PartnerRouteRoutableSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_BTDetails_PartnerRouteRoutable");
    getAVSystemController_RouteDescriptionKey_BTDetails_PartnerRouteRoutableSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute isPartnerRouteRoutable];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)isSiblingRoutePresent
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_BTDetails_SiblingRoutePresentSymbolLoc_ptr;
  v11 = getAVSystemController_RouteDescriptionKey_BTDetails_SiblingRoutePresentSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_BTDetails_SiblingRoutePresentSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_BTDetails_SiblingRoutePresent");
    getAVSystemController_RouteDescriptionKey_BTDetails_SiblingRoutePresentSymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute isSiblingRoutePresent];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)supportsSharePlay
{
  v2 = [(TUAudioRoute *)self route];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_SupportsSharePlaySymbolLoc_ptr;
  v11 = getAVSystemController_RouteDescriptionKey_SupportsSharePlaySymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_SupportsSharePlaySymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v9[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_SupportsSharePlay");
    getAVSystemController_RouteDescriptionKey_SupportsSharePlaySymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    [TUAudioRoute supportsSharePlay];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (id)customDescription
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = TUAudioRoute;
  v4 = [(TURoute *)&v10 customDescription];
  v5 = [v3 stringWithString:v4];

  if ([(TUAudioRoute *)self isBluetooth])
  {
    v6 = [(TUAudioRoute *)self mxBluetoothProductIdentifier];
    [v5 appendFormat:@" mxPID=%@", v6];

    v7 = [(TUAudioRoute *)self modelIdentifier];
    [v5 appendFormat:@" mI=%@", v7];

    [v5 appendFormat:@" isA2DPRoute=%d", -[TUAudioRoute isA2DPRoute](self, "isA2DPRoute")];
  }

  v8 = [v5 copy];

  return v8;
}

- (TUAudioRoute)initWithDictionary:(id)a3
{
  v5 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v6 = getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr_0;
  v32 = getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr_0;
  if (!getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr_0)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_block_invoke_0;
    v27 = &unk_1E7424CD8;
    v28 = &v29;
    v7 = MediaExperienceLibrary_0();
    v30[3] = dlsym(v7, "AVSystemController_RouteDescriptionKey_RouteUID");
    getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr_0 = *(v28[1] + 24);
    v6 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v6)
  {
    [TUAudioRoute initWithDictionary:];
  }

  v8 = [v5 objectForKeyedSubscript:*v6];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v9 = getAVSystemController_RouteDescriptionKey_RouteNameSymbolLoc_ptr;
  v32 = getAVSystemController_RouteDescriptionKey_RouteNameSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_RouteNameSymbolLoc_ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getAVSystemController_RouteDescriptionKey_RouteNameSymbolLoc_block_invoke;
    v27 = &unk_1E7424CD8;
    v28 = &v29;
    v10 = MediaExperienceLibrary_0();
    v30[3] = dlsym(v10, "AVSystemController_RouteDescriptionKey_RouteName");
    getAVSystemController_RouteDescriptionKey_RouteNameSymbolLoc_ptr = *(v28[1] + 24);
    v9 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v9)
  {
    [TUAudioRoute initWithDictionary:];
  }

  v11 = [v5 objectForKeyedSubscript:*v9];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v12 = getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr_0;
  v32 = getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr_0;
  if (!getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr_0)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_block_invoke_0;
    v27 = &unk_1E7424CD8;
    v28 = &v29;
    v13 = MediaExperienceLibrary_0();
    v30[3] = dlsym(v13, "AVSystemController_RouteDescriptionKey_AVAudioRouteName");
    getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr_0 = *(v28[1] + 24);
    v12 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v12)
  {
    [TUAudioRoute initWithDictionary:];
  }

  v14 = *v12;
  v15 = [v5 objectForKeyedSubscript:v14];

  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16;
  v18 = v17;
  v19 = 0;
  if (!v8 || !v17)
  {
    goto LABEL_17;
  }

  v23.receiver = self;
  v23.super_class = TUAudioRoute;
  v20 = [(TURoute *)&v23 initWithUniqueIdentifier:v8 name:v17];
  v19 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_route, a3);
    v21 = v15;
    self = v19->_avAudioRouteName;
    v19->_avAudioRouteName = v21;
LABEL_17:
  }

  return v19;
}

- (TUAudioRoute)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = NSStringFromSelector(sel_route);
  v11 = [v5 decodeDictionaryWithKeysOfClasses:v6 objectsOfClasses:v9 forKey:v10];

  v12 = [(TUAudioRoute *)self initWithDictionary:v11];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  route = self->_route;
  v4 = a3;
  v5 = NSStringFromSelector(sel_route);
  [v4 encodeObject:route forKey:v5];
}

- (BOOL)isHandset
{
  if ([(TUAudioRoute *)self isReceiver])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(TUAudioRoute *)self isDefaultRoute];
    if (v3)
    {
      LOBYTE(v3) = ![(TUAudioRoute *)self isSpeaker];
    }
  }

  return v3;
}

- (NSString)mxBluetoothProductIdentifier
{
  v2 = [(TUAudioRoute *)self route];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = getAVSystemController_RouteDescriptionKey_BTDetails_ProductIDSymbolLoc_ptr;
  v10 = getAVSystemController_RouteDescriptionKey_BTDetails_ProductIDSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_BTDetails_ProductIDSymbolLoc_ptr)
  {
    v4 = MediaExperienceLibrary_0();
    v8[3] = dlsym(v4, "AVSystemController_RouteDescriptionKey_BTDetails_ProductID");
    getAVSystemController_RouteDescriptionKey_BTDetails_ProductIDSymbolLoc_ptr = v8[3];
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v3)
  {
    [TUAudioRoute mxBluetoothProductIdentifier];
  }

  v5 = [v2 objectForKeyedSubscript:*v3];

  return v5;
}

- (id)modelIdentifier
{
  if (![(TUAudioRoute *)self isBluetooth])
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(TUAudioRoute *)self modelIdentifier];
    }

    goto LABEL_7;
  }

  if ([(TUAudioRoute *)self modelIdentifierCached])
  {
    v3 = [(TUAudioRoute *)self cachedModelIdentifier];
    goto LABEL_86;
  }

  v5 = [(TUAudioRoute *)self bluetoothProductIdentifierAsUInt32];
  if (v5 <= 21759)
  {
    if (v5 > 8193)
    {
      switch(v5)
      {
        case 8194:
          v6 = "AirPods1,1";
          break;
        case 8195:
          v6 = "PowerBeats3,1";
          break;
        case 8197:
          v6 = "BeatsX1,1";
          break;
        case 8198:
          v6 = "BeatsSolo3,1";
          break;
        case 8201:
          v6 = "BeatsStudio3,2";
          break;
        case 8202:
          v6 = "Device1,8202";
          break;
        case 8203:
          v6 = "PowerbeatsPro1,1";
          break;
        case 8204:
          v6 = "BeatsSoloPro1,1";
          break;
        case 8205:
          v6 = "Powerbeats4,1";
          break;
        case 8206:
          v6 = "AirPodsPro1,1";
          break;
        case 8207:
          v6 = "AirPods1,3";
          break;
        case 8208:
          v6 = "Device1,8208";
          break;
        case 8209:
          v6 = "BeatsStudioBuds1,1";
          break;
        case 8210:
          v6 = "Device1,8210";
          break;
        case 8211:
          v6 = "Device1,8211";
          break;
        case 8212:
          v6 = "Device1,8212";
          break;
        case 8213:
          v6 = "Device1,8213";
          break;
        case 8214:
          v6 = "BeatsStudioBuds1,2";
          break;
        case 8215:
          v6 = "BeatsStudioPro1,1";
          break;
        case 8216:
          v6 = "Device1,8216";
          break;
        case 8217:
          v6 = "Device1,8217";
          break;
        case 8218:
          v6 = "Device1,8218";
          break;
        case 8219:
          v6 = "Device1,8219";
          break;
        case 8220:
          v6 = "Device1,8220";
          break;
        case 8221:
          v6 = "Powerb3,1";
          break;
        case 8222:
          v6 = "Device1,8222";
          break;
        case 8223:
          v6 = "Device1,8223";
          break;
        case 8224:
          v6 = "Device1,8224";
          break;
        case 8228:
          v6 = "Device1,8228";
          break;
        case 8229:
          v6 = "Device1,8229";
          break;
        case 8230:
          v6 = "Device1,8230";
          break;
        case 8231:
          v6 = "AirPods3,4";
          break;
        case 8232:
          v6 = "Device1,8232";
          break;
        case 8233:
          v6 = "Device1,8233";
          break;
        case 8239:
          v6 = "Device1,8239";
          break;
        default:
          goto LABEL_77;
      }

      goto LABEL_78;
    }

    if (v5)
    {
      if (v5 == 614)
      {
        v6 = "ATVRemote1,1";
        goto LABEL_78;
      }

      if (v5 == 621)
      {
        v6 = "ATVRemote1,2";
        goto LABEL_78;
      }

LABEL_77:
      v6 = "?";
      goto LABEL_78;
    }

    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(TUAudioRoute *)self modelIdentifier];
    }

    [(TUAudioRoute *)self setCachedModelIdentifier:0];
    [(TUAudioRoute *)self setModelIdentifierCached:1];
LABEL_7:
    v3 = 0;
    goto LABEL_86;
  }

  if (v5 > 28943)
  {
    if (v5 <= 29714)
    {
      if (v5 == 28944)
      {
        v6 = "AudioAccessory1,2";
        goto LABEL_78;
      }

      if (v5 == 29455)
      {
        v6 = "AppleTV11,1";
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (v5 == 29715)
    {
      v6 = "AudioAccessory5,1";
      goto LABEL_78;
    }

    if (v5 == 65533)
    {
      v6 = "HeGn";
      goto LABEL_78;
    }

    if (v5 != 65534)
    {
      goto LABEL_77;
    }

    v6 = "ApGn";
  }

  else
  {
    if (v5 <= 28419)
    {
      if (v5 == 21760)
      {
        v6 = "Device1,21760";
        goto LABEL_78;
      }

      if (v5 == 22034)
      {
        v6 = "Device1,22034";
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (v5 == 28420)
    {
      v6 = "AppleTV5,3";
      goto LABEL_78;
    }

    if (v5 == 28936)
    {
      v6 = "AppleTV6,2";
      goto LABEL_78;
    }

    if (v5 != 28943)
    {
      goto LABEL_77;
    }

    v6 = "AudioAccessory1,1";
  }

LABEL_78:
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  if (v3)
  {
    [(TUAudioRoute *)self setCachedModelIdentifier:v3];
    [(TUAudioRoute *)self setModelIdentifierCached:1];
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(TUAudioRoute *)v3 modelIdentifier];
    }

    v9 = v3;
  }

  else
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(TUAudioRoute *)self modelIdentifier];
    }

    [(TUAudioRoute *)self setCachedModelIdentifier:0];
    [(TUAudioRoute *)self setModelIdentifierCached:1];
  }

LABEL_86:

  return v3;
}

- (unsigned)bluetoothProductIdentifierAsUInt32
{
  v20 = *MEMORY[0x1E69E9840];
  if (bluetoothProductIdentifierAsUInt32_onceToken != -1)
  {
    [TUAudioRoute bluetoothProductIdentifierAsUInt32];
  }

  v3 = [(TUAudioRoute *)self mxBluetoothProductIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = [bluetoothProductIdentifierAsUInt32_productIdRegex firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 rangeAtIndex:1];
      v9 = [v4 substringWithRange:{v7, v8}];
      v10 = [v9 integerValue];
      v11 = TUDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = [(TURoute *)self name];
        v15[0] = 67109634;
        v15[1] = v10;
        v16 = 2112;
        v17 = v4;
        v18 = 2112;
        v19 = v14;
        _os_log_debug_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEBUG, "Extracted product ID %u from '%@' for route: %@", v15, 0x1Cu);
      }
    }

    else
    {
      v9 = TUDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(TUAudioRoute *)v4 bluetoothProductIdentifierAsUInt32];
      }

      v10 = 0;
    }
  }

  else
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(TUAudioRoute *)self bluetoothProductIdentifierAsUInt32];
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __50__TUAudioRoute_bluetoothProductIdentifierAsUInt32__block_invoke()
{
  bluetoothProductIdentifierAsUInt32_productIdRegex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@" options:(\\d+)$" error:{0, 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_routeTypeEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(TUAudioRoute *)self route];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getAVSystemController_RouteDescriptionKey_RouteTypeSymbolLoc_ptr;
  v14 = getAVSystemController_RouteDescriptionKey_RouteTypeSymbolLoc_ptr;
  if (!getAVSystemController_RouteDescriptionKey_RouteTypeSymbolLoc_ptr)
  {
    v7 = MediaExperienceLibrary_0();
    v12[3] = dlsym(v7, "AVSystemController_RouteDescriptionKey_RouteType");
    getAVSystemController_RouteDescriptionKey_RouteTypeSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v6)
  {
    [TUAudioRoute _routeTypeEqualTo:];
  }

  v8 = [v5 objectForKeyedSubscript:*v6];
  v9 = [v8 isEqual:v4];

  return v9;
}

- (void)initWithDictionary:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_AVAudioRouteName(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:33 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithDictionary:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteName(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:52 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)initWithDictionary:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteUID(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:54 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isCurrentlyPicked
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteCurrentlyPicked(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:51 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isBluetooth
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_IsBTRoute(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isBluetoothManaged
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_IsBTManaged(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isA2DPRoute
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_IsA2DPRoute(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isInEarDetectionEnabled
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:49 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isInEarDetectionSupported
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupported(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:50 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isWiredHeadset
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_HeadphoneJackHasInputAttribute(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isWirelessHeadset
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_PickableRouteType_Wireless(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isDefaultRoute
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_PickableRouteType_Default(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isPreferred
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_IsPreferredExternalRoute(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isPreferredAndActive
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActive(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isPartnerRouteRoutable
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_PartnerRouteRoutable(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isSiblingRoutePresent
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_SiblingRoutePresent(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)supportsSharePlay
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_SupportsSharePlay(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:55 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)mxBluetoothProductIdentifier
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_ProductID(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)modelIdentifier
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)bluetoothProductIdentifierAsUInt32
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isHeadphoneJackConnected
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_HeadphoneJackIsConnectedAttribute(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:30 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_routeTypeEqualTo:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteType(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:53 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)identifiersOfOtherConnectedDevices
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_OtherDevicesConnected(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioRoute.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
}

@end