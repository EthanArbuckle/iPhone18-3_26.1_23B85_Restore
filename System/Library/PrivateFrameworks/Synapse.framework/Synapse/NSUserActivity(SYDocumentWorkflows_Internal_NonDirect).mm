@interface NSUserActivity(SYDocumentWorkflows_Internal_NonDirect)
+ (id)_syReturnToSenderActivityWithOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect;
- (void)set_syOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect;
- (void)set_syShouldCreateNewMessage:()SYDocumentWorkflows_Internal_NonDirect;
@end

@implementation NSUserActivity(SYDocumentWorkflows_Internal_NonDirect)

+ (id)_syReturnToSenderActivityWithOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect
{
  v3 = a3;
  activityType = [v3 activityType];
  v5 = [activityType stringByAppendingString:@".returntosender"];

  v6 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:v5];
  [v6 set_syOriginalUserActivity:v3];
  _syRelatedUniqueIdentifier = [v3 _syRelatedUniqueIdentifier];

  [v6 set_syRelatedUniqueIdentifier:_syRelatedUniqueIdentifier];

  return v6;
}

- (void)set_syShouldCreateNewMessage:()SYDocumentWorkflows_Internal_NonDirect
{
  v5 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:1];
  [selfCopy _setPayload:v4 object:0 identifier:@"com.apple.synapse.shouldCreateNewMessage"];

  objc_sync_exit(selfCopy);
}

- (void)set_syOriginalUserActivity:()SYDocumentWorkflows_Internal_NonDirect
{
  v4 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    [selfCopy _setPayload:v6 object:0 identifier:@"com.apple.synapse.originalUserActivity"];
  }

  objc_sync_exit(selfCopy);
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