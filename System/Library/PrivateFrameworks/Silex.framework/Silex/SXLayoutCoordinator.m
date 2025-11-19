@interface SXLayoutCoordinator
- (SXLayoutCoordinator)initWithPipeline:(id)a3 integrator:(id)a4 instructionFactory:(id)a5 invalidationManager:(id)a6 blueprintProvider:(id)a7 DOMObjectProvider:(id)a8 layoutParametersManager:(id)a9 documentProvider:(id)a10 layoutPolicyManager:(id)a11;
- (SXLayoutCoordinatorDelegate)delegate;
- (id)taskWithOptions:(id)a3 layoutBlueprint:(id)a4 instructions:(id)a5;
- (void)layoutInvalidationManager:(id)a3 didInvalidateBlueprint:(id)a4;
- (void)layoutPipeline:(id)a3 finishedTask:(id)a4 withResult:(id)a5;
- (void)layoutWithOptions:(id)a3;
- (void)startTask:(id)a3;
@end

@implementation SXLayoutCoordinator

- (SXLayoutCoordinator)initWithPipeline:(id)a3 integrator:(id)a4 instructionFactory:(id)a5 invalidationManager:(id)a6 blueprintProvider:(id)a7 DOMObjectProvider:(id)a8 layoutParametersManager:(id)a9 documentProvider:(id)a10 layoutPolicyManager:(id)a11
{
  v29 = a3;
  v27 = a4;
  v26 = a5;
  v28 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v18 = a11;
  v30.receiver = self;
  v30.super_class = SXLayoutCoordinator;
  v19 = [(SXLayoutCoordinator *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_pipeline, a3);
    objc_storeStrong(&v20->_integrator, a4);
    objc_storeStrong(&v20->_instructionFactory, a5);
    objc_storeStrong(&v20->_invalidationManager, a6);
    objc_storeStrong(&v20->_blueprintProvider, a7);
    objc_storeStrong(&v20->_DOMObjectProvider, a8);
    objc_storeStrong(&v20->_layoutParametersManager, a9);
    objc_storeStrong(&v20->_documentProvider, a10);
    objc_storeStrong(&v20->_layoutPolicyManager, a11);
    [v29 setDelegate:v20];
    [v28 setDelegate:v20];
  }

  return v20;
}

