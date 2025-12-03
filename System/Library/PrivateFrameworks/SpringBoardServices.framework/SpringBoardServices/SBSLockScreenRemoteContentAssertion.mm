@interface SBSLockScreenRemoteContentAssertion
+ (id)acquireRemoteContentAssertionWithDefinition:(id)definition errorHandler:(id)handler;
@end

@implementation SBSLockScreenRemoteContentAssertion

+ (id)acquireRemoteContentAssertionWithDefinition:(id)definition errorHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  handlerCopy = handler;
  v8 = SBLogCoverSheet();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [definitionCopy userInfo];
    xpcEndpoint = [definitionCopy xpcEndpoint];
    v13 = 138412546;
    v14 = userInfo;
    v15 = 2112;
    v16 = xpcEndpoint;
    _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, "acquiring SBSLockScreenRemoteContentAssertion with user info: %@, endpoint: %@", &v13, 0x16u);
  }

  v11 = [self acquireContentProviderAssertionForType:2 slot:@"Embedded" identifier:@"SBDashBoardSleepAssertionIdentifier" configurationObject:definitionCopy errorHandler:handlerCopy];

  return v11;
}

@end