@interface TUCoreTelephonyClient
+ (Class)RTTSettingsClass;
+ (Class)RTTTelephonyUtilitiesClass;
+ (id)sharedRTTTelephonyUtilities;
- (BOOL)inEmergencyMode;
- (BOOL)isDialAssistSupportedForSubscriptionLabelIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isEmergencyNumberForDigits:(id)a3 subscription:(id)a4 error:(id *)a5;
- (BOOL)isEmergencyNumberForDigits:(id)a3 subscriptionUUID:(id)a4 error:(id *)a5;
- (BOOL)isRTTRelaySupportedForSubscription:(id)a3;
- (BOOL)isRTTRelaySupportedForSubscriptionUUID:(id)a3;
- (BOOL)isRTTSupportedForSubscription:(id)a3;
- (BOOL)isRTTSupportedForSubscriptionUUID:(id)a3;
- (BOOL)isTTYEnabledForSubscription:(id)a3;
- (BOOL)isTTYEnabledForSubscriptionUUID:(id)a3;
- (BOOL)isTTYHardwareAvailableForSubscriptionUUID:(id)a3;
- (BOOL)isTTYHardwareEnabledForSubscription:(id)a3;
- (BOOL)isTTYHardwareEnabledForSubscriptionUUID:(id)a3;
- (BOOL)isTTYHardwareSupportedForSubscription:(id)a3;
- (BOOL)isTTYHardwareSupportedForSubscriptionUUID:(id)a3;
- (BOOL)isTTYSoftwareAvailableForSubscriptionUUID:(id)a3;
- (BOOL)isTTYSoftwareEnabledForSubscription:(id)a3;
- (BOOL)isTTYSoftwareEnabledForSubscriptionUUID:(id)a3;
- (BOOL)isTTYSoftwareSupportedForSubscription:(id)a3;
- (BOOL)isTTYSoftwareSupportedForSubscriptionUUID:(id)a3;
- (BOOL)isTTYSupportedForSubscription:(id)a3;
- (BOOL)isTTYSupportedForSubscriptionUUID:(id)a3;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 subscription:(id)a4 error:(id *)a5;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 subscriptionUUID:(id)a4 error:(id *)a5;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscription:(id)a3 error:(id *)a4;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscriptionUUID:(id)a3 error:(id *)a4;
- (TUCoreTelephonyClient)init;
- (TUCoreTelephonyClient)initWithQueue:(id)a3;
- (id)objectForKey:(id)a3 subscriptionLabelIdentifier:(id)a4 error:(id *)a5;
- (id)subscriptionForLabelIdentifier:(id)a3;
- (id)subscriptionForUUID:(id)a3;
- (id)testEmergencyHandleForSubscriptionLabelIdentifier:(id)a3 error:(id *)a4;
- (unint64_t)preferredTransportMethodForSubscription:(id)a3;
@end

@implementation TUCoreTelephonyClient

+ (Class)RTTTelephonyUtilitiesClass
{
  if (RTTTelephonyUtilitiesClass_onceToken != -1)
  {
    +[TUCoreTelephonyClient(TTY) RTTTelephonyUtilitiesClass];
  }

  v3 = RTTTelephonyUtilitiesClass_sRTTTelephonyUtilitiesClass;

  return v3;
}

+ (Class)RTTSettingsClass
{
  if (RTTSettingsClass_onceToken != -1)
  {
    +[TUCoreTelephonyClient(TTY) RTTSettingsClass];
  }

  v3 = RTTSettingsClass_sRTTSettingsClass;

  return v3;
}

void __46__TUCoreTelephonyClient_TTY__RTTSettingsClass__block_invoke()
{
  RTTSettingsClass_sRTTSettingsClass = CUTWeakLinkClass();
  if (!RTTSettingsClass_sRTTSettingsClass)
  {
    v0 = TUDefaultLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTSettings; RTTUtilities.framework may have failed to link.", v1, 2u);
    }
  }
}

void __56__TUCoreTelephonyClient_TTY__RTTTelephonyUtilitiesClass__block_invoke()
{
  RTTTelephonyUtilitiesClass_sRTTTelephonyUtilitiesClass = CUTWeakLinkClass();
  if (!RTTTelephonyUtilitiesClass_sRTTTelephonyUtilitiesClass)
  {
    v0 = TUDefaultLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1956FD000, v0, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find class RTTTelephonyUtilities; RTTUtilities.framework may have failed to link.", v1, 2u);
    }
  }
}

