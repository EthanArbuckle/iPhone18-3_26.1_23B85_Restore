@interface WFComposeUserActivityManager
- (UIResponder)responder;
- (WFComposeUserActivityManager)initWithWorkflow:(id)a3 targetResponder:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActive:(BOOL)a3;
- (void)updateUserActivityState:(id)a3;
@end

@implementation WFComposeUserActivityManager

- (UIResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (WFWorkflowNameContext == a6 || WFWorkflowIconContext == a6)
  {
    v13 = [(WFComposeUserActivityManager *)self responder:a3];
    v8 = [(WFComposeUserActivityManager *)self workflow];
    v9 = [v8 createUserActivityForViewing];

    v10 = [v9 userInfo];
    [(WFComposeUserActivityManager *)self setUserInfo:v10];

    v11 = [v13 userActivity];
    [v11 invalidate];

    [v13 setUserActivity:v9];
    if ([(WFComposeUserActivityManager *)self isActive])
    {
      v12 = [v13 userActivity];
      [v12 becomeCurrent];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = WFComposeUserActivityManager;
    [(WFComposeUserActivityManager *)&v14 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setActive:(BOOL)a3
{
  self->_active = a3;
  v4 = [(WFComposeUserActivityManager *)self isActive];
  v7 = [(WFComposeUserActivityManager *)self responder];
  v5 = [v7 userActivity];
  v6 = v5;
  if (v4)
  {
    [v5 becomeCurrent];
  }

  else
  {
    [v5 resignCurrent];
  }
}

- (void)updateUserActivityState:(id)a3
{
  v6 = a3;
  v4 = [(WFComposeUserActivityManager *)self userInfo];

  if (v4)
  {
    v5 = [(WFComposeUserActivityManager *)self userInfo];
    [v6 addUserInfoEntriesFromDictionary:v5];
  }
}

- (void)dealloc
{
  v3 = [(WFComposeUserActivityManager *)self workflow];
  [v3 removeObserver:self forKeyPath:@"name" context:WFWorkflowNameContext];

  v4 = [(WFComposeUserActivityManager *)self workflow];
  [v4 removeObserver:self forKeyPath:@"icon" context:WFWorkflowIconContext];

  v5.receiver = self;
  v5.super_class = WFComposeUserActivityManager;
  [(WFComposeUserActivityManager *)&v5 dealloc];
}

- (WFComposeUserActivityManager)initWithWorkflow:(id)a3 targetResponder:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFComposeUserActivityManager.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];
  }

  v18.receiver = self;
  v18.super_class = WFComposeUserActivityManager;
  v10 = [(WFComposeUserActivityManager *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workflow, a3);
    objc_storeWeak(&v11->_responder, v9);
    v12 = [v9 userActivity];
    [v12 invalidate];

    v13 = [v8 createUserActivityForViewing];
    v14 = [v13 userInfo];
    [(WFComposeUserActivityManager *)v11 setUserInfo:v14];

    [v9 setUserActivity:v13];
    [v8 addObserver:v11 forKeyPath:@"name" options:0 context:WFWorkflowNameContext];
    [v8 addObserver:v11 forKeyPath:@"icon" options:0 context:WFWorkflowIconContext];
    v15 = v11;
  }

  return v11;
}

@end