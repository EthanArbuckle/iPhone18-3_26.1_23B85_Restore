@interface _UIAfterCACommitQueue
- (BOOL)flush;
- (_UIAfterCACommitQueue)init;
- (void)_enqueueCommitResponse:(uint64_t)a3 forPhase:;
@end

@implementation _UIAfterCACommitQueue

- (_UIAfterCACommitQueue)init
{
  v7.receiver = self;
  v7.super_class = _UIAfterCACommitQueue;
  v2 = [(_UIAfterCACommitQueue *)&v7 init];
  v3 = v2;
  if (v2)
  {
    first = v2->_first;
    v2->_first = 0;

    last = v3->_last;
    v3->_last = 0;
  }

  return v3;
}

- (BOOL)flush
{
  if (pthread_main_np() != 1)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIAfterCACommitQueue.m" lineNumber:212 description:@"Call must be made on main thread"];
  }

  p_first = &self->_first;
  v5 = self->_first;
  while (*p_first)
  {
    v6 = 1;
    atomic_compare_exchange_strong_explicit(&(*p_first)->_transactionCleared, &v6, v6, memory_order_relaxed, memory_order_relaxed);
    first = *p_first;
    if (v6 != 1)
    {
      if (first)
      {
        goto LABEL_9;
      }

      break;
    }

    objc_storeStrong(&self->_first, first->_next);
  }

  last = self->_last;
  self->_last = 0;

  first = self->_first;
LABEL_9:
  v9 = first;
  if (v5 == v9)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = 0;
    p_isa = &v5->super.isa;
    do
    {
      v5 = p_isa[1];
      v10 |= [p_isa run];
      v12 = p_isa[1];
      p_isa[1] = 0;

      p_isa = &v5->super.isa;
    }

    while (v5 != v9);
  }

  return v10 & 1;
}

- (void)_enqueueCommitResponse:(uint64_t)a3 forPhase:
{
  if (a1)
  {
    v5 = a2;
    if (pthread_main_np() != 1)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:a1 file:@"_UIAfterCACommitQueue.m" lineNumber:188 description:@"Call must be made on main thread"];
    }

    v6 = [[_UIAfterCACommitBlock alloc] _initWithBlock:v5];

    v8 = (a1 + 16);
    v7 = *(a1 + 16);
    if (v7)
    {
      v9 = (v7 + 8);
    }

    else
    {
      if (*(a1 + 8))
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:a1 file:@"_UIAfterCACommitQueue.m" lineNumber:195 description:@"if there's no _last then there can't be a _first either"];
      }

      v9 = (a1 + 16);
      v8 = (a1 + 8);
    }

    objc_storeStrong(v9, v6);
    objc_storeStrong(v8, v6);
    [MEMORY[0x1E6979518] activate];
    v10 = MEMORY[0x1E6979518];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __57___UIAfterCACommitQueue__enqueueCommitResponse_forPhase___block_invoke;
    v19 = &unk_1E70F35B8;
    v11 = v6;
    v20 = v11;
    v21 = a1;
    if (([v10 addCommitHandler:&v16 forPhase:a3] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E6979518] currentPhase];
      [v13 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:a1 file:@"_UIAfterCACommitQueue.m" lineNumber:208 description:{@"failed to register commit handler for phase = %i (current is %i)", a3, v14, v16, v17, v18, v19}];
    }
  }
}

@end