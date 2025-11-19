@interface SUICKPCardViewControllerProvider
- (BOOL)_askDelegateToPerformReferentialCommand:(id)a3 forCardSection:(id)a4;
- (BOOL)performCommand:(id)a3 forCardSectionViewController:(id)a4;
- (CGSize)boundingSizeForCardSectionViewController:(id)a3;
- (SUICKPCardViewControllerProvider)init;
- (id)_cardViewControllerForCardSection:(id)a3;
- (id)_createCardViewControllerForCard:(id)a3;
- (id)cardViewControllerForCard:(id)a3;
- (id)customViewControllerForCardSection:(id)a3;
- (id)extractLinkID:(id)a3;
- (void)cardSectionView:(id)a3 willProcessEngagementFeedback:(id)a4;
- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardSectionViewDidDisappearForCardSection:(id)a3 withDisappearanceFeedback:(id)a4;
- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5;
- (void)presentViewController:(id)a3 forCardSectionViewController:(id)a4;
- (void)presentation:(id)a3 didApplyCardSectionViewSource:(id)a4 toCardViewController:(id)a5;
- (void)unregisterCardViewController:(id)a3;
- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4;
@end

@implementation SUICKPCardViewControllerProvider

- (SUICKPCardViewControllerProvider)init
{
  v10.receiver = self;
  v10.super_class = SUICKPCardViewControllerProvider;
  v2 = [(SUICKPCardViewControllerProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cardsByCardSectionIdentifiers = v2->_cardsByCardSectionIdentifiers;
    v2->_cardsByCardSectionIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cardViewControllersByCardIdentifiers = v2->_cardViewControllersByCardIdentifiers;
    v2->_cardViewControllersByCardIdentifiers = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    feedbackDelegateDemultiplexersByCardIdentifiers = v2->_feedbackDelegateDemultiplexersByCardIdentifiers;
    v2->_feedbackDelegateDemultiplexersByCardIdentifiers = v7;
  }

  return v2;
}

- (id)cardViewControllerForCard:(id)a3
{
  v4 = a3;
  self->_preferredContentSize = *MEMORY[0x277CBF3A8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    if (v5 && [v5 type] == 2 && objc_msgSend(v5, "source") == 1 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v5, "cardSections"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __62__SUICKPCardViewControllerProvider_cardViewControllerForCard___block_invoke;
      v13[3] = &unk_279B8EE18;
      objc_copyWeak(&v18, &location);
      v16 = &v24;
      v14 = v5;
      v17 = &v20;
      v15 = v6;
      [v14 loadCardWithCompletion:v13];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = [(SUICKPCardViewControllerProvider *)self _createCardViewControllerForCard:v5];
      v9 = v25[5];
      v25[5] = v8;

      if (*(v21 + 24) == 1)
      {
        dispatch_group_leave(v6);
        *(v21 + 24) = 0;
      }

      else if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        [SUICKPCardViewControllerProvider cardViewControllerForCard:];
      }
    }

    v11 = dispatch_time(0, 200000000);
    if (dispatch_group_wait(v6, v11) && os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPCardViewControllerProvider cardViewControllerForCard:];
    }

    v10 = v25[5];
    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPCardViewControllerProvider cardViewControllerForCard:];
    }

    v10 = 0;
  }

  return v10;
}

