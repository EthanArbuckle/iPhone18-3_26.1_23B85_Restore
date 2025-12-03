@interface UAUserActivityDefaults
+ (id)sharedDefaults;
- (BOOL)BOOLValueForKey:(id)key default:(BOOL)default;
- (BOOL)activityAdvertisingAllowed;
- (BOOL)activityContinuationAllowed;
- (BOOL)activityReceivingAllowed;
- (BOOL)clipboardSharingEnabled;
- (BOOL)debugCrossoverAllActivities;
- (BOOL)debugEnablePinging;
- (BOOL)debugEnablePrefetch;
- (BOOL)debugForceNewPayloadEncoder;
- (BOOL)debugForceOldPayloadEncoder;
- (BOOL)debugIgnoreAppsUsedForDevelopment;
- (BOOL)debugReadvertiseImmediately;
- (BOOL)dontSendActivityTitle;
- (BOOL)enableAutomaticRendevousPairing;
- (BOOL)enableNetworkControlListener;
- (BOOL)enableSharingFramework;
- (BOOL)ignoreLostDevice;
- (BOOL)isBatterySaverModeEnabled;
- (BOOL)localPasteboardRefection;
- (BOOL)shouldIgnoreBluetoothDisabled;
- (UAUserActivityDefaults)init;
- (double)handoffPayloadRequestTimout;
- (double)localPasteboardAvalibilityClearedTimeout;
- (double)localPasteboardAvalibilityTimeout;
- (double)pasteboardHideUIDelay;
- (double)pasteboardPasteRequestTimeout;
- (double)pasteboardShowUIDelay;
- (double)pasteboardStreamWatchdogTimeout;
- (double)pasteboardTypeRequestTimeout;
- (double)pasteboardUIMinimumDurration;
- (double)pasteboardUITimeRemainingDelay;
- (double)payloadFetchResponseDelay;
- (double)remotePasteboardAvailableTimeout;
- (double)timeIntervalForKey:(id)key default:(double)default;
- (id)defaults:(BOOL)defaults;
- (id)rendevousPairingType;
- (id)statusString;
- (int)networkControlListenerPort;
- (int64_t)activityPayloadWarningSizeInBytes;
- (int64_t)debugUserActivityTimeOffset;
- (int64_t)debugValidateSampleResponseMaximumActivityPayloadSizeInBytes;
- (int64_t)debugValidateSampleResponseMinimumActivityPayloadSizeInBytes;
- (int64_t)integerValueForKey:(id)key default:(int64_t)default;
- (int64_t)maximumActivityPayloadSizeInBytes;
- (int64_t)pasteboardEmbeddedPayloadSizeLimitInBytes;
- (void)setDefault:(id)default value:(id)value;
@end

@implementation UAUserActivityDefaults

+ (id)sharedDefaults
{
  if (qword_1000E5CC8 != -1)
  {
    sub_10007BD8C();
  }

  v3 = qword_1000E5CC0;

  return v3;
}

- (BOOL)debugCrossoverAllActivities
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGCrossoverAllActivities"];

  return v3;
}

- (BOOL)debugEnablePinging
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGEnablePinging"];

  return v3;
}

- (BOOL)activityAdvertisingAllowed
{
  if ((byte_1000E5CDC & 1) == 0)
  {
    v3 = MKBDeviceUnlockedSinceBoot();
    byte_1000E5CDC = v3 != 0;
    if (!v3)
    {
      return 0;
    }
  }

  if (![(UAUserActivityDefaults *)self BOOLValueForKey:@"ActivityAdvertisingAllowed" default:1]|| ![(UAUserActivityDefaults *)self BOOLValueForKey:@"EnableHandoffInPowerSaverMode" default:1]&& [(UAUserActivityDefaults *)self isBatterySaverModeEnabled])
  {
    return 0;
  }

  v5 = +[MCProfileConnection sharedConnection];
  isActivityContinuationAllowed = [v5 isActivityContinuationAllowed];

  return isActivityContinuationAllowed;
}

- (BOOL)activityReceivingAllowed
{
  if ((byte_1000E5CDC & 1) == 0)
  {
    v3 = MKBDeviceUnlockedSinceBoot();
    byte_1000E5CDC = v3 != 0;
    if (!v3)
    {
      return 0;
    }
  }

  if (![(UAUserActivityDefaults *)self BOOLValueForKey:@"ActivityReceivingAllowed" default:1]|| ![(UAUserActivityDefaults *)self BOOLValueForKey:@"EnableHandoffInPowerSaverMode" default:1]&& [(UAUserActivityDefaults *)self isBatterySaverModeEnabled])
  {
    return 0;
  }

  v5 = +[MCProfileConnection sharedConnection];
  isActivityContinuationAllowed = [v5 isActivityContinuationAllowed];

  return isActivityContinuationAllowed;
}

