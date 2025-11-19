@interface NSUserActivity(SYDocumentWorkflows_Internal_NonDirect)
+ (id)_syReturnToSenderActivityWithOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect;
- (void)set_syOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect;
- (void)set_syShouldCreateNewMessage:()SYDocumentWorkflows_Internal_NonDirect;
@end

@implementation NSUserActivity(SYDocumentWorkflows_Internal_NonDirect)

+ (id)_syReturnToSenderActivityWithOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect
{
  v3 = a3;
  v4 = [v3 activityType];
  v5 = [v4 stringByAppendingString:@".returntosender"];

  v6 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:v5];
  [v6 set_syOriginalUserActivity:v3];
  v7 = [v3 _syRelatedUniqueIdentifier];

  [v6 set_syRelatedUniqueIdentifier:v7];

  return v6;
}

- (void)set_syShouldCreateNewMessage:()SYDocumentWorkflows_Internal_NonDirect
{
  v5 = a3;
  v3 = a1;
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:1];
  [v3 _setPayload:v4 object:0 identifier:@"com.apple.synapse.shouldCreateNewMessage"];

  objc_sync_exit(v3);
}

- (void)set_syOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v9 = 0;
  v6 = [v4 _createUserActivityDataWithSaving:0 options:0 error:&v9];
  v7 = v9;
  if (v7)
  {
    v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSUserActivity(SYDocumentWorkflows_Internal_NonDirect) *)v7 set_syOriginalUserActivity:v8];
    }
  }

  if (v6)
  {
    [v5 _setPayload:v6 object:0 identifier:@"com.apple.synapse.originalUserActivity"];
  }

  objc_sync_exit(v5);
}

- (void)set_syOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to archive user activity, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end