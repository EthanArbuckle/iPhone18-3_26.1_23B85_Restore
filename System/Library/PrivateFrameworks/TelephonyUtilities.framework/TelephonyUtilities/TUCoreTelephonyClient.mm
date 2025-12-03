@interface TUCoreTelephonyClient
+ (Class)RTTSettingsClass;
+ (Class)RTTTelephonyUtilitiesClass;
+ (id)sharedRTTTelephonyUtilities;
- (BOOL)inEmergencyMode;
- (BOOL)isDialAssistSupportedForSubscriptionLabelIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEmergencyNumberForDigits:(id)digits subscription:(id)subscription error:(id *)error;
- (BOOL)isEmergencyNumberForDigits:(id)digits subscriptionUUID:(id)d error:(id *)error;
- (BOOL)isRTTRelaySupportedForSubscription:(id)subscription;
- (BOOL)isRTTRelaySupportedForSubscriptionUUID:(id)d;
- (BOOL)isRTTSupportedForSubscription:(id)subscription;
- (BOOL)isRTTSupportedForSubscriptionUUID:(id)d;
- (BOOL)isTTYEnabledForSubscription:(id)subscription;
- (BOOL)isTTYEnabledForSubscriptionUUID:(id)d;
- (BOOL)isTTYHardwareAvailableForSubscriptionUUID:(id)d;
- (BOOL)isTTYHardwareEnabledForSubscription:(id)subscription;
- (BOOL)isTTYHardwareEnabledForSubscriptionUUID:(id)d;
- (BOOL)isTTYHardwareSupportedForSubscription:(id)subscription;
- (BOOL)isTTYHardwareSupportedForSubscriptionUUID:(id)d;
- (BOOL)isTTYSoftwareAvailableForSubscriptionUUID:(id)d;
- (BOOL)isTTYSoftwareEnabledForSubscription:(id)subscription;
- (BOOL)isTTYSoftwareEnabledForSubscriptionUUID:(id)d;
- (BOOL)isTTYSoftwareSupportedForSubscription:(id)subscription;
- (BOOL)isTTYSoftwareSupportedForSubscriptionUUID:(id)d;
- (BOOL)isTTYSupportedForSubscription:(id)subscription;
- (BOOL)isTTYSupportedForSubscriptionUUID:(id)d;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits subscription:(id)subscription error:(id *)error;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits subscriptionUUID:(id)d error:(id *)error;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscription:(id)subscription error:(id *)error;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscriptionUUID:(id)d error:(id *)error;
- (TUCoreTelephonyClient)init;
- (TUCoreTelephonyClient)initWithQueue:(id)queue;
- (id)objectForKey:(id)key subscriptionLabelIdentifier:(id)identifier error:(id *)error;
- (id)subscriptionForLabelIdentifier:(id)identifier;
- (id)subscriptionForUUID:(id)d;
- (id)testEmergencyHandleForSubscriptionLabelIdentifier:(id)identifier error:(id *)error;
- (unint64_t)preferredTransportMethodForSubscription:(id)subscription;
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
  block[4] = self;
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

- (BOOL)isRTTSupportedForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  rTTTelephonyUtilitiesClass = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (subscriptionCopy)
  {
    isRTTSupported = [rTTTelephonyUtilitiesClass isRTTSupportedForContext:subscriptionCopy];
  }

  else
  {
    isRTTSupported = [rTTTelephonyUtilitiesClass isRTTSupported];
  }

  v6 = isRTTSupported;

  return v6;
}

- (BOOL)isRTTSupportedForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isRTTSupportedForSubscription:v4];

  return selfCopy;
}

- (BOOL)isRTTRelaySupportedForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  rTTTelephonyUtilitiesClass = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (subscriptionCopy)
  {
    relayIsSupported = [rTTTelephonyUtilitiesClass relayIsSupportedForContext:subscriptionCopy];
  }

  else
  {
    relayIsSupported = [rTTTelephonyUtilitiesClass relayIsSupported];
  }

  v6 = relayIsSupported;

  return v6;
}

- (BOOL)isRTTRelaySupportedForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isRTTRelaySupportedForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYEnabledForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v5 = [(TUCoreTelephonyClient *)self isTTYSoftwareEnabledForSubscription:subscriptionCopy]|| [(TUCoreTelephonyClient *)self isTTYHardwareEnabledForSubscription:subscriptionCopy];

  return v5;
}