- (void)layoutWithOptions:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Received request for new layout", buf, 2u);
  }

  v7 = [(SXLayoutCoordinator *)self layoutOptions];
  v8 = [v7 isEqual:v5];

  if (v8)
  {
    v9 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v5;
      v10 = "Ignored layout request because options are identical to a previous request, options=%{public}@";
      v11 = v9;
LABEL_6:
      _os_log_impl(&dword_1D825C000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_62;
    }

    goto LABEL_62;
  }

  v12 = [(SXLayoutCoordinator *)self blueprintProvider];
  v13 = [v12 blueprint];
  v14 = [v13 layoutOptions];
  v15 = [v14 isEqual:v5];

  if (v15)
  {
    v16 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v5;
      _os_log_impl(&dword_1D825C000, v16, OS_LOG_TYPE_DEFAULT, "Ignored layout request; options are identical to integrated layout blueprint, options=%{public}@", buf, 0xCu);
    }

    v17 = [(SXLayoutCoordinator *)self pipeline];
    [v17 cancelTasks];

    v18 = [(SXLayoutCoordinator *)self layoutOptions];
    objc_storeStrong(&self->_layoutOptions, a3);
    v19 = [(SXLayoutCoordinator *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [(SXLayoutCoordinator *)self delegate];
      [v21 layoutCoordinator:self cancelledLayoutWithOptions:v18];
    }

    goto LABEL_62;
  }

  v22 = [(SXLayoutCoordinator *)self layoutOptions];
  v23 = [v5 diffWithLayoutOptions:v22];

  v24 = SXLayoutLog;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<SXLayoutOptionsDiff: "];
    v26 = v25;
    if (v23)
    {
      if (v23 == 0x3FFFF)
      {
        v27 = @"All";
      }

      else
      {
        if (v23)
        {
          [v25 appendString:@"ColumnLayout; "];
        }

        if ((v23 & 2) != 0)
        {
          [v26 appendString:@"ViewportSize; "];
        }

        if ((v23 & 4) != 0)
        {
          [v26 appendString:@"ContentSizeCategory; "];
        }

        if ((v23 & 8) != 0)
        {
          [v26 appendString:@"BundleSubscriptionStatus; "];
        }

        if ((v23 & 0x10) != 0)
        {
          [v26 appendString:@"ChannelSubscriptionStatus; "];
        }

        if ((v23 & 0x20) != 0)
        {
          [v26 appendString:@"ViewingLocation; "];
        }

        if ((v23 & 0x40) != 0)
        {
          [v26 appendString:@"Testing; "];
        }

        if ((v23 & 0x80) != 0)
        {
          [v26 appendString:@"ContentScaleFactor; "];
        }

        if ((v23 & 0x100) != 0)
        {
          [v26 appendString:@"PreferredColorScheme; "];
        }

        if ((v23 & 0x200) != 0)
        {
          [v26 appendString:@"HorizontalSizeClass; "];
        }

        if ((v23 & 0x400) != 0)
        {
          [v26 appendString:@"VerticalSizeClass; "];
        }

        if ((v23 & 0x800) != 0)
        {
          [v26 appendString:@"NewsletterSubscriptionStatus; "];
        }

        if ((v23 & 0x20000) != 0)
        {
          [v26 appendString:@"TagSubscriptionStatus; "];
        }

        if ((v23 & 0x10000) != 0)
        {
          [v26 appendString:@"OfferIdentifier; "];
        }

        if ((v23 & 0x2000) != 0)
        {
          [v26 appendString:@"SubscriptionActivationEligibility; "];
        }

        if ((v23 & 0x1000) != 0)
        {
          [v26 appendString:@"OfferUpsellScenario; "];
        }

        if ((v23 & 0x4000) != 0)
        {
          [v26 appendString:@"SmartInvertColorsEnabled; "];
        }

        if ((v23 & 0x8000) == 0)
        {
          goto LABEL_55;
        }

        v27 = @"ConditionKeys; ";
      }
    }

    else
    {
      v27 = @"Equal";
    }

    [v26 appendString:v27];
LABEL_55:
    [v26 appendString:@">"];
    *buf = 138543618;
    v41 = v26;
    v42 = 2114;
    v43 = v5;
    _os_log_impl(&dword_1D825C000, v24, OS_LOG_TYPE_DEFAULT, "Assessing layout request; layout diff=%{public}@, options=%{public}@", buf, 0x16u);
  }

  v28 = [(SXLayoutCoordinator *)self layoutPolicyManager];
  v29 = [v28 shouldPerformLayoutWithLayoutOptionsDiff:v23];

  v30 = SXLayoutLog;
  v31 = os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT);
  if (!v29)
  {
    if (!v31)
    {
      goto LABEL_62;
    }

    *buf = 138543362;
    v41 = v5;
    v10 = "Ignored layout request; layout policy did not require layout, options=%{public}@";
    v11 = v30;
    goto LABEL_6;
  }

  if (v31)
  {
    *buf = 138543362;
    v41 = v5;
    _os_log_impl(&dword_1D825C000, v30, OS_LOG_TYPE_DEFAULT, "Creating layout task; layout policy requires a layout, options=%{public}@", buf, 0xCu);
  }

  objc_storeStrong(&self->_layoutOptions, a3);
  v32 = [(SXLayoutCoordinator *)self debouncer];
  [v32 cancel];

  objc_initWeak(buf, self);
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __41__SXLayoutCoordinator_layoutWithOptions___block_invoke;
  v37 = &unk_1E8500638;
  objc_copyWeak(&v39, buf);
  v38 = v5;
  v33 = [SXDelayed execute:&v34 delay:0.0];
  [(SXLayoutCoordinator *)self setDebouncer:v33, v34, v35, v36, v37];

  objc_destroyWeak(&v39);
  objc_destroyWeak(buf);
