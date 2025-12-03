@interface PKPGVTransitionCoordinator
+ (uint64_t)connectWithRequest:(uint64_t)request;
- (id)becomeInteractiveForReceiver:(id)receiver;
- (unsigned)layout:(id)layout transition:(id)transition stateForSendableItem:(unsigned __int8)item;
- (void)_assertConnection:(char)connection deallocating:;
- (void)_assertLayout:(char)layout deallocating:;
- (void)_assertReceiver:(char)receiver deallocating:;
- (void)_assertSender:(char)sender deallocating:;
- (void)_assertTransceiver:(char)transceiver deallocating:;
- (void)_assertTransition:(uint64_t)transition;
- (void)_beginTransitionWithContext:(char)context dirty:(void *)dirty completion:(void *)completion subtransition:;
- (void)_finishInteractionForTransition:(uint64_t)transition;
- (void)_finishLayoutCoordinatorActionForTransition:(uint64_t)transition;
- (void)_finishSending:(int)sending detached:(void *)detached forTransition:;
- (void)_subtransitionDidFinishForTransition:(uint64_t)transition;
- (void)_transitionDidMoveSendableItem:(uint64_t)item;
- (void)_updateStateForTransitionInteractive:(uint64_t)interactive;
- (void)beginSubtransitionForTransition:(id)transition sending:(unsigned __int8)sending animated:(BOOL)animated;
- (void)connectionDidTerminate:(id)terminate;
- (void)coordinatorForConnection:(void *)connection;
- (void)coordinatorForLayout:(void *)layout;
- (void)coordinatorForReceiver:(void *)receiver;
- (void)coordinatorForSender:(void *)sender;
- (void)coordinatorForTransceiver:(void *)transceiver;
- (void)dealloc;
- (void)interruptSubtransitionForTransition:(id)transition sending:(unsigned __int8)sending;
- (void)receiver:(id)receiver updateInteractionToProgress:(double)progress;
- (void)senderDidTapView:(id)view;
- (void)tombstoneConnection:(id)connection;
- (void)transceiver:(id)transceiver invertWithTransitionContext:(id)context completion:(id)completion;
- (void)transceiver:(id)transceiver transition:(id)transition setNeedsStateUpdateInteractive:(BOOL)interactive;
@end

@implementation PKPGVTransitionCoordinator

+ (uint64_t)connectWithRequest:(uint64_t)request
{
  v2 = a2;
  result = objc_opt_self();
  if (v2)
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = v2[3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke;
    v12[3] = &unk_1E8025600;
    v13 = v5;
    v14 = v6;
    v15 = v2;
    v16 = v4;
    v7 = v4;
    v8 = v2;
    v9 = v6;
    v10 = v5;
    v11 = [v7 connectTransitionCoordinatorToSender:v12];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke_2;
    v7[3] = &unk_1E80255D8;
    v4 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = v3;
    v11 = a1[7];
    v12 = a1[4];
    v5 = [v4 connectTransitionCoordinatorToReceiver:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke_3;
    v7[3] = &unk_1E80255B0;
    v4 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = v3;
    v11 = a1[7];
    v12 = a1[8];
    v13 = a1[4];
    v5 = [v4 connectTransitionCoordinatorToLayout:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

PKPGVTransitionCoordinator *__49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v26 = 0;
    goto LABEL_21;
  }

  v6 = [PKPGVTransitionCoordinatorState alloc];
  v7 = v6;
  v8 = *(a1 + 32);
  if (!v8)
  {
    if (v6)
    {
      goto LABEL_23;
    }

    v2 = 0;
    goto LABEL_26;
  }

  v3 = *(v8 + 56);
  v9 = v3;
  v2 = v9;
  if (!v7)
  {
LABEL_26:
    v11 = 0;
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_23;
  }

  v34.receiver = v7;
  v34.super_class = PKPGVTransitionCoordinatorState;
  v10 = objc_msgSendSuper2(&v34, sel_init);
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 1, v3);
  }

LABEL_7:

  v7 = [PKPGVTransitionCoordinator alloc];
  v12 = *(a1 + 48);
  v3 = *(a1 + 40);
  v13 = v12;
  v14 = v5;
  v15 = v11;
  v2 = v15;
  if (v7)
  {
    if (!v3 || !v13 || !v15)
    {
      goto LABEL_23;
    }

    v34.receiver = v7;
    v34.super_class = PKPGVTransitionCoordinator;
    v16 = objc_msgSendSuper2(&v34, sel_init);
    v7 = v16;
    if (v16)
    {
      v16->_unsafeLayout = v14;
      objc_storeWeak(&v16->_layout, v14);
      objc_storeStrong(&v7->_state, v11);
      *&v7->_navigationItem.state = 0;
      v7->_navigationItem.completed = 0;
      v7->_navigationItem.identifier = 0;
      v7->_navigationItem.interrupted = 0;
      *&v7->_view.state = 0;
      v7->_view.completed = 0;
      v7->_view.identifier = 0;
      v7->_view.interrupted = 0;
      v7->_unsafeSender = v3;
      objc_storeWeak(&v7->_sender, v3);
      v7->_unsafeReceiver = v13;
      objc_storeWeak(&v7->_receiver, v13);
    }
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke_4;
  v28[3] = &unk_1E8011E38;
  v3 = v7;
  v29 = v3;
  v30 = *(a1 + 32);
  v31 = *(a1 + 56);
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  v17 = v28;
  v34.receiver = MEMORY[0x1E69E9820];
  v34.super_class = 3221225472;
  v35 = ___ZL21PerformIsolatedActionP20RestrictedActionFlagU13block_pointerFvvE_block_invoke;
  v36 = &unk_1E8025808;
  v18 = v17;
  v37 = v18;
  v19 = &v34;
  if (v7->_restrictedActions)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  v7->_restrictedActions = -1;
  v21 = objc_autoreleasePoolPush();
  (v35)(v20, v7->_restrictedActions);
  objc_autoreleasePoolPop(v21);
  v7->_restrictedActions = 0;

  v7 = *(a1 + 32);
  if (!v7)
  {
LABEL_24:
    v22 = 0;
    goto LABEL_16;
  }

  v22 = v7->_unsafeReceiver;
  v23 = _Block_copy(*&v7->_view);
  view = v7->_view;
  v7->_view = 0;

  v7 = _Block_copy(v23);
LABEL_16:
  [(PKPGVTransitionCoordinator *)v3 _beginTransitionWithContext:v22 dirty:1 completion:v7 subtransition:0];

  if (v3->_invalidated)
  {
    v25 = 0;
  }

  else
  {
    v25 = v3;
  }

  v26 = v25;

LABEL_21:
  return v26;
}

uint64_t __49__PKPGVTransitionCoordinator_connectWithRequest___block_invoke_4(uint64_t a1)
{
  if (*(*(a1 + 32) + 88))
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 48);
      goto LABEL_4;
    }
  }

  v3 = 0;
LABEL_4:
  objc_storeStrong((*(v1 + 32) + 88), v3);
  [*(v1 + 48) transitionCoordinatorWillConnectSender:*(v1 + 32) forRequest:*(v1 + 40)];
  [*(v1 + 56) transitionCoordinatorWillConnectReceiver:*(v1 + 32) forRequest:*(v1 + 40)];
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);

  return [v4 transitionCoordinatorWillConnectLayout:v5 forRequest:v6];
}

