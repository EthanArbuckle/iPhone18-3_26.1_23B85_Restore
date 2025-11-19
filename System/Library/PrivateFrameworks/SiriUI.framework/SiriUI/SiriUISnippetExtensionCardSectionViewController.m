@interface SiriUISnippetExtensionCardSectionViewController
+ (id)cardSectionClasses;
- (CGSize)maximumSizeForRemoteViewController:(id)a3;
- (CGSize)minimumSizeForRemoteViewController:(id)a3;
- (void)_attemptToConnectToRemoteViewControllerWithInteraction:(id)a3 forParameters:(id)a4;
- (void)_cancelTouchesIfNecessary;
- (void)_loadCardSectionView;
- (void)_resumeTouchesIfNecessary;
- (void)dealloc;
@end

@implementation SiriUISnippetExtensionCardSectionViewController

- (void)dealloc
{
  [(SiriUISnippetExtensionCardSectionViewController *)self _resumeTouchesIfNecessary];
  v3 = [(INUIRemoteViewController *)self->_remoteViewController disconnect];
  v4.receiver = self;
  v4.super_class = SiriUISnippetExtensionCardSectionViewController;
  [(SiriUISnippetExtensionCardSectionViewController *)&v4 dealloc];
}

+ (id)cardSectionClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)_loadCardSectionView
{
  v3 = [SiriUICardSectionView alloc];
  v4 = [(SiriUICardSectionView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SiriUISnippetExtensionCardSectionViewController *)self setView:v4];
}

- (void)_cancelTouchesIfNecessary
{
  v3 = [(INUIRemoteViewController *)self->_remoteViewController _cancelTouchesForCurrentEventInHostedContent];
  touchDeliveryPolicyAssertion = self->_touchDeliveryPolicyAssertion;
  self->_touchDeliveryPolicyAssertion = v3;

  MEMORY[0x2821F96F8](v3, touchDeliveryPolicyAssertion);
}

- (void)_resumeTouchesIfNecessary
{
  [self->_touchDeliveryPolicyAssertion invalidate];
  touchDeliveryPolicyAssertion = self->_touchDeliveryPolicyAssertion;
  self->_touchDeliveryPolicyAssertion = 0;
}

- (void)_attemptToConnectToRemoteViewControllerWithInteraction:(id)a3 forParameters:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CD4600];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke;
  v8[3] = &unk_279C5A9F8;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 _requestRemoteViewControllerForSnippetExtensionInteraction:v7 delegate:self connectionHandler:v8];
}

void __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = *MEMORY[0x277CEF098];
    v12 = *MEMORY[0x277CEF098];
    if (v7)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 136315394;
      v19 = "[SiriUISnippetExtensionCardSectionViewController _attemptToConnectToRemoteViewControllerWithInteraction:forParameters:]_block_invoke";
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s No remote view controller for interaction: %@", buf, 0x16u);
    }

    [*(a1 + 40) _finishLoadingViewIfNecessary];
  }

  else
  {
    [v5 setServiceViewShouldShareTouchesWithHost:1];
    v8 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke_2;
    v14[3] = &unk_279C5A9D0;
    v9 = v8;
    v10 = *(a1 + 40);
    v15 = v9;
    v16 = v10;
    v17 = v5;
    [v17 configureForParameters:0 ofInteraction:v9 interactiveBehavior:0 context:0 completion:v14];
  }
}

void __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke_2_cold_1();
    }
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(v12 + 1048);
    if (v13)
    {
      [v13 willMoveToParentViewController:0];
      v14 = [*(*(a1 + 40) + 1048) view];
      [v14 removeFromSuperview];

      [*(*(a1 + 40) + 1048) removeFromParentViewController];
      v12 = *(a1 + 40);
    }

    objc_storeStrong((v12 + 1048), *(a1 + 48));
    [*(a1 + 40) addChildViewController:*(a1 + 48)];
    v15 = [*(a1 + 40) view];
    [v15 setFrame:{0.0, 0.0, a2, a3}];

    v16 = [*(a1 + 40) view];
    [v16 setContentSize:{a2, a3}];

    v17 = [*(a1 + 40) view];
    v18 = [*(a1 + 48) view];
    [v17 setContentView:v18];

    [*(a1 + 48) didMoveToParentViewController:*(a1 + 40)];
  }

  [*(a1 + 40) _finishLoadingViewIfNecessary];
}

- (CGSize)minimumSizeForRemoteViewController:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)maximumSizeForRemoteViewController:(id)a3
{
  v4 = [(CRKCardSectionViewController *)self delegate];
  [v4 boundingSizeForCardSectionViewController:self];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

void __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke_cold_1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_26948D000, v0, v1, "%s Failed to instantiate remote view controller with error: %{public}@ for interaction: %@", v2);
}

void __120__SiriUISnippetExtensionCardSectionViewController__attemptToConnectToRemoteViewControllerWithInteraction_forParameters___block_invoke_2_cold_1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_0(&dword_26948D000, v0, v1, "%s Failed to configure remote view controller with error: %{public}@ for interaction: %@", v2);
}

@end