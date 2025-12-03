@interface SSUIServiceClient
- (SSUIServiceClient)init;
- (void)sendRequest:(id)request withCompletion:(id)completion;
@end

@implementation SSUIServiceClient

- (SSUIServiceClient)init
{
  v6.receiver = self;
  v6.super_class = SSUIServiceClient;
  v2 = [(SSUIServiceClient *)&v6 init];
  v3 = [objc_alloc(MEMORY[0x1E699FC70]) initWithConfigurator:&__block_literal_global_1];
  facilityClient = v2->_facilityClient;
  v2->_facilityClient = v3;

  return v2;
}

void __25__SSUIServiceClient_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E699FC70];
  v5 = a2;
  v3 = [v2 defaultShellEndpoint];
  [v5 setEndpoint:v3];

  [v5 setIdentifier:SSUIServiceIdentifier];
  v4 = [MEMORY[0x1E698F500] userInitiated];
  [v5 setServiceQuality:v4];

  [v5 setCalloutQueue:MEMORY[0x1E69E96A0]];
}

- (void)sendRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E699FCF8]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__SSUIServiceClient_sendRequest_withCompletion___block_invoke;
  v14[3] = &unk_1E8590698;
  v9 = requestCopy;
  v15 = v9;
  v10 = [v8 initWithMessagePacker:v14];
  facilityClient = self->_facilityClient;
  if (completionCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__SSUIServiceClient_sendRequest_withCompletion___block_invoke_2;
    v12[3] = &unk_1E85906C0;
    v13 = completionCopy;
    [(FBSServiceFacilityClient *)facilityClient sendMessage:v10 withType:0 replyHandler:v12 waitForReply:0 timeout:10.0];
  }

  else
  {
    [(FBSServiceFacilityClient *)facilityClient sendMessage:v10 withType:0];
  }
}

void __48__SSUIServiceClient_sendRequest_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E7A8];
  v4 = a2;
  v6 = [v3 coder];
  [v6 encodeObject:*(a1 + 32) forKey:@"SSUIServiceRequest"];
  v5 = [v6 createMessage];
  xpc_dictionary_set_value(v4, "SSUIServiceRequest", v5);
}

@end