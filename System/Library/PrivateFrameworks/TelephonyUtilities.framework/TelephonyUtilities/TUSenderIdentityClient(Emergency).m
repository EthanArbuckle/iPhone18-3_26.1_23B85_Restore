@interface TUSenderIdentityClient(Emergency)
@end

@implementation TUSenderIdentityClient(Emergency)

- (void)shouldShowEmergencyCallbackModeAlertForSenderIdentityUUID:()Emergency .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1956FD000, log, OS_LOG_TYPE_ERROR, "Could not determine whether emergency callback mode warning should be presented due to error %@ for sender identity UUID %@.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end