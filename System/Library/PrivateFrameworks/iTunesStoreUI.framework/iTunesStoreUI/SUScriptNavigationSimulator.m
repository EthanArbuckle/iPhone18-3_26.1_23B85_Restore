@interface SUScriptNavigationSimulator
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUScriptNavigationSimulator)initWithNavigationController:(id)a3;
- (UINavigationController)navigationController;
- (WebScriptObject)transitionCallback;
- (id)_popHandler;
- (id)scriptAttributeKeys;
- (int64_t)visibleIndex;
- (void)_callCallbackWithWithTransition:(id)a3;
- (void)_enqueueLoadingState:(id)a3;
- (void)_handlePopFromIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)_startNextTransition;
- (void)popToViewAtIndex:(int64_t)a3 completion:(id)a4;
- (void)popViewWithCompletion:(id)a3;
- (void)pushViewWithCompletion:(id)a3;
- (void)setIndexCount:(int64_t)a3;
- (void)setTransitionCallback:(id)a3;
- (void)setVisibleIndex:(int64_t)a3;
@end

@implementation SUScriptNavigationSimulator

- (SUScriptNavigationSimulator)initWithNavigationController:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SUScriptNavigationSimulator;
  v5 = [(SUScriptObject *)&v14 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if (!v4 || (objc_storeWeak(&v5->_navigationController, v4), v7 = objc_alloc_init(MEMORY[0x1E695DF70]), enqueuedTransitions = v6->_enqueuedTransitions, v6->_enqueuedTransitions = v7, enqueuedTransitions, [v4 viewControllers], v9 = objc_claimAutoreleasedReturnValue(), v6->_initialIndex = objc_msgSend(v9, "count") - 1, v9, v6->_initialIndex < 0))
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = [v4 viewControllers];
  v11 = [v10 objectAtIndexedSubscript:v6->_initialIndex];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  if (v11)
  {
    v12 = [(SUScriptNavigationSimulator *)v6 _popHandler];
    [(SUScriptNavigationSimulator *)v11 setPopHandler:v12];

LABEL_7:
    v11 = v6;
  }

LABEL_10:

  return v11;
}

- (WebScriptObject)transitionCallback
{
  [(SUScriptObject *)self lock];
  v3 = self->_transitionCallback;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (int64_t)visibleIndex
{
  v3 = [(SUScriptNavigationSimulator *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 count] - 1;

  return [(SUScriptNavigationSimulator *)self _relativeIndexFromIndex:v5];
}

- (void)setTransitionCallback:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SUScriptObject *)self lock];
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  *v13 = 138543618;
  *&v13[4] = objc_opt_class();
  *&v13[12] = 2114;
  *&v13[14] = v4;
  v9 = *&v13[4];
  LODWORD(v12) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v13, v12, *v13, *&v13[16], v14}];
    free(v10);
    SSFileLog();
LABEL_9:
  }

  transitionCallback = self->_transitionCallback;
  self->_transitionCallback = v4;

  [(SUScriptObject *)self unlock];
}

- (void)setIndexCount:(int64_t)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"indexCount"];
  [v3 throwException:v4];
}

- (void)setVisibleIndex:(int64_t)a3
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"visibleIndex"];
  [v3 throwException:v4];
}

- (void)popViewWithCompletion:(id)a3
{
  v4 = a3;
  [(SUScriptNavigationSimulator *)self popToViewAtIndex:[(SUScriptNavigationSimulator *)self visibleIndex]- 1 completion:v4];
}

- (void)popToViewAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v6 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__SUScriptNavigationSimulator_popToViewAtIndex_completion___block_invoke;
  v13[3] = &unk_1E81644A8;
  v14 = v6;
  v15 = self;
  v7 = v6;
  v8 = MEMORY[0x1C6916C70](v13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SUScriptNavigationSimulator_popToViewAtIndex_completion___block_invoke_2;
  block[3] = &unk_1E8165240;
  v11 = v8;
  v12 = a3;
  block[4] = self;
  v9 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__SUScriptNavigationSimulator_popToViewAtIndex_completion___block_invoke(uint64_t a1)
{
  v2 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v2 setThisObject:*(a1 + 40)];
  [(SUScriptFunction *)v2 callWithArguments:0];
  [(SUScriptFunction *)v2 setThisObject:0];
}

