@interface _UIEventSessionDynamicAllEventAccumulator
+ (id)accumulatorWithName:(id)name depth:(unint64_t)depth block:(id)block delegate:(id)delegate allowedActionSourceTypes:(id)types;
- (_UIEventSessionDynamicAccumulatorDelegate)delegate;
- (void)performIncreaseWithActions:(id)actions;
@end

@implementation _UIEventSessionDynamicAllEventAccumulator

+ (id)accumulatorWithName:(id)name depth:(unint64_t)depth block:(id)block delegate:(id)delegate allowedActionSourceTypes:(id)types
{
  nameCopy = name;
  blockCopy = block;
  typesCopy = types;
  delegateCopy = delegate;
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &accumulatorWithName_depth_block_delegate_allowedActionSourceTypes____s_category_80);
    if (*CategoryCachedImpl)
    {
      v19 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "_UIEventSessionDynamicAllEventAccumulator: Created new accumulator!", v20, 2u);
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
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &performIncreaseWithActions____s_category_81);
    if (*CategoryCachedImpl)
    {
      v22 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "_UIEventSessionDynamicAllEventAccumulator: increaseWithActions() called!", v24, 2u);
      }
    }
  }

  firstObject = [actionsCopy firstObject];
  block = [(_UIEventSessionAccumulator *)self block];
  v7 = (block)[2](block, actionsCopy);

  if (v7)
  {
    delegate = [(_UIEventSessionDynamicAllEventAccumulator *)self delegate];

    if (delegate)
    {
      firstObject2 = [actionsCopy firstObject];
      if (firstObject2)
      {
        v10 = firstObject2;
        v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "hardwareKeyboardState")}];
        [v11 setObject:v12 forKeyedSubscript:@"kbAtt"];

        v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "magicKeyboardState")}];
        [v11 setObject:v13 forKeyedSubscript:@"mkbAtt"];

        v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "uiInterfaceOrientation")}];
        [v11 setObject:v14 forKeyedSubscript:@"uiOrient"];

        sessionID = [v10 sessionID];
        [v11 setObject:sessionID forKeyedSubscript:@"sID"];

        if (os_variant_has_internal_diagnostics())
        {
          v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "sequenceNumber")}];
          [v11 setObject:v23 forKeyedSubscript:@"seqN"];
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "source")}];
        [v11 setObject:v16 forKeyedSubscript:@"src"];

        v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "actionType")}];
        [v11 setObject:v17 forKeyedSubscript:@"aTyp"];

        v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "actionCount")}];
        [v11 setObject:v18 forKeyedSubscript:@"aCnt"];

        delegate2 = [(_UIEventSessionDynamicAllEventAccumulator *)self delegate];
        name = [(_UIEventSessionAccumulator *)self name];
        [delegate2 writeEventWithFields:v11 andName:name];
      }
    }
  }
}

- (_UIEventSessionDynamicAccumulatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end