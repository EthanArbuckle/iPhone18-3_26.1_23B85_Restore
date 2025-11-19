@interface STLocationSharingModificationClient
- (STLocationSharingModificationClient)init;
- (void)isLocationSharingModificationAllowedForUserID:(id)a3 completionHandler:(id)a4;
@end

@implementation STLocationSharingModificationClient

- (STLocationSharingModificationClient)init
{
  v6.receiver = self;
  v6.super_class = STLocationSharingModificationClient;
  v2 = [(STLocationSharingModificationClient *)&v6 init];
  v3 = objc_opt_new();
  managementState = v2->_managementState;
  v2->_managementState = v3;

  return v2;
}

- (void)isLocationSharingModificationAllowedForUserID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STLocationSharingModificationClient *)self managementState];
  v9 = [v7 dsid];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__STLocationSharingModificationClient_isLocationSharingModificationAllowedForUserID_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE7F70;
  v12 = v6;
  v10 = v6;
  [v8 isLocationSharingModificationAllowedForDSID:v9 completionHandler:v11];
}

void __103__STLocationSharingModificationClient_isLocationSharingModificationAllowedForUserID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    (*(v3 + 16))(v3, [a2 BOOLValue], a3);
  }

  else
  {
    (*(v3 + 16))(v3, 1, a3);
  }
}

@end