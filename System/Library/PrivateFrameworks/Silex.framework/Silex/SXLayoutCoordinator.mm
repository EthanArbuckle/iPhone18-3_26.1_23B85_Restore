@interface SXLayoutCoordinator
- (SXLayoutCoordinator)initWithPipeline:(id)pipeline integrator:(id)integrator instructionFactory:(id)factory invalidationManager:(id)manager blueprintProvider:(id)provider DOMObjectProvider:(id)objectProvider layoutParametersManager:(id)parametersManager documentProvider:(id)self0 layoutPolicyManager:(id)self1;
- (SXLayoutCoordinatorDelegate)delegate;
- (id)taskWithOptions:(id)options layoutBlueprint:(id)blueprint instructions:(id)instructions;
- (void)layoutInvalidationManager:(id)manager didInvalidateBlueprint:(id)blueprint;
- (void)layoutPipeline:(id)pipeline finishedTask:(id)task withResult:(id)result;
- (void)layoutWithOptions:(id)options;
- (void)startTask:(id)task;
@end

@implementation SXLayoutCoordinator

- (SXLayoutCoordinator)initWithPipeline:(id)pipeline integrator:(id)integrator instructionFactory:(id)factory invalidationManager:(id)manager blueprintProvider:(id)provider DOMObjectProvider:(id)objectProvider layoutParametersManager:(id)parametersManager documentProvider:(id)self0 layoutPolicyManager:(id)self1
{
  pipelineCopy = pipeline;
  integratorCopy = integrator;
  factoryCopy = factory;
  managerCopy = manager;
  providerCopy = provider;
  objectProviderCopy = objectProvider;
  parametersManagerCopy = parametersManager;
  documentProviderCopy = documentProvider;
  policyManagerCopy = policyManager;
  v30.receiver = self;
  v30.super_class = SXLayoutCoordinator;
  v19 = [(SXLayoutCoordinator *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_pipeline, pipeline);
    objc_storeStrong(&v20->_integrator, integrator);
    objc_storeStrong(&v20->_instructionFactory, factory);
    objc_storeStrong(&v20->_invalidationManager, manager);
    objc_storeStrong(&v20->_blueprintProvider, provider);
    objc_storeStrong(&v20->_DOMObjectProvider, objectProvider);
    objc_storeStrong(&v20->_layoutParametersManager, parametersManager);
    objc_storeStrong(&v20->_documentProvider, documentProvider);
    objc_storeStrong(&v20->_layoutPolicyManager, policyManager);
    [pipelineCopy setDelegate:v20];
    [managerCopy setDelegate:v20];
  }

  return v20;
}