void __59__SUScriptNavigationSimulator_popToViewAtIndex_completion___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 viewControllers];
  v4 = [v3 count];

  v5 = *(a1 + 48) + [*(a1 + 32) initialIndex];
  if (v5 >= v4)
  {
    v25 = *(*(a1 + 40) + 16);

    v25();
    return;
  }

  v6 = [MEMORY[0x1E69D4938] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v43 = 138543362;
  v44 = objc_opt_class();
  v10 = v44;
  LODWORD(v35) = 12;
  v34 = &v43;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v43, v35}];
    free(v11);
    v34 = v9;
    SSFileLog();
LABEL_10:
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v12 = [*(a1 + 32) navigationController];
    v13 = [v12 viewControllers];
    v14 = [v13 objectAtIndexedSubscript:v5];

    [MEMORY[0x1E6979518] begin];
    v15 = MEMORY[0x1E6979518];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __59__SUScriptNavigationSimulator_popToViewAtIndex_completion___block_invoke_28;
    v36[3] = &unk_1E8165218;
    v37 = *(a1 + 40);
    [v15 setCompletionBlock:v36];
    v16 = [MEMORY[0x1E69D4938] sharedConfig];
    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v43 = 138543362;
      v44 = v20;
      v21 = v20;
      LODWORD(v35) = 12;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_21:

        v23 = [*(a1 + 32) navigationController];
        v24 = [v23 popToViewController:v14 animated:1];

        [MEMORY[0x1E6979518] commit];
        return;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v43, v35}];
      free(v22);
      SSFileLog();
    }

    goto LABEL_21;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = [*(a1 + 32) navigationController];
  v27 = [v26 viewControllers];

  v28 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v39;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v32 bridgedNavigation])
        {

          v27 = [*(a1 + 32) navigationController];
          v33 = [v27 popToViewController:0 animated:1];
          goto LABEL_36;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:

  (*(*(a1 + 40) + 16))();
}

- (void)pushViewWithCompletion:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

    v4 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke;
  v10[3] = &unk_1E81644A8;
  v11 = v4;
  v12 = self;
  v5 = v4;
  v6 = MEMORY[0x1C6916C70](v10);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_2;
  v8[3] = &unk_1E8164638;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [[SUScriptFunction alloc] initWithScriptObject:*(a1 + 32)];
  [(SUScriptFunction *)v2 setThisObject:*(a1 + 40)];
  [(SUScriptFunction *)v2 callWithArguments:0];
  [(SUScriptFunction *)v2 setThisObject:0];
}

