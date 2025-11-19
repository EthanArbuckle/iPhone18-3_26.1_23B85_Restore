@interface UAUserActivityDefaults
+ (id)sharedDefaults;
- (BOOL)BOOLValueForKey:(id)a3 default:(BOOL)a4;
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
- (double)timeIntervalForKey:(id)a3 default:(double)a4;
- (id)defaults:(BOOL)a3;
- (id)rendevousPairingType;
- (id)statusString;
- (int)networkControlListenerPort;
- (int64_t)activityPayloadWarningSizeInBytes;
- (int64_t)debugUserActivityTimeOffset;
- (int64_t)debugValidateSampleResponseMaximumActivityPayloadSizeInBytes;
- (int64_t)debugValidateSampleResponseMinimumActivityPayloadSizeInBytes;
- (int64_t)integerValueForKey:(id)a3 default:(int64_t)a4;
- (int64_t)maximumActivityPayloadSizeInBytes;
- (int64_t)pasteboardEmbeddedPayloadSizeLimitInBytes;
- (void)setDefault:(id)a3 value:(id)a4;
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
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGCrossoverAllActivities"];

  return v3;
}

- (BOOL)debugEnablePinging
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGEnablePinging"];

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
  v4 = [v5 isActivityContinuationAllowed];

  return v4;
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
  v4 = [v5 isActivityContinuationAllowed];

  return v4;
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
    v6 = [(UAUserActivityDefaults *)v2 cornerActionItemDefaults];
    [(NSUserDefaults *)v5 registerDefaults:v6];
  }

  return v2;
}

- (BOOL)BOOLValueForKey:(id)a3 default:(BOOL)a4
{
  v6 = a3;
  v7 = [(UAUserActivityDefaults *)self userDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [(UAUserActivityDefaults *)self userDefaults];
    a4 = [v9 BOOLForKey:v6];
  }

  return a4;
}

- (int64_t)integerValueForKey:(id)a3 default:(int64_t)a4
{
  v6 = a3;
  v7 = [(UAUserActivityDefaults *)self userDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [(UAUserActivityDefaults *)self userDefaults];
    a4 = [v9 integerForKey:v6];
  }

  return a4;
}

- (double)timeIntervalForKey:(id)a3 default:(double)a4
{
  v6 = a3;
  v7 = [(UAUserActivityDefaults *)self userDefaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    v9 = [(UAUserActivityDefaults *)self userDefaults];
    [v9 doubleForKey:v6];
    a4 = v10;
  }

  return a4;
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
  v4 = [v3 isActivityContinuationAllowed];

  return v4;
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
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"MaximumActivityPayloadSizeInBytes"];

  return v3;
}

- (BOOL)enableNetworkControlListener
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"EnableNetworkControlListener"];

  return v3;
}

- (BOOL)enableAutomaticRendevousPairing
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"EnableAutomaticRendevousPairing"];

  return v3;
}

- (id)rendevousPairingType
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 stringForKey:@"RendevousPairingType"];

  return v3;
}

- (int)networkControlListenerPort
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"NetworkControlListenerPort"];

  return v3;
}

- (int64_t)activityPayloadWarningSizeInBytes
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"ActivityPayloadWarningSizeInBytes"];

  return v3;
}

- (int64_t)debugValidateSampleResponseMinimumActivityPayloadSizeInBytes
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"DEBUGValidateSampleResponseMinimumActivityPayloadSizeInBytes"];

  return v3;
}

- (int64_t)debugValidateSampleResponseMaximumActivityPayloadSizeInBytes
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"DEBUGValidateSampleResponseMaximumActivityPayloadSizeInBytes"];

  return v3;
}

- (int64_t)debugUserActivityTimeOffset
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"DEBUGUserActivityTimeOffset"];

  return v3;
}

- (BOOL)debugForceNewPayloadEncoder
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGForceNewPayloadEncoder"];

  return v3;
}

- (BOOL)debugForceOldPayloadEncoder
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGForceOldPayloadEncoder"];

  return v3;
}

- (BOOL)dontSendActivityTitle
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGDontSendActivityTitle"];

  return v3;
}

- (BOOL)debugReadvertiseImmediately
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGReadvertiseImmediately"];

  return v3;
}

- (BOOL)debugEnablePrefetch
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGEnablePrefetch"];

  return v3;
}

