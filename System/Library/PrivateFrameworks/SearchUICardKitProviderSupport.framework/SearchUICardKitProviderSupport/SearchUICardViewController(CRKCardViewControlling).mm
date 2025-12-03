@interface SearchUICardViewController(CRKCardViewControlling)
- (id)cardSectionViewSource;
- (id)cardViewControllerDelegate;
- (void)cardSectionView:()CRKCardViewControlling willProcessEngagementFeedback:;
- (void)cardSectionViewDidAppearForCardSection:()CRKCardViewControlling withAppearanceFeedback:;
- (void)cardSectionViewDidDisappearForCardSection:()CRKCardViewControlling withDisappearanceFeedback:;
- (void)cardSectionViewDidInvalidateSizeForCardSection:()CRKCardViewControlling;
- (void)cardSectionViewWillAppearForCardSection:()CRKCardViewControlling withAppearanceFeedback:;
- (void)cardViewDidAppearForCard:()CRKCardViewControlling withAppearanceFeedback:;
- (void)cardViewDidDisappearForCard:()CRKCardViewControlling withDisappearanceFeedback:;
- (void)commandWasPerformed:()CRKCardViewControlling;
- (void)presentViewController:()CRKCardViewControlling;
- (void)presentViewControllerForCard:()CRKCardViewControlling animate:;
- (void)setCardSectionViewSource:()CRKCardViewControlling;
- (void)setCardViewControllerDelegate:()CRKCardViewControlling;
- (void)userDidEngageCardSection:()CRKCardViewControlling withEngagementFeedback:;
- (void)userDidReportFeedback:()CRKCardViewControlling fromCardSection:;
- (void)willDismissViewController:()CRKCardViewControlling;
@end

@implementation SearchUICardViewController(CRKCardViewControlling)

- (id)cardSectionViewSource
{
  v1 = objc_getAssociatedObject(self, sel_cardSectionViewSource);
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCardSectionViewSource:()CRKCardViewControlling
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SearchUICardViewController_CRKCardViewControlling__setCardSectionViewSource___block_invoke;
  v10[3] = &unk_279B8EE40;
  objc_copyWeak(&v11, &location);
  v5 = MEMORY[0x2667524A0](v10);
  v9 = MEMORY[0x2667524A0](v5, v6, v7, v8);
  objc_setAssociatedObject(self, sel_cardSectionViewSource, v9, 0x303);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)cardViewControllerDelegate
{
  v1 = objc_getAssociatedObject(self, sel_cardViewControllerDelegate);
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCardViewControllerDelegate:()CRKCardViewControlling
{
  v4 = a3;
  objc_initWeak(&location, v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SearchUICardViewController_CRKCardViewControlling__setCardViewControllerDelegate___block_invoke;
  v10[3] = &unk_279B8EE68;
  objc_copyWeak(&v11, &location);
  v5 = MEMORY[0x2667524A0](v10);
  v9 = MEMORY[0x2667524A0](v5, v6, v7, v8);
  objc_setAssociatedObject(self, sel_cardViewControllerDelegate, v9, 0x303);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)presentViewController:()CRKCardViewControlling
{
  v7 = a3;
  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 presentViewController:v7 forCardViewController:self];
  }
}

- (void)willDismissViewController:()CRKCardViewControlling
{
  v7 = a3;
  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardViewController:self willDismissViewController:v7];
  }
}

- (void)presentViewControllerForCard:()CRKCardViewControlling animate:
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 asynchronous] && (objc_opt_respondsToSelector())
  {
    v5 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_264EDF000, v5, OS_LOG_TYPE_INFO, "Started loading asynchronous card\n    Card: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__SearchUICardViewController_CRKCardViewControlling__presentViewControllerForCard_animate___block_invoke;
    v12[3] = &unk_279B8EE90;
    objc_copyWeak(&v14, buf);
    v13 = v4;
    [v13 loadCardWithCompletion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v6 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_264EDF000, v6, OS_LOG_TYPE_INFO, "Presenting view controller for synchronous card\n    Card: %@", buf, 0xCu);
    }

    v7 = objc_alloc_init(MEMORY[0x277CF9448]);
    [v7 setNextCard:v4];
    cardViewControllerDelegate = [self cardViewControllerDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      cardViewControllerDelegate2 = [self cardViewControllerDelegate];
      [cardViewControllerDelegate2 performNextCardCommand:v7 forCardViewController:self];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cardSectionView:()CRKCardViewControlling willProcessEngagementFeedback:
{
  v10 = a3;
  v6 = a4;
  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardSectionView:v10 willProcessEngagementFeedback:v6];
  }
}

- (void)userDidEngageCardSection:()CRKCardViewControlling withEngagementFeedback:
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Card section engaged with feedback: %@  from cardViewController %@ ", &v13, 0x16u);
  }

  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 userDidEngageCardSection:v6 withEngagementFeedback:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)commandWasPerformed:()CRKCardViewControlling
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264EDF000, v5, OS_LOG_TYPE_INFO, "Command was performed with feedback: %@ from cardViewController %@ ", &v10, 0x16u);
  }

  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 commandWasPerformed:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cardViewDidAppearForCard:()CRKCardViewControlling withAppearanceFeedback:
{
  v10 = a3;
  v6 = a4;
  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardViewDidAppearForCard:v10 withAppearanceFeedback:v6];
  }
}

- (void)cardViewDidDisappearForCard:()CRKCardViewControlling withDisappearanceFeedback:
{
  v10 = a3;
  v6 = a4;
  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardViewDidDisappearForCard:v10 withDisappearanceFeedback:v6];
  }
}

- (void)cardSectionViewDidInvalidateSizeForCardSection:()CRKCardViewControlling
{
  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardViewControllerBoundsDidChange:self];
  }
}

- (void)userDidReportFeedback:()CRKCardViewControlling fromCardSection:
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Card section did report feedback: %@  from cardViewController %@ ", &v13, 0x16u);
  }

  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 userDidReportFeedback:v6 fromCardSection:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cardSectionViewWillAppearForCardSection:()CRKCardViewControlling withAppearanceFeedback:
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Card section will appear : %@  from cardViewController %@ ", &v13, 0x16u);
  }

  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardSectionViewWillAppearForCardSection:v6 withAppearanceFeedback:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cardSectionViewDidAppearForCardSection:()CRKCardViewControlling withAppearanceFeedback:
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Card section did appear: %@  in cardViewController %@ ", &v13, 0x16u);
  }

  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardSectionViewDidAppearForCardSection:v6 withAppearanceFeedback:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cardSectionViewDidDisappearForCardSection:()CRKCardViewControlling withDisappearanceFeedback:
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_264EDF000, v8, OS_LOG_TYPE_INFO, "Card section did disappear: %@  in cardViewController %@ ", &v13, 0x16u);
  }

  cardViewControllerDelegate = [self cardViewControllerDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    cardViewControllerDelegate2 = [self cardViewControllerDelegate];
    [cardViewControllerDelegate2 cardSectionViewDidDisappearForCardSection:v6 withDisappearanceFeedback:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end