@interface SiriAnalyticsRemoteService
- (SiriAnalyticsRemoteService)initWithMachServiceName:(id)name;
- (id)_packageMessageForXPC:(id)c timestamp:(unint64_t)timestamp messageUUID:(id)d isolatedStreamUUID:(id)iD;
- (void)barrierWithCompletion:(id)completion;
- (void)createTag:(id)tag completion:(id)completion;
- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp messageUUID:(id)d isolatedStreamUUID:(id)iD completion:(id)completion;
- (void)enqueueLargeMessageObjectFromPath:(id)path dataUploadEvent:(id)event requestIdentifier:(id)identifier completion:(id)completion;
- (void)resolvePartialMessage:(id)message timestamp:(unint64_t)timestamp messageUUID:(id)d isolatedStreamUUID:(id)iD completion:(id)completion;
- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at completion:(id)completion;
- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at completion:(id)completion;
@end

@implementation SiriAnalyticsRemoteService

- (void)createTag:(id)tag completion:(id)completion
{
  tagCopy = tag;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SiriAnalyticsRemoteService_createTag_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v12 = tagCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = tagCopy;
  dispatch_async(queue, block);
}

- (void)sensitiveCondition:(int)condition endedAt:(unint64_t)at completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__SiriAnalyticsRemoteService_sensitiveCondition_endedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  conditionCopy = condition;
  v12 = completionCopy;
  atCopy = at;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (void)sensitiveCondition:(int)condition startedAt:(unint64_t)at completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__SiriAnalyticsRemoteService_sensitiveCondition_startedAt_completion___block_invoke;
  v11[3] = &unk_1E8587C68;
  conditionCopy = condition;
  v12 = completionCopy;
  atCopy = at;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

- (id)_packageMessageForXPC:(id)c timestamp:(unint64_t)timestamp messageUUID:(id)d isolatedStreamUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  wrapAsAnyEvent = [c wrapAsAnyEvent];
  v12 = [SiriAnalyticsXPCOrderedMessageEnvelope alloc];
  anyEventType = [wrapAsAnyEvent anyEventType];
  payload = [wrapAsAnyEvent payload];
  v15 = [(SiriAnalyticsXPCOrderedMessageEnvelope *)v12 initWithTimestamp:timestamp streamUUID:iDCopy messageType:anyEventType messageUUID:dCopy messageBody:payload];

  return v15;
}

- (void)barrierWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SiriAnalyticsRemoteService_barrierWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8587C18;
  v12 = completionCopy;
  v5 = completionCopy;
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

- (void)enqueueLargeMessageObjectFromPath:(id)path dataUploadEvent:(id)event requestIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  eventCopy = event;
  pathCopy = path;
  v14 = [SiriAnalyticsXPCLargeMessageEnvelope alloc];
  data = [eventCopy data];

  v16 = [(SiriAnalyticsXPCLargeMessageEnvelope *)v14 initWithLargeMessagePath:pathCopy requestIdentifier:identifierCopy serializedDataUploadMessage:data];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__SiriAnalyticsRemoteService_enqueueLargeMessageObjectFromPath_dataUploadEvent_requestIdentifier_completion___block_invoke;
  block[3] = &unk_1E8587CE0;
  block[4] = self;
  v21 = v16;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = v16;
  dispatch_async(queue, block);
}

- (void)resolvePartialMessage:(id)message timestamp:(unint64_t)timestamp messageUUID:(id)d isolatedStreamUUID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13 = [(SiriAnalyticsRemoteService *)self _packageMessageForXPC:message timestamp:timestamp messageUUID:d isolatedStreamUUID:iD];
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
    v18 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp messageUUID:(id)d isolatedStreamUUID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v13 = [(SiriAnalyticsRemoteService *)self _packageMessageForXPC:message timestamp:timestamp messageUUID:d isolatedStreamUUID:iD];
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
    v18 = completionCopy;
    dispatch_async(queue, block);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (SiriAnalyticsRemoteService)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SiriAnalyticsRemoteService;
  v5 = [(SiriAnalyticsRemoteService *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v7 = dispatch_queue_create("com.apple.siri.analytics.stream.xpc", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = [[SiriAnalyticsXPCConnection alloc] initWithMachServiceName:nameCopy];
    connection = v5->_connection;
    v5->_connection = v9;
  }

  return v5;
}

@end