@interface SiriAnalyticsClientMessageStream
- (SiriAnalyticsClientMessageStream)initWithQueue:(id)a3 analyticsService:(id)a4;
- (void)barrierWithCompletion:(id)a3;
- (void)emitMessage:(id)a3 isolatedStreamUUID:(id)a4;
- (void)emitMessage:(id)a3 timestamp:(unint64_t)a4 isolatedStreamUUID:(id)a5;
- (void)enqueueLargeMessageObjectFromPath:(id)a3 assetIdentifier:(id)a4 requestIdentifier:(id)a5 messageMetadata:(id)a6 completion:(id)a7;
- (void)resolvePartialMessage:(id)a3 isolatedStreamUUID:(id)a4;
- (void)resolvePartialMessage:(id)a3 timestamp:(unint64_t)a4 isolatedStreamUUID:(id)a5;
@end

@implementation SiriAnalyticsClientMessageStream

- (void)enqueueLargeMessageObjectFromPath:(id)a3 assetIdentifier:(id)a4 requestIdentifier:(id)a5 messageMetadata:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13)
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
  }

  v17 = objc_alloc_init(MEMORY[0x1E69CEAC8]);
  v18 = objc_alloc_init(MEMORY[0x1E69CEAD0]);
  [v17 setMetadata:v18];

  v19 = [v17 metadata];
  v20 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:v13];
  [v19 setAssetIdentifier:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69CEAC0]);
  [v17 setContent:v21];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v17 setSpeechAudioRecord:v15];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __131__SiriAnalyticsClientMessageStream_enqueueLargeMessageObjectFromPath_assetIdentifier_requestIdentifier_messageMetadata_completion___block_invoke;
  block[3] = &unk_1E8587990;
  block[4] = self;
  v28 = v12;
  v29 = v17;
  v30 = v14;
  v31 = v16;
  v23 = v16;
  v24 = v14;
  v25 = v17;
  v26 = v12;
  dispatch_async(queue, block);
}

- (void)resolvePartialMessage:(id)a3 timestamp:(unint64_t)a4 isolatedStreamUUID:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v9 || [v8 clockIsolationLevel] != 2)
  {
    v12 = [MEMORY[0x1E696AFB0] UUID];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SiriAnalyticsClientMessageStream_resolvePartialMessage_timestamp_isolatedStreamUUID___block_invoke;
    block[3] = &unk_1E8587968;
    block[4] = self;
    v19 = a4;
    v16 = v8;
    v17 = v12;
    v18 = v9;
    v10 = v12;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = [v8 qualifiedMessageName];
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
      v23 = v10;
      _os_log_error_impl(&dword_1D9863000, v11, OS_LOG_TYPE_ERROR, "%s SELF Event is marked as ISOLATED but is emitted without isolatedStreamUUID. Not emitting event: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resolvePartialMessage:(id)a3 isolatedStreamUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SiriAnalyticsClientMessageStream *)self resolvePartialMessage:v7 timestamp:mach_absolute_time() isolatedStreamUUID:v6];
}

- (void)barrierWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SiriAnalyticsClientMessageStream_barrierWithCompletion___block_invoke;
  v7[3] = &unk_1E8587C90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)emitMessage:(id)a3 timestamp:(unint64_t)a4 isolatedStreamUUID:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 qualifiedMessageName];
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
      v27 = (v11 + a4 - v12);
      v28 = 2112;
      v29 = v10;
      _os_signpost_emit_with_name_impl(&dword_1D9863000, v13, OS_SIGNPOST_EVENT, v15, "EventEmitted", "%{public, signpost.description:event_time}llu type=%@", buf, 0x16u);
    }
  }

  if (v9 || [v8 clockIsolationLevel] != 2)
  {
    v17 = [MEMORY[0x1E696AFB0] UUID];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__SiriAnalyticsClientMessageStream_emitMessage_timestamp_isolatedStreamUUID___block_invoke;
    block[3] = &unk_1E8587968;
    block[4] = self;
    v25 = a4;
    v22 = v8;
    v23 = v17;
    v24 = v9;
    v19 = v17;
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
      v29 = v10;
      _os_log_error_impl(&dword_1D9863000, v16, OS_LOG_TYPE_ERROR, "%s SELF Event is marked as ISOLATED but is emitted without isolatedStreamUUID. Not emitting event: %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)emitMessage:(id)a3 isolatedStreamUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SiriAnalyticsClientMessageStream *)self emitMessage:v7 timestamp:mach_absolute_time() isolatedStreamUUID:v6];
}

- (SiriAnalyticsClientMessageStream)initWithQueue:(id)a3 analyticsService:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SiriAnalyticsClientMessageStream;
  v9 = [(SiriAnalyticsClientMessageStream *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_service, a4);
  }

  return v10;
}

@end