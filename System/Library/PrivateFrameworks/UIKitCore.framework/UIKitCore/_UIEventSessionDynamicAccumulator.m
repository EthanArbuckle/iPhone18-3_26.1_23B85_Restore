@interface _UIEventSessionDynamicAccumulator
+ (id)accumulatorWithName:(id)a3 depth:(unint64_t)a4 block:(id)a5 delegate:(id)a6 allowedActionSourceTypes:(id)a7;
- (_UIEventSessionDynamicAccumulatorDelegate)delegate;
- (void)performIncreaseWithActions:(id)a3;
@end

@implementation _UIEventSessionDynamicAccumulator

+ (id)accumulatorWithName:(id)a3 depth:(unint64_t)a4 block:(id)a5 delegate:(id)a6 allowedActionSourceTypes:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &accumulatorWithName_depth_block_delegate_allowedActionSourceTypes____s_category);
    if (*CategoryCachedImpl)
    {
      v19 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "_UIEventSessionDynamicAccumulator: Created new accumulator!", v20, 2u);
      }
    }
  }

  v16 = [a1 accumulatorWithName:v12 depthRange:a4 block:0 allowedActionSourceTypes:{v13, v14}];
  objc_storeWeak(v16 + 8, v15);

  return v16;
}

- (void)performIncreaseWithActions:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &performIncreaseWithActions____s_category);
    if (*CategoryCachedImpl)
    {
      v16 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "_UIEventSessionDynamicAccumulator: increaseWithActions() called!", buf, 2u);
      }
    }
  }

  v5 = [(_UIEventSessionAccumulator *)self block];
  v6 = (v5)[2](v5, v4);

  if (v6)
  {
    v7 = [(_UIEventSessionDynamicAccumulator *)self delegate];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AD60] string];
      v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count") + 3}];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __64___UIEventSessionDynamicAccumulator_performIncreaseWithActions___block_invoke;
      v17[3] = &unk_1E710AF28;
      v18 = v8;
      v19 = v9;
      v20 = v4;
      v10 = v9;
      v11 = v8;
      [v20 enumerateObjectsWithOptions:2 usingBlock:v17];
      [v10 setObject:v11 forKey:@"Sequence"];
      v12 = [(_UIEventSessionAccumulator *)self name];
      [v10 setObject:v12 forKey:@"Action"];

      v13 = [(_UIEventSessionDynamicAccumulator *)self delegate];
      v14 = [(_UIEventSessionAccumulator *)self name];
      [v13 writeEventWithFields:v10 andName:v14];
    }
  }
}

- (_UIEventSessionDynamicAccumulatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end