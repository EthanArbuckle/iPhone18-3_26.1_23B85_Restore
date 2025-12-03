@interface SBBannerGestureRecognizerPriorityAssertion
- (NSString)description;
- (SBBannerGestureRecognizerPriorityAssertion)initWithPriority:(int64_t)priority reason:(id)reason enablementChangeHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (void)dealloc;
- (void)invalidate;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation SBBannerGestureRecognizerPriorityAssertion

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  priority = self->_priority;
  reason = self->_reason;
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@: %p priority: %ld; reason: %@; isEnabled: %@>", v4, self, priority, reason, v7];;

  return v8;
}

- (void)invalidate
{
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v5 = [invalidationHandler copy];
    v4 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v5[2](v5, self);
  }
}

- (void)dealloc
{
  [(SBBannerGestureRecognizerPriorityAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBBannerGestureRecognizerPriorityAssertion;
  [(SBBannerGestureRecognizerPriorityAssertion *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    (*(self->_enablementChangeHandler + 2))();
  }
}

- (SBBannerGestureRecognizerPriorityAssertion)initWithPriority:(int64_t)priority reason:(id)reason enablementChangeHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  reasonCopy = reason;
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  if ([objc_opt_class() isValidBannerGestureRecognizerPriority:priority])
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBBannerGestureRecognizerPriorityAssertion initWithPriority:reason:enablementChangeHandler:invalidationHandler:];
    if (reasonCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [SBBannerGestureRecognizerPriorityAssertion initWithPriority:reason:enablementChangeHandler:invalidationHandler:];
      if (invalidationHandlerCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [SBBannerGestureRecognizerPriorityAssertion initWithPriority:reason:enablementChangeHandler:invalidationHandler:];
  if (!handlerCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (invalidationHandlerCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  [SBBannerGestureRecognizerPriorityAssertion initWithPriority:reason:enablementChangeHandler:invalidationHandler:];
LABEL_5:
  v22.receiver = self;
  v22.super_class = SBBannerGestureRecognizerPriorityAssertion;
  v13 = [(SBBannerGestureRecognizerPriorityAssertion *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_enabled = 1;
    v13->_priority = priority;
    v15 = [reasonCopy copy];
    reason = v14->_reason;
    v14->_reason = v15;

    v17 = [handlerCopy copy];
    enablementChangeHandler = v14->_enablementChangeHandler;
    v14->_enablementChangeHandler = v17;

    v19 = [invalidationHandlerCopy copy];
    invalidationHandler = v14->_invalidationHandler;
    v14->_invalidationHandler = v19;
  }

  return v14;
}

- (void)initWithPriority:reason:enablementChangeHandler:invalidationHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[[self class] isValidBannerGestureRecognizerPriority:priority]" object:? file:? lineNumber:? description:?];
}

- (void)initWithPriority:reason:enablementChangeHandler:invalidationHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)initWithPriority:reason:enablementChangeHandler:invalidationHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"enablementChangeHandler" object:? file:? lineNumber:? description:?];
}

- (void)initWithPriority:reason:enablementChangeHandler:invalidationHandler:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"invalidationHandler" object:? file:? lineNumber:? description:?];
}

@end