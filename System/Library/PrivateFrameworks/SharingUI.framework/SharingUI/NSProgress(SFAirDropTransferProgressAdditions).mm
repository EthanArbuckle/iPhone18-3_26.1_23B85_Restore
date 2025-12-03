@interface NSProgress(SFAirDropTransferProgressAdditions)
+ (__CFString)sf_transferStateAsString:()SFAirDropTransferProgressAdditions;
- (id)sf_bundleID;
- (id)sf_error;
- (id)sf_initWithAppBundle:()SFAirDropTransferProgressAdditions sessionID:andPersonRealName:;
- (id)sf_initWithFileURL:()SFAirDropTransferProgressAdditions;
- (id)sf_personRealName;
- (id)sf_publishingKey;
- (id)sf_sessionID;
- (uint64_t)sf_failedWithError:()SFAirDropTransferProgressAdditions;
- (uint64_t)sf_initiator;
- (uint64_t)sf_transferState;
- (void)setSf_initiator:()SFAirDropTransferProgressAdditions;
- (void)setSf_transferState:()SFAirDropTransferProgressAdditions;
@end

@implementation NSProgress(SFAirDropTransferProgressAdditions)

- (id)sf_initWithAppBundle:()SFAirDropTransferProgressAdditions sessionID:andPersonRealName:
{
  v18[5] = *MEMORY[0x1E69E9840];
  v17[0] = *MEMORY[0x1E696A7F8];
  v8 = MEMORY[0x1E696AE38];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sf_publishingKeyForApp:v11 sessionID:v10];
  v18[0] = v12;
  v17[1] = @"sendState";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v18[1] = v13;
  v18[2] = v11;
  v17[2] = @"bundleID";
  v17[3] = @"sessionID";
  v17[4] = @"personRealName";
  v18[3] = v10;
  v18[4] = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];

  selfCopy = self;
  [selfCopy setCompletedUnitCount:-1];
  [selfCopy setTotalUnitCount:0];
  [selfCopy setCancellable:1];
  [selfCopy setPausable:0];
  [selfCopy setSf_transferState:0];

  return selfCopy;
}

- (id)sf_publishingKey
{
  v2 = MEMORY[0x1E696AE38];
  sf_bundleID = [self sf_bundleID];
  sf_sessionID = [self sf_sessionID];
  v5 = [v2 sf_publishingKeyForApp:sf_bundleID sessionID:sf_sessionID];

  return v5;
}

- (id)sf_bundleID
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"bundleID"];

  return v2;
}

- (id)sf_sessionID
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"sessionID"];

  return v2;
}

- (id)sf_personRealName
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"personRealName"];

  return v2;
}

- (id)sf_initWithFileURL:()SFAirDropTransferProgressAdditions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"sendState";
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:0];
  v10[1] = *MEMORY[0x1E696A880];
  v11[0] = v6;
  v11[1] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  selfCopy = self;
  [selfCopy setCompletedUnitCount:-1];
  [selfCopy setTotalUnitCount:0];
  [selfCopy setCancellable:1];
  [selfCopy setPausable:0];
  [selfCopy setSf_transferState:0];

  return selfCopy;
}

+ (__CFString)sf_transferStateAsString:()SFAirDropTransferProgressAdditions
{
  if ((a3 - 1) > 5)
  {
    return @"Initialized";
  }

  else
  {
    return off_1E7EE4570[a3 - 1];
  }
}

- (void)setSf_initiator:()SFAirDropTransferProgressAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  objc_setAssociatedObject(self, "SFAirDropTransferProgressInitiator", v2, 0x301);
}

- (uint64_t)sf_initiator
{
  v1 = objc_getAssociatedObject(self, "SFAirDropTransferProgressInitiator");
  unsignedIntValue = [v1 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setSf_transferState:()SFAirDropTransferProgressAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self setUserInfoObject:v2 forKey:@"sendState"];
}

- (uint64_t)sf_transferState
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"sendState"];

  integerValue = [v2 integerValue];
  return integerValue;
}

- (uint64_t)sf_failedWithError:()SFAirDropTransferProgressAdditions
{
  [self setUserInfoObject:a3 forKey:@"error"];

  return [self setSf_transferState:5];
}

- (id)sf_error
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"error"];

  return v2;
}

@end