@interface SBSystemActionSuppressionManagerState
- (BOOL)isEqual:(id)equal;
- (_BYTE)initWithSuppressionStatus:(char)status isEligibleForViewObstructionEvents:(char)events canUsePocketStateForSuppression:;
- (uint64_t)canUsePocketStateForSuppression;
- (uint64_t)isEligibleForViewObstructionEvents;
@end

@implementation SBSystemActionSuppressionManagerState

- (uint64_t)isEligibleForViewObstructionEvents
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_9(*(self + 8));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    if (v6->_isEligibleForViewObstructionEvents == self->_isEligibleForViewObstructionEvents && v6->_canUsePocketStateForSuppression == self->_canUsePocketStateForSuppression)
    {
      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_BYTE)initWithSuppressionStatus:(char)status isEligibleForViewObstructionEvents:(char)events canUsePocketStateForSuppression:
{
  v8 = a2;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = SBSystemActionSuppressionManagerState;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    self = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 2, a2);
      self[8] = status;
      self[9] = events;
    }
  }

  return self;
}

- (uint64_t)canUsePocketStateForSuppression
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_9(*(self + 9));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

@end