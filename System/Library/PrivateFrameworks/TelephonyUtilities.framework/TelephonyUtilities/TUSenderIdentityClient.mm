@interface TUSenderIdentityClient
- (BOOL)inEmergencyMode;
- (BOOL)isEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d;
- (BOOL)isEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d error:(id *)error;
- (BOOL)isRTTAvailableForSenderIdentityUUID:(id)d;
- (BOOL)isRTTRelaySupportedForSenderIdentityUUID:(id)d;
- (BOOL)isRTTSupportedForSenderIdentityUUID:(id)d;
- (BOOL)isTTYAvailableForSenderIdentityUUID:(id)d;
- (BOOL)isTTYEnabledForSenderIdentityUUID:(id)d;
- (BOOL)isTTYHardwareAvailableForSenderIdentityUUID:(id)d;
- (BOOL)isTTYHardwareEnabledForSenderIdentityUUID:(id)d;
- (BOOL)isTTYHardwareSupportedForSenderIdentityUUID:(id)d;
- (BOOL)isTTYSoftwareAvailableForSenderIdentityUUID:(id)d;
- (BOOL)isTTYSoftwareEnabledForSenderIdentityUUID:(id)d;
- (BOOL)isTTYSoftwareSupportedForSenderIdentityUUID:(id)d;
- (BOOL)isTTYSupportedForSenderIdentityUUID:(id)d;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d error:(id *)error;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)d;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)d error:(id *)error;
- (TUSenderIdentityClient)init;
- (id)testEmergencyHandleForAccountUUID:(id)d error:(id *)error;
@end

@implementation TUSenderIdentityClient

- (TUSenderIdentityClient)init
{
  v17.receiver = self;
  v17.super_class = TUSenderIdentityClient;
  v2 = [(TUSenderIdentityClient *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v3 stringWithFormat:@"%@.%@", bundleIdentifier, v7];
    v9 = NSStringFromSelector(sel_queue);
    v10 = [v3 stringWithFormat:@"%@.%@", v8, v9];

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create([v10 UTF8String], v11);
    queue = v2->_queue;
    v2->_queue = v12;

    v14 = [[TUCoreTelephonyClient alloc] initWithQueue:v2->_queue];
    client = v2->_client;
    v2->_client = v14;
  }

  return v2;
}

- (BOOL)isRTTAvailableForSenderIdentityUUID:(id)d
{
  dCopy = d;
  if ([(TUSenderIdentityClient *)self isRTTSupportedForSenderIdentityUUID:dCopy])
  {
    v5 = [(TUSenderIdentityClient *)self isTTYSoftwareAvailableForSenderIdentityUUID:dCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRTTSupportedForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isRTTSupportedForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isRTTRelaySupportedForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isRTTRelaySupportedForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYAvailableForSenderIdentityUUID:(id)d
{
  dCopy = d;
  if ([(TUSenderIdentityClient *)self isTTYSupportedForSenderIdentityUUID:dCopy])
  {
    v5 = [(TUSenderIdentityClient *)self isTTYHardwareAvailableForSenderIdentityUUID:dCopy]|| [(TUSenderIdentityClient *)self isTTYSoftwareAvailableForSenderIdentityUUID:dCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTTYEnabledForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYEnabledForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYSupportedForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYSupportedForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYHardwareAvailableForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYHardwareAvailableForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYHardwareEnabledForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYHardwareEnabledForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYHardwareSupportedForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYHardwareSupportedForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYSoftwareAvailableForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYSoftwareAvailableForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYSoftwareEnabledForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYSoftwareEnabledForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)isTTYSoftwareSupportedForSenderIdentityUUID:(id)d
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  v6 = [client isTTYSoftwareSupportedForSubscriptionUUID:dCopy];

  return v6;
}

- (BOOL)inEmergencyMode
{
  client = [(TUSenderIdentityClient *)self client];
  inEmergencyMode = [client inEmergencyMode];

  return inEmergencyMode;
}

- (BOOL)isEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  digitsCopy = digits;
  dCopy = d;
  v14 = 0;
  v8 = [(TUSenderIdentityClient *)self isEmergencyNumberForDigits:digitsCopy senderIdentityUUID:dCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 && v9)
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = digitsCopy;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = dCopy;
      _os_log_error_impl(&dword_1956FD000, v11, OS_LOG_TYPE_ERROR, "Failed to determine whether digits %@ are an emergency number due to error %@ for sender identity UUID %@.", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d error:(id *)error
{
  dCopy = d;
  digitsCopy = digits;
  client = [(TUSenderIdentityClient *)self client];
  LOBYTE(error) = [client isEmergencyNumberForDigits:digitsCopy subscriptionUUID:dCopy error:error];

  return error;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  digitsCopy = digits;
  dCopy = d;
  v14 = 0;
  v8 = [(TUSenderIdentityClient *)self isWhitelistedEmergencyNumberForDigits:digitsCopy senderIdentityUUID:dCopy error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 && v9)
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = digitsCopy;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = dCopy;
      _os_log_error_impl(&dword_1956FD000, v11, OS_LOG_TYPE_ERROR, "Failed to determine whether digits %@ are a whitelisted emergency number due to error %@ for sender identity UUID %@.", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)digits senderIdentityUUID:(id)d error:(id *)error
{
  dCopy = d;
  digitsCopy = digits;
  client = [(TUSenderIdentityClient *)self client];
  LOBYTE(error) = [client isWhitelistedEmergencyNumberForDigits:digitsCopy subscriptionUUID:dCopy error:error];

  return error;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)d
{
  dCopy = d;
  v10 = 0;
  v5 = [(TUSenderIdentityClient *)self shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:dCopy error:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TUSenderIdentityClient(Emergency) *)v7 shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:dCopy, v8];
    }
  }

  return v5;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)d error:(id *)error
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  LOBYTE(error) = [client shouldShowEmergencyCallbackModeAlertForSubscriptionUUID:dCopy error:error];

  return error;
}

- (id)testEmergencyHandleForAccountUUID:(id)d error:(id *)error
{
  dCopy = d;
  client = [(TUSenderIdentityClient *)self client];
  uUIDString = [dCopy UUIDString];

  v9 = [client testEmergencyHandleForSubscriptionLabelIdentifier:uUIDString error:error];

  return v9;
}

@end