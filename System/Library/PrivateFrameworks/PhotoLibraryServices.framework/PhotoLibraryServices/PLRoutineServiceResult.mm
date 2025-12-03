@interface PLRoutineServiceResult
- (NSError)error;
- (PLRoutineServiceResult)init;
- (id)result;
- (void)receivedReplyWithResult:(id)result error:(id)error;
@end

@implementation PLRoutineServiceResult

- (void)receivedReplyWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v6 = errorCopy;
  v7 = resultCopy;
  PLRunWithUnfairLock();
  dispatch_semaphore_signal(self->_semaphore);
}

void __56__PLRoutineServiceResult_receivedReplyWithResult_error___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = [*(a1 + 48) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

- (NSError)error
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (id)result
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (PLRoutineServiceResult)init
{
  v8.receiver = self;
  v8.super_class = PLRoutineServiceResult;
  v2 = [(PLRoutineServiceResult *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_semaphore_create(0);
    semaphore = v3->_semaphore;
    v3->_semaphore = v4;

    v6 = v3;
  }

  return v3;
}

@end