void __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 embeddedViewController];
    v5 = [*(a1 + 32) navigationController];
    v6 = [v5 viewControllers];
    v7 = [v6 count];

    v8 = 0x1E69D4000uLL;
    v9 = [MEMORY[0x1E69D4938] sharedConfig];
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *location = 138543874;
      *&location[4] = objc_opt_class();
      v33 = 2048;
      v34 = v7 - 1;
      v35 = 2048;
      v36 = v7;
      v13 = *&location[4];
      LODWORD(v27) = 32;
      v26 = location;
      v14 = _os_log_send_and_compose_impl();

      v8 = 0x1E69D4000;
      if (v14)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, location, v27}];
        free(v14);
        v26 = v15;
        SSFileLog();
      }
    }

    else
    {
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [*(v8 + 2360) sharedConfig];
      v17 = [(SUSnapshotViewController *)v16 shouldLog];
      if ([(SUSnapshotViewController *)v16 shouldLogToDisk])
      {
        v18 = v17 | 2;
      }

      else
      {
        v18 = v17;
      }

      v19 = [(SUSnapshotViewController *)v16 OSLogObject];
      if (!os_log_type_enabled(&v19->super.super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v20 = objc_opt_class();
        *location = 138543874;
        *&location[4] = v20;
        v33 = 2048;
        v34 = v7 - 1;
        v35 = 2048;
        v36 = v7;
        v21 = v20;
        LODWORD(v27) = 32;
        v22 = _os_log_send_and_compose_impl();

        if (!v22)
        {
LABEL_22:

          goto LABEL_23;
        }

        v19 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, location, v27}];
        free(v22);
        SSFileLog();
      }
    }

    else
    {
      v16 = [[SUSnapshotViewController alloc] initWithOriginal:v4];
      [v3 setEmbeddedViewController:v16 animated:0 completion:0];
      v19 = [[SUNavigationContainerViewController alloc] initWithChildViewController:v4];
      -[SUNavigationContainerViewController setBridgedNavigation:](v19, "setBridgedNavigation:", [v3 bridgedNavigation]);
      v23 = [*(a1 + 32) _popHandler];
      [(SUNavigationContainerViewController *)v19 setPopHandler:v23];

      objc_initWeak(location, *(a1 + 32));
      v24 = [SUScriptNavigationTransition alloc];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_31;
      v28[3] = &unk_1E81652B8;
      objc_copyWeak(v31, location);
      v31[1] = v7 - 1;
      v31[2] = v7;
      v29 = v3;
      v30 = *(a1 + 40);
      v25 = [(SUScriptNavigationTransition *)v24 initWithContainer:v19 finishBlock:v28];
      [(SUScriptNavigationTransition *)v25 setFromIndex:v7 - 1];
      [(SUScriptNavigationTransition *)v25 setToIndex:v7];
      [*(a1 + 32) _enqueueLoadingState:v25];

      objc_destroyWeak(v31);
      objc_destroyWeak(location);
    }

    goto LABEL_22;
  }

LABEL_23:
}

void __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = objc_opt_class();
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v26 = 138543874;
    v27 = v12;
    v28 = 2048;
    v29 = v13;
    v30 = 2048;
    v31 = v14;
    v15 = v12;
    LODWORD(v20) = 32;
    v16 = _os_log_send_and_compose_impl();

    if (v16)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v26, v20}];
      free(v16);
      SSFileLog();
    }
  }

  else
  {
  }

  v18 = [*(a1 + 32) appearancePromise];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_32;
  v21[3] = &unk_1E8165290;
  objc_copyWeak(&v24, (a1 + 48));
  v25 = *(a1 + 56);
  v23 = *(a1 + 40);
  v19 = v6;
  v22 = v19;
  [v18 addFinishBlock:v21];

  objc_destroyWeak(&v24);
}

void __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_32(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_2_33;
  block[3] = &unk_1E8165268;
  objc_copyWeak(&v5, (a1 + 48));
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_2_33(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v19 = [MEMORY[0x1E69D4938] sharedConfig];
    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_loadWeakRetained((a1 + 48));
      v24 = objc_opt_class();
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v32 = 138543874;
      v33 = v24;
      v34 = 2048;
      v35 = v25;
      v36 = 2048;
      v37 = v26;
      v27 = v24;
      LODWORD(v29) = 32;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_21:

        (*(*(a1 + 40) + 16))();
        goto LABEL_22;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v32, v29}];
      free(v28);
      SSFileLog();
    }

    goto LABEL_21;
  }

  v3 = [*(a1 + 32) embeddedViewController];
  v4 = [v3 view];
  [v4 setNeedsLayout];

  v5 = [*(a1 + 32) embeddedViewController];
  v6 = [v5 view];
  [v6 layoutIfNeeded];

  [MEMORY[0x1E6979518] begin];
  v7 = MEMORY[0x1E6979518];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __54__SUScriptNavigationSimulator_pushViewWithCompletion___block_invoke_34;
  v30[3] = &unk_1E8165218;
  v31 = *(a1 + 40);
  [v7 setCompletionBlock:v30];
  v8 = [MEMORY[0x1E69D4938] sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = objc_loadWeakRetained((a1 + 48));
  v13 = objc_opt_class();
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v32 = 138543874;
  v33 = v13;
  v34 = 2048;
  v35 = v14;
  v36 = 2048;
  v37 = v15;
  v16 = v13;
  LODWORD(v29) = 32;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v32, v29}];
    free(v17);
    SSFileLog();
