@interface TUSenderIdentityClient
- (BOOL)inEmergencyMode;
- (BOOL)isEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4;
- (BOOL)isEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4 error:(id *)a5;
- (BOOL)isRTTAvailableForSenderIdentityUUID:(id)a3;
- (BOOL)isRTTRelaySupportedForSenderIdentityUUID:(id)a3;
- (BOOL)isRTTSupportedForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYAvailableForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYEnabledForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYHardwareAvailableForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYHardwareEnabledForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYHardwareSupportedForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYSoftwareAvailableForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYSoftwareEnabledForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYSoftwareSupportedForSenderIdentityUUID:(id)a3;
- (BOOL)isTTYSupportedForSenderIdentityUUID:(id)a3;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4;
- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4 error:(id *)a5;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)a3;
- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)a3 error:(id *)a4;
- (TUSenderIdentityClient)init;
- (id)testEmergencyHandleForAccountUUID:(id)a3 error:(id *)a4;
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
    v5 = [v4 bundleIdentifier];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v3 stringWithFormat:@"%@.%@", v5, v7];
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

- (BOOL)isRTTAvailableForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  if ([(TUSenderIdentityClient *)self isRTTSupportedForSenderIdentityUUID:v4])
  {
    v5 = [(TUSenderIdentityClient *)self isTTYSoftwareAvailableForSenderIdentityUUID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRTTSupportedForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isRTTSupportedForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isRTTRelaySupportedForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isRTTRelaySupportedForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYAvailableForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  if ([(TUSenderIdentityClient *)self isTTYSupportedForSenderIdentityUUID:v4])
  {
    v5 = [(TUSenderIdentityClient *)self isTTYHardwareAvailableForSenderIdentityUUID:v4]|| [(TUSenderIdentityClient *)self isTTYSoftwareAvailableForSenderIdentityUUID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isTTYEnabledForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYEnabledForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYSupportedForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYSupportedForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYHardwareAvailableForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYHardwareAvailableForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYHardwareEnabledForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYHardwareEnabledForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYHardwareSupportedForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYHardwareSupportedForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYSoftwareAvailableForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYSoftwareAvailableForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYSoftwareEnabledForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYSoftwareEnabledForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)isTTYSoftwareSupportedForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUSenderIdentityClient *)self client];
  v6 = [v5 isTTYSoftwareSupportedForSubscriptionUUID:v4];

  return v6;
}

- (BOOL)inEmergencyMode
{
  v2 = [(TUSenderIdentityClient *)self client];
  v3 = [v2 inEmergencyMode];

  return v3;
}

- (BOOL)isEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(TUSenderIdentityClient *)self isEmergencyNumberForDigits:v6 senderIdentityUUID:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 && v9)
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&dword_1956FD000, v11, OS_LOG_TYPE_ERROR, "Failed to determine whether digits %@ are an emergency number due to error %@ for sender identity UUID %@.", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TUSenderIdentityClient *)self client];
  LOBYTE(a5) = [v10 isEmergencyNumberForDigits:v9 subscriptionUUID:v8 error:a5];

  return a5;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(TUSenderIdentityClient *)self isWhitelistedEmergencyNumberForDigits:v6 senderIdentityUUID:v7 error:&v14];
  v9 = v14;
  v10 = v9;
  if (!v8 && v9)
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v7;
      _os_log_error_impl(&dword_1956FD000, v11, OS_LOG_TYPE_ERROR, "Failed to determine whether digits %@ are a whitelisted emergency number due to error %@ for sender identity UUID %@.", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isWhitelistedEmergencyNumberForDigits:(id)a3 senderIdentityUUID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TUSenderIdentityClient *)self client];
  LOBYTE(a5) = [v10 isWhitelistedEmergencyNumberForDigits:v9 subscriptionUUID:v8 error:a5];

  return a5;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(TUSenderIdentityClient *)self shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:v4 error:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5 && v6)
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(TUSenderIdentityClient(Emergency) *)v7 shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:v4, v8];
    }
  }

  return v5;
}

- (BOOL)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TUSenderIdentityClient *)self client];
  LOBYTE(a4) = [v7 shouldShowEmergencyCallbackModeAlertForSubscriptionUUID:v6 error:a4];

  return a4;
}

- (id)testEmergencyHandleForAccountUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TUSenderIdentityClient *)self client];
  v8 = [v6 UUIDString];

  v9 = [v7 testEmergencyHandleForSubscriptionLabelIdentifier:v8 error:a4];

  return v9;
}

@end