+ (id)sharedRTTTelephonyUtilities
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__TUCoreTelephonyClient_TTY__sharedRTTTelephonyUtilities__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedRTTTelephonyUtilities_onceToken != -1)
  {
    dispatch_once(&sharedRTTTelephonyUtilities_onceToken, block);
  }

  v2 = sharedRTTTelephonyUtilities_sRTTTelephonyUtilities;

  return v2;
}

uint64_t __57__TUCoreTelephonyClient_TTY__sharedRTTTelephonyUtilities__block_invoke(uint64_t a1)
{
  sharedRTTTelephonyUtilities_sRTTTelephonyUtilities = [objc_msgSend(*(a1 + 32) "RTTTelephonyUtilitiesClass")];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isRTTSupportedForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (v3)
  {
    v5 = [v4 isRTTSupportedForContext:v3];
  }

  else
  {
    v5 = [v4 isRTTSupported];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isRTTSupportedForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isRTTSupportedForSubscription:v4];

  return v3;
}

- (BOOL)isRTTRelaySupportedForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (v3)
  {
    v5 = [v4 relayIsSupportedForContext:v3];
  }

  else
  {
    v5 = [v4 relayIsSupported];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isRTTRelaySupportedForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isRTTRelaySupportedForSubscription:v4];

  return v3;
}

- (BOOL)isTTYEnabledForSubscription:(id)a3
{
  v4 = a3;
  v5 = [(TUCoreTelephonyClient *)self isTTYSoftwareEnabledForSubscription:v4]|| [(TUCoreTelephonyClient *)self isTTYHardwareEnabledForSubscription:v4];

  return v5;
}

- (BOOL)isTTYEnabledForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYEnabledForSubscription:v4];

  return v3;
}

- (BOOL)isTTYSupportedForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (v3)
  {
    v5 = [v4 isTTYSupportedForContext:v3];
  }

  else
  {
    v5 = [v4 isTTYSupported];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isTTYSupportedForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYSupportedForSubscription:v4];

  return v3;
}

- (BOOL)isTTYHardwareAvailableForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYHardwareAvailableForSubscription:v4];

  return v3;
}

- (BOOL)isTTYHardwareEnabledForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_msgSend(objc_opt_class() "RTTSettingsClass")];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 TTYHardwareEnabledForContext:v3];
  }

  else
  {
    v6 = [v4 TTYHardwareEnabled];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isTTYHardwareEnabledForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYHardwareEnabledForSubscription:v4];

  return v3;
}

- (BOOL)isTTYHardwareSupportedForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (v3)
  {
    v5 = [v4 hardwareTTYIsSupportedForContext:v3];
  }

  else
  {
    v5 = [v4 hardwareTTYIsSupported];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isTTYHardwareSupportedForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYHardwareSupportedForSubscription:v4];

  return v3;
}

- (BOOL)isTTYSoftwareAvailableForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYSoftwareAvailableForSubscription:v4];

  return v3;
}

- (BOOL)isTTYSoftwareEnabledForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_msgSend(objc_opt_class() "RTTSettingsClass")];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 TTYSoftwareEnabledForContext:v3];
  }

  else
  {
    v6 = [v4 TTYSoftwareEnabled];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isTTYSoftwareEnabledForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYSoftwareEnabledForSubscription:v4];

  return v3;
}

- (BOOL)isTTYSoftwareSupportedForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (v3)
  {
    v5 = [v4 softwareTTYIsSupportedForContext:v3];
  }

  else
  {
    v5 = [v4 softwareTTYIsSupported];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isTTYSoftwareSupportedForSubscriptionUUID:(id)a3
{
  v3 = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a3];
  LOBYTE(v3) = [(TUCoreTelephonyClient *)v3 isTTYSoftwareSupportedForSubscription:v4];

  return v3;
}

- (unint64_t)preferredTransportMethodForSubscription:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedRTTTelephonyUtilities];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 currentPreferredTransportMethodForContext:v3];
  }

  else
  {
    v6 = [v4 currentPreferredTransportMethod];
  }

  v7 = v6;

  return v7;
}