- (BOOL)isTTYEnabledForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYEnabledForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYSupportedForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  rTTTelephonyUtilitiesClass = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (subscriptionCopy)
  {
    isTTYSupported = [rTTTelephonyUtilitiesClass isTTYSupportedForContext:subscriptionCopy];
  }

  else
  {
    isTTYSupported = [rTTTelephonyUtilitiesClass isTTYSupported];
  }

  v6 = isTTYSupported;

  return v6;
}

- (BOOL)isTTYSupportedForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYSupportedForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYHardwareAvailableForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYHardwareAvailableForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYHardwareEnabledForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v4 = [objc_msgSend(objc_opt_class() "RTTSettingsClass")];
  v5 = v4;
  if (subscriptionCopy)
  {
    tTYHardwareEnabled = [v4 TTYHardwareEnabledForContext:subscriptionCopy];
  }

  else
  {
    tTYHardwareEnabled = [v4 TTYHardwareEnabled];
  }

  v7 = tTYHardwareEnabled;

  return v7;
}

- (BOOL)isTTYHardwareEnabledForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYHardwareEnabledForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYHardwareSupportedForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  rTTTelephonyUtilitiesClass = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (subscriptionCopy)
  {
    hardwareTTYIsSupported = [rTTTelephonyUtilitiesClass hardwareTTYIsSupportedForContext:subscriptionCopy];
  }

  else
  {
    hardwareTTYIsSupported = [rTTTelephonyUtilitiesClass hardwareTTYIsSupported];
  }

  v6 = hardwareTTYIsSupported;

  return v6;
}

- (BOOL)isTTYHardwareSupportedForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYHardwareSupportedForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYSoftwareAvailableForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYSoftwareAvailableForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYSoftwareEnabledForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v4 = [objc_msgSend(objc_opt_class() "RTTSettingsClass")];
  v5 = v4;
  if (subscriptionCopy)
  {
    tTYSoftwareEnabled = [v4 TTYSoftwareEnabledForContext:subscriptionCopy];
  }

  else
  {
    tTYSoftwareEnabled = [v4 TTYSoftwareEnabled];
  }

  v7 = tTYSoftwareEnabled;

  return v7;
}

- (BOOL)isTTYSoftwareEnabledForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYSoftwareEnabledForSubscription:v4];

  return selfCopy;
}

- (BOOL)isTTYSoftwareSupportedForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  rTTTelephonyUtilitiesClass = [objc_opt_class() RTTTelephonyUtilitiesClass];
  if (subscriptionCopy)
  {
    softwareTTYIsSupported = [rTTTelephonyUtilitiesClass softwareTTYIsSupportedForContext:subscriptionCopy];
  }

  else
  {
    softwareTTYIsSupported = [rTTTelephonyUtilitiesClass softwareTTYIsSupported];
  }

  v6 = softwareTTYIsSupported;

  return v6;
}

- (BOOL)isTTYSoftwareSupportedForSubscriptionUUID:(id)d
{
  selfCopy = self;
  v4 = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  LOBYTE(selfCopy) = [(TUCoreTelephonyClient *)selfCopy isTTYSoftwareSupportedForSubscription:v4];

  return selfCopy;
}

- (unint64_t)preferredTransportMethodForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  sharedRTTTelephonyUtilities = [objc_opt_class() sharedRTTTelephonyUtilities];
  v5 = sharedRTTTelephonyUtilities;
  if (subscriptionCopy)
  {
    currentPreferredTransportMethod = [sharedRTTTelephonyUtilities currentPreferredTransportMethodForContext:subscriptionCopy];
  }

  else
  {
    currentPreferredTransportMethod = [sharedRTTTelephonyUtilities currentPreferredTransportMethod];
  }

  v7 = currentPreferredTransportMethod;

  return v7;
}

- (TUCoreTelephonyClient)init
{
  [(TUCoreTelephonyClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TUCoreTelephonyClient)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = TUCoreTelephonyClient;
  v6 = [(TUCoreTelephonyClient *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:queueCopy];
    client = v7->_client;
    v7->_client = v8;
  }

  return v7;
}

- (id)subscriptionForLabelIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  client = [(TUCoreTelephonyClient *)self client];
  v25 = 0;
  v6 = [client getActiveContexts:&v25];
  v7 = v25;
  subscriptions = [v6 subscriptions];

  if (subscriptions)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = subscriptions;
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
        labelID = [v14 labelID];
        v16 = [labelID isEqualToString:identifierCopy];

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

      context = [v14 context];

      if (context)
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
      [(TUCoreTelephonyClient *)identifierCopy subscriptionForLabelIdentifier:v18];
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

  context = 0;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return context;
}

