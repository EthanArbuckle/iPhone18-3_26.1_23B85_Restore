@interface SiriAnalyticsRemoteService
- (SiriAnalyticsRemoteService)initWithMachServiceName:(id)a3;
- (id)_packageMessageForXPC:(id)a3 timestamp:(unint64_t)a4 messageUUID:(id)a5 isolatedStreamUUID:(id)a6;
- (void)barrierWithCompletion:(id)a3;
- (void)createTag:(id)a3 completion:(id)a4;
- (void)emitMessage:(id)a3 timestamp:(unint64_t)a4 messageUUID:(id)a5 isolatedStreamUUID:(id)a6 completion:(id)a7;
- (void)enqueueLargeMessageObjectFromPath:(id)a3 dataUploadEvent:(id)a4 requestIdentifier:(id)a5 completion:(id)a6;
- (void)resolvePartialMessage:(id)a3 timestamp:(unint64_t)a4 messageUUID:(id)a5 isolatedStreamUUID:(id)a6 completion:(id)a7;
- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4 completion:(id)a5;
- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4 completion:(id)a5;
@end

@implementation SiriAnalyticsRemoteService

- (void)createTag:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SiriAnalyticsRemoteService_createTag_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)sensitiveCondition:(int)a3 endedAt:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SiriAnalyticsRemoteService_sensitiveCondition_endedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  v14 = a3;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)sensitiveCondition:(int)a3 startedAt:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__SiriAnalyticsRemoteService_sensitiveCondition_startedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  v14 = a3;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (id)_packageMessageForXPC:(id)a3 timestamp:(unint64_t)a4 messageUUID:(id)a5 isolatedStreamUUID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [a3 wrapAsAnyEvent];
  v12 = [SiriAnalyticsXPCOrderedMessageEnvelope alloc];
  v13 = [v11 anyEventType];
  v14 = [v11 payload];
  v15 = [(SiriAnalyticsXPCOrderedMessageEnvelope *)v12 initWithTimestamp:a4 streamUUID:v9 messageType:v13 messageUUID:v10 messageBody:v14];

  return v15;
}

- (void)barrierWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SiriAnalyticsRemoteService_barrierWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SiriAnalyticsRemoteService_barrierWithCompletion___block_invoke_2;
  block[3] = &unk_1E8587C90;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_barrier_async(queue, block);
}

uint64_t __52__SiriAnalyticsRemoteService_barrierWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __52__SiriAnalyticsRemoteService_barrierWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    (*(*(a1 + 40) + 16))();
    v2 = *(*(a1 + 32) + 16);
  }

  v3 = *(a1 + 40);

  return [v2 barrierWithCompletion:v3];
}

- (void)enqueueLargeMessageObjectFromPath:(id)a3 dataUploadEvent:(id)a4 requestIdentifier:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [SiriAnalyticsXPCLargeMessageEnvelope alloc];
  v15 = [v12 data];

  v16 = [(SiriAnalyticsXPCLargeMessageEnvelope *)v14 initWithLargeMessagePath:v13 requestIdentifier:v11 serializedDataUploadMessage:v15];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__SiriAnalyticsRemoteService_enqueueLargeMessageObjectFromPath_dataUploadEvent_requestIdentifier_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v21 = v16;
  v22 = v10;
  v18 = v10;
  v19 = v16;
  dispatch_async(queue, block);
}

- (void)resolvePartialMessage:(id)a3 timestamp:(unint64_t)a4 messageUUID:(id)a5 isolatedStreamUUID:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [(SiriAnalyticsRemoteService *)self _packageMessageForXPC:a3 timestamp:a4 messageUUID:a5 isolatedStreamUUID:a6];
  v14 = v13;
  if (v13)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__SiriAnalyticsRemoteService_resolvePartialMessage_timestamp_messageUUID_isolatedStreamUUID_completion___block_invoke;
    block[3] = &unk_1E8587CE0;
    block[4] = self;
    v17 = v13;
    v18 = v12;
    dispatch_async(queue, block);
  }

  else if (v12)
  {
    v12[2](v12);
  }
}

void __104__SiriAnalyticsRemoteService_resolvePartialMessage_timestamp_messageUUID_isolatedStreamUUID_completion___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 16);
  v5[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 resolveMessages:v3 completion:a1[6]];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)emitMessage:(id)a3 timestamp:(unint64_t)a4 messageUUID:(id)a5 isolatedStreamUUID:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [(SiriAnalyticsRemoteService *)self _packageMessageForXPC:a3 timestamp:a4 messageUUID:a5 isolatedStreamUUID:a6];
  v14 = v13;
  if (v13)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__SiriAnalyticsRemoteService_emitMessage_timestamp_messageUUID_isolatedStreamUUID_completion___block_invoke;
    block[3] = &unk_1E8587CE0;
    block[4] = self;
    v17 = v13;
    v18 = v12;
    dispatch_async(queue, block);
  }

  else if (v12)
  {
    v12[2](v12);
  }
}

void __94__SiriAnalyticsRemoteService_emitMessage_timestamp_messageUUID_isolatedStreamUUID_completion___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 16);
  v5[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 publishMessages:v3 completion:a1[6]];

  v4 = *MEMORY[0x1E69E9840];
}

- (SiriAnalyticsRemoteService)initWithMachServiceName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SiriAnalyticsRemoteService;
  v5 = [(SiriAnalyticsRemoteService *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create("com.apple.siri.analytics.stream.xpc", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [[SiriAnalyticsXPCConnection alloc] initWithMachServiceName:v4];
    connection = v5->_connection;
    v5->_connection = v9;
  }

  return v5;
}

@end