- (void)layoutWithOptions:(id)options
{
  v44 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Received request for new layout", buf, 2u);
  }

  layoutOptions = [(SXLayoutCoordinator *)self layoutOptions];
  v8 = [layoutOptions isEqual:optionsCopy];

  if (v8)
  {
    v9 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = optionsCopy;
      v10 = "Ignored layout request because options are identical to a previous request, options=%{public}@";
      v11 = v9;
LABEL_6:
      _os_log_impl(&dword_1D825C000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_62;
    }

    goto LABEL_62;
  }

  blueprintProvider = [(SXLayoutCoordinator *)self blueprintProvider];
  blueprint = [blueprintProvider blueprint];
  layoutOptions2 = [blueprint layoutOptions];
  v15 = [layoutOptions2 isEqual:optionsCopy];

  if (v15)
  {
    v16 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = optionsCopy;
      _os_log_impl(&dword_1D825C000, v16, OS_LOG_TYPE_DEFAULT, "Ignored layout request; options are identical to integrated layout blueprint, options=%{public}@", buf, 0xCu);
    }

    pipeline = [(SXLayoutCoordinator *)self pipeline];
    [pipeline cancelTasks];

    layoutOptions3 = [(SXLayoutCoordinator *)self layoutOptions];
    objc_storeStrong(&self->_layoutOptions, options);
    delegate = [(SXLayoutCoordinator *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate2 = [(SXLayoutCoordinator *)self delegate];
      [delegate2 layoutCoordinator:self cancelledLayoutWithOptions:layoutOptions3];
    }

    goto LABEL_62;
  }

  layoutOptions4 = [(SXLayoutCoordinator *)self layoutOptions];
  v23 = [optionsCopy diffWithLayoutOptions:layoutOptions4];

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
    v43 = optionsCopy;
    _os_log_impl(&dword_1D825C000, v24, OS_LOG_TYPE_DEFAULT, "Assessing layout request; layout diff=%{public}@, options=%{public}@", buf, 0x16u);
  }

  layoutPolicyManager = [(SXLayoutCoordinator *)self layoutPolicyManager];
  v29 = [layoutPolicyManager shouldPerformLayoutWithLayoutOptionsDiff:v23];

  v30 = SXLayoutLog;
  v31 = os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT);
  if (!v29)
  {
    if (!v31)
    {
      goto LABEL_62;
    }

    *buf = 138543362;
    v41 = optionsCopy;
    v10 = "Ignored layout request; layout policy did not require layout, options=%{public}@";
    v11 = v30;
    goto LABEL_6;
  }

  if (v31)
  {
    *buf = 138543362;
    v41 = optionsCopy;
    _os_log_impl(&dword_1D825C000, v30, OS_LOG_TYPE_DEFAULT, "Creating layout task; layout policy requires a layout, options=%{public}@", buf, 0xCu);
  }

  objc_storeStrong(&self->_layoutOptions, options);
  debouncer = [(SXLayoutCoordinator *)self debouncer];
  [debouncer cancel];

  objc_initWeak(buf, self);
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __41__SXLayoutCoordinator_layoutWithOptions___block_invoke;
  v37 = &unk_1E8500638;
  objc_copyWeak(&v39, buf);
  v38 = optionsCopy;
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

