@interface ICMachineDataEraseOperation
- (void)execute;
@end

@implementation ICMachineDataEraseOperation

- (void)execute
{
  requestContext = [(ICMachineDataOperation *)self requestContext];
  identityStore = [requestContext identityStore];
  identity = [requestContext identity];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__ICMachineDataEraseOperation_execute__block_invoke;
  v6[3] = &unk_1E7BF7B20;
  v6[4] = self;
  [identityStore getPropertiesForUserIdentity:identity completionHandler:v6];
}

void __38__ICMachineDataEraseOperation_execute__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) protocolVersion] != 2)
  {
    v4 = [v3 DSID];
    [v4 unsignedLongLongValue];
  }

  p435tmhbla();
  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v5 userInfo:0];
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "failed to erase machine data provisioning. err=%{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = [*(a1 + 32) completionHandler];

  if (v8)
  {
    v9 = [*(a1 + 32) completionHandler];
    (v9)[2](v9, 0, v6);
  }

  [*(a1 + 32) finishWithError:v6];
}

@end