LABEL_62:
}

void __41__SXLayoutCoordinator_layoutWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v7 = WeakRetained;
    v4 = [WeakRetained instructionFactory];
    v5 = [v4 createInstructions];
    v6 = [v7 taskWithOptions:v3 layoutBlueprint:0 instructions:v5];

    [v7 startTask:v6];
    [v7 setDebouncer:0];

    WeakRetained = v7;
  }
}

- (void)layoutPipeline:(id)a3 finishedTask:(id)a4 withResult:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CACurrentMediaTime();
  v12 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v9 identifier];
    *buf = 138543618;
    v44 = v14;
    v45 = 2112;
    v46 = v10;
    _os_log_impl(&dword_1D825C000, v13, OS_LOG_TYPE_DEFAULT, "Received layout result, task-identifier=%{public}@, result=%@", buf, 0x16u);
  }

  v15 = [(SXLayoutCoordinator *)self layoutOptions];
  v16 = [v9 options];
  v17 = [v15 isEqual:v16];

  if (v17)
  {
    v18 = [(SXLayoutCoordinator *)self DOMObjectProvider];
    v19 = [v10 DOM];
    [v18 setDOM:v19];

    v20 = [(SXLayoutCoordinator *)self blueprintProvider];
    v21 = [v10 blueprint];
    [v20 updateBlueprint:v21];

    v22 = [(SXLayoutCoordinator *)self layoutParametersManager];
    [v22 layoutFinishedForTask:v9 result:v10];

    v23 = [(SXLayoutCoordinator *)self delegate];
    LOBYTE(v21) = objc_opt_respondsToSelector();

    if (v21)
    {
      v24 = [(SXLayoutCoordinator *)self delegate];
      v25 = [v10 blueprint];
      [v24 layoutCoordinator:self willIntegrateBlueprint:v25];
    }

    objc_initWeak(&location, self);
    v26 = [(SXLayoutCoordinator *)self integrator];
    v27 = [v10 blueprint];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __62__SXLayoutCoordinator_layoutPipeline_finishedTask_withResult___block_invoke;
    v38[3] = &unk_1E8501240;
    objc_copyWeak(v41, &location);
    v41[1] = *&v11;
    v28 = v9;
    v39 = v28;
    v29 = v10;
    v40 = v29;
    [v26 integrateBlueprint:v27 withCompletion:v38];

    v30 = [v29 blueprint];
    LOBYTE(v27) = [v30 isComplete];

    if ((v27 & 1) == 0)
    {
      v31 = SXLayoutLog;
      if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D825C000, v31, OS_LOG_TYPE_DEFAULT, "Starting new layout because blueprint is incomplete", buf, 2u);
      }

      v32 = [[SXRepeatedLayoutTask alloc] initWithTask:v28 result:v29];
      if ([(SXRepeatedLayoutTask *)v32 repeatCount]> 1)
      {
        v36 = SXLayoutLog;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = [v28 identifier];
          [SXLayoutCoordinator layoutPipeline:v37 finishedTask:buf withResult:v36];
        }
      }

      else
      {
        [(SXLayoutCoordinator *)self startTask:v32];
      }
    }

    objc_destroyWeak(v41);
    objc_destroyWeak(&location);
  }

  else
  {
    v33 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
      v35 = [v9 identifier];
      *buf = 138543362;
      v44 = v35;
      _os_log_impl(&dword_1D825C000, v34, OS_LOG_TYPE_DEFAULT, "Dropped result of layout because options are no longer valid, task-identifier=%{public}@", buf, 0xCu);
    }
  }
}

