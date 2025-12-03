@interface PDCPreflightRequestHandle
+ (id)alreadyCompletedRequestHandle;
- (PDCPreflightRequestHandle)initWithQueue:(id)queue completionHandler:(id)handler;
- (void)cancel;
- (void)completeRequestWithResponse:(unint64_t)response;
@end

@implementation PDCPreflightRequestHandle

+ (id)alreadyCompletedRequestHandle
{
  if (alreadyCompletedRequestHandle_once != -1)
  {
    +[PDCPreflightRequestHandle alreadyCompletedRequestHandle];
  }

  v3 = alreadyCompletedRequestHandle_result;

  return v3;
}

void __58__PDCPreflightRequestHandle_alreadyCompletedRequestHandle__block_invoke()
{
  v0 = [[PDCPreflightRequestHandle alloc] initWithQueue:0 completionHandler:0];
  v1 = alreadyCompletedRequestHandle_result;
  alreadyCompletedRequestHandle_result = v0;

  atomic_exchange((alreadyCompletedRequestHandle_result + 8), 1u);
}

- (PDCPreflightRequestHandle)initWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = PDCPreflightRequestHandle;
  v9 = [(PDCPreflightRequestHandle *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_isComplete._Value = 0;
    objc_storeStrong(&v9->_queue, queue);
    v11 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;

    v13 = v10;
  }

  return v10;
}

- (void)completeRequestWithResponse:(unint64_t)response
{
  if ((atomic_exchange(&self->_isComplete._Value, 1u) & 1) == 0)
  {
    v5 = MEMORY[0x25F8E5A40](self->_completionHandler, a2);
    queue = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__PDCPreflightRequestHandle_completeRequestWithResponse___block_invoke;
    v10[3] = &unk_279AA1EA8;
    v11 = v5;
    responseCopy = response;
    v7 = v5;
    dispatch_async(queue, v10);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v9 = self->_queue;
    self->_queue = 0;
  }
}

- (void)cancel
{
  v3 = PDC_LOG_CHANNEL_PREFIXPrivacyDisclosureCore();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_25F701000, v3, OS_LOG_TYPE_INFO, "Disclosure alert cancelled by client.", v5, 2u);
  }

  v4 = +[PDCPrivacyAlertPresenter sharedPresenter];
  [v4 didCancelRequestHandle:self];

  [(PDCPreflightRequestHandle *)self completeRequestWithResponse:0];
}

@end