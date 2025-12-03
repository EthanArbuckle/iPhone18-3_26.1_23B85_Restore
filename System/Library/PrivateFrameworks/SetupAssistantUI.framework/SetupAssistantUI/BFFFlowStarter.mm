@interface BFFFlowStarter
- (BFFFlowStarter)initWithFlowDiverter:(id)diverter;
- (BOOL)controllerNeedsToRunForClass:(Class)class;
- (BOOL)controllerNeedsToRunForFlowItem:(id)item;
- (void)prepareWithCompletion:(id)completion;
@end

@implementation BFFFlowStarter

- (BFFFlowStarter)initWithFlowDiverter:(id)diverter
{
  diverterCopy = diverter;
  v9.receiver = self;
  v9.super_class = BFFFlowStarter;
  v6 = [(BFFFlowStarter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diverter, diverter);
  }

  return v7;
}

- (void)prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  diverter = [(BFFFlowStarter *)self diverter];

  if (diverter)
  {
    diverter2 = [(BFFFlowStarter *)self diverter];
    [diverter2 prepareWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (BOOL)controllerNeedsToRunForClass:(Class)class
{
  v30 = *MEMORY[0x277D85DE8];
  if (class)
  {
    diverter = [(BFFFlowStarter *)self diverter];
    if (diverter)
    {
      v6 = diverter;
      diverter2 = [(BFFFlowStarter *)self diverter];
      v24 = 0;
      v25 = 0;
      v8 = [diverter2 shouldSkipControllerClass:class reason:&v25 humanReadableReason:&v24];
      v9 = v25;
      v10 = v24;

      if (v8)
      {
        v11 = [v10 length];
        v12 = _BYLoggingFacility();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v13)
          {
            *buf = 138543618;
            classCopy4 = class;
            v28 = 2114;
            v29 = v10;
            v14 = "Skipping %{public}@ via %{public}@";
            v15 = v12;
            v16 = 22;
LABEL_20:
            _os_log_impl(&dword_265AC5000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
          }
        }

        else if (v13)
        {
          *buf = 138543362;
          classCopy4 = class;
          v14 = "Skipping %{public}@ for unknown reason";
          v15 = v12;
          v16 = 12;
          goto LABEL_20;
        }

        diverter3 = [(BFFFlowStarter *)self diverter];
        [diverter3 didSkipControllerClass:class forReason:v9];
        controllerNeedsToRun = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      controllerNeedsToRun = 1;
LABEL_23:

      return controllerNeedsToRun;
    }

    diverter3 = [MEMORY[0x277CBEAA8] date];
    controllerNeedsToRun = [(objc_class *)class controllerNeedsToRun];
    date = [MEMORY[0x277CBEAA8] date];
    v20 = _BYLoggingFacility();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [date timeIntervalSinceDate:diverter3];
      *buf = 138543618;
      classCopy4 = class;
      v28 = 2048;
      v29 = v23;
      _os_log_debug_impl(&dword_265AC5000, v20, OS_LOG_TYPE_DEBUG, "Decided controllerNeedsToRun for %{public}@ in %fs", buf, 0x16u);
    }

    if ((controllerNeedsToRun & 1) == 0)
    {
      v21 = _BYLoggingFacility();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        classCopy4 = class;
        _os_log_impl(&dword_265AC5000, v21, OS_LOG_TYPE_DEFAULT, "Skipping controller %{public}@: does not need to run", buf, 0xCu);
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  return 0;
}

- (BOOL)controllerNeedsToRunForFlowItem:(id)item
{
  v15 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (objc_opt_respondsToSelector())
  {
    date = [MEMORY[0x277CBEAA8] date];
    controllerNeedsToRun = [itemCopy controllerNeedsToRun];
    date2 = [MEMORY[0x277CBEAA8] date];
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [date2 timeIntervalSinceDate:date];
      v11 = 138543618;
      v12 = itemCopy;
      v13 = 2048;
      v14 = v10;
      _os_log_debug_impl(&dword_265AC5000, v7, OS_LOG_TYPE_DEBUG, "Decided instance controllerNeedsToRun for %{public}@ in %fs", &v11, 0x16u);
    }

    if ((controllerNeedsToRun & 1) == 0)
    {
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = itemCopy;
        _os_log_impl(&dword_265AC5000, v8, OS_LOG_TYPE_DEFAULT, "Skipping controller %{public}@: does not need to run", &v11, 0xCu);
      }
    }
  }

  else
  {
    controllerNeedsToRun = 1;
  }

  return controllerNeedsToRun;
}

@end