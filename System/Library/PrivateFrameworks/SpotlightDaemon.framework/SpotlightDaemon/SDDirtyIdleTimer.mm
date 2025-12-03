@interface SDDirtyIdleTimer
- (SDDirtyIdleTimer)initWithQueue:(id)queue timeoutBlock:(id)block;
- (id)description;
- (void)_stop;
- (void)cancel;
- (void)dirty;
@end

@implementation SDDirtyIdleTimer

- (SDDirtyIdleTimer)initWithQueue:(id)queue timeoutBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = SDDirtyIdleTimer;
  v9 = [(SDDirtyIdleTimer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = MEMORY[0x2383760E0](blockCopy);
    block = v10->_block;
    v10->_block = v11;

    *&v10->_idleTimeout = xmmword_231AED8C0;
  }

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@:%p dc:%u rc:%d st:%llu ito:%llu dto:%lld", objc_opt_class(), self, self->_dirtyCount, self->_resetCount, self->_idleStartTime, self->_idleTimeout, self->_dirtyTimeout];

  return v2;
}

- (void)_stop
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "%@ stopped", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dirty
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SDDirtyIdleTimer_dirty__block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  v3 = queue;
  v4 = qos_class_self();
  if (v4 < 0x1A)
  {
    v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  }

  else
  {
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
  }

  v6 = v5;
  dispatch_async(v3, v5);
}

void __25__SDDirtyIdleTimer_dirty__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  ++*(*(a1 + 32) + 12);
  if (*(*(a1 + 32) + 48))
  {
    if (dispatch_time(0, 0) - *(*v1 + 56) >= *(*v1 + 24))
    {
      v14 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __25__SDDirtyIdleTimer_dirty__block_invoke_cold_1(v1, v14);
      }
    }

    else
    {
      ++*(*v1 + 8);
      v2 = logForCSLogCategoryIndex();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *v1;
        *buf = 138412290;
        v19 = v3;
        _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "%@ reset", buf, 0xCu);
      }

      v4 = *(*v1 + 48);
      v5 = dispatch_time(0, *(*v1 + 16));
      dispatch_source_set_timer(v4, v5, *(*v1 + 16), *(*v1 + 16));
    }
  }

  else
  {
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *v1;
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_INFO, "%@ start", buf, 0xCu);
    }

    v8 = os_transaction_create();
    v9 = *(*v1 + 64);
    *(*v1 + 64) = v8;

    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*v1 + 32));
    v11 = *(*v1 + 48);
    *(*v1 + 48) = v10;

    objc_initWeak(buf, *v1);
    v12 = *v1;
    v13 = *(*v1 + 48);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __25__SDDirtyIdleTimer_dirty__block_invoke_2;
    v16[3] = &unk_2789373E8;
    v16[4] = v12;
    objc_copyWeak(&v17, buf);
    dispatch_source_set_event_handler(v13, v16);
    *(*v1 + 56) = dispatch_time(0, *(*v1 + 16));
    dispatch_source_set_timer(*(*v1 + 48), *(*v1 + 56), *(*v1 + 16), *(*v1 + 16));
    dispatch_resume(*(*v1 + 48));
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __25__SDDirtyIdleTimer_dirty__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 2048;
    v11 = dispatch_time(0, 0);
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "%@ %llu complete", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained block];
    v6[2]();

    [v5 _stop];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SDDirtyIdleTimer_cancel__block_invoke;
  block[3] = &unk_278934050;
  block[4] = self;
  v3 = queue;
  v4 = qos_class_self();
  if (v4 < 0x1A)
  {
    v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  }

  else
  {
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v4, 0, block);
  }

  v6 = v5;
  dispatch_async(v3, v5);
}

void __25__SDDirtyIdleTimer_dirty__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "%@ dirty", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end