@interface SearchUICardViewController
@end

@implementation SearchUICardViewController

id __79__SearchUICardViewController_CRKCardViewControlling__setCardSectionViewSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

id __84__SearchUICardViewController_CRKCardViewControlling__setCardViewControllerDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  return WeakRetained;
}

void __91__SearchUICardViewController_CRKCardViewControlling__presentViewControllerForCard_animate___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CF93F0];
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v3;
    _os_log_impl(&dword_264EDF000, v5, OS_LOG_TYPE_DEFAULT, "Asynchronous card loading completed for card\n    Card: %@", &v24, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = [v3 resolvedCardSections];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CF9448]);
      [v8 setNextCard:v3];
      v9 = [WeakRetained cardViewControllerDelegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [WeakRetained cardViewControllerDelegate];
        [v11 performNextCardCommand:v8 forCardViewController:WeakRetained];
      }

      v12 = [WeakRetained cardViewControllerDelegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_alloc_init(MEMORY[0x277CF93F8]);
        v15 = [WeakRetained cardViewControllerDelegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [WeakRetained cardViewControllerDelegate];
          v18 = [v17 baseCardForCardViewController:WeakRetained];
        }

        else
        {
          v18 = 0;
        }

        [v14 setBaseCard:v18];
        [v14 setRequestedCard:*(a1 + 32)];
        [v14 setReceivedCard:v3];
        v22 = [WeakRetained cardViewControllerDelegate];
        [v22 controllerForCard:*(a1 + 32) didReceiveAsyncCard:v3 withAsyncCardReceiptFeedback:v14];
      }

      goto LABEL_16;
    }

    v19 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      __91__SearchUICardViewController_CRKCardViewControlling__presentViewControllerForCard_animate___block_invoke_cold_1(a1, v19);
    }

    v20 = [WeakRetained cardViewControllerDelegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v8 = [WeakRetained cardViewControllerDelegate];
      [v8 cardViewController:WeakRetained didFailToLoadCard:*(a1 + 32)];
LABEL_16:
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __91__SearchUICardViewController_CRKCardViewControlling__presentViewControllerForCard_animate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_264EDF000, a2, OS_LOG_TYPE_ERROR, "Failed to load card view controller for card\n    Card: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end