- (UAUserActivityDefaults)init
{
  v8.receiver = self;
  v8.super_class = UAUserActivityDefaults;
  v2 = [(UAUserActivityDefaults *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSUserDefaults);
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    v5 = v2->_userDefaults;
    cornerActionItemDefaults = [(UAUserActivityDefaults *)v2 cornerActionItemDefaults];
    [(NSUserDefaults *)v5 registerDefaults:cornerActionItemDefaults];
  }

  return v2;
}

- (BOOL)BOOLValueForKey:(id)key default:(BOOL)default
{
  keyCopy = key;
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v8 = [userDefaults objectForKey:keyCopy];

  if (v8)
  {
    userDefaults2 = [(UAUserActivityDefaults *)self userDefaults];
    default = [userDefaults2 BOOLForKey:keyCopy];
  }

  return default;
}

- (int64_t)integerValueForKey:(id)key default:(int64_t)default
{
  keyCopy = key;
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v8 = [userDefaults objectForKey:keyCopy];

  if (v8)
  {
    userDefaults2 = [(UAUserActivityDefaults *)self userDefaults];
    default = [userDefaults2 integerForKey:keyCopy];
  }

  return default;
}

- (double)timeIntervalForKey:(id)key default:(double)default
{
  keyCopy = key;
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v8 = [userDefaults objectForKey:keyCopy];

  if (v8)
  {
    userDefaults2 = [(UAUserActivityDefaults *)self userDefaults];
    [userDefaults2 doubleForKey:keyCopy];
    default = v10;
  }

  return default;
}

- (BOOL)isBatterySaverModeEnabled
{
  if (qword_1000E5CD0 != -1)
  {
    sub_10007BDA0();
  }

  result = dword_1000E5CD8;
  if (dword_1000E5CD8)
  {
    state64 = 0;
    if (notify_get_state(dword_1000E5CD8, &state64))
    {
      v3 = 1;
    }

    else
    {
      v3 = state64 == 0;
    }

    return !v3;
  }

  return result;
}

- (BOOL)activityContinuationAllowed
{
  if (![(UAUserActivityDefaults *)self activityAdvertisingAllowed]|| ![(UAUserActivityDefaults *)self activityReceivingAllowed])
  {
    return 0;
  }

  v3 = +[MCProfileConnection sharedConnection];
  isActivityContinuationAllowed = [v3 isActivityContinuationAllowed];

  return isActivityContinuationAllowed;
}

- (BOOL)clipboardSharingEnabled
{
  v3 = [(UAUserActivityDefaults *)self BOOLValueForKey:@"ClipboardSharingEnabled" default:1];
  if (v3)
  {

    LOBYTE(v3) = [(UAUserActivityDefaults *)self activityContinuationAllowed];
  }

  return v3;
}

- (int64_t)maximumActivityPayloadSizeInBytes
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"MaximumActivityPayloadSizeInBytes"];

  return v3;
}

- (BOOL)enableNetworkControlListener
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"EnableNetworkControlListener"];

  return v3;
}

- (BOOL)enableAutomaticRendevousPairing
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"EnableAutomaticRendevousPairing"];

  return v3;
}

- (id)rendevousPairingType
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults stringForKey:@"RendevousPairingType"];

  return v3;
}

- (int)networkControlListenerPort
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"NetworkControlListenerPort"];

  return v3;
}

- (int64_t)activityPayloadWarningSizeInBytes
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"ActivityPayloadWarningSizeInBytes"];

  return v3;
}

- (int64_t)debugValidateSampleResponseMinimumActivityPayloadSizeInBytes
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"DEBUGValidateSampleResponseMinimumActivityPayloadSizeInBytes"];

  return v3;
}

- (int64_t)debugValidateSampleResponseMaximumActivityPayloadSizeInBytes
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"DEBUGValidateSampleResponseMaximumActivityPayloadSizeInBytes"];

  return v3;
}

- (int64_t)debugUserActivityTimeOffset
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"DEBUGUserActivityTimeOffset"];

  return v3;
}

- (BOOL)debugForceNewPayloadEncoder
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGForceNewPayloadEncoder"];

  return v3;
}

- (BOOL)debugForceOldPayloadEncoder
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGForceOldPayloadEncoder"];

  return v3;
}

- (BOOL)dontSendActivityTitle
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGDontSendActivityTitle"];

  return v3;
}

- (BOOL)debugReadvertiseImmediately
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGReadvertiseImmediately"];

  return v3;
}

- (BOOL)debugEnablePrefetch
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGEnablePrefetch"];

  return v3;
}

- (BOOL)debugIgnoreAppsUsedForDevelopment
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"DEBUGIgnoreAppsUsedForDevelopment"];

  return v3;
}

- (BOOL)enableSharingFramework
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"EnableSharingFramework"];

  return v3;
}

- (double)localPasteboardAvalibilityTimeout
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"UASharedPboardLocalAdvertisementTime"];

  return v3;
}