- (void)layoutPipeline:(id)pipeline finishedTask:(id)task withResult:(id)result
{
  v47 = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  taskCopy = task;
  resultCopy = result;
  v11 = CACurrentMediaTime();
  v12 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    identifier = [taskCopy identifier];
    *buf = 138543618;
    v44 = identifier;
    v45 = 2112;
    v46 = resultCopy;
    _os_log_impl(&dword_1D825C000, v13, OS_LOG_TYPE_DEFAULT, "Received layout result, task-identifier=%{public}@, result=%@", buf, 0x16u);
  }

  layoutOptions = [(SXLayoutCoordinator *)self layoutOptions];
  options = [taskCopy options];
  v17 = [layoutOptions isEqual:options];

  if (v17)
  {
    dOMObjectProvider = [(SXLayoutCoordinator *)self DOMObjectProvider];
    v19 = [resultCopy DOM];
    [dOMObjectProvider setDOM:v19];

    blueprintProvider = [(SXLayoutCoordinator *)self blueprintProvider];
    blueprint = [resultCopy blueprint];
    [blueprintProvider updateBlueprint:blueprint];

    layoutParametersManager = [(SXLayoutCoordinator *)self layoutParametersManager];
    [layoutParametersManager layoutFinishedForTask:taskCopy result:resultCopy];

    delegate = [(SXLayoutCoordinator *)self delegate];
    LOBYTE(blueprint) = objc_opt_respondsToSelector();

    if (blueprint)
    {
      delegate2 = [(SXLayoutCoordinator *)self delegate];
      blueprint2 = [resultCopy blueprint];
      [delegate2 layoutCoordinator:self willIntegrateBlueprint:blueprint2];
    }

    objc_initWeak(&location, self);
    integrator = [(SXLayoutCoordinator *)self integrator];
    blueprint3 = [resultCopy blueprint];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __62__SXLayoutCoordinator_layoutPipeline_finishedTask_withResult___block_invoke;
    v38[3] = &unk_1E8501240;
    objc_copyWeak(v41, &location);
    v41[1] = *&v11;
    v28 = taskCopy;
    v39 = v28;
    v29 = resultCopy;
    v40 = v29;
    [integrator integrateBlueprint:blueprint3 withCompletion:v38];

    blueprint4 = [v29 blueprint];
    LOBYTE(blueprint3) = [blueprint4 isComplete];

    if ((blueprint3 & 1) == 0)
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
          identifier2 = [v28 identifier];
          [SXLayoutCoordinator layoutPipeline:identifier2 finishedTask:buf withResult:v36];
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
      identifier3 = [taskCopy identifier];
      *buf = 138543362;
      v44 = identifier3;
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

- (void)layoutInvalidationManager:(id)manager didInvalidateBlueprint:(id)blueprint
{
  v17 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  blueprintCopy = blueprint;
  v8 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v16[0] = 67109120;
    v16[1] = [blueprintCopy isComplete];
    _os_log_impl(&dword_1D825C000, v9, OS_LOG_TYPE_DEFAULT, "Received invalidated blueprint, requesting new layout; layoutIsComplete=%d", v16, 8u);
  }

  layoutOptions = [blueprintCopy layoutOptions];
  layoutOptions2 = [(SXLayoutCoordinator *)self layoutOptions];
  v12 = [layoutOptions isEqual:layoutOptions2];

  if (v12)
  {
    layoutOptions3 = [blueprintCopy layoutOptions];
    v14 = [(SXLayoutCoordinator *)self taskWithOptions:layoutOptions3 layoutBlueprint:blueprintCopy instructions:MEMORY[0x1E695E0F0]];

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

- (void)startTask:(id)task
{
  v30 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  if ([taskCopy type] == 1 && (objc_msgSend(taskCopy, "blueprint"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "layoutOptions"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(taskCopy, "options"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, v5, (v8 & 1) == 0))
  {
    v23 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_ERROR))
    {
      [SXLayoutCoordinator startTask:v23];
    }
  }

  else
  {
    documentProvider = [(SXLayoutCoordinator *)self documentProvider];
    document = [documentProvider document];

    v11 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      identifier = [document identifier];
      identifier2 = [taskCopy identifier];
      v24 = 138543874;
      v25 = identifier;
      v26 = 2048;
      selfCopy = self;
      v28 = 2114;
      v29 = identifier2;
      _os_log_impl(&dword_1D825C000, v12, OS_LOG_TYPE_DEFAULT, "Scheduling new layout task, document-identifier=%{public}@, coordinator=%p, task-identifier=%{public}@", &v24, 0x20u);
    }

    layoutParametersManager = [(SXLayoutCoordinator *)self layoutParametersManager];
    blueprintProvider = [(SXLayoutCoordinator *)self blueprintProvider];
    blueprint = [blueprintProvider blueprint];
    layoutOptions = [blueprint layoutOptions];
    v19 = [layoutParametersManager layoutParametersForTask:taskCopy previousLayoutOptions:layoutOptions];

    delegate = [(SXLayoutCoordinator *)self delegate];
    LOBYTE(blueprintProvider) = objc_opt_respondsToSelector();

    if (blueprintProvider)
    {
      delegate2 = [(SXLayoutCoordinator *)self delegate];
      [delegate2 layoutCoordinator:self willLayoutWithParameters:v19];
    }

    pipeline = [(SXLayoutCoordinator *)self pipeline];
    [pipeline layoutWithTask:taskCopy];
  }
}

- (id)taskWithOptions:(id)options layoutBlueprint:(id)blueprint instructions:(id)instructions
{
  v21[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blueprintCopy = blueprint;
  instructionsCopy = instructions;
  if (![instructionsCopy count])
  {
    v11 = +[SXDefaultLayoutInstruction instruction];
    v21[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    instructionsCopy = v12;
  }

  if ([instructionsCopy count])
  {
    v13 = [[SXLayoutInstructions alloc] initWithInstructions:instructionsCopy];
  }

  else
  {
    v13 = +[SXLayoutInstructions defaultInstructions];
  }

  v14 = v13;
  v15 = [SXLayoutTask alloc];
  v16 = v15;
  if (blueprintCopy)
  {
    dOMObjectProvider = [(SXLayoutCoordinator *)self DOMObjectProvider];
    v18 = [dOMObjectProvider DOM];
    v19 = [(SXLayoutTask *)v16 initWithOptions:optionsCopy instructions:v14 blueprint:blueprintCopy DOM:v18];
  }

  else
  {
    v19 = [(SXLayoutTask *)v15 initWithOptions:optionsCopy instructions:v14];
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