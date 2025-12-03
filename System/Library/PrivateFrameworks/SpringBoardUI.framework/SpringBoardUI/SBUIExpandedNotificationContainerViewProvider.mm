@interface SBUIExpandedNotificationContainerViewProvider
- (NSString)description;
- (SBUIExpandedNotificationContainerViewProvider)initWithRequester:(id)requester containerView:(id)view reason:(id)reason invalidationBlock:(id)block;
- (UIView)containerView;
- (id)requester;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBUIExpandedNotificationContainerViewProvider

- (SBUIExpandedNotificationContainerViewProvider)initWithRequester:(id)requester containerView:(id)view reason:(id)reason invalidationBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  viewCopy = view;
  reasonCopy = reason;
  blockCopy = block;
  if (requesterCopy)
  {
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBUIExpandedNotificationContainerViewProvider initWithRequester:containerView:reason:invalidationBlock:];
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  [SBUIExpandedNotificationContainerViewProvider initWithRequester:containerView:reason:invalidationBlock:];
LABEL_3:
  if (![reasonCopy length])
  {
    [SBUIExpandedNotificationContainerViewProvider initWithRequester:containerView:reason:invalidationBlock:];
  }

  v24.receiver = self;
  v24.super_class = SBUIExpandedNotificationContainerViewProvider;
  v14 = [(SBUIExpandedNotificationContainerViewProvider *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_requester, requesterCopy);
    objc_storeWeak(&v15->_containerView, viewCopy);
    v16 = [reasonCopy copy];
    reason = v15->_reason;
    v15->_reason = v16;

    v18 = [blockCopy copy];
    invalidationBlock = v15->_invalidationBlock;
    v15->_invalidationBlock = v18;

    v20 = SBLogNotifications();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(SBUIExpandedNotificationContainerViewProvider *)v15 description];
      *buf = 138543362;
      v26 = v21;
      _os_log_impl(&dword_21E74E000, v20, OS_LOG_TYPE_DEFAULT, "Instantiated new expanded notification container view assertion: %{public}@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(SBUIExpandedNotificationContainerViewProvider *)self isValid])
  {
    v3 = SBLogNotifications();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(SBUIExpandedNotificationContainerViewProvider *)self description];
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&dword_21E74E000, v3, OS_LOG_TYPE_DEFAULT, "Implicitly invalidating expanded notification container view assertion due to deallocation: %{public}@", buf, 0xCu);
    }

    [(SBUIExpandedNotificationContainerViewProvider *)self invalidate];
  }

  v6.receiver = self;
  v6.super_class = SBUIExpandedNotificationContainerViewProvider;
  [(SBUIExpandedNotificationContainerViewProvider *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_requester);
  reason = self->_reason;
  [(SBUIExpandedNotificationContainerViewProvider *)self isValid];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@: %p requester: %@; reason: %@; valid: %@>", v4, self, WeakRetained, reason, v7];;

  return v8;
}

- (void)invalidate
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (id)requester
{
  WeakRetained = objc_loadWeakRetained(&self->_requester);

  return WeakRetained;
}

- (void)initWithRequester:containerView:reason:invalidationBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"requester" object:? file:? lineNumber:? description:?];
}

- (void)initWithRequester:containerView:reason:invalidationBlock:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"containerView" object:? file:? lineNumber:? description:?];
}

- (void)initWithRequester:containerView:reason:invalidationBlock:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[reason length] > 0" object:? file:? lineNumber:? description:?];
}

@end