LABEL_10:
  }

  v18 = [WeakRetained navigationController];
  [v18 pushViewController:*(a1 + 32) animated:1];

  [MEMORY[0x1E6979518] commit];
  [WeakRetained setLastVisibleIndex:*(a1 + 64)];

LABEL_22:
}

- (void)_enqueueLoadingState:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = [(SUScriptNavigationSimulator *)self enqueuedTransitions];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = 1;
    while (1)
    {
      v7 = [(SUScriptNavigationSimulator *)self enqueuedTransitions];
      v8 = [v7 objectAtIndexedSubscript:v6];

      [v8 setStatus:2];
      v9 = [(SUScriptNavigationSimulator *)self enqueuedTransitions];
      [v9 removeObjectAtIndex:v6];

      v10 = [MEMORY[0x1E69D4938] sharedConfig];
      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      v13 = [v10 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v12;
      }

      else
      {
        v14 = v12 & 2;
      }

      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v8 fromIndex];
      v18 = [v8 toIndex];
      v35 = 138543874;
      v36 = v15;
      v37 = 2048;
      v38 = v17;
      v39 = 2048;
      v40 = v18;
      LODWORD(v33) = 32;
      v32 = &v35;
      v19 = _os_log_send_and_compose_impl();

      if (v19)
      {
        break;
      }

LABEL_13:

      ++v6;
      v20 = [(SUScriptNavigationSimulator *)self enqueuedTransitions];
      v21 = [v20 count];

      if (v6 >= v21)
      {
        goto LABEL_14;
      }
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v35, v33}];
    free(v19);
    v32 = v13;
    SSFileLog();
LABEL_12:

    goto LABEL_13;
  }

LABEL_14:
  v22 = [MEMORY[0x1E69D4938] sharedConfig];
  v23 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v23 |= 2u;
  }

  v24 = [v22 OSLogObject];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 & 2;
  }

  if (!v25)
  {
    goto LABEL_22;
  }

  v26 = objc_opt_class();
  v27 = v26;
  v28 = [(SUScriptNavigationSimulator *)self enqueuedTransitions];
  v29 = [v28 count];
  v35 = 138543618;
  v36 = v26;
  v37 = 2048;
  v38 = v29;
  LODWORD(v33) = 22;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:{4, &v35, v33}];
    free(v30);
    SSFileLog();
LABEL_22:
  }

  v31 = [(SUScriptNavigationSimulator *)self enqueuedTransitions];
  [v31 addObject:v34];

  [(SUScriptNavigationSimulator *)self _startNextTransition];
}

