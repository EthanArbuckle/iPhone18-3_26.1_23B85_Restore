@interface IDSDevice
+ (BOOL)pairedDeviceUniqueIDOverrideExists;
+ (id)pairedDeviceUniqueIDOverride;
- (BOOL)canReceiveMessagesForCallProvider:(id)provider;
- (BOOL)canReceiveRelayedCalls;
- (BOOL)canReceiveRelayedGFTCalls;
- (BOOL)isAudioAccessoryDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPairedDevice;
- (BOOL)isWatchDevice;
- (BOOL)supportsRelayCallingWithoutLocalRelayCallingEnabled;
- (BOOL)supportsRestrictingSecondaryCalling;
- (BOOL)supportsUserDrivenCallActivation;
- (NSArray)csd_aliasStrings;
- (NSString)csd_localizedDeviceCategory;
- (id)csd_destinationForAlias:(id)alias;
- (id)normalizedDeviceType;
@end

@implementation IDSDevice

- (BOOL)canReceiveRelayedCalls
{
  uniqueIDOverride = [(IDSDevice *)self uniqueIDOverride];
  if (([TUCallCapabilities isRelayCallingEnabledForDeviceWithID:uniqueIDOverride]& 1) != 0)
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

  pairedDeviceUniqueIDOverride = [objc_opt_class() pairedDeviceUniqueIDOverride];
  uniqueIDOverride = [(IDSDevice *)self uniqueIDOverride];
  v6 = [pairedDeviceUniqueIDOverride isEqualToString:uniqueIDOverride];

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
  modelIdentifier = [(IDSDevice *)self modelIdentifier];
  v3 = [modelIdentifier hasPrefix:@"AudioAccessory"];

  return v3;
}

+ (BOOL)pairedDeviceUniqueIDOverrideExists
{
  pairedDeviceUniqueIDOverride = [self pairedDeviceUniqueIDOverride];
  v3 = pairedDeviceUniqueIDOverride != 0;

  return v3;
}

- (id)normalizedDeviceType
{
  modelIdentifier = [(IDSDevice *)self modelIdentifier];
  if ([modelIdentifier rangeOfString:@"iPod"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([modelIdentifier rangeOfString:@"iPad"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([modelIdentifier rangeOfString:@"iPhone"] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([modelIdentifier rangeOfString:@"Mac"] == 0x7FFFFFFFFFFFFFFFLL)
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
      v7 = modelIdentifier;
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
  identities = [(IDSDevice *)self identities];
  v3 = [identities __imArrayByApplyingBlock:&stru_10061F078];

  return v3;
}

- (id)csd_destinationForAlias:(id)alias
{
  aliasCopy = alias;
  pushToken = [(IDSDevice *)self pushToken];
  v6 = IDSCopyBestGuessIDForID();

  v7 = IDSCopyIDForTokenWithID();

  return v7;
}

- (BOOL)isWatchDevice
{
  modelIdentifier = [(IDSDevice *)self modelIdentifier];
  v3 = [modelIdentifier hasPrefix:@"Watch"];

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

  capabilities = [(IDSDevice *)self capabilities];
  v4 = [capabilities valueForCapability:IDSRegistrationPropertySupportsGFTRelay] != 0;

  return v4;
}

- (BOOL)supportsUserDrivenCallActivation
{
  capabilities = [(IDSDevice *)self capabilities];
  v3 = [capabilities valueForCapability:@"supports-user-driven-call-activation"] != 0;

  return v3;
}

- (BOOL)canReceiveMessagesForCallProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isTelephonyProvider])
  {
    goto LABEL_2;
  }

  if ([providerCopy isFaceTimeProvider])
  {
    if (![(IDSDevice *)self isPairedDevice]&& ![(IDSDevice *)self isAudioAccessoryDevice])
    {
LABEL_9:
      canReceiveRelayedCalls = 0;
      goto LABEL_10;
    }
  }

  else if (![providerCopy isTinCanProvider] || !-[IDSDevice isPairedDevice](self, "isPairedDevice"))
  {
    goto LABEL_9;
  }

LABEL_2:
  canReceiveRelayedCalls = [(IDSDevice *)self canReceiveRelayedCalls];
LABEL_10:

  return canReceiveRelayedCalls;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueIDOverride = [(IDSDevice *)self uniqueIDOverride];
    uniqueIDOverride2 = [v5 uniqueIDOverride];

    v8 = [uniqueIDOverride isEqualToString:uniqueIDOverride2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end