@interface _UISceneAssistantTaskBSActionHandler
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (void)_extractAssistantTasksFromActions:(void *)a3 intoAssistantTasks:(void *)a4 andUnhandledActions:;
@end

@implementation _UISceneAssistantTaskBSActionHandler

- (void)_extractAssistantTasksFromActions:(void *)a3 intoAssistantTasks:(void *)a4 andUnhandledActions:
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a3)
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
        v38 = a1;
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

    if (!a4)
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
        v38 = a1;
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
                v15 = [v14 payload];
                [v10 addObject:v15];

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

    *a3 = [v10 copy];
    if ([v9 count])
    {
      v17 = [v9 copy];
      *a4 = v17;
    }

    else
    {
      v18 = v6;
      *a4 = v6;
    }
  }
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  if (a5 && (*(a5 + 209) & 1) != 0)
  {
    v14 = 0;
    v15 = 0;
    [(_UISceneAssistantTaskBSActionHandler *)self _extractAssistantTasksFromActions:a3 intoAssistantTasks:&v15 andUnhandledActions:&v14];
    v9 = v15;
    v10 = v14;
    if ([v9 count])
    {
      v11 = [a5 delegate];
      [v11 _scene:a5 handleAssistantTasks:v9];
    }

    if ([v10 count])
    {
      v12 = v10;
    }

    else
    {
      v12 = a3;
    }

    v8 = v12;
  }

  else
  {
    v8 = a3;
  }

  return v8;
}

- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6
{
  v8 = objc_opt_new();
  v15 = 0;
  v16 = 0;
  [(_UISceneAssistantTaskBSActionHandler *)self _extractAssistantTasksFromActions:a3 intoAssistantTasks:&v16 andUnhandledActions:&v15];
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
    v13 = v10;
  }

  else
  {
    v13 = a3;
  }

  [v11 setUnprocessedActions:v13];

  return v11;
}

@end