@interface SXLayoutOperation
- (BOOL)layoutBlueprint:(id)blueprint containsComponents:(id)components;
- (SXLayoutOperation)initWithTask:(id)task layouter:(id)layouter DOMObjectProvider:(id)provider componentSizerEngine:(id)engine layoutBlueprintFactory:(id)factory;
- (id)createLayoutBlueprintForComponents:(id)components;
- (id)layoutWithBlueprint:(id)blueprint;
- (void)cancelOperation;
- (void)finishBookKeeping;
- (void)layouter:(id)layouter didFinishLayoutForComponentBlueprint:(id)blueprint layoutBlueprint:(id)layoutBlueprint shouldContinueLayout:(BOOL *)layout;
- (void)registerComponent:(id)component layoutBlueprint:(id)blueprint componentIndex:(unint64_t)index;
- (void)start;
- (void)startBookKeeping;
- (void)updateLayoutBlueprint:(id)blueprint components:(id)components requiresInvalidation:(BOOL *)invalidation;
@end

@implementation SXLayoutOperation

- (SXLayoutOperation)initWithTask:(id)task layouter:(id)layouter DOMObjectProvider:(id)provider componentSizerEngine:(id)engine layoutBlueprintFactory:(id)factory
{
  taskCopy = task;
  layouterCopy = layouter;
  providerCopy = provider;
  engineCopy = engine;
  factoryCopy = factory;
  v21.receiver = self;
  v21.super_class = SXLayoutOperation;
  v17 = [(SXLayoutOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_task, task);
    objc_storeStrong(&v18->_DOMObjectProvider, provider);
    objc_storeStrong(&v18->_componentSizerEngine, engine);
    objc_storeStrong(&v18->_layoutBlueprintFactory, factory);
    objc_storeStrong(&v18->_layouter, layouter);
    [layouterCopy setDelegate:v18];
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
      task = [(SXLayoutOperation *)self task];
      identifier = [task identifier];
      task2 = [(SXLayoutOperation *)self task];
      v22 = 138543618;
      v23 = identifier;
      v24 = 2114;
      v25 = task2;
      _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Starting layout operation for task, task-identifier=%{public}@, task: %{public}@", &v22, 0x16u);
    }

    [(SXLayoutOperation *)self startBookKeeping];
    task3 = [(SXLayoutOperation *)self task];
    blueprint = [task3 blueprint];

    [(SXLayoutOperation *)self prepareLayoutBlueprint:blueprint];
    beforeBlock = [(SXLayoutOperation *)self beforeBlock];

    if (beforeBlock)
    {
      beforeBlock2 = [(SXLayoutOperation *)self beforeBlock];
      (beforeBlock2)[2](beforeBlock2, blueprint);
    }

    if (([(SXLayoutOperation *)self isCancelled]& 1) == 0)
    {
      while (1)
      {
        v12 = blueprint;
        blueprint = [(SXLayoutOperation *)self layoutWithBlueprint:blueprint];

        afterBlock = [(SXLayoutOperation *)self afterBlock];
        if (afterBlock)
        {
          v14 = afterBlock;
          isCancelled = [(SXLayoutOperation *)self isCancelled];

          if ((isCancelled & 1) == 0)
          {
            afterBlock2 = [(SXLayoutOperation *)self afterBlock];
            (afterBlock2)[2](afterBlock2, blueprint);
          }
        }

        if (([(SXLayoutOperation *)self isCancelled]& 1) != 0)
        {
          break;
        }

        task4 = [(SXLayoutOperation *)self task];
        instructions = [task4 instructions];
        if ([instructions areFulfilledForBlueprint:blueprint])
        {
          dOMObjectProvider = [(SXLayoutOperation *)self DOMObjectProvider];
          components = [dOMObjectProvider components];
          v21 = [(SXLayoutOperation *)self layoutBlueprint:blueprint containsComponents:components];

          if (v21)
          {
            break;
          }
        }

        else
        {
        }
      }

      objc_storeStrong(&self->_layoutBlueprint, blueprint);
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
  completionBlock = [(SXLayoutOperation *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(SXLayoutOperation *)self completionBlock];
    completionBlock2[2]();

    [(SXLayoutOperation *)self setCompletionBlock:0];
  }

  [(SXLayoutOperation *)self willChangeValueForKey:@"isExecuting"];
  [(SXLayoutOperation *)self setExecuting:0];
  [(SXLayoutOperation *)self didChangeValueForKey:@"isExecuting"];
  [(SXLayoutOperation *)self willChangeValueForKey:@"isFinished"];
  [(SXLayoutOperation *)self setFinished:1];

  [(SXLayoutOperation *)self didChangeValueForKey:@"isFinished"];
}

- (id)layoutWithBlueprint:(id)blueprint
{
  v56 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  if (!blueprintCopy)
  {
    dOMObjectProvider = [(SXLayoutOperation *)self DOMObjectProvider];
    components = [dOMObjectProvider components];
    v5 = [(SXLayoutOperation *)self createLayoutBlueprintForComponents:components];

    v23 = SXLayoutLog;
    if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      task = [(SXLayoutOperation *)self task];
      identifier = [task identifier];
      *v55 = 138412546;
      *&v55[4] = v5;
      *&v55[12] = 2112;
      *&v55[14] = identifier;
      _os_log_impl(&dword_1D825C000, v24, OS_LOG_TYPE_DEFAULT, "Created new layout blueprint, layout-blueprint=%@, task-identifier=%@", v55, 0x16u);
    }

    goto LABEL_18;
  }

  v5 = blueprintCopy;
  v6 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    task2 = [(SXLayoutOperation *)self task];
    identifier2 = [task2 identifier];
    *v55 = 138412546;
    *&v55[4] = identifier2;
    *&v55[12] = 1024;
    *&v55[14] = [v5 isComplete];
    _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Validating existing layout, task-identifier=%@, layoutIsComplete=%d", v55, 0x12u);
  }

  task3 = [(SXLayoutOperation *)self task];
  instructions = [task3 instructions];
  v12 = [instructions areFulfilledForBlueprint:v5];

  if (v12)
  {
    dOMObjectProvider2 = [(SXLayoutOperation *)self DOMObjectProvider];
    components2 = [dOMObjectProvider2 components];
    v15 = [(SXLayoutOperation *)self layoutBlueprint:v5 containsComponents:components2];

    v16 = SXLayoutLog;
    v17 = os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v18 = v16;
        task4 = [(SXLayoutOperation *)self task];
        identifier3 = [task4 identifier];
        *v55 = 138412290;
        *&v55[4] = identifier3;
        _os_log_impl(&dword_1D825C000, v18, OS_LOG_TYPE_DEFAULT, "No layout required, blueprint is valid, task-identifier=%@", v55, 0xCu);
      }

      goto LABEL_23;
    }

    if (!v17)
    {
      goto LABEL_15;
    }

    v28 = v16;
    task5 = [(SXLayoutOperation *)self task];
    identifier4 = [task5 identifier];
    *v55 = 138412290;
    *&v55[4] = identifier4;
    v31 = "Requiring layout, DOM contains components that are not in provided blueprint, task-identifier=%@";
    goto LABEL_14;
  }

  v27 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v27;
    task5 = [(SXLayoutOperation *)self task];
    identifier4 = [task5 identifier];
    *v55 = 138412290;
    *&v55[4] = identifier4;
    v31 = "Requiring layout, instructions are not fullfilled with provided blueprint, task-identifier=%@";
