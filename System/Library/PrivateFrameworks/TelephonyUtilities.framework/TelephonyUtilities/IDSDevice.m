@interface IDSDevice
+ (BOOL)pairedDeviceUniqueIDOverrideExists;
+ (id)pairedDeviceUniqueIDOverride;
- (BOOL)canReceiveMessagesForCallProvider:(id)a3;
- (BOOL)canReceiveRelayedCalls;
- (BOOL)canReceiveRelayedGFTCalls;
- (BOOL)isAudioAccessoryDevice;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPairedDevice;
- (BOOL)isWatchDevice;
- (BOOL)supportsRelayCallingWithoutLocalRelayCallingEnabled;
- (BOOL)supportsRestrictingSecondaryCalling;
- (BOOL)supportsUserDrivenCallActivation;
- (NSArray)csd_aliasStrings;
- (NSString)csd_localizedDeviceCategory;
- (id)csd_destinationForAlias:(id)a3;
- (id)normalizedDeviceType;
@end

@implementation IDSDevice

- (BOOL)canReceiveRelayedCalls
{
  v3 = [(IDSDevice *)self uniqueIDOverride];
  if (([TUCallCapabilities isRelayCallingEnabledForDeviceWithID:v3]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = ![(IDSDevice *)self supportsRestrictingSecondaryCalling];
  }

  if (![(IDSDevice *)self supportsRelayCallingWithoutLocalRelayCallingEnabled])
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = +[TUCallCapabilities isRelayCallingEnabled]| v5;
    return v6 & 1;
  }

  v5 = +[TUCallCapabilities areRelayCallingFeaturesEnabled];
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 0;
  return v6 & 1;
}

- (BOOL)supportsRelayCallingWithoutLocalRelayCallingEnabled
{
  if ([(IDSDevice *)self isPairedDevice])
  {
    return 1;
  }

  return [(IDSDevice *)self isAudioAccessoryDevice];
}

- (BOOL)isPairedDevice
{
  if ([(IDSDevice *)self isDefaultPairedDevice]&& ([(IDSDevice *)self isConnected]& 1) != 0)
  {
    return 1;
  }

  v4 = [objc_opt_class() pairedDeviceUniqueIDOverride];
  v5 = [(IDSDevice *)self uniqueIDOverride];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

+ (id)pairedDeviceUniqueIDOverride
{
  if (qword_1006ACFB0 != -1)
  {
    sub_10047DB58();
  }

  v3 = qword_1006ACFA8;

  return v3;
}

- (BOOL)isAudioAccessoryDevice
{
  v2 = [(IDSDevice *)self modelIdentifier];
  v3 = [v2 hasPrefix:@"AudioAccessory"];

  return v3;
}

+ (BOOL)pairedDeviceUniqueIDOverrideExists
{
  v2 = [a1 pairedDeviceUniqueIDOverride];
  v3 = v2 != 0;

  return v3;
}

- (id)normalizedDeviceType
{
  v2 = [(IDSDevice *)self modelIdentifier];
  if ([v2 rangeOfString:@"iPod"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v2 rangeOfString:@"iPad"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v2 rangeOfString:@"iPhone"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v2 rangeOfString:@"Mac"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v3 = &stru_100631E68;
        }

        else
        {
          v3 = @"MAC";
        }
      }

      else
      {
        v3 = @"IPHONE";
      }
    }

    else
    {
      v3 = @"IPAD";
    }
  }

  else
  {
    v3 = @"IPOD";
  }

  if (![(__CFString *)v3 length])
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't identify device type based on model identifier (%@)", &v6, 0xCu);
    }
  }

  return v3;
}

- (NSString)csd_localizedDeviceCategory
{
  v2 = [(IDSDevice *)self deviceType]- 1;
  if (v2 <= 8 && ((0x10Fu >> v2) & 1) != 0)
  {
    v3 = *(&off_10061F098 + v2);
    v4 = TUBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_100631E68 table:@"TelephonyUtilities"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)csd_aliasStrings
{
  v2 = [(IDSDevice *)self identities];
  v3 = [v2 __imArrayByApplyingBlock:&stru_10061F078];

  return v3;
}

- (id)csd_destinationForAlias:(id)a3
{
  v4 = a3;
  v5 = [(IDSDevice *)self pushToken];
  v6 = IDSCopyBestGuessIDForID();

  v7 = IDSCopyIDForTokenWithID();

  return v7;
}

- (BOOL)isWatchDevice
{
  v2 = [(IDSDevice *)self modelIdentifier];
  v3 = [v2 hasPrefix:@"Watch"];

  return v3;
}

- (BOOL)supportsRestrictingSecondaryCalling
{
  if ([(IDSDevice *)self isWatchDevice])
  {
    return 0;
  }

  else
  {
    return ![(IDSDevice *)self isAudioAccessoryDevice];
  }
}

- (BOOL)canReceiveRelayedGFTCalls
{
  if (![(IDSDevice *)self canReceiveRelayedCalls])
  {
    return 0;
  }

  v3 = [(IDSDevice *)self capabilities];
  v4 = [v3 valueForCapability:IDSRegistrationPropertySupportsGFTRelay] != 0;

  return v4;
}

- (BOOL)supportsUserDrivenCallActivation
{
  v2 = [(IDSDevice *)self capabilities];
  v3 = [v2 valueForCapability:@"supports-user-driven-call-activation"] != 0;

  return v3;
}

- (BOOL)canReceiveMessagesForCallProvider:(id)a3
{
  v4 = a3;
  if ([v4 isTelephonyProvider])
  {
    goto LABEL_2;
  }

  if ([v4 isFaceTimeProvider])
  {
    if (![(IDSDevice *)self isPairedDevice]&& ![(IDSDevice *)self isAudioAccessoryDevice])
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }
  }

  else if (![v4 isTinCanProvider] || !-[IDSDevice isPairedDevice](self, "isPairedDevice"))
  {
    goto LABEL_9;
  }

LABEL_2:
  v5 = [(IDSDevice *)self canReceiveRelayedCalls];
LABEL_10:

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSDevice *)self uniqueIDOverride];
    v7 = [v5 uniqueIDOverride];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end