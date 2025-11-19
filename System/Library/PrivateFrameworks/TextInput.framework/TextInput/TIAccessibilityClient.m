@interface TIAccessibilityClient
+ (void)requestLabelForProactiveCandidateWithSlotID:(unsigned int)a3 completionHandler:(id)a4;
@end

@implementation TIAccessibilityClient

+ (void)requestLabelForProactiveCandidateWithSlotID:(unsigned int)a3 completionHandler:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  if (v5)
  {
    if (requestLabelForProactiveCandidateWithSlotID_completionHandler__onceToken != -1)
    {
      dispatch_once(&requestLabelForProactiveCandidateWithSlotID_completionHandler__onceToken, &__block_literal_global_314);
    }

    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.accessibility" options:4096];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F7EF8];
    [v6 setRemoteObjectInterface:v7];

    [v6 _setQueue:requestLabelForProactiveCandidateWithSlotID_completionHandler____xpc_queue];
    [v6 resume];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__TIAccessibilityClient_requestLabelForProactiveCandidateWithSlotID_completionHandler___block_invoke_2;
    v11[3] = &unk_1E6F4CD38;
    v8 = v5;
    v12 = v8;
    v9 = [v6 remoteObjectProxyWithErrorHandler:v11];
    v10 = v9;
    if (v9)
    {
      [v9 requestLabelForProactiveCandidateWithSlotID:v4 completionHandler:v8];
    }

    else
    {
      (*(v8 + 2))(v8, 0);
    }
  }
}

uint64_t __87__TIAccessibilityClient_requestLabelForProactiveCandidateWithSlotID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_TextinputClien.isa, a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __87__TIAccessibilityClient_requestLabelForProactiveCandidateWithSlotID_completionHandler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.accessibility", v2);
  v1 = requestLabelForProactiveCandidateWithSlotID_completionHandler____xpc_queue;
  requestLabelForProactiveCandidateWithSlotID_completionHandler____xpc_queue = v0;
}

@end