- (double)localPasteboardAvalibilityClearedTimeout
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"UASharedPboardLocalClearedAdvertisementTime"];

  return v3;
}

- (double)remotePasteboardAvailableTimeout
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"UASharedPboardRemoteAvailableTimeout"];

  return v3;
}

- (BOOL)localPasteboardRefection
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"UASharedPboardLocalReflection"];

  return v3;
}

- (int64_t)pasteboardEmbeddedPayloadSizeLimitInBytes
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"UASharedPboardEmbeddedPayloadSizeLimitInBytes"];

  return v3;
}

- (double)pasteboardUITimeRemainingDelay
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"TimeRemainingDelay"];
  v4 = v3;

  return v4;
}

- (double)pasteboardShowUIDelay
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"UASharedPboardShowUIDelayInSec"];
  v4 = v3;

  return v4;
}

- (double)pasteboardUIMinimumDurration
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"UASharedPboardUIMinimumDurrationInSec"];
  v4 = v3;

  return v4;
}

- (double)pasteboardHideUIDelay
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"UASharedPboardHideUIDelayInSec"];
  v4 = v3;

  return v4;
}

- (double)pasteboardTypeRequestTimeout
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"TypeRequestTimeout"];
  v4 = v3;

  return v4;
}

- (double)pasteboardPasteRequestTimeout
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"PasteRequestTimeout"];
  v4 = v3;

  return v4;
}

- (double)pasteboardStreamWatchdogTimeout
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"PasteboardStreamWatchdogTimeout"];
  v4 = v3;

  return v4;
}

- (double)handoffPayloadRequestTimout
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"HandoffRequestTimeout"];
  v4 = v3;

  return v4;
}

- (double)payloadFetchResponseDelay
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  [userDefaults doubleForKey:@"PayloadFetchResponseDelay"];
  v4 = v3;

  return v4;
}

- (BOOL)shouldIgnoreBluetoothDisabled
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"IgnoreBluetoothDisabled"];

  return v3;
}

- (BOOL)ignoreLostDevice
{
  userDefaults = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"IgnoreLostDevice"];

  return v3;
}

- (id)statusString
{
  v22 = +[NSMutableString string];
  dictionaryRepresentation = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  v24 = objc_alloc_init(NSMutableString);
  v23 = objc_alloc_init(NSMutableString);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  cornerActionItemDefaults = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
  allKeys = [cornerActionItemDefaults allKeys];
  v4 = [allKeys sortedArrayUsingSelector:"compare:"];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v26 = *v30;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [dictionaryRepresentation valueForKey:v7];
        cornerActionItemDefaults2 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
        v10 = [cornerActionItemDefaults2 valueForKey:v7];
        v11 = [v8 isEqual:v10];

        v12 = [v8 description];
        sub_100009684(v12);
        if (v11)
          v13 = {;
          [v23 appendFormat:@" %@=%@", v7, v13];
        }

        else
          v13 = {;
          cornerActionItemDefaults3 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
          v15 = [cornerActionItemDefaults3 valueForKey:v7];
          v16 = [v15 description];
          v17 = sub_100009684(v16);
          [v24 appendFormat:@" %@=%@ (%@)", v7, v13, v17];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v18 = +[NSBundle mainBundle];
  bundleIdentifier = [v18 bundleIdentifier];
  [v22 appendFormat:@"\nDefaults: (domain=%@) %@\n", bundleIdentifier, v24];

  v20 = [v22 copy];

  return v20;
}

- (id)defaults:(BOOL)defaults
{
  v20 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  cornerActionItemDefaults = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
  allKeys = [cornerActionItemDefaults allKeys];

  obj = allKeys;
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (defaults)
        {
          goto LABEL_8;
        }

        cornerActionItemDefaults2 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
        v11 = [cornerActionItemDefaults2 objectForKey:v9];
        userDefaults = [(UAUserActivityDefaults *)self userDefaults];
        v13 = [userDefaults valueForKey:v9];
        v14 = [v11 isEqual:v13];

        if ((v14 & 1) == 0)
        {
LABEL_8:
          userDefaults2 = [(UAUserActivityDefaults *)self userDefaults];
          v16 = [userDefaults2 valueForKey:v9];
          [v20 setValue:v16 forKey:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = [v20 copy];

  return v17;
}

- (void)setDefault:(id)default value:(id)value
{
  defaultCopy = default;
  valueCopy = value;
  if (defaultCopy && valueCopy)
  {
    userDefaults = [(UAUserActivityDefaults *)self userDefaults];
    [userDefaults setObject:valueCopy forKey:defaultCopy];
  }

  else
  {
    if (!defaultCopy)
    {
      goto LABEL_7;
    }

    userDefaults = [(UAUserActivityDefaults *)self userDefaults];
    [userDefaults removeObjectForKey:defaultCopy];
  }

LABEL_7:
}

@end