@interface TIResponseKitTrainer
+ (void)performTrainingForClient:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation TIResponseKitTrainer

+ (void)performTrainingForClient:(id)a3 withCompletionHandler:(id)a4
{
  v10 = a3;
  v5 = a4;
  if (performTrainingForClient_withCompletionHandler__onceToken != -1)
  {
    dispatch_once(&performTrainingForClient_withCompletionHandler__onceToken, &__block_literal_global_9089);
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.TextInput.rdt" options:4096];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF7F8138];
  [v6 setRemoteObjectInterface:v7];

  [v6 _setQueue:performTrainingForClient_withCompletionHandler__xpcQueue];
  [v6 resume];
  v8 = [v6 remoteObjectProxyWithErrorHandler:&__block_literal_global_7_9093];
  v9 = v8;
  if (v8)
  {
    [v8 performTrainingForClient:v10 withCompletionHandler:v5];
  }
}

void __71__TIResponseKitTrainer_performTrainingForClient_withCompletionHandler___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.response-kit-trainer", v2);
  v1 = performTrainingForClient_withCompletionHandler__xpcQueue;
  performTrainingForClient_withCompletionHandler__xpcQueue = v0;
}

@end