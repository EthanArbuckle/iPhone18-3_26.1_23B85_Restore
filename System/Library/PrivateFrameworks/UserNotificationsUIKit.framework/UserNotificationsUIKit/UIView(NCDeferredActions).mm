@interface UIView(NCDeferredActions)
- (uint64_t)_nc_subviewHasDeferredActions;
- (uint64_t)nc_hasDeferredActions;
- (uint64_t)nc_performCrossFadeForDeferredActions;
- (void)_nc_setHasDeferredActions:()NCDeferredActions;
- (void)_nc_setSubviewHasDeferredActions:()NCDeferredActions;
- (void)nc_performDeferredActionsIfNeeded;
- (void)nc_setHasDeferredActions;
@end

@implementation UIView(NCDeferredActions)

- (void)_nc_setHasDeferredActions:()NCDeferredActions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"UIView.NCDeferredActions.hasDeferredActions", v2, 0x303);
}

- (uint64_t)_nc_subviewHasDeferredActions
{
  v1 = objc_getAssociatedObject(self, @"UIView.NCDeferredActions.subviewHasDeferredActions");
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_nc_setSubviewHasDeferredActions:()NCDeferredActions
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"UIView.NCDeferredActions.subviewHasDeferredActions", v5, 0x303);

  if ((a3 & 1) != 0 || ([self nc_hasDeferredActions] & 1) == 0)
  {
    superview = [self superview];
    [superview _nc_setSubviewHasDeferredActions:a3];
  }
}

- (uint64_t)nc_hasDeferredActions
{
  v1 = objc_getAssociatedObject(self, @"UIView.NCDeferredActions.hasDeferredActions");
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)nc_setHasDeferredActions
{
  [self _nc_setHasDeferredActions:1];
  superview = [self superview];
  [superview _nc_setSubviewHasDeferredActions];
}

- (void)nc_performDeferredActionsIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  if (([self _nc_subviewHasDeferredActions] & 1) != 0 || objc_msgSend(self, "nc_hasDeferredActions"))
  {
    if ([self _nc_subviewHasDeferredActions])
    {
      [self _nc_setSubviewHasDeferredActions:0];
    }

    [self _nc_setHasDeferredActions:0];
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    subviews = [self subviews];
    v3 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v7 + 1) + 8 * v6++) nc_performDeferredActionsIfNeeded];
        }

        while (v4 != v6);
        v4 = [subviews countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (uint64_t)nc_performCrossFadeForDeferredActions
{
  result = [self nc_hasDeferredActions];
  if (result)
  {

    return [self pl_performCrossFadeIfNecessary];
  }

  return result;
}

@end