LABEL_14:
    _os_log_impl(&dword_1D825C000, v28, OS_LOG_TYPE_DEFAULT, v31, v55, 0xCu);
  }

LABEL_15:
  v32 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v32;
    task6 = [(SXLayoutOperation *)self task];
    identifier5 = [task6 identifier];
    *v55 = 138412290;
    *&v55[4] = identifier5;
    _os_log_impl(&dword_1D825C000, v33, OS_LOG_TYPE_DEFAULT, "Updating existing layout blueprint, task-identifier=%@", v55, 0xCu);
  }

  dOMObjectProvider3 = [(SXLayoutOperation *)self DOMObjectProvider];
  components3 = [dOMObjectProvider3 components];
  [(SXLayoutOperation *)self updateLayoutBlueprint:v5 components:components3 requiresInvalidation:0];

LABEL_18:
  v38 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    task7 = [(SXLayoutOperation *)self task];
    identifier6 = [task7 identifier];
    *v55 = 138412290;
    *&v55[4] = identifier6;
    _os_log_impl(&dword_1D825C000, v39, OS_LOG_TYPE_DEFAULT, "Invalidating components in layout, task-identifier=%@", v55, 0xCu);
  }

  [v5 invalidateDependentsOfInvalidatedComponents];
  v42 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v43 = v42;
    task8 = [(SXLayoutOperation *)self task];
    identifier7 = [task8 identifier];
    *v55 = 138412290;
    *&v55[4] = identifier7;
    _os_log_impl(&dword_1D825C000, v43, OS_LOG_TYPE_DEFAULT, "Starting layout for task, task-identifier=%@", v55, 0xCu);
  }

  v46 = [SXLayoutDescription alloc];
  task9 = [(SXLayoutOperation *)self task];
  identifier8 = [task9 identifier];
  v49 = [(SXLayoutDescription *)v46 initWithTaskIdentifier:identifier8];

  v55[0] = 0;
  layouter = [(SXLayoutOperation *)self layouter];
  task10 = [(SXLayoutOperation *)self task];
  options = [task10 options];
  columnLayout = [options columnLayout];
  [layouter layoutBlueprint:v5 columnLayout:columnLayout description:v49 shouldContinue:v55];

