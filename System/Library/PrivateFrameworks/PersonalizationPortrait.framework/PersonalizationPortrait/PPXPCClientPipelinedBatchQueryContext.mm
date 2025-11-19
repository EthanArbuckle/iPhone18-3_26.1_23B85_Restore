@interface PPXPCClientPipelinedBatchQueryContext
- (id)description;
- (void)finalizeCallWithSuccess:(BOOL)a3 error:(id)a4;
- (void)setFinalizeCall:(id)a3;
@end

@implementation PPXPCClientPipelinedBatchQueryContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(PPXPCClientPipelinedBatchQueryContext *)self queue];
  v5 = [v3 initWithFormat:@"<PPXPCClientPipelinedBatchQueryContext q:%s s:%d>", dispatch_queue_get_label(v4), self->_stop];

  return v5;
}

- (void)finalizeCallWithSuccess:(BOOL)a3 error:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_calledFinalizeBlock._Value, 1u) & 1) == 0)
  {
    v5 = a4;
    v6 = pp_xpc_client_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_debug_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEBUG, "calling finalize block for context: %@", &v8, 0xCu);
    }

    (*(self->_finalizeCall + 2))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setFinalizeCall:(id)a3
{
  atomic_store(0, &self->_calledFinalizeBlock);
  v4 = MEMORY[0x1AC568040](a3, a2);
  finalizeCall = self->_finalizeCall;
  self->_finalizeCall = v4;

  MEMORY[0x1EEE66BB8]();
}

@end