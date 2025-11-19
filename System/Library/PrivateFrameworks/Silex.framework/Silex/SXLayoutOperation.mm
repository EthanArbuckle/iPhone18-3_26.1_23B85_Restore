@interface SXLayoutOperation
- (BOOL)layoutBlueprint:(id)a3 containsComponents:(id)a4;
- (SXLayoutOperation)initWithTask:(id)a3 layouter:(id)a4 DOMObjectProvider:(id)a5 componentSizerEngine:(id)a6 layoutBlueprintFactory:(id)a7;
- (id)createLayoutBlueprintForComponents:(id)a3;
- (id)layoutWithBlueprint:(id)a3;
- (void)cancelOperation;
- (void)finishBookKeeping;
- (void)layouter:(id)a3 didFinishLayoutForComponentBlueprint:(id)a4 layoutBlueprint:(id)a5 shouldContinueLayout:(BOOL *)a6;
- (void)registerComponent:(id)a3 layoutBlueprint:(id)a4 componentIndex:(unint64_t)a5;
- (void)start;
- (void)startBookKeeping;
- (void)updateLayoutBlueprint:(id)a3 components:(id)a4 requiresInvalidation:(BOOL *)a5;
@end

@implementation SXLayoutOperation

- (SXLayoutOperation)initWithTask:(id)a3 layouter:(id)a4 DOMObjectProvider:(id)a5 componentSizerEngine:(id)a6 layoutBlueprintFactory:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SXLayoutOperation;
  v17 = [(SXLayoutOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_task, a3);
    objc_storeStrong(&v18->_DOMObjectProvider, a5);
    objc_storeStrong(&v18->_componentSizerEngine, a6);
    objc_storeStrong(&v18->_layoutBlueprintFactory, a7);
    objc_storeStrong(&v18->_layouter, a4);
    [v13 setDelegate:v18];
  }

  return v18;
}

- (void)start
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(SXLayoutOperation *)self isCancelled])
  {

    [(SXLayoutOperation *)self cancelOperation];
  }

  else
  {
    v3 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(SXLayoutOperation *)self task];
      v6 = [v5 identifier];
      v7 = [(SXLayoutOperation *)self task];
      v22 = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Starting layout operation for task, task-identifier=%{public}@, task: %{public}@", &v22, 0x16u);
    }

    [(SXLayoutOperation *)self startBookKeeping];
    v8 = [(SXLayoutOperation *)self task];
    v9 = [v8 blueprint];

    [(SXLayoutOperation *)self prepareLayoutBlueprint:v9];
    v10 = [(SXLayoutOperation *)self beforeBlock];

    if (v10)
    {
      v11 = [(SXLayoutOperation *)self beforeBlock];
      (v11)[2](v11, v9);
    }

    if (([(SXLayoutOperation *)self isCancelled]& 1) == 0)
    {
      while (1)
      {
        v12 = v9;
        v9 = [(SXLayoutOperation *)self layoutWithBlueprint:v9];

        v13 = [(SXLayoutOperation *)self afterBlock];
        if (v13)
        {
          v14 = v13;
          v15 = [(SXLayoutOperation *)self isCancelled];

          if ((v15 & 1) == 0)
          {
            v16 = [(SXLayoutOperation *)self afterBlock];
            (v16)[2](v16, v9);
          }
        }

        if (([(SXLayoutOperation *)self isCancelled]& 1) != 0)
        {
          break;
        }

        v17 = [(SXLayoutOperation *)self task];
        v18 = [v17 instructions];
        if ([v18 areFulfilledForBlueprint:v9])
        {
          v19 = [(SXLayoutOperation *)self DOMObjectProvider];
          v20 = [v19 components];
          v21 = [(SXLayoutOperation *)self layoutBlueprint:v9 containsComponents:v20];

          if (v21)
          {
            break;
          }
        }

        else
        {
        }
      }

      objc_storeStrong(&self->_layoutBlueprint, v9);
    }

    [(SXLayoutOperation *)self finishBookKeeping];
  }
}

- (void)cancelOperation
{
  [(SXLayoutOperation *)self startBookKeeping];

  [(SXLayoutOperation *)self finishBookKeeping];
}

