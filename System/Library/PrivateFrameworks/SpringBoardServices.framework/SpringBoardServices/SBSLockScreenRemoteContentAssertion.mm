@interface SBSLockScreenRemoteContentAssertion
+ (id)acquireRemoteContentAssertionWithDefinition:(id)a3 errorHandler:(id)a4;
@end

@implementation SBSLockScreenRemoteContentAssertion

+ (id)acquireRemoteContentAssertionWithDefinition:(id)a3 errorHandler:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SBLogCoverSheet();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 userInfo];
    v10 = [v6 xpcEndpoint];
    v13 = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, "acquiring SBSLockScreenRemoteContentAssertion with user info: %@, endpoint: %@", &v13, 0x16u);
  }

  v11 = [a1 acquireContentProviderAssertionForType:2 slot:@"Embedded" identifier:@"SBDashBoardSleepAssertionIdentifier" configurationObject:v6 errorHandler:v7];

  return v11;
}

@end