void __62__SUICKPCardViewControllerProvider_cardViewControllerForCard___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CF93F0];
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v3;
    _os_log_impl(&dword_264EDF000, v5, OS_LOG_TYPE_DEFAULT, "Asynchronous card loading completed for first level card\n    Card: %@", &v28, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v7 = [v3 cardSections];
    if (v7 && (v8 = v7, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
    {
      v10 = [WeakRetained _createCardViewControllerForCard:v3];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else
    {
      v13 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        __62__SUICKPCardViewControllerProvider_cardViewControllerForCard___block_invoke_cold_1(a1, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v20 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __62__SUICKPCardViewControllerProvider_cardViewControllerForCard___block_invoke_cold_2(a1, v20, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)unregisterCardViewController:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 card];
  v6 = [v5 cardIdentifier];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_cardViewControllersByCardIdentifiers objectForKey:v6];
    v8 = v7;
    if (v7 == v4)
    {
      v9 = [v7 card];
      v10 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v26 = v9;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_264EDF000, v10, OS_LOG_TYPE_INFO, "Unregistering SearchUICardViewController\n    Card: %@\n    Card view controller: %@", buf, 0x16u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = v9;
      v11 = [v9 resolvedCardSections];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            cardsByCardSectionIdentifiers = self->_cardsByCardSectionIdentifiers;
            v17 = [*(*(&v20 + 1) + 8 * v15) cardSectionIdentifier];
            [(NSMutableDictionary *)cardsByCardSectionIdentifiers removeObjectForKey:v17];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }

      [(NSMutableDictionary *)self->_feedbackDelegateDemultiplexersByCardIdentifiers removeObjectForKey:v6];
      [v8 setDelegate:0];
      [(NSMutableDictionary *)self->_cardViewControllersByCardIdentifiers removeObjectForKey:v6];
    }

    else if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPCardViewControllerProvider unregisterCardViewController:];
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
  {
    [SUICKPCardViewControllerProvider unregisterCardViewController:];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)presentation:(id)a3 didApplyCardSectionViewSource:(id)a4 toCardViewController:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v43 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 feedbackListener];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isMemberOfClass:objc_opt_class()])
    {
      v10 = v9;
      v11 = [v7 delegate];
      if ([v11 conformsToProtocol:&unk_2876CC9F8])
      {
        [v10 setSnippetUIDelegate:v11];
        v41 = v11;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  v38 = v7;
  v12 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_264EDF000, v12, OS_LOG_TYPE_INFO, "Configuring demuxes and weeding out empty card section views", buf, 2u);
  }

  v13 = [v8 card];
  v14 = [v13 resolvedCardSections];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v42 = *v45;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v19 = [v43 viewConfigurationForCardSection:v18];
        if (v19)
        {
          cardsByCardSectionIdentifiers = self->_cardsByCardSectionIdentifiers;
          v21 = [v18 cardSectionIdentifier];
          v22 = [(NSMutableDictionary *)cardsByCardSectionIdentifiers objectForKey:v21];
          v23 = [v22 cardIdentifier];

          v24 = [(NSMutableDictionary *)self->_feedbackDelegateDemultiplexersByCardIdentifiers objectForKey:v23];
          v25 = objc_alloc_init(SUICKPFeedbackAdapter);
          v26 = [v19 _cardKitCardSectionViewController];
          [v26 setDelegate:self];
          [(SUICKPFeedbackAdapter *)v25 setFeedbackDelegate:v26];
          v27 = [v24 feedbackDelegatesByCardSectionIdentifiers];
          v28 = [v19 cardSection];
          v29 = [v28 cardSectionIdentifier];
          [v27 setObject:v25 forKey:v29];

          v30 = [v19 cardSectionView];
          v31 = [v30 cardSectionViewIdentifier];

          if (v31)
          {
            v32 = [v24 feedbackDelegatesByCardSectionViewIds];
            v33 = [v19 cardSectionView];
            v34 = [v33 cardSectionViewIdentifier];
            [v32 setObject:v25 forKey:v34];
          }

          [v24 setSnippetUIDelegate:v41];
          v35 = *MEMORY[0x277CF93F0];
          if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v49 = v24;
            v50 = 2112;
            v51 = v19;
            _os_log_impl(&dword_264EDF000, v35, OS_LOG_TYPE_INFO, "Configured demux %@ for card section view configuration: %@", buf, 0x16u);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v16);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)customViewControllerForCardSection:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v4];
  v6 = [v5 cardSectionViewSource];
  v7 = [v6 viewConfigurationForCardSection:v4];

  v8 = MEMORY[0x277CF93F0];
  v9 = *MEMORY[0x277CF93F0];
  v10 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = v9;
      v12 = [v7 _providerIdentifier];
      v23 = 138412290;
      v24 = v12;
      _os_log_impl(&dword_264EDF000, v11, OS_LOG_TYPE_DEFAULT, "Found custom card section view configuration to provide to SearchUI from provider: %@", &v23, 0xCu);
    }

    v13 = [v7 _cardKitCardSectionViewController];
    v14 = [v7 _providerIdentifier];
    v15 = [v14 isEqualToString:@"com.apple.cards.SearchUICardKitProvider"];

    v16 = *v8;
    v17 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        v23 = 138412802;
        v24 = v4;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_264EDF000, v16, OS_LOG_TYPE_DEFAULT, "NOT providing custom view controller for card section to SearchUI because it originated from the SearchUI provider\n    Card section: %@\n    Card section view controller: %@\n    Card view controller: %@", &v23, 0x20u);
      }

      v18 = 0;
    }

    else
    {
      if (v17)
      {
        v23 = 138412802;
        v24 = v4;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_264EDF000, v16, OS_LOG_TYPE_DEFAULT, "Providing custom view controller for card section to SearchUI\n    Card section: %@\n    Card section view controller: %@\n    Card view controller: %@", &v23, 0x20u);
      }

      v18 = v13;
    }
  }

  else
  {
    if (v10)
    {
      v19 = v9;
      v20 = [v5 cardSectionViewSource];
      v23 = 138412802;
      v24 = v4;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_264EDF000, v19, OS_LOG_TYPE_DEFAULT, "NOT providing custom view controller for card section to SearchUI because card section view provider manager didn't vend a configuration\n    Card section: %@\n    Card section view provider manager: %@\n    Card view controller: %@", &v23, 0x20u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)cardViewController:(id)a3 preferredContentSizeDidChange:(CGSize)a4 animated:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  if (self->_preferredContentSize.width != width || self->_preferredContentSize.height != height)
  {
    self->_preferredContentSize.width = width;
    self->_preferredContentSize.height = height;
    v12 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;
      v11 = [v10 cardViewControllerDelegate];
      [v11 cardViewControllerBoundsDidChange:v10];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)extractLinkID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a3 resultIdentifier];
  v4 = MEMORY[0x277CF93F0];
  v5 = *MEMORY[0x277CF93F0];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_264EDF000, v5, OS_LOG_TYPE_DEFAULT, "ResultIdentifier on card section set, using that for Link Identifier", &v11, 2u);
    }

    v6 = v3;
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPCardViewControllerProvider extractLinkID:v5];
    }

    v7 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v7 UUIDString];
  }

  v8 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_DEFAULT, "Using linkIdentifier: %@", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_cardViewControllerForCardSection:(id)a3
{
  cardsByCardSectionIdentifiers = self->_cardsByCardSectionIdentifiers;
  cardViewControllersByCardIdentifiers = self->_cardViewControllersByCardIdentifiers;
  v5 = [a3 cardSectionIdentifier];
  v6 = [(NSMutableDictionary *)cardsByCardSectionIdentifiers objectForKey:v5];
  v7 = [v6 cardIdentifier];
  v8 = [(NSMutableDictionary *)cardViewControllersByCardIdentifiers objectForKey:v7];

  return v8;
}

