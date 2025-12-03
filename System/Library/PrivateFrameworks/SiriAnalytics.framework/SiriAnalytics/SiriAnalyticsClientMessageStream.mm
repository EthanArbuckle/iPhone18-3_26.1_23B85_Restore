@interface SiriAnalyticsClientMessageStream
- (SiriAnalyticsClientMessageStream)initWithQueue:(id)queue analyticsService:(id)service;
- (void)barrierWithCompletion:(id)completion;
- (void)emitMessage:(id)message isolatedStreamUUID:(id)d;
- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp isolatedStreamUUID:(id)d;
- (void)enqueueLargeMessageObjectFromPath:(id)path assetIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier messageMetadata:(id)metadata completion:(id)completion;
- (void)resolvePartialMessage:(id)message isolatedStreamUUID:(id)d;
- (void)resolvePartialMessage:(id)message timestamp:(unint64_t)timestamp isolatedStreamUUID:(id)d;
@end

@implementation SiriAnalyticsClientMessageStream

- (void)enqueueLargeMessageObjectFromPath:(id)path assetIdentifier:(id)identifier requestIdentifier:(id)requestIdentifier messageMetadata:(id)metadata completion:(id)completion
{
  pathCopy = path;
  identifierCopy = identifier;
  requestIdentifierCopy = requestIdentifier;
  metadataCopy = metadata;
  completionCopy = completion;
  if (!identifierCopy)
  {
    identifierCopy = [MEMORY[0x1E696AFB0] UUID];
  }

  v17 = objc_alloc_init(MEMORY[0x1E69CEAC8]);
  v18 = objc_alloc_init(MEMORY[0x1E69CEAD0]);
  [v17 setMetadata:v18];

  metadata = [v17 metadata];
  v20 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:identifierCopy];
  [metadata setAssetIdentifier:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69CEAC0]);
  [v17 setContent:v21];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v17 setSpeechAudioRecord:metadataCopy];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __131__SiriAnalyticsClientMessageStream_enqueueLargeMessageObjectFromPath_assetIdentifier_requestIdentifier_messageMetadata_completion___block_invoke;
  block[3] = &unk_1E8587990;
  block[4] = self;
  v28 = pathCopy;
  v29 = v17;
  v30 = requestIdentifierCopy;
  v31 = completionCopy;
  v23 = completionCopy;
  v24 = requestIdentifierCopy;
  v25 = v17;
  v26 = pathCopy;
  dispatch_async(queue, block);
}

- (void)resolvePartialMessage:(id)message timestamp:(unint64_t)timestamp isolatedStreamUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  if (dCopy || [messageCopy clockIsolationLevel] != 2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SiriAnalyticsClientMessageStream_resolvePartialMessage_timestamp_isolatedStreamUUID___block_invoke;
    block[3] = &unk_1E8587968;
    block[4] = self;
    timestampCopy = timestamp;
    v16 = messageCopy;
    v17 = uUID;
    v18 = dCopy;
    qualifiedMessageName = uUID;
    dispatch_async(queue, block);
  }

  else
  {
    qualifiedMessageName = [messageCopy qualifiedMessageName];
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v11 = SiriAnalyticsLogContextStreaming;
    if (os_log_type_enabled(SiriAnalyticsLogContextStreaming, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[SiriAnalyticsClientMessageStream resolvePartialMessage:timestamp:isolatedStreamUUID:]";
      v22 = 2112;
      v23 = qualifiedMessageName;
      _os_log_error_impl(&dword_1D9863000, v11, OS_LOG_TYPE_ERROR, "%s SELF Event is marked as ISOLATED but is emitted without isolatedStreamUUID. Not emitting event: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resolvePartialMessage:(id)message isolatedStreamUUID:(id)d
{
  dCopy = d;
  messageCopy = message;
  [(SiriAnalyticsClientMessageStream *)self resolvePartialMessage:messageCopy timestamp:mach_absolute_time() isolatedStreamUUID:dCopy];
}

- (void)barrierWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SiriAnalyticsClientMessageStream_barrierWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)emitMessage:(id)message timestamp:(unint64_t)timestamp isolatedStreamUUID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  qualifiedMessageName = [messageCopy qualifiedMessageName];
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v11 = mach_continuous_time();
  v12 = mach_absolute_time();
  v13 = SiriAnalyticsLogContextPerformance;
  v14 = os_signpost_id_generate(SiriAnalyticsLogContextPerformance);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *buf = 134349314;
      v27 = (v11 + timestamp - v12);
      v28 = 2112;
      v29 = qualifiedMessageName;
      _os_signpost_emit_with_name_impl(&dword_1D9863000, v13, OS_SIGNPOST_EVENT, v15, "EventEmitted", "%{public, signpost.description:event_time}llu type=%@", buf, 0x16u);
    }
  }

  if (dCopy || [messageCopy clockIsolationLevel] != 2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__SiriAnalyticsClientMessageStream_emitMessage_timestamp_isolatedStreamUUID___block_invoke;
    block[3] = &unk_1E8587968;
    block[4] = self;
    timestampCopy = timestamp;
    v22 = messageCopy;
    v23 = uUID;
    v24 = dCopy;
    v19 = uUID;
    dispatch_async(queue, block);
  }

  else
  {
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v16 = SiriAnalyticsLogContextStreaming;
    if (os_log_type_enabled(SiriAnalyticsLogContextStreaming, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[SiriAnalyticsClientMessageStream emitMessage:timestamp:isolatedStreamUUID:]";
      v28 = 2112;
      v29 = qualifiedMessageName;
      _os_log_error_impl(&dword_1D9863000, v16, OS_LOG_TYPE_ERROR, "%s SELF Event is marked as ISOLATED but is emitted without isolatedStreamUUID. Not emitting event: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)emitMessage:(id)message isolatedStreamUUID:(id)d
{
  dCopy = d;
  messageCopy = message;
  [(SiriAnalyticsClientMessageStream *)self emitMessage:messageCopy timestamp:mach_absolute_time() isolatedStreamUUID:dCopy];
}

- (SiriAnalyticsClientMessageStream)initWithQueue:(id)queue analyticsService:(id)service
{
  queueCopy = queue;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = SiriAnalyticsClientMessageStream;
  v9 = [(SiriAnalyticsClientMessageStream *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_service, service);
  }

  return v10;
}

@end