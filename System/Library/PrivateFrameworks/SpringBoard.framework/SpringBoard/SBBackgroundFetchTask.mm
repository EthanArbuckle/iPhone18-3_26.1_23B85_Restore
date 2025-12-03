@interface SBBackgroundFetchTask
- (id)description;
- (id)initForAppInfo:(void *)info withCompletion:;
- (void)dealloc;
- (void)execute;
- (void)finishWithResult:(uint64_t)result;
@end

@implementation SBBackgroundFetchTask

- (void)execute
{
  v31 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_finished && !self->_lock_assertion)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Executing %{public}@", buf, 0xCu);
    }

    v4 = MEMORY[0x277D47008];
    processIdentity = [(FBSApplicationInfo *)self->_appInfo processIdentity];
    v22 = [v4 targetWithProcessIdentity:processIdentity];

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Background Content Fetching (%d)", self->_sequenceNumber];
    v6 = objc_alloc(MEMORY[0x277D46DB8]);
    v7 = [MEMORY[0x277D46FD0] withReason:10006];
    v28[0] = v7;
    grantUserInitiated = [MEMORY[0x277D46DF0] grantUserInitiated];
    v28[1] = grantUserInitiated;
    grant = [MEMORY[0x277D46E70] grant];
    v28[2] = grant;
    grant2 = [MEMORY[0x277D46EF8] grant];
    v28[3] = grant2;
    grantWithBackgroundPriority = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
    v28[4] = grantWithBackgroundPriority;
    v12 = [MEMORY[0x277D46FC0] grantWithResistance:30];
    v28[5] = v12;
    v13 = [MEMORY[0x277D46E48] terminateAfterInterval:30.0];
    v28[6] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:7];
    v15 = [v6 initWithExplanation:v21 target:v22 attributes:v14];
    lock_assertion = self->_lock_assertion;
    self->_lock_assertion = v15;

    objc_initWeak(buf, self);
    v17 = self->_lock_assertion;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __32__SBBackgroundFetchTask_execute__block_invoke;
    v26[3] = &unk_2783C4550;
    objc_copyWeak(&v27, buf);
    [(RBSAssertion *)v17 setInvalidationHandler:v26];
    v18 = self->_lock_assertion;
    v19 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__SBBackgroundFetchTask_execute__block_invoke_13;
    block[3] = &unk_2783A92D8;
    v24 = v18;
    selfCopy2 = self;
    v20 = v18;
    dispatch_async(v19, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __32__SBBackgroundFetchTask_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32__SBBackgroundFetchTask_execute__block_invoke_cold_1(WeakRetained, v4, v6);
    }

    [(SBBackgroundFetchTask *)WeakRetained finishWithResult:?];
  }
}

void __32__SBBackgroundFetchTask_execute__block_invoke_13(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 acquireWithError:&v6];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __32__SBBackgroundFetchTask_execute__block_invoke_13_cold_1(a1, v4, v5);
    }

    [(SBBackgroundFetchTask *)*(a1 + 40) finishWithResult:?];
  }
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBBackgroundMultitaskingManager.m" lineNumber:135 description:{@"deallocated without being finished: %@", a2}];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  processIdentity = [(FBSApplicationInfo *)self->_appInfo processIdentity];
  v6 = [v3 stringWithFormat:@"<%@: %@ seq: %d>", v4, processIdentity, self->_sequenceNumber];;

  return v6;
}

- (id)initForAppInfo:(void *)info withCompletion:
{
  v6 = a2;
  infoCopy = info;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = SBBackgroundFetchTask;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    self = v8;
    if (v8)
    {
      *(v8 + 2) = 0;
      v9 = [infoCopy copy];
      v10 = self[5];
      self[5] = v9;

      objc_storeStrong(self + 2, a2);
      *(self + 6) = +[SBBackgroundFetchTask _nextSequenceNumber];
    }
  }

  return self;
}

- (void)finishWithResult:(uint64_t)result
{
  v13 = *MEMORY[0x277D85DE8];
  if (result)
  {
    os_unfair_lock_lock((result + 8));
    if (*(result + 48) == 1)
    {

      os_unfair_lock_unlock((result + 8));
    }

    else
    {
      v4 = SBLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if (a2 >= 6)
        {
          v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown - %lu)", a2];
        }

        else
        {
          v5 = off_2783C4598[a2];
        }

        *buf = 138543618;
        resultCopy = result;
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Finished %{public}@ with result: %{public}@", buf, 0x16u);
      }

      *(result + 48) = 1;
      [*(result + 32) invalidate];
      v6 = *(result + 32);
      *(result + 32) = 0;

      v7 = MEMORY[0x223D6F7F0](*(result + 40));
      v8 = *(result + 40);
      *(result + 40) = 0;

      os_unfair_lock_unlock((result + 8));
      if (v7)
      {
        v7[2](v7, result, a2);
      }
    }
  }
}

void __32__SBBackgroundFetchTask_execute__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_21ED4E000, a2, a3, "Assertion for %{public}@ was invalidated: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __32__SBBackgroundFetchTask_execute__block_invoke_13_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_21ED4E000, a2, a3, "Error acquiring assertion for %{public}@: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end