- (void)_beginTransitionWithContext:(char)context dirty:(void *)dirty completion:(void *)completion subtransition:
{
  v9 = a2;
  dirtyCopy = dirty;
  completionCopy = completion;
  if (!self)
  {
    goto LABEL_30;
  }

  WeakRetained = objc_loadWeakRetained((self + 24));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v45 = completionCopy;
    v14 = objc_loadWeakRetained((self + 40));
    if (v14)
    {
      v15 = v14;
      v16 = objc_loadWeakRetained((self + 56));
      if (v16)
      {
        v17 = v16;
        if (v9)
        {
          if (!*(self + 8))
          {
            v44 = v15 != v16;
            if (*(self + 98) != 1)
            {
              v18 = [PKPGVTransition alloc];
              v43 = v9;
              v19 = v9;
              v20 = dirtyCopy;
              v41 = dirtyCopy;
              if (v18 && (v60.receiver = v18, v60.super_class = PKPGVTransition, (v21 = objc_msgSendSuper2(&v60, sel_init)) != 0))
              {
                v22 = v21;
                *(v21 + 18) = 1;
                objc_storeStrong(v21 + 5, a2);
                *(v22 + 34) = context;
                v23 = *(v19 + 9);
                *(v22 + 32) = v23;
                v24 = 1.0;
                if (v23 == 1)
                {
                  v24 = v19[2];
                }

                v22[6] = v24;
                *(v22 + 33) = *(v19 + 10);
                if (v20)
                {
                  v25 = v20;
                  v26 = v25;
                  if (*(v22 + 18) == 1)
                  {
                    v27 = *(v22 + 3);
                    if (!v27)
                    {
                      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      v29 = *(v22 + 3);
                      *(v22 + 3) = v28;

                      v27 = *(v22 + 3);
                    }

                    v30 = _Block_copy(v26);
                    [v27 addObject:v30];
                  }

                  else
                  {
                    (*(v25 + 2))(v25, *(v22 + 20));
                  }
                }

                v31 = *(v22 + 32);
                if (*(v22 + 33) == 1)
                {
                  *(self + 98) = 1;
                }

                if (*(v22 + 18) != 1)
                {
                  goto LABEL_31;
                }

                if (*(v22 + 19) == 1)
                {
                  goto LABEL_31;
                }

                v32 = (*(v22 + 8))++ + 1;
                if ((v32 & 0x10000) != 0)
                {
                  goto LABEL_31;
                }

                v42 = 0;
              }

              else
              {

                v22 = 0;
                v31 = 0;
                v42 = 1;
              }

              v60.receiver = 0;
              v60.super_class = &v60;
              v61 = 0x3032000000;
              v62 = __Block_byref_object_copy__67;
              v63 = __Block_byref_object_dispose__67;
              v64 = 0;
              v47[0] = MEMORY[0x1E69E9820];
              v47[1] = 3221225472;
              v48 = __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke;
              v49 = &unk_1E8025678;
              selfCopy = self;
              v33 = v22;
              v51 = v33;
              contextCopy = context;
              v34 = v15;
              v52 = v34;
              v58 = v44;
              v35 = v17;
              v53 = v35;
              v56 = &v60;
              v36 = v13;
              v54 = v36;
              v59 = v31;
              completionCopy = v45;
              v55 = v45;
              v37 = v47;
              if (!*(self + 96))
              {
                v38 = v37;
                *(self + 96) = 2;
                v39 = objc_autoreleasePoolPush();
                v48(v38, *(self + 96));
                v9 = v43;
                objc_autoreleasePoolPop(v39);
                *(self + 96) = 0;

                if ((v42 & 1) != 0 || (v40 = v33[8] - 1, --v33[8], v40 < 0x10000))
                {
                  [(PKPGVTransitionCoordinator *)self _subtransitionDidFinishForTransition:v33];

                  _Block_object_dispose(&v60, 8);
                  dirtyCopy = v41;
LABEL_30:

                  return;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_31:
  __break(1u);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPGVTransitionCoordinator;
  [(PKPGVTransitionCoordinator *)&v2 dealloc];
}

- (void)_assertConnection:(char)connection deallocating:
{
  v5 = a2;
  if (self)
  {
    if (!v5 || *(self + 99) == 1)
    {
      goto LABEL_21;
    }

    if ((connection & 1) == 0)
    {
      v14 = v5;
      WeakRetained = objc_loadWeakRetained((self + 24));
      if (WeakRetained)
      {
        v7 = WeakRetained;
        v8 = objc_loadWeakRetained((self + 40));
        if (v8)
        {
          v9 = v8;
          v10 = objc_loadWeakRetained((self + 56));
          if (v10)
          {
            if (v7 == v14 || v9 == v14 || v10 == v14)
            {

              v5 = v14;
              goto LABEL_12;
            }
          }
        }
      }

LABEL_21:
      __break(1u);
      return;
    }

    v11 = *(self + 32);
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = *(self + 48);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *(self + 64);
    if (!v13 || v11 != v5 && v12 != v5 && v13 != v5)
    {
      goto LABEL_21;
    }
  }

LABEL_12:
}

- (void)_assertLayout:(char)layout deallocating:
{
  v5 = a2;
  if (self)
  {
    if (!v5 || *(self + 99) == 1)
    {
      goto LABEL_14;
    }

    if ((layout & 1) == 0)
    {
      v9 = v5;
      WeakRetained = objc_loadWeakRetained((self + 24));

      if (WeakRetained == v9)
      {
        v7 = objc_loadWeakRetained((self + 40));

        if (v7)
        {
          v8 = objc_loadWeakRetained((self + 56));

          v5 = v9;
          if (v8)
          {
            goto LABEL_8;
          }
        }
      }

LABEL_14:
      __break(1u);
      return;
    }

    if (*(self + 32) != v5 || !*(self + 48) || !*(self + 64))
    {
      goto LABEL_14;
    }
  }

LABEL_8:
}

- (void)_assertTransceiver:(char)transceiver deallocating:
{
  v5 = a2;
  if (self)
  {
    if (!v5 || *(self + 99) == 1)
    {
      goto LABEL_19;
    }

    if ((transceiver & 1) == 0)
    {
      v12 = v5;
      WeakRetained = objc_loadWeakRetained((self + 24));

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained((self + 40));
        if (v7)
        {
          v8 = v7;
          v9 = objc_loadWeakRetained((self + 56));
          if (v9)
          {
            if (v8 == v12 || v9 == v12)
            {

              v5 = v12;
              goto LABEL_11;
            }
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    if (!*(self + 32))
    {
      goto LABEL_19;
    }

    v10 = *(self + 48);
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = *(self + 64);
    if (!v11 || v10 != v5 && v11 != v5)
    {
      goto LABEL_19;
    }
  }

LABEL_11:
}

- (void)_assertSender:(char)sender deallocating:
{
  v5 = a2;
  if (self)
  {
    if (!v5 || *(self + 99) == 1)
    {
      goto LABEL_14;
    }

    if ((sender & 1) == 0)
    {
      v9 = v5;
      WeakRetained = objc_loadWeakRetained((self + 24));

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained((self + 40));

        if (v7 == v9)
        {
          v8 = objc_loadWeakRetained((self + 56));

          v5 = v9;
          if (v8)
          {
            goto LABEL_8;
          }
        }
      }

LABEL_14:
      __break(1u);
      return;
    }

    if (!*(self + 32) || *(self + 48) != v5 || !*(self + 64))
    {
      goto LABEL_14;
    }
  }

LABEL_8:
}

- (void)_assertReceiver:(char)receiver deallocating:
{
  v5 = a2;
  if (self)
  {
    if (!v5 || *(self + 99) == 1)
    {
      goto LABEL_14;
    }

    if ((receiver & 1) == 0)
    {
      v9 = v5;
      WeakRetained = objc_loadWeakRetained((self + 24));

      if (WeakRetained)
      {
        v7 = objc_loadWeakRetained((self + 40));

        if (v7)
        {
          v8 = objc_loadWeakRetained((self + 56));

          v5 = v9;
          if (v8 == v9)
          {
            goto LABEL_8;
          }
        }
      }

LABEL_14:
      __break(1u);
      return;
    }

    if (!*(self + 32) || !*(self + 48) || *(self + 64) != v5)
    {
      goto LABEL_14;
    }
  }

LABEL_8:
}

- (void)_assertTransition:(uint64_t)transition
{
  v3 = a2;
  if (transition && (!v3 || *(transition + 8) != v3 || *(transition + 99) == 1))
  {
    __break(1u);
  }

  else
  {
  }
}

void *__55__PKPGVTransitionCoordinator__terminateFromConnection___block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (v2)
  {
    if ((v2[18] & 1) == 0 || v2[19] == 1 || v2[20] == 1)
    {
      __break(1u);
      return result;
    }

    v2[19] = 1;
  }

  v3 = result[5];
  if (v3 && v3 != v1[6])
  {
    [v3 terminateTransitionCoordinator:v1[7]];
  }

  v4 = v1[8];
  if (v4 && v4 != v1[6] && v4 != v1[5] && v4 != v1[9])
  {
    [v4 terminateTransitionCoordinator:v1[7]];
  }

  result = v1[9];
  if (result && result != v1[6] && result != v1[5])
  {
    v5 = v1[7];

    return [result terminateTransitionCoordinator:v5];
  }

  return result;
}

void __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke(uint64_t a1, int a2)
{
  v3 = a1;
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  *(v3[4] + 16) = 0;
  v4 = v3[4];
  if (*(v3 + 88) == 1)
  {
    if (v4[82] || v4[81] == 1)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v4[82] & 1) == 0)
    {
      goto LABEL_29;
    }

    v4[81] = 1;
    v4 = v3[4];
    if ((v3[11] & 1) == 0)
    {
      if ((v4[74] & 1) == 0)
      {
        goto LABEL_29;
      }

      v4[73] = 1;
      goto LABEL_12;
    }
  }

  if (v4[74] == 1 || v4[73] == 1)
  {
    goto LABEL_29;
  }

LABEL_12:
  v5 = v3[5];
  if (!v5)
  {
    goto LABEL_30;
  }

  if (*(v5 + 18) == 1 && *(v5 + 19) != 1)
  {
    v6 = (*(v5 + 16))++ + 1;
    if ((v6 & 0x10000) == 0)
    {
      v7 = v3[5];
      goto LABEL_17;
    }
  }

  do
  {
    while (1)
    {
      do
      {
LABEL_29:
        __break(1u);
LABEL_30:
        v7 = 0;
LABEL_17:
        [v3[6] transitionCoordinator:v3[4] willBeginTransition:v7 dirty:{*(v3 + 88), v21}];
        if (*(v3 + 89) == 1)
        {
          [v3[7] transitionCoordinator:v3[4] willBeginTransition:v3[5] dirty:*(v3 + 88)];
        }

        v8 = [v3[8] transitionCoordinator:v3[4] prepareTransition:v3[5] dirty:*(v3 + 88)];
        v9 = *(v3[10] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      while (!*(*(v3[10] + 8) + 40));
      [v3[6] transitionCoordinator:v3[4] didBeginTransition:v3[5] dirty:*(v3 + 88) withState:?];
      if (*(v3 + 89) == 1)
      {
        [v3[7] transitionCoordinator:v3[4] didBeginTransition:v3[5] dirty:*(v3 + 88) withState:*(*(v3[10] + 8) + 40)];
      }

      v11 = v3[5];
      v12 = *(*(v3[10] + 8) + 40);
      v13 = v12;
      v14 = v13;
      if (!v11)
      {
        break;
      }

      if (v13)
      {
        v16 = *(v11 + 8);
        v15 = (v11 + 8);
        if (!v16)
        {
          objc_storeStrong(v15, v12);
          break;
        }
      }
    }

    v17 = v3[4];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke_2;
    v24 = &unk_1E8025650;
    v25 = v17;
    v26 = v3[5];
    v29 = *(v3 + 90);
    v30 = *(v3 + 88);
    v27 = v3[8];
    v21 = *(v3 + 9);
    v18 = v21;
    v28 = v21;
    v3 = v22;
    v19 = *(v17 + 96);
  }

  while (a2 != 0xFFFF && (v19 & (a2 ^ 0xFFFF)) != 0);
  *(v17 + 96) = v19 | 8;
  v20 = objc_autoreleasePoolPush();
  (v23)(v3, *(v17 + 96));
  objc_autoreleasePoolPop(v20);
  *(v17 + 96) = v19;
}

void __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke_3;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v20, &location);
  v19 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v3 = objc_alloc(MEMORY[0x1E69B8798]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke_4;
  v16[3] = &unk_1E8010B50;
  v4 = v2;
  v17 = v4;
  v5 = [v3 initWithBlock:v16];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke_5;
  v13 = &unk_1E8010DD0;
  v6 = v5;
  v14 = v6;
  v7 = v4;
  v15 = v7;
  v8 = _Block_copy(&v10);
  if (*(a1 + 72))
  {
    [*(a1 + 48) transitionCoordinator:*(a1 + 32) executeInteractiveTransition:*(a1 + 40) dirty:*(a1 + 73) withState:*(*(*(a1 + 64) + 8) + 40) completion:{v8, v10, v11, v12, v13, v14}];
  }

  else
  {
    if ((*(a1 + 73) & 1) == 0)
    {
      __break(1u);
      return;
    }

    [*(a1 + 48) transitionCoordinator:*(a1 + 32) executeTransition:*(a1 + 40) withState:*(*(*(a1 + 64) + 8) + 40) completion:{v8, v10, v11, v12, v13, v14}];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 40));
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    if (*(v3 + 18) == 1 && (*(v3 + 19) & 1) == 0)
    {
      v5 = WeakRetained;
      [(PKPGVTransitionCoordinator *)WeakRetained _finishLayoutCoordinatorActionForTransition:v3];
      WeakRetained = v5;
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (*(v3 + 16))-- - 1;
  if (v4 >= 0x10000)
  {
    __break(1u);
    return;
  }

LABEL_8:
}

- (void)_finishLayoutCoordinatorActionForTransition:(uint64_t)transition
{
  v4 = a2;
  [(PKPGVTransitionCoordinator *)transition _assertTransition:v4];
  v3 = v4[8]-- - 1;
  if (v3 >= 0x10000)
  {
    __break(1u);
  }

  else
  {
    [(PKPGVTransitionCoordinator *)transition _subtransitionDidFinishForTransition:v4];
  }
}

uint64_t __89__PKPGVTransitionCoordinator__beginTransitionWithContext_dirty_completion_subtransition___block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_subtransitionDidFinishForTransition:(uint64_t)transition
{
  v18 = a2;
  [(PKPGVTransitionCoordinator *)transition _assertTransition:v18];
  v3 = v18;
  if ((!v18 || !v18[8]) && *(transition + 82) == 1 && *(transition + 74) == 1)
  {
    if ((*(transition + 73) & 1) == 0)
    {
      [(PKPGVTransitionCoordinator *)transition _transitionDidMoveSendableItem:?];
    }

    if ((*(transition + 81) & 1) == 0)
    {
      [(PKPGVTransitionCoordinator *)transition _transitionDidMoveSendableItem:?];
    }

    WeakRetained = objc_loadWeakRetained((transition + 40));
    if (!WeakRetained || (v5 = WeakRetained, (v6 = objc_loadWeakRetained((transition + 56))) == 0) || (v7 = *(transition + 8)) == 0 || (v8 = v6, v9 = v7, *(transition + 80) != 2) || *(transition + 72) != 2 || v9[8] || (v10 = v5 != v8, v11 = *(v9 + 34), v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v20 = __44__PKPGVTransitionCoordinator__endTransition__block_invoke, v21 = &unk_1E8025718, v22 = transition, v12 = v9, v23 = v12, v13 = v8, v24 = v13, v26 = v11, v27 = v10, v14 = v5, v25 = v14, v15 = v19, *(transition + 96)))
    {
      __break(1u);
      return;
    }

    v16 = v15;
    *(transition + 96) = 4;
    v17 = objc_autoreleasePoolPush();
    v20(v16, *(transition + 96));
    objc_autoreleasePoolPop(v17);
    *(transition + 96) = 0;

    [PKPGVTransition _endTrackingTransition:v12];
    v3 = v18;
  }
}

void __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 || (v4 = v3, *(v3 + 18) != 1) || *(v3 + 19) == 1 || (v5 = v3[8] + 1, ++v3[8], (v5 & 0x10000) != 0))
  {
    __break(1u);
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_2;
    aBlock[3] = &unk_1E80110E0;
    objc_copyWeak(&v23, &location);
    v6 = v4;
    v22 = v6;
    v7 = _Block_copy(aBlock);
    v8 = objc_alloc(MEMORY[0x1E69B8798]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_3;
    v19[3] = &unk_1E8010B50;
    v9 = v7;
    v20 = v9;
    v10 = [v8 initWithBlock:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_4;
    v16[3] = &unk_1E8010DD0;
    v17 = v10;
    v18 = v9;
    v11 = v9;
    v12 = v10;
    v13 = _Block_copy(v16);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    if (*(v3 + 18) == 1 && (*(v3 + 19) & 1) == 0)
    {
      v5 = WeakRetained;
      [(PKPGVTransitionCoordinator *)WeakRetained _finishInteractionForTransition:v3];
      WeakRetained = v5;
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (*(v3 + 16))-- - 1;
  if (v4 >= 0x10000)
  {
    __break(1u);
    return;
  }

LABEL_8:
}

- (void)_finishInteractionForTransition:(uint64_t)transition
{
  v3 = a2;
  [(PKPGVTransitionCoordinator *)transition _assertTransition:v3];
  WeakRetained = objc_loadWeakRetained((transition + 24));
  if (WeakRetained && (*(v3 + 32) & 1) != 0 && (v5 = WeakRetained, *(v3 + 32) = 0, *(v3 + 6) = 0x3FF0000000000000, v12[0] = MEMORY[0x1E69E9820], v12[1] = 3221225472, v13 = __62__PKPGVTransitionCoordinator__finishInteractionForTransition___block_invoke, v14 = &unk_1E80256C8, v6 = v3, v15 = v6, v16 = transition, v7 = v5, v17 = v7, v8 = v12, !*(transition + 96)) && (v9 = v8, *(transition + 96) = 10, v10 = objc_autoreleasePoolPush(), (v13)(v9, *(transition + 96)), objc_autoreleasePoolPop(v10), *(transition + 96) = 0, v9, v9, v11 = v6[8] - 1, --v6[8], v11 < 0x10000))
  {
    [(PKPGVTransitionCoordinator *)transition _subtransitionDidFinishForTransition:v6];
  }

  else
  {
    __break(1u);
  }
}

uint64_t __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 18) != 1 || *(v2 + 19) == 1 || (v3 = *(v2 + 16) + 1, ++*(v2 + 16), (v3 & 0x10000) != 0)))
  {
    __break(1u);
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_6;
    aBlock[3] = &unk_1E80110E0;
    objc_copyWeak(&v25, &location);
    v24 = *(a1 + 32);
    v4 = _Block_copy(aBlock);
    v5 = objc_alloc(MEMORY[0x1E69B8798]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_7;
    v21[3] = &unk_1E8010B50;
    v6 = v4;
    v22 = v6;
    v7 = [v5 initWithBlock:v21];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_8;
    v18 = &unk_1E8010DD0;
    v8 = v7;
    v19 = v8;
    v9 = v6;
    v20 = v9;
    v10 = _Block_copy(&v15);
    [(PKPGVTransitionCoordinator *)*(a1 + 40) _updateStateForTransitionInteractive:?];
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = [(PKPGVTransition *)v13 _state];
    [v11 transitionCoordinator:v12 executeInteractiveTransition:v13 dirty:0 withState:v14 completion:{v10, v15, v16, v17, v18}];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    if (*(v3 + 18) == 1 && (*(v3 + 19) & 1) == 0)
    {
      v5 = WeakRetained;
      [(PKPGVTransitionCoordinator *)WeakRetained _finishLayoutCoordinatorActionForTransition:v3];
      WeakRetained = v5;
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (*(v3 + 16))-- - 1;
  if (v4 >= 0x10000)
  {
    __break(1u);
    return;
  }

LABEL_8:
}

uint64_t __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_8(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_updateStateForTransitionInteractive:(uint64_t)interactive
{
  if (interactive)
  {
    v3 = *(interactive + 96);
    if ((v3 & 6) == 0 || (v3 & 8) != 0)
    {
      WeakRetained = objc_loadWeakRetained((interactive + 24));
      if (WeakRetained && (v7 = WeakRetained, (v8 = objc_loadWeakRetained((interactive + 40))) != 0) && (v9 = v8, (v10 = objc_loadWeakRetained((interactive + 56))) != 0) && (v11 = *(interactive + 8)) != 0 && ((v12 = v10, v13 = v11, v23[0] = MEMORY[0x1E69E9820], v23[1] = 3221225472, v24 = __67__PKPGVTransitionCoordinator__updateStateForTransitionInteractive___block_invoke, v25 = &unk_1E80257E0, v14 = v13, v26 = v14, v15 = v9, v27 = v15, v16 = v12, v28 = v16, v29 = interactive, v31 = a2, v17 = v7, v30 = v17, v18 = v23, v19 = *(interactive + 96), (v3 & 8) == 0) ? (v20 = -57) : (v20 = -63), (v19 & v20) == 0))
      {
        v21 = v18;
        *(interactive + 96) = v19 | 0x10;
        v22 = objc_autoreleasePoolPush();
        (v24)(v21, *(interactive + 96));
        objc_autoreleasePoolPop(v22);
        *(interactive + 96) = v19;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    if (*(v3 + 18) == 1 && (*(v3 + 19) & 1) == 0)
    {
      v5 = WeakRetained;
      [(PKPGVTransitionCoordinator *)WeakRetained _finishInteractionForTransition:v3];
      WeakRetained = v5;
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (*(v3 + 16))-- - 1;
  if (v4 >= 0x10000)
  {
    __break(1u);
    return;
  }

LABEL_8:
}

uint64_t __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_11(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __70__PKPGVTransitionCoordinator__invertWithTransitionContext_completion___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  *(*(a1 + 32) + 16) = 1;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  [v4 transitionCoordinatorWillInterruptTransition:*(a1 + 32)];
  v6 = *(a1 + 32);
  if (v5 == v4)
  {
    v7 = *(a1 + 48);
  }

  else
  {
    [*(a1 + 40) transitionCoordinatorWillInterruptTransition:v6];
    [*(a1 + 48) transitionCoordinatorDidInterruptTransition:*(a1 + 32)];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  [v7 transitionCoordinatorDidInterruptTransition:v6];
  v8 = *(a1 + 32);
  if (*(v8 + 8))
  {
    goto LABEL_17;
  }

  v9 = *(*(*(a1 + 64) + 8) + 40);
  if (v9)
  {
    if ((v9[18] & 1) == 0 || v9[19] == 1 || v9[20] == 1)
    {
      goto LABEL_17;
    }

    v9[19] = 1;
    v8 = *(a1 + 32);
  }

  objc_storeWeak((v8 + 40), 0);
  objc_storeWeak((*(a1 + 32) + 56), 0);
  obj = [*(a1 + 40) transitionCoordinatorWillInvertSender:*(a1 + 32)];
  if (!obj || (v10 = [*(a1 + 48) transitionCoordinatorWillInvertReceiver:*(a1 + 32)]) == 0 || (v11 = v10, *(*(a1 + 32) + 48) = v10, objc_storeWeak((*(a1 + 32) + 40), v10), *(*(a1 + 32) + 64) = obj, objc_storeWeak((*(a1 + 32) + 56), obj), v12 = *(a1 + 32), *(v12 + 81) = 0, v13 = *(v12 + 80), v13 >= 3) || (*(v12 + 80) = 2u >> (8 * (v13 & 0x1F)), v14 = *(a1 + 32), *(v14 + 73) = 0, v15 = *(v14 + 72), v15 >= 3))
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v14 + 72) = 2u >> (8 * (v15 & 0x1F));
  [*(a1 + 56) transitionCoordinatorInvertTransceivers:*(a1 + 32)];
}

void __44__PKPGVTransitionCoordinator__endTransition__block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  *(*(a1 + 32) + 16) = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = __44__PKPGVTransitionCoordinator__endTransition__block_invoke_2;
  v23 = &unk_1E8025718;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v26 = *(a1 + 64);
  v20 = *(a1 + 32);
  v9 = *(a1 + 56);
  *&v10 = v20;
  *(&v10 + 1) = v9;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  v24 = v11;
  v25 = v10;
  v12 = v21;
  v13 = *(v6 + 96);
  if (a2 == 0xFFFF || (v13 & (a2 ^ 0xFFFF)) == 0)
  {
    *(v6 + 96) = v13 | 2;
    v14 = objc_autoreleasePoolPush();
    (v22)(v12, *(v6 + 96));
    objc_autoreleasePoolPop(v14);
    *(v6 + 96) = v13;

    [*(a1 + 48) transitionCoordinatorDidEndTransition:*(a1 + 32) wasDirty:*(a1 + 64)];
    if (*(a1 + 65) != 1)
    {
LABEL_10:

      return;
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = v16;
    v19 = v18;
    if (!v15)
    {
LABEL_8:

      goto LABEL_10;
    }

    if (v17 && v18)
    {
      if (*(v15 + 99) != 1)
      {
        [(PKPGVTransitionCoordinator *)v15 _assertSender:v17 deallocating:0];
        [(PKPGVTransitionCoordinator *)v15 _assertReceiver:v19 deallocating:0];

        [*(a1 + 56) transitionCoordinatorDidEndTransition:*(a1 + 32) wasDirty:*(a1 + 64)];
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t __44__PKPGVTransitionCoordinator__endTransition__block_invoke_2(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    if ((v2[18] & 1) == 0 || v2[19] == 1 || v2[20] == 1)
    {
      __break(1u);
      return result;
    }

    v2[19] = 1;
  }

  result = [*(result + 40) transitionCoordinatorWillEndTransition:*(result + 48) wasDirty:*(result + 64)];
  if (*(v1 + 65) == 1)
  {
    v4 = *(v1 + 48);
    v3 = *(v1 + 56);
    v5 = *(v1 + 64);

    return [v3 transitionCoordinatorWillEndTransition:v4 wasDirty:v5];
  }

  return result;
}

- (void)_transitionDidMoveSendableItem:(uint64_t)item
{
  WeakRetained = objc_loadWeakRetained((item + 40));
  if (WeakRetained && (v5 = WeakRetained, (v6 = objc_loadWeakRetained((item + 56))) != 0) && (v7 = *(item + 8)) != 0 && (v8 = v6, v9 = v5 != v6, v10 = v7, v18[0] = MEMORY[0x1E69E9820], v18[1] = 3221225472, v19 = __61__PKPGVTransitionCoordinator__transitionDidMoveSendableItem___block_invoke, v20 = &unk_1E8025718, v25 = a2, v21 = item, v11 = v5, v22 = v11, v12 = v10, v23 = v12, v26 = v9, v13 = v8, v24 = v13, v14 = v18, v15 = *(item + 96), (v15 & 0xFFF5) == 0))
  {
    v16 = v14;
    *(item + 96) = v15 | 0x20;
    v17 = objc_autoreleasePoolPush();
    (v19)(v16, *(item + 96));
    objc_autoreleasePoolPop(v17);
    *(item + 96) = v15;
  }

  else
  {
    __break(1u);
  }
}

void __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 80) || (*(v2 + 86) & 1) != 0)
  {
    *(v2 + 80) = 1;
    *(v2 + 86) = 0;
    [*(a1 + 40) transitionCoordinator:*(a1 + 32) transitionWillMoveNavigationItem:*(a1 + 48)];
    if (*(a1 + 88) == 1)
    {
      [*(a1 + 56) transitionCoordinator:*(a1 + 32) transitionWillMoveNavigationItem:*(a1 + 48)];
    }

    v3 = [*(a1 + 56) transitionCoordinator:*(a1 + 32) prepareForReceivingNavigationItem:*(a1 + 48)];
    v4 = v3;
    v5 = *(*(a1 + 32) + 88);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      v8 = *(v7 + 88);
      *(v7 + 88) = 0;
    }

    else
    {
      if (!v3)
      {
        v6 = 0;
        goto LABEL_14;
      }

      v6 = [*(a1 + 40) transitionCoordinator:? prepareForSendingNavigationItem:?];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    if ((v6[16] & 1) == 0 && v4)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_2;
      aBlock[3] = &unk_1E8025740;
      v9 = v26;
      v10 = *(a1 + 64);
      v11 = *(a1 + 32);
      v26[0] = v10;
      v26[1] = v11;
      v12 = &v27;
      v27 = *(a1 + 48);
      v13 = v6;
      v28 = v13;
      v31 = *(a1 + 89);
      v29 = v4;
      objc_copyWeak(&v30, (a1 + 80));
      v32 = *(a1 + 90);
      v14 = _Block_copy(aBlock);
      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      objc_destroyWeak(&v30);
      v17 = v28;
LABEL_15:

      return;
    }

LABEL_14:
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_4;
    v21[3] = &unk_1E80170D8;
    v9 = v22;
    v13 = v6;
    v18 = *(a1 + 32);
    v22[0] = v13;
    v22[1] = v18;
    v24 = *(a1 + 90);
    v12 = &v23;
    v23 = *(a1 + 48);
    v19 = _Block_copy(v21);
    v20 = *(*(a1 + 72) + 8);
    v17 = *(v20 + 40);
    *(v20 + 40) = v19;
    goto LABEL_15;
  }

  __break(1u);
}

void __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_3;
  v8[3] = &unk_1E8025130;
  objc_copyWeak(&v10, (a1 + 72));
  v9 = *(a1 + 48);
  v11 = *(a1 + 81);
  [v2 transitionCoordinator:v3 transition:v4 sendNavigationItem:v5 animated:v6 usingProvider:v7 completion:v8];

  objc_destroyWeak(&v10);
}

void __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      if (v5[18] == 1 && (v5[19] & 1) == 0)
      {
        v6 = WeakRetained;
        [(PKPGVTransitionCoordinator *)WeakRetained _finishSending:a2 detached:v5 forTransition:?];
        WeakRetained = v6;
      }
    }
  }
}

- (void)_finishSending:(int)sending detached:(void *)detached forTransition:
{
  detachedCopy = detached;
  if (self)
  {
    v10 = detachedCopy;
    [(PKPGVTransitionCoordinator *)self _assertTransition:detachedCopy];
    if (a2 == 1)
    {
      v8 = (self + 74);
      if (*(self + 74) != 1)
      {
        v9 = 73;
        goto LABEL_8;
      }
    }

    else
    {
      if (a2)
      {
LABEL_9:
        if (sending)
        {
          [(PKPGVTransitionCoordinator *)self _transitionDidMoveSendableItem:a2];
        }

        [(PKPGVTransitionCoordinator *)self _subtransitionDidFinishForTransition:v10];
        detachedCopy = v10;
        goto LABEL_12;
      }

      v8 = (self + 82);
      if (*(self + 82) != 1)
      {
        v9 = 81;
LABEL_8:
        *v8 = 1;
        *(self + v9) = sending;
        goto LABEL_9;
      }
    }

    __break(1u);
    return;
  }

LABEL_12:
}

void __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(PKNavigationItemVoucher *)v2 _invalidateFromDisconnect:?];
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  [(PKPGVTransitionCoordinator *)v4 _finishSending:v3 detached:1 forTransition:v5];
}

void __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 78);
  if (!*(v2 + 72))
  {
    *(v2 + 72) = 1;
    *(v2 + 78) = 0;
    v4 = *(v2 + 76);
    if ((v3 & 1) == 0)
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = [(PKPGVTransition *)v7 _state];
      [v5 transitionCoordinator:v6 transitionWillMoveView:v7 withState:v8];

      if (*(a1 + 88) == 1)
      {
        v9 = *(a1 + 32);
        v11 = *(a1 + 48);
        v10 = *(a1 + 56);
        v12 = [(PKPGVTransition *)v11 _state];
        [v10 transitionCoordinator:v9 transitionWillMoveView:v11 withState:v12];
      }
    }

    goto LABEL_7;
  }

  if (*(v2 + 78))
  {
    *(v2 + 72) = 1;
    *(v2 + 78) = 0;
    v4 = *(v2 + 76);
LABEL_7:
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_6;
    aBlock[3] = &unk_1E80257B8;
    v13 = *(a1 + 64);
    v14 = *(a1 + 32);
    v19 = v13;
    v20 = v14;
    v21 = *(a1 + 48);
    v24 = *(a1 + 89);
    objc_copyWeak(&v22, (a1 + 80));
    v23 = v4;
    v25 = *(a1 + 90);
    v15 = _Block_copy(aBlock);
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    objc_destroyWeak(&v22);
    return;
  }

  __break(1u);
}

void __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 66);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_7;
  v8[3] = &unk_1E8025790;
  objc_copyWeak(&v11, (a1 + 56));
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  v12 = *(a1 + 64);
  v13 = *(a1 + 67);
  [v2 transitionCoordinator:v3 transition:v4 sendViewAnimated:v5 withCompletion:v8];

  objc_destroyWeak(&v11);
}

void __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_7(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      if (v5[18] == 1 && (v5[19] & 1) == 0 && *(*(a1 + 40) + 76) == *(a1 + 56))
      {
        v6 = WeakRetained;
        [(PKPGVTransitionCoordinator *)WeakRetained _finishSending:a2 detached:v5 forTransition:?];
        WeakRetained = v6;
      }
    }
  }
}

