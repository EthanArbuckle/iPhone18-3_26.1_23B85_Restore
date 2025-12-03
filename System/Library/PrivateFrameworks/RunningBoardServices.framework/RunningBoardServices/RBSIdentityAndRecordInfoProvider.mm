@interface RBSIdentityAndRecordInfoProvider
+ (id)_providerWithIdentity:(id)identity record:(id)record;
- (id)_initWithIdentity:(id)identity record:(id)record;
@end

@implementation RBSIdentityAndRecordInfoProvider

- (id)_initWithIdentity:(id)identity record:(id)record
{
  identityCopy = identity;
  recordCopy = record;
  v8 = recordCopy;
  if (identityCopy)
  {
    if (recordCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [RBSIdentityAndRecordInfoProvider _initWithIdentity:record:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [RBSIdentityAndRecordInfoProvider _initWithIdentity:record:];
LABEL_3:
  v9 = [(RBSIdentityAndRecordInfoProvider *)self init];
  if (v9)
  {
    personaUniqueString = [identityCopy personaUniqueString];
    personaString = v9->_personaString;
    v9->_personaString = personaUniqueString;

    bundleIdentifier = [v8 bundleIdentifier];
    bundleID = v9->_bundleID;
    v9->_bundleID = bundleIdentifier;

    jobLabel = [v8 jobLabel];
    persistentJobLabel = v9->_persistentJobLabel;
    v9->_persistentJobLabel = jobLabel;

    v9->_platform = [v8 platform];
  }

  return v9;
}

+ (id)_providerWithIdentity:(id)identity record:(id)record
{
  recordCopy = record;
  identityCopy = identity;
  v7 = [[RBSIdentityAndRecordInfoProvider alloc] _initWithIdentity:identityCopy record:recordCopy];

  return v7;
}

- (void)_initWithIdentity:record:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)_initWithIdentity:record:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"record" object:? file:? lineNumber:? description:?];
}

@end