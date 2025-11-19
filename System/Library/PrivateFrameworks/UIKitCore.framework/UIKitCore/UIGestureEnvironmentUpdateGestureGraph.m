@interface UIGestureEnvironmentUpdateGestureGraph
@end

@implementation UIGestureEnvironmentUpdateGestureGraph

void ___UIGestureEnvironmentUpdateGestureGraph_block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("GestureEnvironment", &qword_1ED4983F8);
  if (*CategoryCachedImpl)
  {
    v24 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = [a2 valueForKeyPath:@"_briefDescription"];
      *buf = 138412290;
      v34 = v26;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "resetting gesture subgraph %@", buf, 0xCu);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a2;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [(UIGestureEnvironment *)*(a1 + 32) _nodeForGestureRecognizer:v9];
        v11 = *(a1 + 40);
        v12 = [v10 edgesForLabel:@"dynamicFailureRequirement"];
        [v11 removeEdges:v12];

        [(UIGestureEnvironment *)*(a1 + 32) _clearGestureNeedsUpdate:v9];
        v13 = *(a1 + 32);
        if (v13)
        {
          if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
          {
            dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
          }

          if (_UIIsGesturesFrameworkEnabled_enabled != 1)
          {
            goto LABEL_14;
          }

          if (os_variant_has_internal_diagnostics())
          {
            v19 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
            }

            if (v9)
            {
LABEL_15:
              if ((*(v9 + 16) & 0x20) != 0)
              {
                [*(v13 + 48) removeObject:v9];
              }

LABEL_17:
              v15 = 0;
              v16 = 0;
              if ((*(v9 + 12) & 8) != 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v14 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498370) + 8);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
            }

LABEL_14:
            if (v9)
            {
              goto LABEL_15;
            }
          }

          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:sel__clearGestureBlockedFromReset_ object:v13 file:@"UIGestureEnvironment.m" lineNumber:1163 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];

          goto LABEL_37;
        }

        if (v9)
        {
          goto LABEL_17;
        }

LABEL_37:
        v15 = 1;
LABEL_18:
        v16 = v15;
        if (![v9 state])
        {
          goto LABEL_29;
        }

LABEL_19:
        v17 = *(a1 + 32);
        if (v17)
        {
          if (_UIIsGesturesFrameworkEnabled_onceToken != -1)
          {
            dispatch_once(&_UIIsGesturesFrameworkEnabled_onceToken, &__block_literal_global_225);
          }

          if (_UIIsGesturesFrameworkEnabled_enabled == 1)
          {
            if (!os_variant_has_internal_diagnostics())
            {
              v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498368) + 8);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Shouldn't end up here", buf, 2u);
              }

              goto LABEL_26;
            }

            v21 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Shouldn't end up here", buf, 2u);
            }

            if (v16)
            {
LABEL_41:
              v22 = [MEMORY[0x1E696AAA8] currentHandler];
              [v22 handleFailureInMethod:sel__clearGestureIsDirty_ object:v17 file:@"UIGestureEnvironment.m" lineNumber:1157 description:{@"Invalid parameter not satisfying: %@", @"gestureRecognizer"}];
            }
          }

          else
          {
LABEL_26:
            if (v16)
            {
              goto LABEL_41;
            }
          }

          [*(v17 + 40) removeObject:v9];
        }

        [v9 _resetGestureRecognizer];
LABEL_29:
        if ([*(a1 + 48) containsObject:v9])
        {
          [(UIGestureEnvironment *)*(a1 + 32) _removeNodeFromGestureGraph:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      v23 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v6 = v23;
    }

    while (v23);
  }
}

@end