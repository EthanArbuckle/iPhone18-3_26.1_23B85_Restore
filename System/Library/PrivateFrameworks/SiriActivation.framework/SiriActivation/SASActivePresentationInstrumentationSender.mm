@interface SASActivePresentationInstrumentationSender
- (SASActivePresentationInstrumentationSender)initWithAnalyticsStream:(id)stream;
- (void)_instrumentActivationMessage:(id)message;
- (void)_requestStateDidChange:(int64_t)change;
- (void)aggregatePresentationRequestStateDidChange:(int64_t)change;
- (void)barrierWithCompletion:(id)completion;
- (void)instrumentActivationMessage:(id)message;
@end

@implementation SASActivePresentationInstrumentationSender

- (SASActivePresentationInstrumentationSender)initWithAnalyticsStream:(id)stream
{
  v9.receiver = self;
  v9.super_class = SASActivePresentationInstrumentationSender;
  v3 = [(SASActivationInstrumentationSender *)&v9 initWithAnalyticsStream:stream];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.siri-activation.activePresentationSender", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    array = [MEMORY[0x1E695DF70] array];
    queuedMesasges = v3->_queuedMesasges;
    v3->_queuedMesasges = array;
  }

  return v3;
}

- (void)instrumentActivationMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SASActivePresentationInstrumentationSender_instrumentActivationMessage___block_invoke;
  block[3] = &unk_1E82F37D0;
  objc_copyWeak(&v9, &location);
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __74__SASActivePresentationInstrumentationSender_instrumentActivationMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _instrumentActivationMessage:*(a1 + 32)];
}

- (void)aggregatePresentationRequestStateDidChange:(int64_t)change
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__SASActivePresentationInstrumentationSender_aggregatePresentationRequestStateDidChange___block_invoke;
  block[3] = &unk_1E82F36A8;
  objc_copyWeak(v7, &location);
  v7[1] = change;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __89__SASActivePresentationInstrumentationSender_aggregatePresentationRequestStateDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _requestStateDidChange:*(a1 + 40)];
}

- (void)barrierWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SASActivePresentationInstrumentationSender_barrierWithCompletion___block_invoke;
  block[3] = &unk_1E82F3D58;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(queue, block);
}

uint64_t __68__SASActivePresentationInstrumentationSender_barrierWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SASActivePresentationInstrumentationSender barrierWithCompletion:]_block_invoke";
    _os_log_impl(&dword_1C8137000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_instrumentActivationMessage:(id)message
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [(SASActivePresentationInstrumentationSender *)self _canInstrumentForRequestState:self->_aggregateRequestState];
  v6 = MEMORY[0x1E698D0A0];
  v7 = *MEMORY[0x1E698D0A0];
  v8 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 136315394;
      v18 = "[SASActivePresentationInstrumentationSender _instrumentActivationMessage:]";
      v19 = 2112;
      v20 = messageCopy;
      _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Allowing message %@", buf, 0x16u);
    }

    v16.receiver = self;
    v16.super_class = SASActivePresentationInstrumentationSender;
    [(SASActivationInstrumentationSender *)&v16 instrumentActivationMessage:messageCopy];
  }

  else
  {
    if (v8)
    {
      *buf = 136315394;
      v18 = "[SASActivePresentationInstrumentationSender _instrumentActivationMessage:]";
      v19 = 2112;
      v20 = messageCopy;
      _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Buffering message %@", buf, 0x16u);
    }

    lastObject = [(NSMutableArray *)self->_queuedMesasges lastObject];
    activationEventIdentifier = [lastObject activationEventIdentifier];
    activationEventIdentifier2 = [messageCopy activationEventIdentifier];
    if (activationEventIdentifier && ([activationEventIdentifier isEqual:activationEventIdentifier2] & 1) == 0)
    {
      v12 = *v6;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = "[SASActivePresentationInstrumentationSender _instrumentActivationMessage:]";
        v19 = 2112;
        v20 = activationEventIdentifier;
        v21 = 2112;
        v22 = activationEventIdentifier2;
        _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New activation interaction detected. Old %@, New %@", buf, 0x20u);
      }

      array = [MEMORY[0x1E695DF70] array];
      queuedMesasges = self->_queuedMesasges;
      self->_queuedMesasges = array;
    }

    [(NSMutableArray *)self->_queuedMesasges addObject:messageCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_requestStateDidChange:(int64_t)change
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = SASRequestStateGetName(change);
    *buf = 136315394;
    v24 = "[SASActivePresentationInstrumentationSender _requestStateDidChange:]";
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Request state did change %@", buf, 0x16u);
  }

  if ([(SASActivePresentationInstrumentationSender *)self _canInstrumentForRequestState:change])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_queuedMesasges;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v17.receiver = self;
          v17.super_class = SASActivePresentationInstrumentationSender;
          [(SASActivationInstrumentationSender *)&v17 instrumentActivationMessage:v13];
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    array = [MEMORY[0x1E695DF70] array];
    queuedMesasges = self->_queuedMesasges;
    self->_queuedMesasges = array;
  }

  self->_aggregateRequestState = change;
  v16 = *MEMORY[0x1E69E9840];
}

@end