- (void)_handlePopFromIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  v60 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = [MEMORY[0x1E69D4938] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (v10)
  {
    *location = 138543874;
    *&location[4] = objc_opt_class();
    v56 = 2048;
    v57 = a3;
    v58 = 2048;
    v59 = a4;
    v11 = *&location[4];
    LODWORD(v46) = 32;
    v45 = location;
    v12 = _os_log_send_and_compose_impl();

    if (v12)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, location, v46}];
      free(v12);
      v45 = v13;
      SSFileLog();
    }
  }

  else
  {
  }

  v14 = [(SUScriptNavigationSimulator *)self initialIndex];
  v15 = [(SUScriptNavigationSimulator *)self navigationController];
  v16 = [v15 viewControllers];
  v17 = v14 < [v16 count];

  if (v17)
  {
    do
    {
      v18 = [(SUScriptNavigationSimulator *)self navigationController];
      v19 = [v18 viewControllers];
      v20 = [v19 objectAtIndexedSubscript:v14];

      v21 = [v20 view];
      v22 = [v21 layer];
      [v22 removeAllAnimations];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v23 = [v20 childViewControllers];
      v24 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v24)
      {
        v25 = *v51;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v51 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = [*(*(&v50 + 1) + 8 * i) view];
            v28 = [v27 layer];
            [v28 removeAllAnimations];
          }

          v24 = [v23 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v24);
      }

      v29 = [(SUScriptNavigationSimulator *)self navigationController];
      v30 = [v29 viewControllers];
      v31 = [v30 count];

      ++v14;
    }

    while (v14 < v31);
  }

  v32 = [(SUScriptNavigationSimulator *)self navigationController];
  v33 = [v32 viewControllers];

  if (a4 < 0 || [v33 count] <= a4)
  {
    v34 = 0;
  }

  else
  {
    v34 = [v33 objectAtIndexedSubscript:a4];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = [MEMORY[0x1E69D4938] sharedConfig];
    v38 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v39 = v38 | 2;
    }

    else
    {
      v39 = v38;
    }

    v40 = [v37 OSLogObject];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v39;
    }

    else
    {
      v41 = v39 & 2;
    }

    if (v41)
    {
      v42 = objc_opt_class();
      *location = 138543874;
      *&location[4] = v42;
      v56 = 2048;
      v57 = a3;
      v58 = 2048;
      v59 = a4;
      v43 = v42;
      LODWORD(v46) = 32;
      v44 = _os_log_send_and_compose_impl();

      if (!v44)
      {
LABEL_36:

        goto LABEL_37;
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithCString:v44 encoding:{4, location, v46}];
      free(v44);
      SSFileLog();
    }

    goto LABEL_36;
  }

  objc_initWeak(location, self);
  v35 = [SUScriptNavigationTransition alloc];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __59__SUScriptNavigationSimulator__handlePopFromIndex_toIndex___block_invoke;
  v48[3] = &unk_1E8165308;
  objc_copyWeak(v49, location);
  v49[1] = a3;
  v49[2] = a4;
  v36 = [(SUScriptNavigationTransition *)v35 initWithContainer:v34 finishBlock:v48];
  [(SUScriptNavigationTransition *)v36 setFromIndex:a3];
  [(SUScriptNavigationTransition *)v36 setToIndex:a4];
  [(SUScriptNavigationSimulator *)self _enqueueLoadingState:v36];

  objc_destroyWeak(v49);
  objc_destroyWeak(location);
LABEL_37:
}

void __59__SUScriptNavigationSimulator__handlePopFromIndex_toIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = objc_opt_class();
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v21 = 138543874;
  v22 = v10;
  v23 = 2048;
  v24 = v11;
  v25 = 2048;
  v26 = v12;
  v13 = v10;
  LODWORD(v16) = 32;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v21, v16}];
    free(v14);
    SSFileLog();
LABEL_9:
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SUScriptNavigationSimulator__handlePopFromIndex_toIndex___block_invoke_37;
  block[3] = &unk_1E81652E0;
  objc_copyWeak(&v19, (a1 + 32));
  v20 = *(a1 + 40);
  v18 = v4;
  v15 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v19);
}

void __59__SUScriptNavigationSimulator__handlePopFromIndex_toIndex___block_invoke_37(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v19 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v16 = [v5 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (!v20)
    {
      goto LABEL_22;
    }

    v21 = objc_loadWeakRetained((a1 + 40));
    v22 = objc_opt_class();
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    *v28 = 138543874;
    *&v28[4] = v22;
    *&v28[12] = 2048;
    *&v28[14] = v23;
    *&v28[22] = 2048;
    v29 = v24;
    v25 = v22;
    LODWORD(v27) = 32;
    v26 = _os_log_send_and_compose_impl();

    if (v26)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, v28, v27, *v28, *&v28[8], v29}];
      free(v26);
      SSFileLog();
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v4 = *(a1 + 56);
  if (v4 == [WeakRetained lastVisibleIndex])
  {
    v5 = [*(a1 + 32) embeddedViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E69D4938] sharedConfig];
      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      v9 = [v6 OSLogObject];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v10 = objc_loadWeakRetained((a1 + 40));
        v11 = objc_opt_class();
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        *v28 = 138543874;
        *&v28[4] = v11;
        *&v28[12] = 2048;
        *&v28[14] = v12;
        *&v28[22] = 2048;
        v29 = v13;
        v14 = v11;
        LODWORD(v27) = 32;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