- (TUCoreTelephonyClient)init
{
  [(TUCoreTelephonyClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TUCoreTelephonyClient)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TUCoreTelephonyClient;
  v6 = [(TUCoreTelephonyClient *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v5];
    client = v7->_client;
    v7->_client = v8;
  }

  return v7;
}

- (id)subscriptionForLabelIdentifier:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCoreTelephonyClient *)self client];
  v25 = 0;
  v6 = [v5 getActiveContexts:&v25];
  v7 = v25;
  v8 = [v6 subscriptions];

  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = [v14 labelID];
        v16 = [v15 isEqualToString:v4];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = [v14 context];

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_10:
    }

    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(TUCoreTelephonyClient *)v4 subscriptionForLabelIdentifier:v18];
    }

    goto LABEL_17;
  }

  if (v7)
  {
    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [TUCoreTelephonyClient subscriptionForLabelIdentifier:?];
    }

LABEL_17:
  }

  v17 = 0;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)subscriptionForUUID:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCoreTelephonyClient *)self client];
  v25 = 0;
  v6 = [v5 getActiveContexts:&v25];
  v7 = v25;
  v8 = [v6 subscriptions];

  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v15 = [v14 uuid];
        v16 = [v15 isEqual:v4];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = [v14 context];

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
LABEL_10:
    }

    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(TUCoreTelephonyClient *)v4 subscriptionForUUID:v18];
    }

    goto LABEL_17;
  }

  if (v7)
  {
    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [TUCoreTelephonyClient subscriptionForLabelIdentifier:?];
    }

LABEL_17:
  }

  v17 = 0;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)isDialAssistSupportedForSubscriptionLabelIdentifier:(id)a3 error:(id *)a4
{
  v4 = [(TUCoreTelephonyClient *)self objectForKey:@"ShowDialAssist" subscriptionLabelIdentifier:a3 error:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)testEmergencyHandleForSubscriptionLabelIdentifier:(id)a3 error:(id *)a4
{
  v4 = [(TUCoreTelephonyClient *)self objectForKey:@"TestEmergencyNumber" subscriptionLabelIdentifier:a3 error:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [TUHandle normalizedPhoneNumberHandleForValue:v4 isoCountryCode:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)objectForKey:(id)a3 subscriptionLabelIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(TUCoreTelephonyClient *)self subscriptionForLabelIdentifier:a4];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
    v11 = [(TUCoreTelephonyClient *)self client];
    v12 = [v11 copyCarrierBundleValue:v9 key:v8 bundleType:v10 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)inEmergencyMode
{
  v2 = [(TUCoreTelephonyClient *)self client];
  v3 = [v2 copyEmergencyModeWithError:0];

  if (v3)
  {
    v4 = [v3 mode];

    if (v4)
    {
      v5 = [v3 mode];
      LOBYTE(v4) = [v5 enabled];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isEmergencyNumberForDigits:(id)a3 subscriptionUUID:(id)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    a4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a4];
  }

  v9 = [(TUCoreTelephonyClient *)self isEmergencyNumberForDigits:v8 subscription:a4 error:a5];

  return v9;
}

- (BOOL)isEmergencyNumberForDigits:(id)a3 subscription:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TUCoreTelephonyClient *)self client];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TUCoreTelephonyClient *)self client];
    v13 = [v12 isEmergencyNumberWithWhitelistIncluded:v9 number:v8 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 subscriptionUUID:(id)a4 error:(id *)a5
{
  v8 = a3;
  if (a4)
  {
    a4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:a4];
  }

  v9 = [(TUCoreTelephonyClient *)self isWhitelistedEmergencyNumberForDigits:v8 subscription:a4 error:a5];

  return v9;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 subscription:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TUCoreTelephonyClient *)self client];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TUCoreTelephonyClient *)self client];
    v13 = [v12 isEmergencyNumberWithWhitelistIncluded:v9 number:v8 error:a5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscriptionUUID:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v6 = [(TUCoreTelephonyClient *)self subscriptionForUUID:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TUCoreTelephonyClient *)self shouldShowEmergencyCallbackModeAlertForSubscription:v6 error:a4];

  return v7;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscription:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TUCoreTelephonyClient *)self client];
  LOBYTE(a4) = [v7 shouldShowUserWarningWhenDialingCallOnContext:v6 error:a4];

  return a4;
}

- (void)subscriptionForLabelIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not find subscription context for the specified label identifier: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionForLabelIdentifier:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 client];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_2(&dword_1956FD000, v2, v3, "Retrieving active contexts from client %@ failed with error %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)subscriptionForUUID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Could not find subscription context for the specified UUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end