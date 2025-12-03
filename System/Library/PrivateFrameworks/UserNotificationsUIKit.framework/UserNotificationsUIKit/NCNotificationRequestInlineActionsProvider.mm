@interface NCNotificationRequestInlineActionsProvider
- (NCNotificationRequestInlineActionsProvider)initWithNotificationRequest:(id)request delegate:(id)delegate;
- (NCNotificationRequestInlineActionsProviderDelegate)delegate;
- (NSArray)auxiliaryOptionActions;
- (id)_primaryAction;
- (id)_secondaryAction;
- (void)handlePrimaryAction:(id)action;
- (void)handleSecondaryAction:(id)action;
@end

@implementation NCNotificationRequestInlineActionsProvider

- (NCNotificationRequestInlineActionsProvider)initWithNotificationRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NCNotificationRequestInlineActionsProvider;
  v9 = [(NCNotificationRequestInlineActionsProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationRequest, request);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (NSArray)auxiliaryOptionActions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  _primaryAction = [(NCNotificationRequestInlineActionsProvider *)self _primaryAction];
  v5 = _primaryAction;
  if (_primaryAction)
  {
    title = [_primaryAction title];
    v7 = [title length];

    if (v7)
    {
      v8 = MEMORY[0x277D750C8];
      title2 = [v5 title];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __68__NCNotificationRequestInlineActionsProvider_auxiliaryOptionActions__block_invoke;
      v21[3] = &unk_27836F428;
      objc_copyWeak(&v22, &location);
      v10 = [v8 actionWithTitle:title2 image:0 identifier:@"notification-request-inline-action-provider-primary-action" handler:v21];

      [v3 addObject:v10];
      objc_destroyWeak(&v22);
    }
  }

  _secondaryAction = [(NCNotificationRequestInlineActionsProvider *)self _secondaryAction];
  v12 = _secondaryAction;
  if (_secondaryAction)
  {
    title3 = [_secondaryAction title];
    v14 = [title3 length];

    if (v14)
    {
      v15 = MEMORY[0x277D750C8];
      title4 = [v12 title];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __68__NCNotificationRequestInlineActionsProvider_auxiliaryOptionActions__block_invoke_2;
      v19[3] = &unk_27836F428;
      objc_copyWeak(&v20, &location);
      v17 = [v15 actionWithTitle:title4 image:0 identifier:@"notification-request-inline-action-provider-secondary-action" handler:v19];

      [v3 addObject:v17];
      objc_destroyWeak(&v20);
    }
  }

  objc_destroyWeak(&location);

  return v3;
}

void __68__NCNotificationRequestInlineActionsProvider_auxiliaryOptionActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handlePrimaryAction:v4];
}

void __68__NCNotificationRequestInlineActionsProvider_auxiliaryOptionActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained handleSecondaryAction:v4];
}

- (id)_primaryAction
{
  notificationRequest = [(NCNotificationRequestInlineActionsProvider *)self notificationRequest];
  defaultEnvironmentActions = [notificationRequest defaultEnvironmentActions];
  v5 = [defaultEnvironmentActions count];

  if (v5)
  {
    notificationRequest2 = [(NCNotificationRequestInlineActionsProvider *)self notificationRequest];
    defaultEnvironmentActions2 = [notificationRequest2 defaultEnvironmentActions];
    v8 = [defaultEnvironmentActions2 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_secondaryAction
{
  notificationRequest = [(NCNotificationRequestInlineActionsProvider *)self notificationRequest];
  defaultEnvironmentActions = [notificationRequest defaultEnvironmentActions];
  v5 = [defaultEnvironmentActions count];

  if (v5 < 2)
  {
    v8 = 0;
  }

  else
  {
    notificationRequest2 = [(NCNotificationRequestInlineActionsProvider *)self notificationRequest];
    defaultEnvironmentActions2 = [notificationRequest2 defaultEnvironmentActions];
    v8 = [defaultEnvironmentActions2 objectAtIndex:1];
  }

  return v8;
}

- (void)handlePrimaryAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _primaryAction = [(NCNotificationRequestInlineActionsProvider *)self _primaryAction];
  [WeakRetained contentProvider:self performAction:_primaryAction animated:1];
}

- (void)handleSecondaryAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _secondaryAction = [(NCNotificationRequestInlineActionsProvider *)self _secondaryAction];
  [WeakRetained contentProvider:self performAction:_secondaryAction animated:1];
}

- (NCNotificationRequestInlineActionsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end