@interface _UIEventSessionDynamicAccumulator
+ (id)accumulatorWithName:(id)name depth:(unint64_t)depth block:(id)block delegate:(id)delegate allowedActionSourceTypes:(id)types;
- (_UIEventSessionDynamicAccumulatorDelegate)delegate;
- (void)performIncreaseWithActions:(id)actions;
@end

@implementation _UIEventSessionDynamicAccumulator

+ (id)accumulatorWithName:(id)name depth:(unint64_t)depth block:(id)block delegate:(id)delegate allowedActionSourceTypes:(id)types
{
  nameCopy = name;
  blockCopy = block;
  typesCopy = types;
  delegateCopy = delegate;
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

  v16 = [self accumulatorWithName:nameCopy depthRange:depth block:0 allowedActionSourceTypes:{blockCopy, typesCopy}];
  objc_storeWeak(v16 + 8, delegateCopy);

  return v16;
}

- (void)performIncreaseWithActions:(id)actions
{
  actionsCopy = actions;
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

  block = [(_UIEventSessionAccumulator *)self block];
  v6 = (block)[2](block, actionsCopy);

  if (v6)
  {
    delegate = [(_UIEventSessionDynamicAccumulator *)self delegate];

    if (delegate)
    {
      string = [MEMORY[0x1E696AD60] string];
      v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(actionsCopy, "count") + 3}];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __64___UIEventSessionDynamicAccumulator_performIncreaseWithActions___block_invoke;
      v17[3] = &unk_1E710AF28;
      v18 = string;
      v19 = v9;
      v20 = actionsCopy;
      v10 = v9;
      v11 = string;
      [v20 enumerateObjectsWithOptions:2 usingBlock:v17];
      [v10 setObject:v11 forKey:@"Sequence"];
      name = [(_UIEventSessionAccumulator *)self name];
      [v10 setObject:name forKey:@"Action"];

      delegate2 = [(_UIEventSessionDynamicAccumulator *)self delegate];
      name2 = [(_UIEventSessionAccumulator *)self name];
      [delegate2 writeEventWithFields:v10 andName:name2];
    }
  }
}

- (_UIEventSessionDynamicAccumulatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end