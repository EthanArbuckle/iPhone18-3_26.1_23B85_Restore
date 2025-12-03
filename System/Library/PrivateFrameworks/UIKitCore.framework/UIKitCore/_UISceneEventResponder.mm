@interface _UISceneEventResponder
- (_UISceneEventResponder)init;
- (void)_enqueueCommitResponse:(uint64_t)response forPhase:;
@end

@implementation _UISceneEventResponder

- (_UISceneEventResponder)init
{
  v7.receiver = self;
  v7.super_class = _UISceneEventResponder;
  v2 = [(_UISceneEventResponder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 2);
    *(v2 + 8) = 0u;

    dataLock_last = v3->_dataLock_last;
    v3->_dataLock_last = 0;
  }

  return v3;
}

- (void)_enqueueCommitResponse:(uint64_t)response forPhase:
{
  if (self)
  {
    v5 = a2;
    if (pthread_main_np() != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:self file:@"_UISceneEventResponder.m" lineNumber:71 description:@"Call must be made on main thread"];
    }

    os_unfair_lock_lock((self + 12));
    v6 = [_UISceneEventResponse alloc];
    v7 = v5;
    if (v6)
    {
      v28.receiver = v6;
      v28.super_class = _UISceneEventResponse;
      v8 = objc_msgSendSuper2(&v28, sel_init);
      v9 = v8;
      if (v8)
      {
        v10 = v8[1];
        v8[1] = 0;

        v11 = [v7 copy];
        v12 = v9[2];
        v9[2] = v11;

        *(v9 + 24) = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v14 = (self + 24);
    v13 = *(self + 24);
    if (v13)
    {
      v15 = (v13 + 8);
    }

    else
    {
      if (*(self + 16))
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:self file:@"_UISceneEventResponder.m" lineNumber:79 description:@"if there's no _last then there can't be a _first either"];
      }

      v15 = (self + 24);
      v14 = (self + 16);
    }

    objc_storeStrong(v15, v9);
    objc_storeStrong(v14, v9);
    os_unfair_lock_unlock((self + 12));
    [MEMORY[0x1E6979518] activate];
    v16 = MEMORY[0x1E6979518];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __58___UISceneEventResponder__enqueueCommitResponse_forPhase___block_invoke;
    v25 = &unk_1E70F35B8;
    selfCopy = self;
    v17 = v9;
    v27 = v17;
    if (([v16 addCommitHandler:&v22 forPhase:response] & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      currentPhase = [MEMORY[0x1E6979518] currentPhase];
      [currentHandler3 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:self file:@"_UISceneEventResponder.m" lineNumber:88 description:{@"failed to register commit handler for phase = %i (current is %i)", response, currentPhase, v22, v23, v24, v25, selfCopy}];
    }
  }
}

@end