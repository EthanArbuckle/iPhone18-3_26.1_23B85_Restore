@interface UIViewLayoutFeedbackLoopDebugger
@end

@implementation UIViewLayoutFeedbackLoopDebugger

void __63___UIViewLayoutFeedbackLoopDebugger_layoutFeedbackLoopDebugger__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!qword_1ED49C178)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    qword_1ED49C188 = [v2 integerForKey:@"UIViewLayoutFeedbackLoopDebuggingThreshold"];

    v3 = qword_1ED49C188;
    if (qword_1ED49C188)
    {
      goto LABEL_7;
    }

    if (_UIGetUIViewLayoutFeedbackLoopDebuggingEnabled())
    {
      qword_1ED49C188 = 100;
      v4 = *(__UILogGetCategoryCachedImpl("LayoutLoop", &qword_1ED49C190) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v8 = 134218754;
        v9 = 100;
        v10 = 2080;
        v11 = "UIViewLayoutFeedbackLoopDebuggingThreshold";
        v12 = 2048;
        v13 = 50;
        v14 = 2048;
        v15 = 10000;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Layout feedback loop debugging enabled via internal UI Debugging preference with a threshold of %ld. Use -%s <threshold> as a launch argument if you want a different threshold. The threshold will be clamped between %ld and %ld.", &v8, 0x2Au);
      }
    }

    v3 = qword_1ED49C188;
    if (qword_1ED49C188)
    {
LABEL_7:
      if (v3 <= 50)
      {
        v3 = 50;
      }

      if (v3 >= 10000)
      {
        v3 = 10000;
      }

      qword_1ED49C188 = v3;
      qword_1ED49C198 = v3;
      qword_1ED49C1A0 = 10 * v3;
      v5 = objc_alloc_init(*(a1 + 32));
      v6 = qword_1ED49C178;
      qword_1ED49C178 = v5;

      if (!_UIGetUIViewLayoutFeedbackLoopDebuggingEnabled())
      {
        v7 = *(__UILogGetCategoryCachedImpl("LayoutLoop", &qword_1ED49C1A8) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = 136315394;
          v9 = "UIViewLayoutFeedbackLoopDebuggingThreshold";
          v10 = 2048;
          v11 = qword_1ED49C188;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Layout feedback loop debugging enabled via -%s launch argument with a threshold of %ld", &v8, 0x16u);
        }
      }
    }
  }
}

id __63___UIViewLayoutFeedbackLoopDebugger_topLevelViewHierarchyTrace__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n"];
  if (a3)
  {
    v7 = a3;
    do
    {
      [v6 appendString:@"|   "];
      --v7;
    }

    while (v7);
  }

  if ([*(*(a1 + 32) + 48) containsObject:v5])
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 64);
    if (!v9)
    {
      v9 = *(v8 + 56);
    }

    [v6 appendFormat:@"%ld ", objc_msgSend(v9, "indexOfObject:", v5) + 1];
  }

  v10 = [v5 _lfld_description];
  [v6 appendString:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v5 subviews];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
        [v6 appendString:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v6;
}

@end