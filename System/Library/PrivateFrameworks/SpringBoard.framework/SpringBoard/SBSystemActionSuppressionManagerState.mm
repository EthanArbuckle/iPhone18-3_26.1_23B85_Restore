@interface SBSystemActionSuppressionManagerState
- (BOOL)isEqual:(id)a3;
- (_BYTE)initWithSuppressionStatus:(char)a3 isEligibleForViewObstructionEvents:(char)a4 canUsePocketStateForSuppression:;
- (uint64_t)canUsePocketStateForSuppression;
- (uint64_t)isEligibleForViewObstructionEvents;
@end

@implementation SBSystemActionSuppressionManagerState

- (uint64_t)isEligibleForViewObstructionEvents
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 8));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (_BYTE)initWithSuppressionStatus:(char)a3 isEligibleForViewObstructionEvents:(char)a4 canUsePocketStateForSuppression:
{
  v8 = a2;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = SBSystemActionSuppressionManagerState;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 2, a2);
      a1[8] = a3;
      a1[9] = a4;
    }
  }

  return a1;
}

- (uint64_t)canUsePocketStateForSuppression
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_9(*(a1 + 9));
  }

  else
  {
    return OUTLINED_FUNCTION_0_9(0);
  }
}

@end