- (BOOL)debugIgnoreAppsUsedForDevelopment
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"DEBUGIgnoreAppsUsedForDevelopment"];

  return v3;
}

- (BOOL)enableSharingFramework
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"EnableSharingFramework"];

  return v3;
}

- (double)localPasteboardAvalibilityTimeout
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"UASharedPboardLocalAdvertisementTime"];

  return v3;
}

- (double)localPasteboardAvalibilityClearedTimeout
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"UASharedPboardLocalClearedAdvertisementTime"];

  return v3;
}

- (double)remotePasteboardAvailableTimeout
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"UASharedPboardRemoteAvailableTimeout"];

  return v3;
}

- (BOOL)localPasteboardRefection
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"UASharedPboardLocalReflection"];

  return v3;
}

- (int64_t)pasteboardEmbeddedPayloadSizeLimitInBytes
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"UASharedPboardEmbeddedPayloadSizeLimitInBytes"];

  return v3;
}

- (double)pasteboardUITimeRemainingDelay
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"TimeRemainingDelay"];
  v4 = v3;

  return v4;
}

- (double)pasteboardShowUIDelay
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"UASharedPboardShowUIDelayInSec"];
  v4 = v3;

  return v4;
}

- (double)pasteboardUIMinimumDurration
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"UASharedPboardUIMinimumDurrationInSec"];
  v4 = v3;

  return v4;
}

- (double)pasteboardHideUIDelay
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"UASharedPboardHideUIDelayInSec"];
  v4 = v3;

  return v4;
}

- (double)pasteboardTypeRequestTimeout
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"TypeRequestTimeout"];
  v4 = v3;

  return v4;
}

- (double)pasteboardPasteRequestTimeout
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"PasteRequestTimeout"];
  v4 = v3;

  return v4;
}

- (double)pasteboardStreamWatchdogTimeout
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"PasteboardStreamWatchdogTimeout"];
  v4 = v3;

  return v4;
}

- (double)handoffPayloadRequestTimout
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"HandoffRequestTimeout"];
  v4 = v3;

  return v4;
}

- (double)payloadFetchResponseDelay
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  [v2 doubleForKey:@"PayloadFetchResponseDelay"];
  v4 = v3;

  return v4;
}

- (BOOL)shouldIgnoreBluetoothDisabled
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"IgnoreBluetoothDisabled"];

  return v3;
}

- (BOOL)ignoreLostDevice
{
  v2 = [(UAUserActivityDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"IgnoreLostDevice"];

  return v3;
}

- (id)statusString
{
  v22 = +[NSMutableString string];
  v27 = [(NSUserDefaults *)self->_userDefaults dictionaryRepresentation];
  v24 = objc_alloc_init(NSMutableString);
  v23 = objc_alloc_init(NSMutableString);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingSelector:"compare:"];

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
        v8 = [v27 valueForKey:v7];
        v9 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
        v10 = [v9 valueForKey:v7];
        v11 = [v8 isEqual:v10];

        v12 = [v8 description];
        sub_100009684(v12);
        if (v11)
          v13 = {;
          [v23 appendFormat:@" %@=%@", v7, v13];
        }

        else
          v13 = {;
          v14 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
          v15 = [v14 valueForKey:v7];
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
  v19 = [v18 bundleIdentifier];
  [v22 appendFormat:@"\nDefaults: (domain=%@) %@\n", v19, v24];

  v20 = [v22 copy];

  return v20;
}

- (id)defaults:(BOOL)a3
{
  v20 = +[NSMutableDictionary dictionary];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
  v5 = [v4 allKeys];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        if (a3)
        {
          goto LABEL_8;
        }

        v10 = [(UAUserActivityDefaults *)self cornerActionItemDefaults];
        v11 = [v10 objectForKey:v9];
        v12 = [(UAUserActivityDefaults *)self userDefaults];
        v13 = [v12 valueForKey:v9];
        v14 = [v11 isEqual:v13];

        if ((v14 & 1) == 0)
        {
LABEL_8:
          v15 = [(UAUserActivityDefaults *)self userDefaults];
          v16 = [v15 valueForKey:v9];
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

- (void)setDefault:(id)a3 value:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    v7 = [(UAUserActivityDefaults *)self userDefaults];
    [v7 setObject:v6 forKey:v8];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = [(UAUserActivityDefaults *)self userDefaults];
    [v7 removeObjectForKey:v8];
  }

LABEL_7:
}

@end