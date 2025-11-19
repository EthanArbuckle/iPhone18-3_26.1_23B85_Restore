@interface _UIEventSessionDynamicAllEventAccumulator
+ (id)accumulatorWithName:(id)a3 depth:(unint64_t)a4 block:(id)a5 delegate:(id)a6 allowedActionSourceTypes:(id)a7;
- (_UIEventSessionDynamicAccumulatorDelegate)delegate;
- (void)performIncreaseWithActions:(id)a3;
@end

@implementation _UIEventSessionDynamicAllEventAccumulator

+ (id)accumulatorWithName:(id)a3 depth:(unint64_t)a4 block:(id)a5 delegate:(id)a6 allowedActionSourceTypes:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a6;
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

  v16 = [a1 accumulatorWithName:v12 depthRange:a4 block:0 allowedActionSourceTypes:{v13, v14}];
  objc_storeWeak(v16 + 8, v15);

  return v16;
}

- (void)performIncreaseWithActions:(id)a3
{
  v4 = a3;
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

  v5 = [v4 firstObject];
  v6 = [(_UIEventSessionAccumulator *)self block];
  v7 = (v6)[2](v6, v4);

  if (v7)
  {
    v8 = [(_UIEventSessionDynamicAllEventAccumulator *)self delegate];

    if (v8)
    {
      v9 = [v4 firstObject];
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "hardwareKeyboardState")}];
        [v11 setObject:v12 forKeyedSubscript:@"kbAtt"];

        v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "magicKeyboardState")}];
        [v11 setObject:v13 forKeyedSubscript:@"mkbAtt"];

        v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "uiInterfaceOrientation")}];
        [v11 setObject:v14 forKeyedSubscript:@"uiOrient"];

        v15 = [v10 sessionID];
        [v11 setObject:v15 forKeyedSubscript:@"sID"];

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

        v19 = [(_UIEventSessionDynamicAllEventAccumulator *)self delegate];
        v20 = [(_UIEventSessionAccumulator *)self name];
        [v19 writeEventWithFields:v11 andName:v20];
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