LABEL_13:

          v16 = [v5 originalViewController];
          v17 = [v16 view];
          [v17 setNeedsLayout];

          v18 = [v16 view];
          [v18 layoutIfNeeded];

          [*(a1 + 32) setEmbeddedViewController:v16 animated:0 completion:0];
LABEL_22:

          goto LABEL_23;
        }

        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v28, v27, *v28, *&v28[16], v29}];
        free(v15);
        SSFileLog();
      }

      goto LABEL_13;
    }

LABEL_23:
  }
}

- (id)_popHandler
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SUScriptNavigationSimulator__popHandler__block_invoke;
  v5[3] = &unk_1E8165330;
  v5[4] = self;
  v2 = MEMORY[0x1C6916C70](v5, a2);
  v3 = MEMORY[0x1C6916C70]();

  return v3;
}

void __42__SUScriptNavigationSimulator__popHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 lastVisibleIndex];
  v6 = [*(a1 + 32) navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 indexOfObject:v4];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v8 != v5)
  {
    [*(a1 + 32) setLastVisibleIndex:v8];
    v10 = *(a1 + 32);

    [v10 _handlePopFromIndex:v5 toIndex:v8];
  }
}

- (void)_startNextTransition
{
  location[3] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(SUScriptNavigationSimulator *)self enqueuedTransitions];
  v4 = [v3 firstObject];

  if (v4 && ![v4 status])
  {
    [v4 setStatus:1];
    objc_initWeak(location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__SUScriptNavigationSimulator__startNextTransition__block_invoke;
    v13[3] = &unk_1E8165358;
    objc_copyWeak(&v14, location);
    [v4 addFinishBlock:v13];
    [(SUScriptNavigationSimulator *)self _callCallbackWithWithTransition:v4];
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    v8 = [v5 OSLogObject];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v9 = *(location + 4);
      LODWORD(v12) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, location, v12}];
        free(v10);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

void __51__SUScriptNavigationSimulator__startNextTransition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SUScriptNavigationSimulator__startNextTransition__block_invoke_2;
  v5[3] = &unk_1E8164948;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __51__SUScriptNavigationSimulator__startNextTransition__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained enqueuedTransitions];
  [v2 removeObject:*(a1 + 32)];

  [WeakRetained _startNextTransition];
}

- (void)_callCallbackWithWithTransition:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (v9)
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v4 fromIndex];
    v13 = [v4 toIndex];
    v14 = [(SUScriptNavigationSimulator *)self transitionCallback];
    v37 = 138544130;
    v38 = v10;
    v39 = 2048;
    v40 = v12;
    v41 = 2048;
    v42 = v13;
    v43 = 2114;
    v44 = v14;
    LODWORD(v33) = 42;
    v32 = &v37;
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v37, v33}];
    free(v15);
    v32 = v8;
    SSFileLog();
  }

