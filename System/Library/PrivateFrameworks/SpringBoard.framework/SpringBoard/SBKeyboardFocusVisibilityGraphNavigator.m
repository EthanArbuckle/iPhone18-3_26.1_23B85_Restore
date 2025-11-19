@interface SBKeyboardFocusVisibilityGraphNavigator
- (id)_ancestorPathForTargetEnvironment:(uint64_t)a3 orTargetPid:(void *)a4 withinEndowmentTree:(void *)a5 root:(void *)a6 visitedLinks:;
- (void)_reverseEnumerateChainContainingSceneIdentityToken:(uint64_t)a3 orSceneFromProcessID:(void *)a4 block:;
@end

@implementation SBKeyboardFocusVisibilityGraphNavigator

- (id)_ancestorPathForTargetEnvironment:(uint64_t)a3 orTargetPid:(void *)a4 withinEndowmentTree:(void *)a5 root:(void *)a6 visitedLinks:
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!v14)
  {
    [SBKeyboardFocusVisibilityGraphNavigator _ancestorPathForTargetEnvironment:a1 orTargetPid:? withinEndowmentTree:? root:? visitedLinks:?];
  }

  if (v11)
  {
    v16 = [v13 targetEnvironment];
    v17 = [v16 isEqualToString:v11];

    if (v17)
    {
LABEL_5:
      a1 = MEMORY[0x277CBEBF8];
LABEL_6:
      v18 = v15;
      goto LABEL_25;
    }
  }

  else if (a3)
  {
    v19 = [v13 targetEnvironment];
    if ([v19 hasPrefix:@"UIScene:"])
    {
      v20 = [v13 targetPid];

      if (v20 == a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  v18 = [v15 setByAddingObject:v13];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = [v12 childrenLinks:v13];
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v31 = v13;
    v24 = *v33;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * i);
        if (([v18 containsObject:v26] & 1) == 0)
        {
          v27 = [(SBKeyboardFocusVisibilityGraphNavigator *)a1 _ancestorPathForTargetEnvironment:v11 orTargetPid:a3 withinEndowmentTree:v12 root:v26 visitedLinks:v18];
          if (v27)
          {
            v28 = v27;
            v13 = v31;
            v36 = v31;
            v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
            a1 = [v29 arrayByAddingObjectsFromArray:v28];

            goto LABEL_24;
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    a1 = 0;
    v13 = v31;
  }

  else
  {
    a1 = 0;
  }

LABEL_24:

LABEL_25:

  return a1;
}

- (void)_reverseEnumerateChainContainingSceneIdentityToken:(uint64_t)a3 orSceneFromProcessID:(void *)a4 block:
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v32 = v7;
    if (v7)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v7 stringRepresentation];
      v11 = [v9 stringWithFormat:@"%@%@", @"UIScene:", v10];
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x277D46E58] endowmentTreeForNamespace:*MEMORY[0x277D0AC90]];
    [v12 rootLinks];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = v45 = 0u;
    v33 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v33)
    {
      v35 = *v43;
      v28 = a3;
      v27 = a1;
      v30 = v12;
      v31 = v11;
      v29 = v13;
      do
      {
        v14 = 0;
        do
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v13);
          }

          v36 = v14;
          v15 = *(*(&v42 + 1) + 8 * v14);
          v16 = [MEMORY[0x277CBEB98] set];
          v17 = [(SBKeyboardFocusVisibilityGraphNavigator *)a1 _ancestorPathForTargetEnvironment:v11 orTargetPid:a3 withinEndowmentTree:v12 root:v15 visitedLinks:v16];

          if (v17)
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v34 = v17;
            v18 = [v17 reverseObjectEnumerator];
            v19 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v39;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v39 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v38 + 1) + 8 * i);
                  v24 = [v23 targetEnvironment];
                  if ([v24 hasPrefix:@"UIScene:"])
                  {
                    v25 = [v24 substringFromIndex:{objc_msgSend(@"UIScene:", "length")}];
                    v37 = 0;
                    v8[2](v8, v25, [v23 targetPid], &v37);
                    v26 = v37;

                    if (v26)
                    {

                      v12 = v30;
                      v11 = v31;
                      v13 = v29;
                      goto LABEL_25;
                    }
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            a3 = v28;
            a1 = v27;
            v12 = v30;
            v11 = v31;
            v13 = v29;
            v17 = v34;
          }

          v14 = v36 + 1;
        }

        while (v36 + 1 != v33);
        v33 = [v13 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v33);
    }

LABEL_25:

    v7 = v32;
  }
}

- (void)_ancestorPathForTargetEnvironment:(const char *)a1 orTargetPid:(uint64_t)a2 withinEndowmentTree:root:visitedLinks:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"visitedLinks != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBKeyboardFocusVisibilityGraphNavigator.m";
    v16 = 1024;
    v17 = 55;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end