void __48__PKPGVTransitionCoordinator__interruptSending___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    if (!*(v2 + 72))
    {
LABEL_10:
      __break(1u);
      return;
    }

    *(v2 + 72) = 1;
    *(v2 + 78) = 1;
    *(v2 + 74) = 0;
    ++*(v2 + 76);
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [(PKPGVTransition *)v5 _state];
    [v3 transitionCoordinator:v4 transitionWillInterruptViewMove:v5 withState:v6];

    if (*(a1 + 65) == 1)
    {
      v7 = *(a1 + 32);
      v10 = a1 + 48;
      v8 = *(a1 + 48);
      v9 = *(v10 + 8);
      v11 = [(PKPGVTransition *)v8 _state];
      [v9 transitionCoordinator:v7 transitionWillInterruptViewMove:v8 withState:v11];
    }
  }

  else if (!*(a1 + 64))
  {
    goto LABEL_10;
  }
}

void __62__PKPGVTransitionCoordinator__finishInteractionForTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 18) != 1 || *(v2 + 19) == 1 || (v3 = *(v2 + 16) + 1, ++*(v2 + 16), (v3 & 0x10000) != 0)))
  {
    __break(1u);
  }

  else
  {
    objc_initWeak(&location, *(a1 + 40));
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__PKPGVTransitionCoordinator__finishInteractionForTransition___block_invoke_2;
    aBlock[3] = &unk_1E80110E0;
    objc_copyWeak(&v25, &location);
    v24 = *(a1 + 32);
    v4 = _Block_copy(aBlock);
    v5 = objc_alloc(MEMORY[0x1E69B8798]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __62__PKPGVTransitionCoordinator__finishInteractionForTransition___block_invoke_3;
    v21[3] = &unk_1E8010B50;
    v6 = v4;
    v22 = v6;
    v7 = [v5 initWithBlock:v21];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __62__PKPGVTransitionCoordinator__finishInteractionForTransition___block_invoke_4;
    v18 = &unk_1E8010DD0;
    v8 = v7;
    v19 = v8;
    v9 = v6;
    v20 = v9;
    v10 = _Block_copy(&v15);
    [(PKPGVTransitionCoordinator *)*(a1 + 40) _updateStateForTransitionInteractive:?];
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = [(PKPGVTransition *)v13 _state];
    [v11 transitionCoordinator:v12 resolveInteractiveTransition:v13 withState:v14 completion:{v10, v15, v16, v17, v18}];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __62__PKPGVTransitionCoordinator__finishInteractionForTransition___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  if (WeakRetained)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    if (*(v3 + 18) == 1 && (*(v3 + 19) & 1) == 0)
    {
      v5 = WeakRetained;
      [(PKPGVTransitionCoordinator *)WeakRetained _finishLayoutCoordinatorActionForTransition:v3];
      WeakRetained = v5;
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (*(v3 + 16))-- - 1;
  if (v4 >= 0x10000)
  {
    __break(1u);
    return;
  }

LABEL_8:
}

uint64_t __62__PKPGVTransitionCoordinator__finishInteractionForTransition___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  if (result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __67__PKPGVTransitionCoordinator__updateStateForTransitionInteractive___block_invoke(uint64_t a1)
{
  v15 = [(PKPGVTransition *)*(a1 + 32) _state];
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v5 transitionCoordinator:*(a1 + 56) transition:*(a1 + 32) willUpdateFromState:v15 interactive:*(a1 + 72)];
  v6 = [(PKPGVTransition *)*(a1 + 32) _isState:v15];
  v7 = v15;
  if (v6)
  {
    if (v5 == v4 || ([*(a1 + 48) transitionCoordinator:*(a1 + 56) transition:*(a1 + 32) willUpdateFromState:v15 interactive:*(a1 + 72)], v8 = -[PKPGVTransition _isState:](*(a1 + 32), v15), v7 = v15, v8))
    {
      v9 = [*(a1 + 64) transitionCoordinator:*(a1 + 56) transition:*(a1 + 32) updateFromState:v7 interactive:*(a1 + 72)];
      if (v9)
      {
        v1 = v9;
        if (![(PKPGVTransition *)*(a1 + 32) _isState:v15])
        {
LABEL_12:

          v7 = v15;
          goto LABEL_13;
        }

        v10 = *(a1 + 32);
        v2 = v1;
        if (!v10)
        {
          goto LABEL_17;
        }

        v13 = *(v10 + 8);
        v12 = (v10 + 8);
        v11 = v13;
        if (v13)
        {
          v14 = v11;
          objc_storeStrong(v12, v1);
LABEL_9:

          [*(a1 + 40) transitionCoordinator:*(a1 + 56) transition:*(a1 + 32) didUpdateFromState:v15 toState:v2 interactive:*(a1 + 72)];
          if ([(PKPGVTransition *)*(a1 + 32) _isState:v2]&& v5 != v4)
          {
            [*(a1 + 48) transitionCoordinator:*(a1 + 56) transition:*(a1 + 32) didUpdateFromState:v15 toState:v2 interactive:*(a1 + 72)];
            [(PKPGVTransition *)*(a1 + 32) _isState:v2];
          }

          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_17:
      v14 = 0;
      goto LABEL_9;
    }
  }

LABEL_13:
}

void __61__PKPGVTransitionCoordinator__transitionDidMoveSendableItem___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    if (*(a1 + 64))
    {
      return;
    }

    v2 = *(a1 + 32);
    if (*(v2 + 80) == 1)
    {
      *(v2 + 80) = 2;
      [*(a1 + 40) transitionCoordinator:*(a1 + 32) transitionDidMoveNavigationItem:*(a1 + 48)];
      if (*(a1 + 65) == 1)
      {
        v3 = *(a1 + 32);
        v5 = *(a1 + 48);
        v4 = *(a1 + 56);

        [v4 transitionCoordinator:v3 transitionDidMoveNavigationItem:v5];
      }

      return;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v6 = *(a1 + 32);
  if (*(v6 + 72) != 1)
  {
    goto LABEL_16;
  }

  *(v6 + 72) = 2;
  v9 = [(PKPGVTransition *)*(a1 + 48) _state];
  [*(a1 + 40) transitionCoordinator:*(a1 + 32) transitionDidMoveView:*(a1 + 48) withState:?];
  if (*(a1 + 65) == 1)
  {
    v7 = [(PKPGVTransition *)*(a1 + 48) _state];

    [*(a1 + 56) transitionCoordinator:*(a1 + 32) transitionDidMoveView:*(a1 + 48) withState:v7];
    v8 = v7;
  }

  else
  {
    v8 = v9;
  }
}

- (void)coordinatorForConnection:(void *)connection
{
  if (connection)
  {
    [(PKPGVTransitionCoordinator *)connection _assertConnection:a2 deallocating:1];
    connectionCopy = connection;
  }

  return connection;
}

- (void)connectionDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  [(PKPGVTransitionCoordinator *)self _assertConnection:terminateCopy deallocating:1];
  selfCopy = self;
  v19 = terminateCopy;
  if (selfCopy)
  {
    if (selfCopy->_invalidated || (selfCopy->_invalidated = 1, v6 = selfCopy->_transition, transition = selfCopy->_transition, selfCopy->_transition = 0, transition, selfCopy->_interrupted = v6 != 0, WeakRetained = objc_loadWeakRetained(&selfCopy->_layout), v9 = objc_loadWeakRetained(&selfCopy->_sender), v10 = objc_loadWeakRetained(&selfCopy->_receiver), selfCopy->_unsafeLayout = 0, objc_storeWeak(&selfCopy->_layout, 0), selfCopy->_unsafeSender = 0, objc_storeWeak(&selfCopy->_sender, 0), selfCopy->_unsafeReceiver = 0, objc_storeWeak(&selfCopy->_receiver, 0), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v21 = __55__PKPGVTransitionCoordinator__terminateFromConnection___block_invoke, v22 = &unk_1E8025628, v11 = v6, v23 = v11, v12 = WeakRetained, v24 = v12, v25 = v19, v26 = selfCopy, v13 = v10, v27 = v13, v14 = v9, v28 = v14, v15 = v20, restrictedActions = selfCopy->_restrictedActions, (restrictedActions & 0xFFFFFFFB) != 0))
    {
      __break(1u);
      return;
    }

    v17 = v15;
    selfCopy->_restrictedActions = restrictedActions | 1;
    v18 = objc_autoreleasePoolPush();
    v21(v17, selfCopy->_restrictedActions);
    objc_autoreleasePoolPop(v18);
    selfCopy->_restrictedActions = restrictedActions;

    [PKPGVTransition _endTrackingTransition:v11];
  }
}

- (void)tombstoneConnection:(id)connection
{
  connectionCopy = connection;
  [(PKPGVTransitionCoordinator *)self _assertConnection:connectionCopy deallocating:0];
  if (self)
  {
    if (self->_tombstoned)
    {
      __break(1u);
      return;
    }

    self->_tombstoned = 1;
    transition = self->_transition;
    if (transition)
    {
      transition->_terminal = 1;
    }
  }
}

- (void)coordinatorForLayout:(void *)layout
{
  if (layout)
  {
    [(PKPGVTransitionCoordinator *)layout _assertLayout:a2 deallocating:0];
    layoutCopy = layout;
  }

  return layout;
}

- (unsigned)layout:(id)layout transition:(id)transition stateForSendableItem:(unsigned __int8)item
{
  itemCopy = item;
  layoutCopy = layout;
  transitionCopy = transition;
  [(PKPGVTransitionCoordinator *)self _assertLayout:layoutCopy deallocating:0];
  if (transitionCopy && self->_transition == transitionCopy)
  {
    if (itemCopy == 1)
    {
      if (!self->_view.interrupted)
      {
        v11 = 72;
        goto LABEL_10;
      }

LABEL_8:
      v12 = 0;
LABEL_11:

      return v12;
    }

    if (!itemCopy)
    {
      if (!self->_navigationItem.interrupted)
      {
        v11 = 80;
LABEL_10:
        v12 = *(&self->super.isa + v11);
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

- (void)beginSubtransitionForTransition:(id)transition sending:(unsigned __int8)sending animated:(BOOL)animated
{
  sendingCopy = sending;
  [(PKPGVTransitionCoordinator *)self _assertTransition:transition];
  if (self)
  {
    if (sendingCopy == 1)
    {
      if (!self->_view.interrupted && self->_view.state)
      {
        goto LABEL_20;
      }
    }

    else if (sendingCopy || !self->_navigationItem.interrupted && self->_navigationItem.state)
    {
      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained(&self->_layout);
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = objc_loadWeakRetained(&self->_sender);
      if (v10)
      {
        v11 = v10;
        v12 = objc_loadWeakRetained(&self->_receiver);
        if (v12)
        {
          v13 = v12;
          v14 = v11 != v12;
          transition = self->_transition;
          if (transition)
          {
            transitionCopy = transition;
            objc_initWeak(location, self);
            v51 = 0;
            v52 = &v51;
            v53 = 0x3032000000;
            v54 = __Block_byref_object_copy__24;
            v55 = __Block_byref_object_dispose__25;
            v56 = 0;
            v24 = transitionCopy;
            if (sendingCopy)
            {
              v17 = v25;
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v26 = __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke_5;
              v27 = &unk_1E8025768;
              selfCopy = self;
              v29 = v11;
              v30 = transitionCopy;
              v35 = v14;
              v31 = v13;
              v33 = &v51;
              v32 = v9;
              animatedCopy = animated;
              v18 = &v34;
              objc_copyWeak(&v34, location);
              v37 = 1;
              v19 = v25;
              restrictedActions = self->_restrictedActions;
              if ((restrictedActions & 0xFFF5) == 0)
              {
                v21 = v19;
                self->_restrictedActions = restrictedActions | 0x20;
                v22 = objc_autoreleasePoolPush();
                (v26)(v21, self->_restrictedActions);
LABEL_18:
                objc_autoreleasePoolPop(v22);
                self->_restrictedActions = restrictedActions;

                objc_destroyWeak(v18);
                (*(v52[5] + 16))();
                _Block_object_dispose(&v51, 8);

                objc_destroyWeak(location);
                return;
              }
            }

            else
            {
              v17 = v38;
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 3221225472;
              v39 = __53__PKPGVTransitionCoordinator__beginSending_animated___block_invoke;
              v40 = &unk_1E8025768;
              selfCopy2 = self;
              v42 = v11;
              v43 = transitionCopy;
              v48 = v14;
              v44 = v13;
              v46 = &v51;
              v45 = v9;
              animatedCopy2 = animated;
              v18 = &v47;
              objc_copyWeak(&v47, location);
              v50 = 0;
              v23 = v38;
              restrictedActions = self->_restrictedActions;
              if ((restrictedActions & 0xFFF5) == 0)
              {
                v21 = v23;
                self->_restrictedActions = restrictedActions | 0x20;
                v22 = objc_autoreleasePoolPush();
                (v39)(v21, self->_restrictedActions);
                goto LABEL_18;
              }
            }
          }
        }
      }
    }

LABEL_20:
    __break(1u);
  }
}

- (void)interruptSubtransitionForTransition:(id)transition sending:(unsigned __int8)sending
{
  sendingCopy = sending;
  [(PKPGVTransitionCoordinator *)self _assertTransition:transition];
  if (self)
  {
    if (sendingCopy == 1)
    {
      if (self->_view.interrupted || !self->_view.state)
      {
        goto LABEL_15;
      }
    }

    else if (sendingCopy || self->_navigationItem.interrupted || !self->_navigationItem.state)
    {
      goto LABEL_15;
    }

    WeakRetained = objc_loadWeakRetained(&self->_sender);
    if (!WeakRetained || (v7 = WeakRetained, (v8 = objc_loadWeakRetained(&self->_receiver)) == 0) || (transition = self->_transition) == 0 || (v10 = v8, v11 = v7 != v8, v12 = transition, v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v21 = __48__PKPGVTransitionCoordinator__interruptSending___block_invoke, v22 = &unk_1E8025718, v27 = sendingCopy, v23 = self, v13 = v10, v24 = v13, v14 = v12, v25 = v14, v28 = v11, v15 = v7, v26 = v15, v16 = v20, restrictedActions = self->_restrictedActions, (restrictedActions & 0xFFF5) != 0))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v18 = v16;
    self->_restrictedActions = restrictedActions | 0x20;
    v19 = objc_autoreleasePoolPush();
    (v21)(v18, self->_restrictedActions);
    objc_autoreleasePoolPop(v19);
    self->_restrictedActions = restrictedActions;
  }
}

- (void)coordinatorForTransceiver:(void *)transceiver
{
  if (transceiver)
  {
    [(PKPGVTransitionCoordinator *)transceiver _assertTransceiver:a2 deallocating:0];
    transceiverCopy = transceiver;
  }

  return transceiver;
}

- (void)transceiver:(id)transceiver transition:(id)transition setNeedsStateUpdateInteractive:(BOOL)interactive
{
  transceiverCopy = transceiver;
  transitionCopy = transition;
  [(PKPGVTransitionCoordinator *)self _assertTransceiver:transceiverCopy deallocating:0];
  if (transitionCopy && self->_transition == transitionCopy)
  {
    [(PKPGVTransitionCoordinator *)self _updateStateForTransitionInteractive:interactive];
  }

  else
  {
    __break(1u);
  }
}

- (void)transceiver:(id)transceiver invertWithTransitionContext:(id)context completion:(id)completion
{
  transceiverCopy = transceiver;
  contextCopy = context;
  completionCopy = completion;
  [(PKPGVTransitionCoordinator *)self _assertTransceiver:transceiverCopy deallocating:0];
  if (!contextCopy)
  {
    goto LABEL_12;
  }

  selfCopy = self;
  v11 = contextCopy;
  v12 = completionCopy;
  if (selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_layout);
    if (WeakRetained)
    {
      v14 = WeakRetained;
      v15 = objc_loadWeakRetained(&selfCopy->_sender);
      if (v15)
      {
        v16 = v15;
        v17 = objc_loadWeakRetained(&selfCopy->_receiver);
        if (v17)
        {
          if (!selfCopy->_tombstoned)
          {
            v18 = v17;
            v34 = 0;
            v35 = &v34;
            v36 = 0x3032000000;
            v37 = __Block_byref_object_copy__67;
            v38 = __Block_byref_object_dispose__67;
            v39 = 0;
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v27 = __70__PKPGVTransitionCoordinator__invertWithTransitionContext_completion___block_invoke;
            v28 = &unk_1E80256F0;
            v33 = &v34;
            v29 = selfCopy;
            v19 = v16;
            v30 = v19;
            v20 = v18;
            v31 = v20;
            v21 = v14;
            v32 = v21;
            v22 = v26;
            if (!selfCopy->_restrictedActions)
            {
              v23 = v22;
              selfCopy->_restrictedActions = 2;
              v24 = objc_autoreleasePoolPush();
              (v27)(v23, selfCopy->_restrictedActions);
              objc_autoreleasePoolPop(v24);
              selfCopy->_restrictedActions = 0;

              [(PKPGVTransitionCoordinator *)selfCopy _beginTransitionWithContext:v11 dirty:1 completion:v12 subtransition:0];
              [PKPGVTransition _endTrackingTransition:?];

              _Block_object_dispose(&v34, 8);
              goto LABEL_9;
            }
          }
        }
      }
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_9:
}

- (void)coordinatorForSender:(void *)sender
{
  if (sender)
  {
    [(PKPGVTransitionCoordinator *)sender _assertSender:a2 deallocating:0];
    senderCopy = sender;
  }

  return sender;
}

- (void)senderDidTapView:(id)view
{
  viewCopy = view;
  [(PKPGVTransitionCoordinator *)self _assertSender:viewCopy deallocating:0];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_receiver);
    if (!WeakRetained)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained transitionCoordinatorSenderDidTapView:self];
}

- (void)coordinatorForReceiver:(void *)receiver
{
  if (receiver)
  {
    [(PKPGVTransitionCoordinator *)receiver _assertReceiver:a2 deallocating:0];
    receiverCopy = receiver;
  }

  return receiver;
}

- (id)becomeInteractiveForReceiver:(id)receiver
{
  [(PKPGVTransitionCoordinator *)self _assertReceiver:receiver deallocating:0];
  selfCopy = self;
  v5 = selfCopy;
  if (selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_layout);
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = *(v5 + 8);
      if (v8)
      {
        if (v8[32] != 1 && *(v5 + 98) != 1)
        {
          v9 = v8;
          if (v9[18] == 1 && v9[19] != 1 && v8[32] != 1)
          {
            v8[32] = 1;
            v10 = (*(v9 + 8))++ + 1;
            if ((v10 & 0x10000) == 0)
            {
              v32 = MEMORY[0x1E69E9820];
              v33 = 3221225472;
              v34 = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_5;
              v35 = &unk_1E80256C8;
              v11 = v9;
              v36 = v11;
              v37 = v5;
              v38 = v7;
              v12 = &v32;
              if (!*(v5 + 96))
              {
                v13 = v12;
                *(v5 + 96) = 10;
                v14 = objc_autoreleasePoolPush();
                (v34)(v13, *(v5 + 96));
                objc_autoreleasePoolPop(v14);
                *(v5 + 96) = 0;

                objc_initWeak(&location, v5);
                aBlock = MEMORY[0x1E69E9820];
                v40 = 3221225472;
                v41 = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_9;
                v42 = &unk_1E80110E0;
                objc_copyWeak(&v44, &location);
                v15 = v11;
                v43 = v15;
                v16 = _Block_copy(&aBlock);
                v17 = objc_alloc(MEMORY[0x1E69B8798]);
                v29[0] = MEMORY[0x1E69E9820];
                v29[1] = 3221225472;
                v29[2] = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_10;
                v29[3] = &unk_1E8010B50;
                v18 = v16;
                v30 = v18;
                v19 = [v17 initWithBlock:v29];
                v26[0] = MEMORY[0x1E69E9820];
                v26[1] = 3221225472;
                v26[2] = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke_11;
                v26[3] = &unk_1E8010DD0;
                v27 = v19;
                v28 = v18;
                v20 = v18;
                v21 = v19;
                v22 = _Block_copy(v26);

                objc_destroyWeak(&v44);
                objc_destroyWeak(&location);

                v23 = v36;
LABEL_15:

                goto LABEL_16;
              }
            }
          }
        }
      }

      else if ((*(v5 + 98) & 1) == 0)
      {
        objc_opt_self();
        v15 = [PKPGVTransitionContext _createForAnimatedTransition:0 withPassContext:0 beginTerminal:?];
        v15->_beginInteractive = 1;
        v15->_initialInteractiveProgress = 1.0;
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = __Block_byref_object_copy__24;
        v36 = __Block_byref_object_dispose__25;
        v37 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v40 = 3221225472;
        v41 = __48__PKPGVTransitionCoordinator__becomeInteractive__block_invoke;
        v42 = &unk_1E80256A0;
        v43 = v5;
        v44 = &v32;
        [(PKPGVTransitionCoordinator *)v5 _beginTransitionWithContext:v15 dirty:0 completion:0 subtransition:&aBlock];
        v24 = *(v33 + 40);
        if (v24)
        {
          v22 = _Block_copy(v24);
          _Block_object_dispose(&v32, 8);
          v23 = v37;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  v22 = 0;
LABEL_16:

  return v22;
}

- (void)receiver:(id)receiver updateInteractionToProgress:(double)progress
{
  [(PKPGVTransitionCoordinator *)self _assertReceiver:receiver deallocating:0];
  if (self)
  {
    transition = self->_transition;
    if (transition && transition->_tracking && !transition->_willEndTracking && transition->_interactive)
    {
      transition->_interactiveProgress = progress;

      [(PKPGVTransitionCoordinator *)self _updateStateForTransitionInteractive:?];
    }

    else
    {
      __break(1u);
    }
  }
}

@end