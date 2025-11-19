@interface SUICKPFeedbackDelegateDemultiplexer
- (BOOL)shouldHandleCardSectionEngagement:(id)a3;
- (SUICKPFeedbackDelegateDemultiplexer)init;
- (VRXInteractionDelegate)snippetUIDelegate;
- (id)_delegateForFeedback:(id)a3;
- (id)_delegateForView:(id)a3;
- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)a3;
- (void)cardViewDidAppear:(id)a3;
- (void)cardViewDidDisappear:(id)a3;
- (void)didEngageCardSection:(id)a3;
- (void)didErrorOccur:(id)a3;
- (void)didPerformCommand:(id)a3;
- (void)didReportUserResponseFeedback:(id)a3;
- (void)emitInstrumentationEvent:(id)a3;
- (void)presentViewController:(id)a3;
- (void)presentViewControllerForCard:(id)a3 animate:(BOOL)a4;
- (void)reportFeedback:(id)a3 queryId:(int64_t)a4;
- (void)sendCustomFeedback:(id)a3;
- (void)willDismissViewController:(id)a3;
@end

@implementation SUICKPFeedbackDelegateDemultiplexer

- (SUICKPFeedbackDelegateDemultiplexer)init
{
  v11.receiver = self;
  v11.super_class = SUICKPFeedbackDelegateDemultiplexer;
  v2 = [(SUICKPFeedbackDelegateDemultiplexer *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    feedbackDelegatesByCardSectionIdentifiers = v2->_feedbackDelegatesByCardSectionIdentifiers;
    v2->_feedbackDelegatesByCardSectionIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    feedbackDelegatesByCardSectionViewIds = v2->_feedbackDelegatesByCardSectionViewIds;
    v2->_feedbackDelegatesByCardSectionViewIds = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_create("com.apple.siri.cardKit.FeedbackDelegateDemultiplexer.serialInstrumentationFeedbackQueue", v7);
    serialInstrumentationFeedbackQueue = v2->_serialInstrumentationFeedbackQueue;
    v2->_serialInstrumentationFeedbackQueue = v8;
  }

  return v2;
}

- (void)emitInstrumentationEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    serialInstrumentationFeedbackQueue = self->_serialInstrumentationFeedbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SUICKPFeedbackDelegateDemultiplexer_emitInstrumentationEvent___block_invoke;
    block[3] = &unk_279B8F030;
    objc_copyWeak(&v8, &location);
    v7 = v4;
    dispatch_async(serialInstrumentationFeedbackQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __64__SUICKPFeedbackDelegateDemultiplexer_emitInstrumentationEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained snippetUIDelegate];

    WeakRetained = v7;
    if (v3)
    {
      v4 = [v7 snippetUIDelegate];
      v5 = objc_opt_respondsToSelector();

      WeakRetained = v7;
      if (v5)
      {
        v6 = [v7 snippetUIDelegate];
        [v6 emitInstrumentationEvent:*(a1 + 32)];

        WeakRetained = v7;
      }
    }
  }
}

- (id)_delegateForFeedback:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    feedbackDelegatesByCardSectionIdentifiers = self->_feedbackDelegatesByCardSectionIdentifiers;
    v6 = MEMORY[0x277CF9470];
    v7 = [v4 cardSection];
    v8 = [v6 cardSectionWithSFCardSection:v7];
    v9 = [v8 cardSectionIdentifier];
    v10 = [(NSMutableDictionary *)feedbackDelegatesByCardSectionIdentifiers objectForKey:v9];
    defaultDelegate = v10;
    if (!v10)
    {
      defaultDelegate = self->_defaultDelegate;
    }

    v12 = defaultDelegate;
  }

  else
  {
    v12 = self->_defaultDelegate;
  }

  return v12;
}

- (id)_delegateForView:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2876D4838])
  {
    feedbackDelegatesByCardSectionViewIds = self->_feedbackDelegatesByCardSectionViewIds;
    v6 = [v4 cardSectionViewIdentifier];
    v7 = [(NSMutableDictionary *)feedbackDelegatesByCardSectionViewIds objectForKey:v6];
    defaultDelegate = v7;
    if (!v7)
    {
      defaultDelegate = self->_defaultDelegate;
    }

    v9 = defaultDelegate;
  }

  else
  {
    v9 = self->_defaultDelegate;
  }

  return v9;
}

- (void)reportFeedback:(id)a3 queryId:(int64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v6];
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Report feedback: %@ with queryId %lld", &v10, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 reportFeedback:v6 queryId:a4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cardViewDidDisappear:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Card did disappear with feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 cardViewDidDisappear:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cardViewDidAppear:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Card did appear with feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 cardViewDidAppear:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didEngageCardSection:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Card section engaged with feedback: %@  listener: %@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didEngageCardSection:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didPerformCommand:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Command performed with feedback: %@  listener: %@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didPerformCommand:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReportUserResponseFeedback:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Report user response feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didReportUserResponseFeedback:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didErrorOccur:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Error occured: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didErrorOccur:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendCustomFeedback:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Sending custom feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 sendCustomFeedback:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldHandleCardSectionEngagement:(id)a3
{
  v4 = a3;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:v4];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldHandleCardSectionEngagement:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)presentViewController:(id)a3
{
  v5 = a3;
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(SearchUIFeedbackDelegate *)self->_defaultDelegate presentViewController:v5];
  }
}

- (void)willDismissViewController:(id)a3
{
  v5 = a3;
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(SearchUIFeedbackDelegate *)self->_defaultDelegate willDismissViewController:v5];
  }
}

- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)a3
{
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_defaultDelegate;

    [(SearchUIFeedbackDelegate *)v6 cardSectionViewDidSelectPreferredPunchoutIndex:a3];
  }
}

- (void)presentViewControllerForCard:(id)a3 animate:(BOOL)a4
{
  v6 = a3;
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(SearchUIFeedbackDelegate *)self->_defaultDelegate presentViewControllerForCard:v6 animate:1];
  }
}

- (VRXInteractionDelegate)snippetUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_snippetUIDelegate);

  return WeakRetained;
}

@end