- (BOOL)_askDelegateToPerformReferentialCommand:(id)a3 forCardSection:(id)a4
{
  v7 = a3;
  v8 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:a4];
  v9 = [v8 cardViewControllerDelegate];
  v10 = objc_opt_respondsToSelector();
  if ((v10 & 1) != 0 && ([v8 cardViewControllerDelegate], v4 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v4, "canPerformReferentialCommand:forCardViewController:", v7, v8)))
  {
    v12 = 0;
  }

  else
  {
    v11 = [v8 cardViewControllerDelegate];
    v12 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v13 = 0;
  if (v7 && (v12 & 1) != 0)
  {
    v14 = [v8 cardViewControllerDelegate];
    v13 = [v14 performReferentialCommand:v7 forCardViewController:v8];
  }

  return v13;
}

- (id)_createCardViewControllerForCard:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(SUICKPFeedbackDelegateDemultiplexer);
  v6 = [objc_alloc(MEMORY[0x277D4C840]) initWithCard:v4 feedbackListener:v5];
  v7 = objc_alloc_init(SUICKPFeedbackAdapter);
  [(SUICKPFeedbackAdapter *)v7 setFeedbackDelegate:v6];
  v22 = v5;
  [(SUICKPFeedbackDelegateDemultiplexer *)v5 setDefaultDelegate:v7];
  [v6 setDefaultFeedbackAdapter:v7];
  [v6 setScrollEnabled:0];
  [v6 setThreeDTouchEnabled:0];
  [v6 setDelegate:self];
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = v4;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Instantiating SearchUICardViewController\n    Card: %@\n    Card view controller: %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v4 resolvedCardSections];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        cardsByCardSectionIdentifiers = self->_cardsByCardSectionIdentifiers;
        v15 = [*(*(&v23 + 1) + 8 * i) cardSectionIdentifier];
        [(NSMutableDictionary *)cardsByCardSectionIdentifiers setObject:v4 forKey:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  feedbackDelegateDemultiplexersByCardIdentifiers = self->_feedbackDelegateDemultiplexersByCardIdentifiers;
  v17 = [v4 cardIdentifier];
  [(NSMutableDictionary *)feedbackDelegateDemultiplexersByCardIdentifiers setObject:v22 forKey:v17];

  cardViewControllersByCardIdentifiers = self->_cardViewControllersByCardIdentifiers;
  v19 = [v4 cardIdentifier];
  [(NSMutableDictionary *)cardViewControllersByCardIdentifiers setObject:v6 forKey:v19];

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)performCommand:(id)a3 forCardSectionViewController:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v49 = v6;
    v50 = 2112;
    v51 = v7;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Got command %@ from card section view controller: %@", buf, 0x16u);
  }

  if ([v6 conformsToProtocol:&unk_2876D4660])
  {
    v9 = v6;
    v36 = v7;
    [v7 cardSection];
    v35 = v37 = self;
    [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:?];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = v45 = 0u;
    v10 = [v34 card];
    v11 = [v10 dismissalCommands];

    v12 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          if ([v16 conformsToProtocol:&unk_2876D4660])
          {
            v17 = [v16 referenceIdentifier];
            v18 = [v9 referenceIdentifier];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {

              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v23 = v37->_pendingDismissalCommands;
              v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v39;
                while (2)
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v39 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v38 + 1) + 8 * j);
                    v29 = [v28 referenceIdentifier];
                    v30 = [v9 referenceIdentifier];
                    v31 = [v29 isEqualToString:v30];

                    if (v31)
                    {
                      [(NSMutableArray *)v37->_pendingDismissalCommands removeObject:v28];
                      goto LABEL_28;
                    }
                  }

                  v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  if (v25)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_28:

              [(NSMutableArray *)v37->_pendingDismissalCommands addObject:v9];
              v21 = 1;
              v20 = v35;
              goto LABEL_29;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v20 = v35;
    v21 = [(SUICKPCardViewControllerProvider *)v37 _askDelegateToPerformReferentialCommand:v9 forCardSection:v35];
