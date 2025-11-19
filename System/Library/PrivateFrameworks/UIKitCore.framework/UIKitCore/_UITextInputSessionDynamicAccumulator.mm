@interface _UITextInputSessionDynamicAccumulator
+ (id)accumulatorWithName:(id)a3 depthRange:(_NSRange)a4 block:(id)a5;
- (void)increaseWithActions:(id)a3;
@end

@implementation _UITextInputSessionDynamicAccumulator

+ (id)accumulatorWithName:(id)a3 depthRange:(_NSRange)a4 block:(id)a5
{
  length = a4.length;
  location = a4.location;
  v17 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = UITextInputSessionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v9;
    _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "[UITextInputSessionDynamicAccumulator] Created new accumulator with name %@!", buf, 0xCu);
  }

  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS____UITextInputSessionDynamicAccumulator;
  v12 = objc_msgSendSuper2(&v14, sel_accumulatorWithName_type_depthRange_block_, v9, 0, location, length, &__block_literal_global_603);
  [v12 setDynamicAccumulatorIncreaseBlock:v10];

  return v12;
}

- (void)increaseWithActions:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = UITextInputSessionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(_UITextInputSessionAccumulator *)self name];
    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionDynamicAccumulator] increaseWithActions() called on %@!", &v8, 0xCu);
  }

  v6 = (*(self->_dynamicAccumulatorIncreaseBlock + 2))();

  if ([v6 count])
  {
    objc_storeStrong(&self->_lastResults, v6);
  }
}

@end