LABEL_23:

  return v5;
}

- (BOOL)layoutBlueprint:(id)blueprint containsComponents:(id)components
{
  blueprintCopy = blueprint;
  componentsCopy = components;
  if ([componentsCopy count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [componentsCopy componentAtIndex:v8];
      identifier = [v9 identifier];
      v11 = [blueprintCopy componentBlueprintForComponentIdentifier:identifier];

      if (!v11)
      {
        break;
      }

      v12 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        layoutBlueprint = [v12 layoutBlueprint];

        if (layoutBlueprint)
        {
          identifier2 = [v9 identifier];
          v15 = [componentsCopy componentsForContainerComponentWithIdentifier:identifier2];

          layoutBlueprint2 = [v12 layoutBlueprint];
          v17 = [(SXLayoutOperation *)self layoutBlueprint:layoutBlueprint2 containsComponents:v15];

          if (!v17)
          {
            component = [v12 component];
            identifier3 = [component identifier];
            [blueprintCopy invalidateSizeForComponentWithIdentifier:identifier3];

            break;
          }
        }
      }

      if (++v8 >= [componentsCopy count])
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

- (void)updateLayoutBlueprint:(id)blueprint components:(id)components requiresInvalidation:(BOOL *)invalidation
{
  v41 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  componentsCopy = components;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  componentIdentifiers = [blueprintCopy componentIdentifiers];
  v10 = [componentIdentifiers copy];

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
        v16 = [componentsCopy componentForIdentifier:v15];

        if (!v16)
        {
          v17 = [blueprintCopy componentBlueprintForComponentIdentifier:v15];
          [blueprintCopy unregisterLayout:v17];
          if (invalidation)
          {
            *invalidation = 1;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  if ([componentsCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [componentsCopy componentAtIndex:v18];
      identifier = [v19 identifier];
      v21 = [blueprintCopy componentBlueprintForComponentIdentifier:identifier];

      if (!v21)
      {
        [(SXLayoutOperation *)self registerComponent:v19 layoutBlueprint:blueprintCopy componentIndex:v18];
        componentIdentifiers2 = [blueprintCopy componentIdentifiers];
        v23 = [componentIdentifiers2 count] - 1;

        if (v18 + 1 < v23)
        {
          componentIdentifiers3 = [blueprintCopy componentIdentifiers];
          v25 = [componentIdentifiers3 objectAtIndex:v18 + 1];

          v26 = [blueprintCopy componentBlueprintForComponentIdentifier:v25];
          [blueprintCopy invalidatePositionForComponentWithIdentifier:v25];
        }

        if (invalidation)
        {
          *invalidation = 1;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v21;
        identifier2 = [v19 identifier];
        v29 = [componentsCopy componentsForContainerComponentWithIdentifier:identifier2];

        layoutBlueprint = [v27 layoutBlueprint];
        if (layoutBlueprint)
        {
          v35 = 0;
          [(SXLayoutOperation *)self updateLayoutBlueprint:layoutBlueprint components:v29 requiresInvalidation:&v35];
          if (v35 == 1)
          {
            component = [v27 component];
            identifier3 = [component identifier];
            [blueprintCopy invalidateSizeForComponentWithIdentifier:identifier3];
          }
        }

        else
        {
          v32 = [(SXLayoutOperation *)self createLayoutBlueprintForComponents:v29];
          [v27 setLayoutBlueprint:v32];
          [v32 setParentLayoutBlueprint:blueprintCopy];
          if (invalidation)
          {
            *invalidation = 1;
          }
        }
      }

      ++v18;
    }

    while (v18 < [componentsCopy count]);
  }
}

- (id)createLayoutBlueprintForComponents:(id)components
{
  componentsCopy = components;
  layoutBlueprintFactory = [(SXLayoutOperation *)self layoutBlueprintFactory];
  task = [(SXLayoutOperation *)self task];
  options = [task options];
  v8 = [layoutBlueprintFactory createLayoutBlueprintWithLayoutOptions:options];

  if ([componentsCopy count])
  {
    v9 = 0;
    do
    {
      v10 = [componentsCopy componentAtIndex:v9];
      [(SXLayoutOperation *)self registerComponent:v10 layoutBlueprint:v8 componentIndex:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        identifier = [v11 identifier];
        v13 = [v8 componentBlueprintForComponentIdentifier:identifier];

        identifier2 = [v11 identifier];

        v15 = [componentsCopy componentsForContainerComponentWithIdentifier:identifier2];

        v16 = [(SXLayoutOperation *)self createLayoutBlueprintForComponents:v15];
        [v13 setLayoutBlueprint:v16];
        [v16 setParentLayoutBlueprint:v8];
      }

      ++v9;
    }

    while (v9 < [componentsCopy count]);
  }

  return v8;
}

- (void)registerComponent:(id)component layoutBlueprint:(id)blueprint componentIndex:(unint64_t)index
{
  blueprintCopy = blueprint;
  componentCopy = component;
  dOMObjectProvider = [(SXLayoutOperation *)self DOMObjectProvider];
  layout = [componentCopy layout];
  v16 = [dOMObjectProvider componentLayoutForIdentifier:layout];

  componentSizerEngine = [(SXLayoutOperation *)self componentSizerEngine];
  layoutOptions = [blueprintCopy layoutOptions];
  dOMObjectProvider2 = [(SXLayoutOperation *)self DOMObjectProvider];
  v15 = [componentSizerEngine sizerForComponent:componentCopy componentLayout:v16 layoutOptions:layoutOptions DOMObjectProvider:dOMObjectProvider2];

  [blueprintCopy registerLayout:v16 sizer:v15 forComponent:componentCopy atIndex:index];
}

- (void)layouter:(id)layouter didFinishLayoutForComponentBlueprint:(id)blueprint layoutBlueprint:(id)layoutBlueprint shouldContinueLayout:(BOOL *)layout
{
  task = self->_task;
  layoutBlueprintCopy = layoutBlueprint;
  blueprintCopy = blueprint;
  instructions = [(SXLayoutTask *)task instructions];
  [instructions didLayoutComponentBlueprint:blueprintCopy blueprint:layoutBlueprintCopy];

  rootLayoutBlueprint = [layoutBlueprintCopy rootLayoutBlueprint];

  LOBYTE(task) = [instructions areFulfilledForBlueprint:rootLayoutBlueprint];
  if (task)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(SXLayoutOperation *)self isCancelled]^ 1;
  }

  *layout = v13;
}

@end