LABEL_29:

    v7 = v36;
    goto LABEL_30;
  }

  if ([v6 conformsToProtocol:&unk_2876CCEE8])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v7 cardSection];
      v9 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v22];

      v20 = [v9 cardViewControllerDelegate];
      v21 = [v6 handleForCardViewController:v9 cardViewControllerDelegate:v20];
LABEL_30:

      goto LABEL_31;
    }
  }

  v21 = 0;
LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)presentViewController:(id)a3 forCardSectionViewController:(id)a4
{
  v10 = a3;
  v6 = [a4 cardSection];
  v7 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v6];

  v8 = [v7 cardViewControllerDelegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [v7 cardViewControllerDelegate];
    [v9 presentViewController:v10 forCardViewController:v7];
  }
}

- (CGSize)boundingSizeForCardSectionViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 cardSection];
  v6 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v5];

  v7 = [v6 cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [v6 cardViewControllerDelegate];
    [v9 cardViewController:v6 boundingSizeForCardSectionViewController:v4];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)cardSectionView:(id)a3 willProcessEngagementFeedback:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v11];
  v8 = [v7 cardViewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v7 cardViewControllerDelegate];
    [v10 cardSectionView:v11 willProcessEngagementFeedback:v6];
  }
}

- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v11];
  v8 = [v7 cardViewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v7 cardViewControllerDelegate];
    [v10 userDidEngageCardSection:v11 withEngagementFeedback:v6];
  }
}

- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v11];
  v8 = [v7 cardViewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v7 cardViewControllerDelegate];
    [v10 cardSectionViewWillAppearForCardSection:v11 withAppearanceFeedback:v6];
  }
}

- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v11];
  v8 = [v7 cardViewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v7 cardViewControllerDelegate];
    [v10 cardSectionViewDidAppearForCardSection:v11 withAppearanceFeedback:v6];
  }
}

- (void)cardSectionViewDidDisappearForCardSection:(id)a3 withDisappearanceFeedback:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SUICKPCardViewControllerProvider *)self _cardViewControllerForCardSection:v11];
  v8 = [v7 cardViewControllerDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [v7 cardViewControllerDelegate];
    [v10 cardSectionViewDidDisappearForCardSection:v11 withDisappearanceFeedback:v6];
  }
}

- (void)cardViewControllerForCard:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_264EDF000, v0, v1, "SearchUI couldn't fetch cardViewController for card: %@ as the card is not a search foundation card.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cardViewControllerForCard:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_264EDF000, v0, v1, "Attempted to double-leave dispatch group loading card: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cardViewControllerForCard:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_264EDF000, v0, v1, "Timed out loading card : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__SUICKPCardViewControllerProvider_cardViewControllerForCard___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_264EDF000, a2, a3, "Error loading asynchrounous first level card: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__SUICKPCardViewControllerProvider_cardViewControllerForCard___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_264EDF000, a2, a3, "Attempted to double-leave dispatch group loading card: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterCardViewController:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_264EDF000, v0, v1, "Failed to unregister view controller: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unregisterCardViewController:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_264EDF000, v0, v1, "Failed to unregister view controller due to invalid identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end