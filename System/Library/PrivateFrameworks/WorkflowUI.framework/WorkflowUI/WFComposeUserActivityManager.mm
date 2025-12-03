@interface WFComposeUserActivityManager
- (UIResponder)responder;
- (WFComposeUserActivityManager)initWithWorkflow:(id)workflow targetResponder:(id)responder;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setActive:(BOOL)active;
- (void)updateUserActivityState:(id)state;
@end

@implementation WFComposeUserActivityManager

- (UIResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (WFWorkflowNameContext == context || WFWorkflowIconContext == context)
  {
    v13 = [(WFComposeUserActivityManager *)self responder:path];
    workflow = [(WFComposeUserActivityManager *)self workflow];
    createUserActivityForViewing = [workflow createUserActivityForViewing];

    userInfo = [createUserActivityForViewing userInfo];
    [(WFComposeUserActivityManager *)self setUserInfo:userInfo];

    userActivity = [v13 userActivity];
    [userActivity invalidate];

    [v13 setUserActivity:createUserActivityForViewing];
    if ([(WFComposeUserActivityManager *)self isActive])
    {
      userActivity2 = [v13 userActivity];
      [userActivity2 becomeCurrent];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = WFComposeUserActivityManager;
    [(WFComposeUserActivityManager *)&v14 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setActive:(BOOL)active
{
  self->_active = active;
  isActive = [(WFComposeUserActivityManager *)self isActive];
  responder = [(WFComposeUserActivityManager *)self responder];
  userActivity = [responder userActivity];
  v6 = userActivity;
  if (isActive)
  {
    [userActivity becomeCurrent];
  }

  else
  {
    [userActivity resignCurrent];
  }
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  userInfo = [(WFComposeUserActivityManager *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(WFComposeUserActivityManager *)self userInfo];
    [stateCopy addUserInfoEntriesFromDictionary:userInfo2];
  }
}

- (void)dealloc
{
  workflow = [(WFComposeUserActivityManager *)self workflow];
  [workflow removeObserver:self forKeyPath:@"name" context:WFWorkflowNameContext];

  workflow2 = [(WFComposeUserActivityManager *)self workflow];
  [workflow2 removeObserver:self forKeyPath:@"icon" context:WFWorkflowIconContext];

  v5.receiver = self;
  v5.super_class = WFComposeUserActivityManager;
  [(WFComposeUserActivityManager *)&v5 dealloc];
}

- (WFComposeUserActivityManager)initWithWorkflow:(id)workflow targetResponder:(id)responder
{
  workflowCopy = workflow;
  responderCopy = responder;
  if (!workflowCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFComposeUserActivityManager.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v18.receiver = self;
  v18.super_class = WFComposeUserActivityManager;
  v10 = [(WFComposeUserActivityManager *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workflow, workflow);
    objc_storeWeak(&v11->_responder, responderCopy);
    userActivity = [responderCopy userActivity];
    [userActivity invalidate];

    createUserActivityForViewing = [workflowCopy createUserActivityForViewing];
    userInfo = [createUserActivityForViewing userInfo];
    [(WFComposeUserActivityManager *)v11 setUserInfo:userInfo];

    [responderCopy setUserActivity:createUserActivityForViewing];
    [workflowCopy addObserver:v11 forKeyPath:@"name" options:0 context:WFWorkflowNameContext];
    [workflowCopy addObserver:v11 forKeyPath:@"icon" options:0 context:WFWorkflowIconContext];
    v15 = v11;
  }

  return v11;
}

@end