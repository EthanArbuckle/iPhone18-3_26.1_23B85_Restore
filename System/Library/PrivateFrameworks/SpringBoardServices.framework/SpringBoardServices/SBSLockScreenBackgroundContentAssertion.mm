@interface SBSLockScreenBackgroundContentAssertion
+ (id)acquireBackgroundContentAssertionWithDefinition:(id)definition errorHandler:(id)handler;
@end

@implementation SBSLockScreenBackgroundContentAssertion

+ (id)acquireBackgroundContentAssertionWithDefinition:(id)definition errorHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v8 = SBLogCoverSheet();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, "Acquiring SBSLockScreenBackgroundContentAssertion", &v14, 2u);
    }

    v9 = [self acquireContentProviderAssertionForType:2 slot:@"Background" identifier:@"SBDashBoardBackgroundContentAssertionIdentifier" configurationObject:definitionCopy errorHandler:handlerCopy];
  }

  else
  {
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"Feature not enabled";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSLockScreenContentAssertionErrorDomain" code:4 userInfo:v10];
    v12 = SBLogCoverSheet();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_19169D000, v12, OS_LOG_TYPE_DEFAULT, "Failed to acquire SBSLockScreenBackgroundContentAssertion: %@", &v14, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v11);
    }

    v9 = 0;
  }

  return v9;
}

@end