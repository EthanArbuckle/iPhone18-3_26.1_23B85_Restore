@interface _UISceneAssistantTaskBSActionHandler
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)_extractAssistantTasksFromActions:(void *)actions intoAssistantTasks:(void *)tasks andUnhandledActions:;
@end

@implementation _UISceneAssistantTaskBSActionHandler

- (void)_extractAssistantTasksFromActions:(void *)actions intoAssistantTasks:(void *)tasks andUnhandledActions:
{
  v45 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!actions)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"outAssistantTasks"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel__extractAssistantTasksFromActions_intoAssistantTasks_andUnhandledActions_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v34 = v20;
        v35 = 2114;
        v36 = v22;
        v37 = 2048;
        selfCopy2 = self;
        v39 = 2114;
        v40 = @"_UISceneAssistantTaskBSActionHandler.m";
        v41 = 1024;
        v42 = 29;
        v43 = 2114;
        v44 = v19;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v19 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189FF4010);
    }

    if (!tasks)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"outUnhandledActions"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel__extractAssistantTasksFromActions_intoAssistantTasks_andUnhandledActions_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v34 = v24;
        v35 = 2114;
        v36 = v26;
        v37 = 2048;
        selfCopy2 = self;
        v39 = 2114;
        v40 = @"_UISceneAssistantTaskBSActionHandler.m";
        v41 = 1024;
        v42 = 30;
        v43 = 2114;
        v44 = v23;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189FF4108);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = a2;
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v29;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v28 + 1) + 8 * v12);
          if ([v13 UIActionType] == 8)
          {
            v14 = v13;
            if (v10)
            {
              if (v9)
              {
LABEL_12:
                payload = [v14 payload];
                [v10 addObject:payload];

                [v9 removeObject:v14];
                goto LABEL_13;
              }
            }

            else
            {
              v10 = objc_opt_new();
              if (v9)
              {
                goto LABEL_12;
              }
            }

            v9 = [v6 mutableCopy];
            goto LABEL_12;
          }

LABEL_13:
          ++v12;
        }

        while (v8 != v12);
        v16 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
        v8 = v16;
        if (!v16)
        {
          goto LABEL_20;
        }
      }
    }

    v9 = 0;
    v10 = 0;
LABEL_20:

    *actions = [v10 copy];
    if ([v9 count])
    {
      v17 = [v9 copy];
      *tasks = v17;
    }

    else
    {
      v18 = v6;
      *tasks = v6;
    }
  }
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  if (iScene && (*(iScene + 209) & 1) != 0)
  {
    v14 = 0;
    v15 = 0;
    [(_UISceneAssistantTaskBSActionHandler *)self _extractAssistantTasksFromActions:actions intoAssistantTasks:&v15 andUnhandledActions:&v14];
    v9 = v15;
    v10 = v14;
    if ([v9 count])
    {
      delegate = [iScene delegate];
      [delegate _scene:iScene handleAssistantTasks:v9];
    }

    if ([v10 count])
    {
      actionsCopy = v10;
    }

    else
    {
      actionsCopy = actions;
    }

    actionsCopy2 = actionsCopy;
  }

  else
  {
    actionsCopy2 = actions;
  }

  return actionsCopy2;
}

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  v8 = objc_opt_new();
  v15 = 0;
  v16 = 0;
  [(_UISceneAssistantTaskBSActionHandler *)self _extractAssistantTasksFromActions:actions intoAssistantTasks:&v16 andUnhandledActions:&v15];
  v9 = v16;
  v10 = v15;
  if ([v9 count])
  {
    [v8 setObject:v9 forKey:@"_UISceneConnectionOptionsAssistantTasksKey"];
  }

  v11 = objc_opt_new();
  v12 = [v8 copy];
  [v11 setLaunchOptionsDictionary:v12];

  if ([v10 count])
  {
    actionsCopy = v10;
  }

  else
  {
    actionsCopy = actions;
  }

  [v11 setUnprocessedActions:actionsCopy];

  return v11;
}

@end