void __62__SXLayoutCoordinator_layoutPipeline_finishedTask_withResult___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = (CACurrentMediaTime() - *(a1 + 56)) * 1000.0;
    v6 = CACurrentMediaTime();
    [*(a1 + 32) startTime];
    v8 = (v6 - v7) * 1000.0;
    v9 = [*(a1 + 32) identifier];
    v14 = 134218498;
    v15 = v5;
    v16 = 2048;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Integrated layout blueprint in %fms, total-duration=%fms, task-identifier=%{public}@", &v14, 0x20u);
  }

  v10 = [WeakRetained delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [WeakRetained delegate];
    v13 = [*(a1 + 40) blueprint];
    [v12 layoutCoordinator:WeakRetained didIntegrateBlueprint:v13];
  }
}

- (void)layoutInvalidationManager:(id)a3 didInvalidateBlueprint:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v16[0] = 67109120;
    v16[1] = [v7 isComplete];
    _os_log_impl(&dword_1D825C000, v9, OS_LOG_TYPE_DEFAULT, "Received invalidated blueprint, requesting new layout; layoutIsComplete=%d", v16, 8u);
  }

  v10 = [v7 layoutOptions];
  v11 = [(SXLayoutCoordinator *)self layoutOptions];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = [v7 layoutOptions];
    v14 = [(SXLayoutCoordinator *)self taskWithOptions:v13 layoutBlueprint:v7 instructions:MEMORY[0x1E695E0F0]];

    [(SXLayoutCoordinator *)self startTask:v14];
  }

  else
  {
    v15 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Invalidated blueprint doesn't match the current layout options", v16, 2u);
    }
  }
}

- (void)startTask:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 type] == 1 && (objc_msgSend(v4, "blueprint"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "layoutOptions"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "options"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, v5, (v8 & 1) == 0))
  {
    v23 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_ERROR))
    {
      [SXLayoutCoordinator startTask:v23];
    }
  }

  else
  {
    v9 = [(SXLayoutCoordinator *)self documentProvider];
    v10 = [v9 document];

    v11 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v10 identifier];
      v14 = [v4 identifier];
      v24 = 138543874;
      v25 = v13;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&dword_1D825C000, v12, OS_LOG_TYPE_DEFAULT, "Scheduling new layout task, document-identifier=%{public}@, coordinator=%p, task-identifier=%{public}@", &v24, 0x20u);
    }

    v15 = [(SXLayoutCoordinator *)self layoutParametersManager];
    v16 = [(SXLayoutCoordinator *)self blueprintProvider];
    v17 = [v16 blueprint];
    v18 = [v17 layoutOptions];
    v19 = [v15 layoutParametersForTask:v4 previousLayoutOptions:v18];

    v20 = [(SXLayoutCoordinator *)self delegate];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      v21 = [(SXLayoutCoordinator *)self delegate];
      [v21 layoutCoordinator:self willLayoutWithParameters:v19];
    }

    v22 = [(SXLayoutCoordinator *)self pipeline];
    [v22 layoutWithTask:v4];
  }
}

- (id)taskWithOptions:(id)a3 layoutBlueprint:(id)a4 instructions:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v10 count])
  {
    v11 = +[SXDefaultLayoutInstruction instruction];
    v21[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    v10 = v12;
  }

  if ([v10 count])
  {
    v13 = [[SXLayoutInstructions alloc] initWithInstructions:v10];
  }

  else
  {
    v13 = +[SXLayoutInstructions defaultInstructions];
  }

  v14 = v13;
  v15 = [SXLayoutTask alloc];
  v16 = v15;
  if (v9)
  {
    v17 = [(SXLayoutCoordinator *)self DOMObjectProvider];
    v18 = [v17 DOM];
    v19 = [(SXLayoutTask *)v16 initWithOptions:v8 instructions:v14 blueprint:v9 DOM:v18];
  }

  else
  {
    v19 = [(SXLayoutTask *)v15 initWithOptions:v8 instructions:v14];
  }

  return v19;
}

- (SXLayoutCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)layoutPipeline:(void *)a1 finishedTask:(uint8_t *)buf withResult:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D825C000, log, OS_LOG_TYPE_ERROR, "Loop detected, unable to complete layout, task-identifier=%{public}@", buf, 0xCu);
}

@end