@interface SUICKPCardSectionViewProvider
- (CRKCardSectionViewProviderDelegate)delegate;
- (NSArray)viewConfigurations;
- (SUICKPCardSectionViewProvider)initWithCard:(id)card;
@end

@implementation SUICKPCardSectionViewProvider

- (SUICKPCardSectionViewProvider)initWithCard:(id)card
{
  cardCopy = card;
  v9.receiver = self;
  v9.super_class = SUICKPCardSectionViewProvider;
  v6 = [(SUICKPCardSectionViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_card, card);
  }

  return v7;
}

- (NSArray)viewConfigurations
{
  v40 = *MEMORY[0x277D85DE8];
  card = self->_card;
  if (card)
  {
    viewConfigurations = self->_viewConfigurations;
    if (!viewConfigurations)
    {
      selfCopy = self;
      resolvedCardSections = [(CRCard *)card resolvedCardSections];
      v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(resolvedCardSections, "count")}];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v6 = resolvedCardSections;
      v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v36;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v36 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v35 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              backingCardSection = [v11 backingCardSection];
              if (backingCardSection)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ([backingCardSection visualCATOutput], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      [v30 addObject:backingCardSection];
                    }
                  }
                }
              }
            }

            else
            {
              backingCardSection = 0;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v8);
      }

      v14 = objc_alloc_init(SUICKPFeedbackDelegateDemultiplexer);
      feedbackDelegateDemux = selfCopy->_feedbackDelegateDemux;
      selfCopy->_feedbackDelegateDemux = v14;

      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v18 = objc_loadWeakRetained(&selfCopy->_delegate);
        v19 = [v18 defaultFeedbackDelegateForProvider:selfCopy];

        if (v19)
        {
          v20 = objc_alloc_init(SUICKPFeedbackAdapter);
          [(SUICKPFeedbackAdapter *)v20 setFeedbackDelegate:v19];
          [(SUICKPFeedbackDelegateDemultiplexer *)selfCopy->_feedbackDelegateDemux setDefaultDelegate:v20];
        }
      }

      v21 = [MEMORY[0x277D4C818] viewsForCardSections:v30 feedbackListener:selfCopy->_feedbackDelegateDemux];
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __51__SUICKPCardSectionViewProvider_viewConfigurations__block_invoke;
      v31[3] = &unk_279B8EEB8;
      v32 = v21;
      v33 = selfCopy;
      v23 = v22;
      v34 = v23;
      v24 = v21;
      [v30 enumerateObjectsUsingBlock:v31];
      v25 = selfCopy->_viewConfigurations;
      selfCopy->_viewConfigurations = v23;
      v26 = v23;

      viewConfigurations = selfCopy->_viewConfigurations;
    }

    card = viewConfigurations;
  }

  v27 = *MEMORY[0x277D85DE8];

  return card;
}

void __51__SUICKPCardSectionViewProvider_viewConfigurations__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x277CF93B8]);
  v7 = objc_alloc_init(SUICKPFeedbackAdapter);
  [v6 setCardSection:v5];
  [v6 setFeedbackDelegateProxy:v7];
  if ([*(a1 + 32) count] <= a3)
  {
    v11 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      v17 = 134217984;
      v18 = a3;
      _os_log_impl(&dword_264EDF000, v11, OS_LOG_TYPE_INFO, "No cardSectionView was found for backingCardSection at index %lu", &v17, 0xCu);
    }
  }

  else
  {
    v8 = [*(a1 + 32) objectAtIndex:a3];
    [v6 setCardSectionView:v8];
    v9 = [v8 cardSectionViewIdentifier];
    if (v9)
    {
      v10 = [*(*(a1 + 40) + 8) feedbackDelegatesByCardSectionViewIds];
      [v10 setObject:v7 forKey:v9];
    }

    else
    {
      v12 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        __51__SUICKPCardSectionViewProvider_viewConfigurations__block_invoke_cold_1(v8, v12);
      }
    }
  }

  v13 = [v5 cardSectionIdentifier];
  if (v13)
  {
    v14 = [*(*(a1 + 40) + 8) feedbackDelegatesByCardSectionIdentifiers];
    [v14 setObject:v7 forKey:v13];
  }

  else
  {
    v15 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __51__SUICKPCardSectionViewProvider_viewConfigurations__block_invoke_cold_2(v5, v15);
    }
  }

  [*(a1 + 48) addObject:v6];

  v16 = *MEMORY[0x277D85DE8];
}

- (CRKCardSectionViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__SUICKPCardSectionViewProvider_viewConfigurations__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_264EDF000, a2, OS_LOG_TYPE_ERROR, "No card section view identifier available for card section view: %@. Unable to hook up to demux for user interaction. This is a bad state and needs a radar!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __51__SUICKPCardSectionViewProvider_viewConfigurations__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_264EDF000, a2, OS_LOG_TYPE_ERROR, "No card section identifier available for card section: %@. Unable to hook up to demux for user interaction. This is a bad state and needs a radar!", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end