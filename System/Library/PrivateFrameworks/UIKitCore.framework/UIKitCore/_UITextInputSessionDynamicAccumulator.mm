@interface _UITextInputSessionDynamicAccumulator
+ (id)accumulatorWithName:(id)name depthRange:(_NSRange)range block:(id)block;
- (void)increaseWithActions:(id)actions;
@end

@implementation _UITextInputSessionDynamicAccumulator

+ (id)accumulatorWithName:(id)name depthRange:(_NSRange)range block:(id)block
{
  length = range.length;
  location = range.location;
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  blockCopy = block;
  v11 = UITextInputSessionLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = nameCopy;
    _os_log_debug_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEBUG, "[UITextInputSessionDynamicAccumulator] Created new accumulator with name %@!", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS____UITextInputSessionDynamicAccumulator;
  v12 = objc_msgSendSuper2(&v14, sel_accumulatorWithName_type_depthRange_block_, nameCopy, 0, location, length, &__block_literal_global_603);
  [v12 setDynamicAccumulatorIncreaseBlock:blockCopy];

  return v12;
}

- (void)increaseWithActions:(id)actions
{
  v10 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v5 = UITextInputSessionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    name = [(_UITextInputSessionAccumulator *)self name];
    v8 = 138412290;
    v9 = name;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "[UITextInputSessionDynamicAccumulator] increaseWithActions() called on %@!", &v8, 0xCu);
  }

  v6 = (*(self->_dynamicAccumulatorIncreaseBlock + 2))();

  if ([v6 count])
  {
    objc_storeStrong(&self->_lastResults, v6);
  }
}

@end