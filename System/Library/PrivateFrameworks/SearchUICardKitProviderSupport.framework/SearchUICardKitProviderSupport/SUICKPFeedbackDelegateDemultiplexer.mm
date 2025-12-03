@interface SUICKPFeedbackDelegateDemultiplexer
- (BOOL)shouldHandleCardSectionEngagement:(id)engagement;
- (SUICKPFeedbackDelegateDemultiplexer)init;
- (VRXInteractionDelegate)snippetUIDelegate;
- (id)_delegateForFeedback:(id)feedback;
- (id)_delegateForView:(id)view;
- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)index;
- (void)cardViewDidAppear:(id)appear;
- (void)cardViewDidDisappear:(id)disappear;
- (void)didEngageCardSection:(id)section;
- (void)didErrorOccur:(id)occur;
- (void)didPerformCommand:(id)command;
- (void)didReportUserResponseFeedback:(id)feedback;
- (void)emitInstrumentationEvent:(id)event;
- (void)presentViewController:(id)controller;
- (void)presentViewControllerForCard:(id)card animate:(BOOL)animate;
- (void)reportFeedback:(id)feedback queryId:(int64_t)id;
- (void)sendCustomFeedback:(id)feedback;
- (void)willDismissViewController:(id)controller;
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

- (void)emitInstrumentationEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    objc_initWeak(&location, self);
    serialInstrumentationFeedbackQueue = self->_serialInstrumentationFeedbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SUICKPFeedbackDelegateDemultiplexer_emitInstrumentationEvent___block_invoke;
    block[3] = &unk_279B8F030;
    objc_copyWeak(&v8, &location);
    v7 = eventCopy;
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

- (id)_delegateForFeedback:(id)feedback
{
  feedbackCopy = feedback;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    feedbackDelegatesByCardSectionIdentifiers = self->_feedbackDelegatesByCardSectionIdentifiers;
    v6 = MEMORY[0x277CF9470];
    cardSection = [feedbackCopy cardSection];
    v8 = [v6 cardSectionWithSFCardSection:cardSection];
    cardSectionIdentifier = [v8 cardSectionIdentifier];
    v10 = [(NSMutableDictionary *)feedbackDelegatesByCardSectionIdentifiers objectForKey:cardSectionIdentifier];
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

- (id)_delegateForView:(id)view
{
  viewCopy = view;
  if ([viewCopy conformsToProtocol:&unk_2876D4838])
  {
    feedbackDelegatesByCardSectionViewIds = self->_feedbackDelegatesByCardSectionViewIds;
    cardSectionViewIdentifier = [viewCopy cardSectionViewIdentifier];
    v7 = [(NSMutableDictionary *)feedbackDelegatesByCardSectionViewIds objectForKey:cardSectionViewIdentifier];
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

- (void)reportFeedback:(id)feedback queryId:(int64_t)id
{
  v14 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  v7 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:feedbackCopy];
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = feedbackCopy;
    v12 = 2048;
    idCopy = id;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Report feedback: %@ with queryId %lld", &v10, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 reportFeedback:feedbackCopy queryId:id];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cardViewDidDisappear:(id)disappear
{
  v10 = *MEMORY[0x277D85DE8];
  disappearCopy = disappear;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:disappearCopy];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = disappearCopy;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Card did disappear with feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 cardViewDidDisappear:disappearCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cardViewDidAppear:(id)appear
{
  v10 = *MEMORY[0x277D85DE8];
  appearCopy = appear;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:appearCopy];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = appearCopy;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Card did appear with feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 cardViewDidAppear:appearCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didEngageCardSection:(id)section
{
  v12 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:sectionCopy];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = sectionCopy;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Card section engaged with feedback: %@  listener: %@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didEngageCardSection:sectionCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didPerformCommand:(id)command
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:commandCopy];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = commandCopy;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Command performed with feedback: %@  listener: %@", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didPerformCommand:commandCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didReportUserResponseFeedback:(id)feedback
{
  v10 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:feedbackCopy];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = feedbackCopy;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Report user response feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didReportUserResponseFeedback:feedbackCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didErrorOccur:(id)occur
{
  v10 = *MEMORY[0x277D85DE8];
  occurCopy = occur;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:occurCopy];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = occurCopy;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Error occured: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 didErrorOccur:occurCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendCustomFeedback:(id)feedback
{
  v10 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:feedbackCopy];
  v6 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = feedbackCopy;
    _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Sending custom feedback: %@", &v8, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 sendCustomFeedback:feedbackCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldHandleCardSectionEngagement:(id)engagement
{
  engagementCopy = engagement;
  v5 = [(SUICKPFeedbackDelegateDemultiplexer *)self _delegateForFeedback:engagementCopy];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldHandleCardSectionEngagement:engagementCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(SearchUIFeedbackDelegate *)self->_defaultDelegate presentViewController:controllerCopy];
  }
}

- (void)willDismissViewController:(id)controller
{
  controllerCopy = controller;
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(SearchUIFeedbackDelegate *)self->_defaultDelegate willDismissViewController:controllerCopy];
  }
}

- (void)cardSectionViewDidSelectPreferredPunchoutIndex:(int64_t)index
{
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_defaultDelegate;

    [(SearchUIFeedbackDelegate *)v6 cardSectionViewDidSelectPreferredPunchoutIndex:index];
  }
}

- (void)presentViewControllerForCard:(id)card animate:(BOOL)animate
{
  cardCopy = card;
  defaultDelegate = self->_defaultDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(SearchUIFeedbackDelegate *)self->_defaultDelegate presentViewControllerForCard:cardCopy animate:1];
  }
}

- (VRXInteractionDelegate)snippetUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_snippetUIDelegate);

  return WeakRetained;
}

@end