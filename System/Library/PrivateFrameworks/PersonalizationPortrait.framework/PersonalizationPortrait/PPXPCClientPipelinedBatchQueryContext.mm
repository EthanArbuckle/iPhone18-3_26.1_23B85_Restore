@interface PPXPCClientPipelinedBatchQueryContext
- (id)description;
- (void)finalizeCallWithSuccess:(BOOL)success error:(id)error;
- (void)setFinalizeCall:(id)call;
@end

@implementation PPXPCClientPipelinedBatchQueryContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  queue = [(PPXPCClientPipelinedBatchQueryContext *)self queue];
  v5 = [v3 initWithFormat:@"<PPXPCClientPipelinedBatchQueryContext q:%s s:%d>", dispatch_queue_get_label(queue), self->_stop];

  return v5;
}

- (void)finalizeCallWithSuccess:(BOOL)success error:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_calledFinalizeBlock._Value, 1u) & 1) == 0)
  {
    errorCopy = error;
    v6 = pp_xpc_client_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_debug_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEBUG, "calling finalize block for context: %@", &v8, 0xCu);
    }

    (*(self->_finalizeCall + 2))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setFinalizeCall:(id)call
{
  atomic_store(0, &self->_calledFinalizeBlock);
  v4 = MEMORY[0x1AC568040](call, a2);
  finalizeCall = self->_finalizeCall;
  self->_finalizeCall = v4;

  MEMORY[0x1EEE66BB8]();
}

@end