LABEL_11:
  v16 = [(SUScriptNavigationSimulator *)self transitionCallback];

  if (!v16)
  {
    v23 = [MEMORY[0x1E69D4938] sharedConfig];
    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v23 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v28 = v27;
      v29 = [v4 fromIndex];
      v30 = [v4 toIndex];
      v37 = 138543874;
      v38 = v27;
      v39 = 2048;
      v40 = v29;
      v41 = 2048;
      v42 = v30;
      LODWORD(v33) = 32;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_22:

        [(SUScriptObject *)self dispatchEvent:v4 forName:@"simulatorWillTransition"];
        goto LABEL_23;
      }

      v26 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v37, v33}];
      free(v31);
      SSFileLog();
    }

    goto LABEL_22;
  }

  v17 = [SUScriptFunction alloc];
  v18 = [(SUScriptNavigationSimulator *)self transitionCallback];
  v19 = [(SUScriptFunction *)v17 initWithScriptObject:v18];

  [(SUScriptFunction *)v19 setThisObject:self];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SUScriptNavigationSimulator _relativeIndexFromIndex:](self, "_relativeIndexFromIndex:", objc_msgSend(v4, "fromIndex"))}];
  v36[0] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SUScriptNavigationSimulator _relativeIndexFromIndex:](self, "_relativeIndexFromIndex:", objc_msgSend(v4, "toIndex"))}];
  v36[1] = v21;
  v36[2] = v4;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __63__SUScriptNavigationSimulator__callCallbackWithWithTransition___block_invoke;
  v34[3] = &unk_1E8165380;
  v34[4] = self;
  v35 = v4;
  [(SUScriptFunction *)v19 callWithArguments:v22 completionBlock:v34];
  [(SUScriptFunction *)v19 setThisObject:0];

LABEL_23:
}

void __63__SUScriptNavigationSimulator__callCallbackWithWithTransition___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![v3 BOOLValue])
  {
    v10 = [MEMORY[0x1E69D4938] sharedConfig];
    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      *v28 = 138543618;
      *&v28[4] = objc_opt_class();
      *&v28[12] = 2114;
      *&v28[14] = v3;
      v14 = *&v28[4];
      LODWORD(v27) = 22;
      v26 = v28;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
        goto LABEL_22;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v28, v27, *v28, *&v28[8]}];
      free(v15);
      v26 = v13;
      SSFileLog();
    }

LABEL_22:
    v16 = [MEMORY[0x1E69D4938] sharedConfig];
    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v21 = *(a1 + 40);
      v22 = v20;
      v23 = [v21 fromIndex];
      v24 = [*(a1 + 40) toIndex];
      *v28 = 138543874;
      *&v28[4] = v20;
      *&v28[12] = 2048;
      *&v28[14] = v23;
      *&v28[22] = 2048;
      v29 = v24;
      LODWORD(v27) = 32;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_31:

        [*(a1 + 32) dispatchEvent:*(a1 + 40) forName:@"simulatorWillTransition"];
        goto LABEL_32;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, v28, v27}];
      free(v25);
      SSFileLog();
    }

    goto LABEL_31;
  }

  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  *v28 = 138543362;
  *&v28[4] = objc_opt_class();
  v8 = *&v28[4];
  LODWORD(v27) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v28, v27, *v28}];
    free(v9);
    SSFileLog();
LABEL_11:
  }

LABEL_32:
}

+ (id)webScriptNameForKeyName:(id)a3
{
  v4 = a3;
  v5 = [__KeyMapping_10 objectForKey:v4];
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationSimulator;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForKeyName_, v4);
  }

  return v5;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2(a3, &__SelectorMapping_7, 3);
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SUScriptNavigationSimulator;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SUScriptNavigationSimulator;
  v2 = [(SUScriptObject *)&v5 scriptAttributeKeys];
  v3 = [__KeyMapping_10 allKeys];
  [v2 addObjectsFromArray:v3];

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_7 = sel_popViewWithCompletion_;
    *algn_1EBF3A928 = @"popView";
    qword_1EBF3A930 = sel_popToViewAtIndex_completion_;
    unk_1EBF3A938 = @"popToView";
    qword_1EBF3A940 = sel_pushViewWithCompletion_;
    unk_1EBF3A948 = @"pushView";
    __KeyMapping_10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"transitionCallback", @"visibleIndex", @"visibleIndex", @"indexCount", @"indexCount", 0}];

    MEMORY[0x1EEE66BB8]();
  }
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end