- (void)startBookKeeping
{
  self->_startTime = CACurrentMediaTime();
  [(SXLayoutOperation *)self willChangeValueForKey:@"isExecuting"];
  [(SXLayoutOperation *)self setExecuting:1];

  [(SXLayoutOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)finishBookKeeping
{
  self->_duration = CACurrentMediaTime() - self->_startTime;
  v3 = [(SXLayoutOperation *)self completionBlock];

  if (v3)
  {
    v4 = [(SXLayoutOperation *)self completionBlock];
    v4[2]();

    [(SXLayoutOperation *)self setCompletionBlock:0];
  }

  [(SXLayoutOperation *)self willChangeValueForKey:@"isExecuting"];
  [(SXLayoutOperation *)self setExecuting:0];
  [(SXLayoutOperation *)self didChangeValueForKey:@"isExecuting"];
  [(SXLayoutOperation *)self willChangeValueForKey:@"isFinished"];
  [(SXLayoutOperation *)self setFinished:1];

  [(SXLayoutOperation *)self didChangeValueForKey:@"isFinished"];
}

- (id)layoutWithBlueprint:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v21 = [(SXLayoutOperation *)self DOMObjectProvider];
    v22 = [v21 components];
    v5 = [(SXLayoutOperation *)self createLayoutBlueprintForComponents:v22];

    v23 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      v25 = [(SXLayoutOperation *)self task];
      v26 = [v25 identifier];
      *v55 = 138412546;
      *&v55[4] = v5;
      *&v55[12] = 2112;
      *&v55[14] = v26;
      _os_log_impl(&dword_1D825C000, v24, OS_LOG_TYPE_DEFAULT, "Created new layout blueprint, layout-blueprint=%@, task-identifier=%@", v55, 0x16u);
    }

    goto LABEL_18;
  }

  v5 = v4;
  v6 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(SXLayoutOperation *)self task];
    v9 = [v8 identifier];
    *v55 = 138412546;
    *&v55[4] = v9;
    *&v55[12] = 1024;
    *&v55[14] = [v5 isComplete];
    _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Validating existing layout, task-identifier=%@, layoutIsComplete=%d", v55, 0x12u);
  }

  v10 = [(SXLayoutOperation *)self task];
  v11 = [v10 instructions];
  v12 = [v11 areFulfilledForBlueprint:v5];

  if (v12)
  {
    v13 = [(SXLayoutOperation *)self DOMObjectProvider];
    v14 = [v13 components];
    v15 = [(SXLayoutOperation *)self layoutBlueprint:v5 containsComponents:v14];

    v16 = SXLayoutLog;
    v17 = os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = v16;
        v19 = [(SXLayoutOperation *)self task];
        v20 = [v19 identifier];
        *v55 = 138412290;
        *&v55[4] = v20;
        _os_log_impl(&dword_1D825C000, v18, OS_LOG_TYPE_DEFAULT, "No layout required, blueprint is valid, task-identifier=%@", v55, 0xCu);
      }

      goto LABEL_23;
    }

    if (!v17)
    {
      goto LABEL_15;
    }

    v28 = v16;
    v29 = [(SXLayoutOperation *)self task];
    v30 = [v29 identifier];
    *v55 = 138412290;
    *&v55[4] = v30;
    v31 = "Requiring layout, DOM contains components that are not in provided blueprint, task-identifier=%@";
    goto LABEL_14;
  }

  v27 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    v29 = [(SXLayoutOperation *)self task];
    v30 = [v29 identifier];
    *v55 = 138412290;
    *&v55[4] = v30;
    v31 = "Requiring layout, instructions are not fullfilled with provided blueprint, task-identifier=%@";
LABEL_14:
    _os_log_impl(&dword_1D825C000, v28, OS_LOG_TYPE_DEFAULT, v31, v55, 0xCu);
  }

LABEL_15:
  v32 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
    v34 = [(SXLayoutOperation *)self task];
    v35 = [v34 identifier];
    *v55 = 138412290;
    *&v55[4] = v35;
    _os_log_impl(&dword_1D825C000, v33, OS_LOG_TYPE_DEFAULT, "Updating existing layout blueprint, task-identifier=%@", v55, 0xCu);
  }

  v36 = [(SXLayoutOperation *)self DOMObjectProvider];
  v37 = [v36 components];
  [(SXLayoutOperation *)self updateLayoutBlueprint:v5 components:v37 requiresInvalidation:0];

LABEL_18:
  v38 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    v40 = [(SXLayoutOperation *)self task];
    v41 = [v40 identifier];
    *v55 = 138412290;
    *&v55[4] = v41;
    _os_log_impl(&dword_1D825C000, v39, OS_LOG_TYPE_DEFAULT, "Invalidating components in layout, task-identifier=%@", v55, 0xCu);
  }

  [v5 invalidateDependentsOfInvalidatedComponents];
  v42 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v43 = v42;
    v44 = [(SXLayoutOperation *)self task];
    v45 = [v44 identifier];
    *v55 = 138412290;
    *&v55[4] = v45;
    _os_log_impl(&dword_1D825C000, v43, OS_LOG_TYPE_DEFAULT, "Starting layout for task, task-identifier=%@", v55, 0xCu);
  }

  v46 = [SXLayoutDescription alloc];
  v47 = [(SXLayoutOperation *)self task];
  v48 = [v47 identifier];
  v49 = [(SXLayoutDescription *)v46 initWithTaskIdentifier:v48];

  v55[0] = 0;
  v50 = [(SXLayoutOperation *)self layouter];
  v51 = [(SXLayoutOperation *)self task];
  v52 = [v51 options];
  v53 = [v52 columnLayout];
  [v50 layoutBlueprint:v5 columnLayout:v53 description:v49 shouldContinue:v55];

LABEL_23:

  return v5;
}