- (id)subscriptionForUUID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  dCopy = d;
  client = [(TUCoreTelephonyClient *)self client];
  v25 = 0;
  v6 = [client getActiveContexts:&v25];
  v7 = v25;
  subscriptions = [v6 subscriptions];

  if (subscriptions)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = subscriptions;
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
        uuid = [v14 uuid];
        v16 = [uuid isEqual:dCopy];

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

      context = [v14 context];

      if (context)
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
      [(TUCoreTelephonyClient *)dCopy subscriptionForUUID:v18];
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

  context = 0;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return context;
}

- (BOOL)isDialAssistSupportedForSubscriptionLabelIdentifier:(id)identifier error:(id *)error
{
  v4 = [(TUCoreTelephonyClient *)self objectForKey:@"ShowDialAssist" subscriptionLabelIdentifier:identifier error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)testEmergencyHandleForSubscriptionLabelIdentifier:(id)identifier error:(id *)error
{
  v4 = [(TUCoreTelephonyClient *)self objectForKey:@"TestEmergencyNumber" subscriptionLabelIdentifier:identifier error:error];
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

- (id)objectForKey:(id)key subscriptionLabelIdentifier:(id)identifier error:(id *)error
{
  keyCopy = key;
  v9 = [(TUCoreTelephonyClient *)self subscriptionForLabelIdentifier:identifier];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
    client = [(TUCoreTelephonyClient *)self client];
    v12 = [client copyCarrierBundleValue:v9 key:keyCopy bundleType:v10 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)inEmergencyMode
{
  client = [(TUCoreTelephonyClient *)self client];
  v3 = [client copyEmergencyModeWithError:0];

  if (v3)
  {
    mode = [v3 mode];

    if (mode)
    {
      mode2 = [v3 mode];
      LOBYTE(mode) = [mode2 enabled];
    }
  }

  else
  {
    LOBYTE(mode) = 0;
  }

  return mode;
}

- (BOOL)isEmergencyNumberForDigits:(id)digits subscriptionUUID:(id)d error:(id *)error
{
  digitsCopy = digits;
  if (d)
  {
    d = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  }

  v9 = [(TUCoreTelephonyClient *)self isEmergencyNumberForDigits:digitsCopy subscription:d error:error];

  return v9;
}

- (BOOL)isEmergencyNumberForDigits:(id)digits subscription:(id)subscription error:(id *)error
{
  digitsCopy = digits;
  subscriptionCopy = subscription;
  client = [(TUCoreTelephonyClient *)self client];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    client2 = [(TUCoreTelephonyClient *)self client];
    v13 = [client2 isEmergencyNumberWithWhitelistIncluded:subscriptionCopy number:digitsCopy error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits subscriptionUUID:(id)d error:(id *)error
{
  digitsCopy = digits;
  if (d)
  {
    d = [(TUCoreTelephonyClient *)self subscriptionForUUID:d];
  }

  v9 = [(TUCoreTelephonyClient *)self isWhitelistedEmergencyNumberForDigits:digitsCopy subscription:d error:error];

  return v9;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits subscription:(id)subscription error:(id *)error
{
  digitsCopy = digits;
  subscriptionCopy = subscription;
  client = [(TUCoreTelephonyClient *)self client];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    client2 = [(TUCoreTelephonyClient *)self client];
    v13 = [client2 isEmergencyNumberWithWhitelistIncluded:subscriptionCopy number:digitsCopy error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscriptionUUID:(id)d error:(id *)error
{
  if (d)
  {
    v6 = [(TUCoreTelephonyClient *)self subscriptionForUUID:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TUCoreTelephonyClient *)self shouldShowEmergencyCallbackModeAlertForSubscription:v6 error:error];

  return v7;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  client = [(TUCoreTelephonyClient *)self client];
  LOBYTE(error) = [client shouldShowUserWarningWhenDialingCallOnContext:subscriptionCopy error:error];

  return error;
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