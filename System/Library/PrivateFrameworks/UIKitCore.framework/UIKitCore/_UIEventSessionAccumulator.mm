@interface _UIEventSessionAccumulator
+ (id)accumulatorWithName:(id)name depthRange:(_NSRange)range block:(id)block allowedActionSourceTypes:(id)types;
- (BOOL)isActionAllowed:(id)allowed;
- (_NSRange)depthRange;
- (void)enumerateAnalytics:(id)analytics;
- (void)flushAccumulator;
- (void)increaseWithAction:(id)action;
- (void)performIncreaseWithActions:(id)actions;
- (void)reset;
@end

@implementation _UIEventSessionAccumulator

+ (id)accumulatorWithName:(id)name depthRange:(_NSRange)range block:(id)block allowedActionSourceTypes:(id)types
{
  length = range.length;
  location = range.location;
  typesCopy = types;
  blockCopy = block;
  nameCopy = name;
  v13 = objc_alloc_init(objc_opt_class());
  v14 = [nameCopy copy];

  v15 = v13[2];
  v13[2] = v14;

  v13[6] = location;
  v13[7] = length;
  v16 = [blockCopy copy];

  v17 = v13[3];
  v13[3] = v16;

  v18 = [typesCopy copy];
  v19 = v13[4];
  v13[4] = v18;

  [v13 reset];
  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &accumulatorWithName_depthRange_block_allowedActionSourceTypes____s_category);
    if (*CategoryCachedImpl)
    {
      v22 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "_UIEventSessionAccumulator: Created new accumulator!", v23, 2u);
      }
    }
  }

  return v13;
}

- (void)performIncreaseWithActions:(id)actions
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIEventSessionAccumulator.m" lineNumber:45 description:@"_UIEventSessionAccumulator: performIncreaseWithActions() called! Please implement this method or use a child class."];
}

- (BOOL)isActionAllowed:(id)allowed
{
  allowedCopy = allowed;
  v5 = [(NSDictionary *)self->_allowedActionSourceTypes objectForKeyedSubscript:objc_opt_class()];
  if (v5)
  {
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(allowedCopy, "source")}];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)increaseWithAction:(id)action
{
  v18 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if ([(_UIEventSessionAccumulator *)self isActionAllowed:actionCopy])
  {
    firstObject = [(NSMutableOrderedSet *)self->_recentActions firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      if ([firstObject mergeActionIfPossible:actionCopy])
      {
LABEL_9:

        goto LABEL_11;
      }

      [(_UIEventSessionAccumulator *)self performIncreaseWithActions:self->_recentActions];
      v8 = [(NSMutableOrderedSet *)self->_recentActions count];
      v9 = self->_depthRange.length + self->_depthRange.location;
      v6 = v8 - v9;
      if (v8 > v9)
      {
        [(NSMutableOrderedSet *)self->_recentActions removeObjectsInRange:?];
      }
    }

    [actionCopy setSequenceNumber:{self->_sequenceNumber, v6}];
    sequenceNumber = self->_sequenceNumber;
    if (sequenceNumber >= 999)
    {
      sequenceNumber = 999;
    }

    self->_sequenceNumber = sequenceNumber + 1;
    recentActions = self->_recentActions;
    v12 = [actionCopy copy];
    [(NSMutableOrderedSet *)recentActions insertObject:v12 atIndex:0];

    goto LABEL_9;
  }

  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIEventSessionActionAnalytics", &increaseWithAction____s_category);
    if (*CategoryCachedImpl)
    {
      v14 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = 138412290;
        v17 = objc_opt_class();
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "_UIEventSessionAccumulator: increaseWithActions() skipping action of class %@", &v16, 0xCu);
      }
    }
  }

LABEL_11:
}

- (void)flushAccumulator
{
  if ([(NSMutableOrderedSet *)self->_recentActions count])
  {
    [(_UIEventSessionAccumulator *)self performIncreaseWithActions:self->_recentActions];
    recentActions = self->_recentActions;

    [(NSMutableOrderedSet *)recentActions removeAllObjects];
  }
}

- (void)reset
{
  self->_sequenceNumber = 0;
  recentActions = self->_recentActions;
  if (recentActions)
  {

    [(NSMutableOrderedSet *)recentActions removeAllObjects];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:20];
    v5 = self->_recentActions;
    self->_recentActions = v4;
  }
}

- (void)enumerateAnalytics:(id)analytics
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIEventSessionAccumulator.m" lineNumber:138 description:@"_UIEventSessionAccumulator: enumerateAnalytics() called! Please implement this method or use a child class."];
}

- (_NSRange)depthRange
{
  length = self->_depthRange.length;
  location = self->_depthRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end