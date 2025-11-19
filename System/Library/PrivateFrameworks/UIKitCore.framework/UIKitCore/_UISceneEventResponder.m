@interface _UISceneEventResponder
- (_UISceneEventResponder)init;
- (void)_enqueueCommitResponse:(uint64_t)a3 forPhase:;
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

- (void)_enqueueCommitResponse:(uint64_t)a3 forPhase:
{
  if (a1)
  {
    v5 = a2;
    if (pthread_main_np() != 1)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:a1 file:@"_UISceneEventResponder.m" lineNumber:71 description:@"Call must be made on main thread"];
    }

    os_unfair_lock_lock((a1 + 12));
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

    v14 = (a1 + 24);
    v13 = *(a1 + 24);
    if (v13)
    {
      v15 = (v13 + 8);
    }

    else
    {
      if (*(a1 + 16))
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:a1 file:@"_UISceneEventResponder.m" lineNumber:79 description:@"if there's no _last then there can't be a _first either"];
      }

      v15 = (a1 + 24);
      v14 = (a1 + 16);
    }

    objc_storeStrong(v15, v9);
    objc_storeStrong(v14, v9);
    os_unfair_lock_unlock((a1 + 12));
    [MEMORY[0x1E6979518] activate];
    v16 = MEMORY[0x1E6979518];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __58___UISceneEventResponder__enqueueCommitResponse_forPhase___block_invoke;
    v25 = &unk_1E70F35B8;
    v26 = a1;
    v17 = v9;
    v27 = v17;
    if (([v16 addCommitHandler:&v22 forPhase:a3] & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E6979518] currentPhase];
      [v19 handleFailureInMethod:sel__enqueueCommitResponse_forPhase_ object:a1 file:@"_UISceneEventResponder.m" lineNumber:88 description:{@"failed to register commit handler for phase = %i (current is %i)", a3, v20, v22, v23, v24, v25, v26}];
    }
  }
}

@end