- (BOOL)layoutBlueprint:(id)a3 containsComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v7 componentAtIndex:v8];
      v10 = [v9 identifier];
      v11 = [v6 componentBlueprintForComponentIdentifier:v10];

      if (!v11)
      {
        break;
      }

      v12 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 layoutBlueprint];

        if (v13)
        {
          v14 = [v9 identifier];
          v15 = [v7 componentsForContainerComponentWithIdentifier:v14];

          v16 = [v12 layoutBlueprint];
          v17 = [(SXLayoutOperation *)self layoutBlueprint:v16 containsComponents:v15];

          if (!v17)
          {
            v19 = [v12 component];
            v20 = [v19 identifier];
            [v6 invalidateSizeForComponentWithIdentifier:v20];

            break;
          }
        }
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_9;
      }
    }

    v18 = 0;
  }

  else
  {
LABEL_9:
    v18 = 1;
  }

  return v18;
}

- (void)updateLayoutBlueprint:(id)a3 components:(id)a4 requiresInvalidation:(BOOL *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [v7 componentIdentifiers];
  v10 = [v9 copy];

  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [v8 componentForIdentifier:v15];

        if (!v16)
        {
          v17 = [v7 componentBlueprintForComponentIdentifier:v15];
          [v7 unregisterLayout:v17];
          if (a5)
          {
            *a5 = 1;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    v18 = 0;
    do
    {
      v19 = [v8 componentAtIndex:v18];
      v20 = [v19 identifier];
      v21 = [v7 componentBlueprintForComponentIdentifier:v20];

      if (!v21)
      {
        [(SXLayoutOperation *)self registerComponent:v19 layoutBlueprint:v7 componentIndex:v18];
        v22 = [v7 componentIdentifiers];
        v23 = [v22 count] - 1;

        if (v18 + 1 < v23)
        {
          v24 = [v7 componentIdentifiers];
          v25 = [v24 objectAtIndex:v18 + 1];

          v26 = [v7 componentBlueprintForComponentIdentifier:v25];
          [v7 invalidatePositionForComponentWithIdentifier:v25];
        }

        if (a5)
        {
          *a5 = 1;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v21;
        v28 = [v19 identifier];
        v29 = [v8 componentsForContainerComponentWithIdentifier:v28];

        v30 = [v27 layoutBlueprint];
        if (v30)
        {
          v35 = 0;
          [(SXLayoutOperation *)self updateLayoutBlueprint:v30 components:v29 requiresInvalidation:&v35];
          if (v35 == 1)
          {
            v33 = [v27 component];
            v31 = [v33 identifier];
            [v7 invalidateSizeForComponentWithIdentifier:v31];
          }
        }

        else
        {
          v32 = [(SXLayoutOperation *)self createLayoutBlueprintForComponents:v29];
          [v27 setLayoutBlueprint:v32];
          [v32 setParentLayoutBlueprint:v7];
          if (a5)
          {
            *a5 = 1;
          }
        }
      }

      ++v18;
    }

    while (v18 < [v8 count]);
  }
}

- (id)createLayoutBlueprintForComponents:(id)a3
{
  v4 = a3;
  v5 = [(SXLayoutOperation *)self layoutBlueprintFactory];
  v6 = [(SXLayoutOperation *)self task];
  v7 = [v6 options];
  v8 = [v5 createLayoutBlueprintWithLayoutOptions:v7];

  if ([v4 count])
  {
    v9 = 0;
    do
    {
      v10 = [v4 componentAtIndex:v9];
      [(SXLayoutOperation *)self registerComponent:v10 layoutBlueprint:v8 componentIndex:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = [v11 identifier];
        v13 = [v8 componentBlueprintForComponentIdentifier:v12];

        v14 = [v11 identifier];

        v15 = [v4 componentsForContainerComponentWithIdentifier:v14];

        v16 = [(SXLayoutOperation *)self createLayoutBlueprintForComponents:v15];
        [v13 setLayoutBlueprint:v16];
        [v16 setParentLayoutBlueprint:v8];
      }

      ++v9;
    }

    while (v9 < [v4 count]);
  }

  return v8;
}

- (void)registerComponent:(id)a3 layoutBlueprint:(id)a4 componentIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(SXLayoutOperation *)self DOMObjectProvider];
  v11 = [v9 layout];
  v16 = [v10 componentLayoutForIdentifier:v11];

  v12 = [(SXLayoutOperation *)self componentSizerEngine];
  v13 = [v8 layoutOptions];
  v14 = [(SXLayoutOperation *)self DOMObjectProvider];
  v15 = [v12 sizerForComponent:v9 componentLayout:v16 layoutOptions:v13 DOMObjectProvider:v14];

  [v8 registerLayout:v16 sizer:v15 forComponent:v9 atIndex:a5];
}

- (void)layouter:(id)a3 didFinishLayoutForComponentBlueprint:(id)a4 layoutBlueprint:(id)a5 shouldContinueLayout:(BOOL *)a6
{
  task = self->_task;
  v10 = a5;
  v11 = a4;
  v14 = [(SXLayoutTask *)task instructions];
  [v14 didLayoutComponentBlueprint:v11 blueprint:v10];

  v12 = [v10 rootLayoutBlueprint];

  LOBYTE(task) = [v14 areFulfilledForBlueprint:v12];
  if (task)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(SXLayoutOperation *)self isCancelled]^ 1;
  }

  *a6 = v13;
}

@end