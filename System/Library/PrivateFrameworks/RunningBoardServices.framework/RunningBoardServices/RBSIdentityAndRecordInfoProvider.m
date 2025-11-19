@interface RBSIdentityAndRecordInfoProvider
+ (id)_providerWithIdentity:(id)a3 record:(id)a4;
- (id)_initWithIdentity:(id)a3 record:(id)a4;
@end

@implementation RBSIdentityAndRecordInfoProvider

- (id)_initWithIdentity:(id)a3 record:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
    v10 = [v6 personaUniqueString];
    personaString = v9->_personaString;
    v9->_personaString = v10;

    v12 = [v8 bundleIdentifier];
    bundleID = v9->_bundleID;
    v9->_bundleID = v12;

    v14 = [v8 jobLabel];
    persistentJobLabel = v9->_persistentJobLabel;
    v9->_persistentJobLabel = v14;

    v9->_platform = [v8 platform];
  }

  return v9;
}

+ (id)_providerWithIdentity:(id)a3 record:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RBSIdentityAndRecordInfoProvider alloc] _initWithIdentity:v6 record:v5];

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