@interface MFTaskAssertion
- (MFTaskAssertion)initWithName:(id)a3 expiration:(double)a4 preventIdleSleep:(BOOL)a5;
- (void)cancelTimer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation MFTaskAssertion

- (MFTaskAssertion)initWithName:(id)a3 expiration:(double)a4 preventIdleSleep:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v25.receiver = self;
  v25.super_class = MFTaskAssertion;
  v9 = [(MFTaskAssertion *)&v25 init];
  if (v9)
  {
    if (v5)
    {
      v10 = 3;
    }

    else
    {
      v10 = 7;
    }

    v11 = objc_alloc(MEMORY[0x277CEEEA8]);
    v12 = getpid();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __60__MFTaskAssertion_initWithName_expiration_preventIdleSleep___block_invoke;
    v23[3] = &unk_279E343F0;
    v24 = v8;
    v13 = [v11 initWithPID:v12 flags:v10 reason:10004 name:v24 withHandler:v23];
    v14 = *(v9 + 1);
    *(v9 + 1) = v13;

    if (a4 > 0.0)
    {
      v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      v16 = *(v9 + 2);
      *(v9 + 2) = v15;

      v17 = dispatch_time(0, (a4 * 1000000000.0));
      dispatch_source_set_timer(*(v9 + 2), v17, 0xFFFFFFFFFFFFFFFFLL, 0);
      v18 = *(v9 + 2);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __60__MFTaskAssertion_initWithName_expiration_preventIdleSleep___block_invoke_1;
      v21[3] = &unk_279E33588;
      v22 = v9;
      dispatch_source_set_event_handler(v18, v21);
      dispatch_resume(*(v9 + 2));
    }

    v19 = v9;
  }

  return v9;
}

void __60__MFTaskAssertion_initWithName_expiration_preventIdleSleep___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = vm_imap_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      v7 = "Acquired task assertion: %{public}@";
LABEL_6:
      _os_log_impl(&dword_2720B1000, v4, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v10 = 138543362;
    v11 = v8;
    v7 = "could not aquire task assertion: %{public}@";
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)invalidate
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = vm_imap_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BKSProcessAssertion *)self->_assertion name];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating task assertion: %{public}@", &v6, 0xCu);
  }

  [(BKSProcessAssertion *)self->_assertion invalidate];
  [(MFTaskAssertion *)self cancelTimer];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(MFTaskAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = MFTaskAssertion;
  [(MFTaskAssertion *)&v3 dealloc];
}

@end