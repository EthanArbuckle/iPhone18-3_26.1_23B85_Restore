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

  v15 = a1;
  [v15 setCompletedUnitCount:-1];
  [v15 setTotalUnitCount:0];
  [v15 setCancellable:1];
  [v15 setPausable:0];
  [v15 setSf_transferState:0];

  return v15;
}

- (id)sf_publishingKey
{
  v2 = MEMORY[0x1E696AE38];
  v3 = [a1 sf_bundleID];
  v4 = [a1 sf_sessionID];
  v5 = [v2 sf_publishingKeyForApp:v3 sessionID:v4];

  return v5;
}

- (id)sf_bundleID
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"bundleID"];

  return v2;
}

- (id)sf_sessionID
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"sessionID"];

  return v2;
}

- (id)sf_personRealName
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"personRealName"];

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

  v8 = a1;
  [v8 setCompletedUnitCount:-1];
  [v8 setTotalUnitCount:0];
  [v8 setCancellable:1];
  [v8 setPausable:0];
  [v8 setSf_transferState:0];

  return v8;
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
  objc_setAssociatedObject(a1, "SFAirDropTransferProgressInitiator", v2, 0x301);
}

- (uint64_t)sf_initiator
{
  v1 = objc_getAssociatedObject(a1, "SFAirDropTransferProgressInitiator");
  v2 = [v1 unsignedIntValue];

  return v2;
}

- (void)setSf_transferState:()SFAirDropTransferProgressAdditions
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [a1 setUserInfoObject:v2 forKey:@"sendState"];
}

- (uint64_t)sf_transferState
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"sendState"];

  v3 = [v2 integerValue];
  return v3;
}

- (uint64_t)sf_failedWithError:()SFAirDropTransferProgressAdditions
{
  [a1 setUserInfoObject:a3 forKey:@"error"];

  return [a1 setSf_transferState:5];
}

- (id)sf_error
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"error"];

  return v2;
}

@end