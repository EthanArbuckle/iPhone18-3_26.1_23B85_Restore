@interface SKUISettingsFamilyViewStateCoordinator
- (void)_checkSubscriptionStatus:(id)a3 isFinal:(BOOL)a4 error:(id)a5;
- (void)_getSubscriptionStatus;
- (void)checkSettingsFamilyViewStateWithBlock:(id)a3;
@end

@implementation SKUISettingsFamilyViewStateCoordinator

- (void)checkSettingsFamilyViewStateWithBlock:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingsFamilyViewStateCoordinator checkSettingsFamilyViewStateWithBlock:];
  }

  v5 = [v4 copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v5;

  [(SKUISettingsFamilyViewStateCoordinator *)self _getSubscriptionStatus];
}

- (void)_checkSubscriptionStatus:(id)a3 isFinal:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  if ([v7 accountStatus] != 3 || !objc_msgSend(v7, "isFamilySubscription"))
  {
    goto LABEL_8;
  }

  if (![v7 hasFamily])
  {
    v6 = 1;
    goto LABEL_9;
  }

  if (![v7 isFamilyOrganizer])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if ([v7 hasFamilyMembers])
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

LABEL_9:
  [(SKUISettingsFamilyViewStateCoordinator *)self _returnFamilyViewState:v6];
}

- (void)_getSubscriptionStatus
{
  v3 = [MEMORY[0x277D69D18] sharedCoordinator];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__SKUISettingsFamilyViewStateCoordinator__getSubscriptionStatus__block_invoke;
  v4[3] = &unk_278200AE0;
  v4[4] = self;
  [v3 getStatusWithOptions:0 statusBlock:v4];
}

void __64__SKUISettingsFamilyViewStateCoordinator__getSubscriptionStatus__block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SKUISettingsFamilyViewStateCoordinator__getSubscriptionStatus__block_invoke_2;
  v11[3] = &unk_278200AB8;
  v11[4] = *(a1 + 32);
  v12 = v7;
  v14 = a3;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

- (void)checkSettingsFamilyViewStateWithBlock:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingsFamilyViewStateCoordinator checkSettingsFamilyViewStateWithBlock:]";
}

@end