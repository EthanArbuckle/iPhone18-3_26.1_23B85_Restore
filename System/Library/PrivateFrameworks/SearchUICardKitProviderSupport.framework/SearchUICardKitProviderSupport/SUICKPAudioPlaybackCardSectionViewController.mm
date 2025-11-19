@interface SUICKPAudioPlaybackCardSectionViewController
+ (id)cardSectionClasses;
- (void)_performCommands:(id)a3 applyingUserInfo:(id)a4;
- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5;
- (void)didEngageCardSection:(id)a3;
@end

@implementation SUICKPAudioPlaybackCardSectionViewController

+ (id)cardSectionClasses
{
  if (cardSectionClasses_onceToken_1 != -1)
  {
    +[SUICKPAudioPlaybackCardSectionViewController cardSectionClasses];
  }

  v3 = cardSectionClasses_cardSectionClasses_1;

  return v3;
}

uint64_t __66__SUICKPAudioPlaybackCardSectionViewController_cardSectionClasses__block_invoke()
{
  cardSectionClasses_cardSectionClasses_1 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)cardEventDidOccur:(unint64_t)a3 withIdentifier:(id)a4 userInfo:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v36.receiver = self;
  v36.super_class = SUICKPAudioPlaybackCardSectionViewController;
  [(CRKCardSectionViewController *)&v36 cardEventDidOccur:a3 withIdentifier:v8 userInfo:a5];
  v9 = [(CRKCardSectionViewController *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v26 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPAudioPlaybackCardSectionViewController cardEventDidOccur:v26 withIdentifier:self userInfo:?];
    }

    goto LABEL_26;
  }

  v11 = [(SUICKPAudioPlaybackCardSectionViewController *)self view];
  v12 = [v11 conformsToProtocol:&unk_2876D4898];

  if ((v12 & 1) == 0)
  {
    v27 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPAudioPlaybackCardSectionViewController cardEventDidOccur:v27 withIdentifier:self userInfo:?];
    }

    goto LABEL_26;
  }

  if (a3 == 2)
  {
    v28 = [(CRKCardSectionViewController *)self cardSection];
    v29 = [v28 state];

    if (!v29)
    {
      goto LABEL_26;
    }

    v30 = [(CRKCardSectionViewController *)self cardSection];
    v31 = v30;
    v32 = 0;
LABEL_23:
    [v30 setState:v32];

    v13 = [(SUICKPAudioPlaybackCardSectionViewController *)self view];
    v33 = [(CRKCardSectionViewController *)self cardSection];
    [v13 updateStateFromCardSection:v33];

LABEL_25:
    goto LABEL_26;
  }

  if (a3 != 1)
  {
    goto LABEL_26;
  }

  v13 = [(CRKCardSectionViewController *)self cardSection];
  v14 = [v13 playCommands];
  v15 = v8;
  v16 = v14;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v18)
  {

    goto LABEL_25;
  }

  v19 = v18;
  v35 = v13;
  v20 = *v38;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v38 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = [*(*(&v37 + 1) + 8 * i) value];
      v23 = [v22 referentialCommand];
      v24 = [v23 referenceIdentifier];

      v25 = [v24 isEqualToString:v15];
      if (v25)
      {

LABEL_22:
        v30 = [(CRKCardSectionViewController *)self cardSection];
        v31 = v30;
        v32 = 2;
        goto LABEL_23;
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

  if (v25)
  {
    goto LABEL_22;
  }

LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)didEngageCardSection:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRKCardSectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKCardSectionViewController *)self delegate];
    v8 = MEMORY[0x277CF9470];
    v9 = [v4 cardSection];
    v10 = [v8 cardSectionWithSFCardSection:v9];
    [v7 cardSectionView:v10 willProcessEngagementFeedback:v4];
  }

  v11 = [(CRKCardSectionViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CRKCardSectionViewController *)self delegate];
    v14 = [(CRKCardSectionViewController *)self cardSection];
    [v13 userDidEngageCardSection:v14 withEngagementFeedback:v4];
  }

  v15 = [(CRKCardSectionViewController *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [(CRKCardSectionViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [v4 actionTarget];
      v20 = [(CRKCardSectionViewController *)self cardSection];
      v21 = v20;
      if (v19 == 4)
      {
        v22 = [v20 state];

        v23 = [(CRKCardSectionViewController *)self cardSection];
        v24 = v23;
        if (!v22)
        {
          v35 = [v23 stopCommands];
          [(SUICKPAudioPlaybackCardSectionViewController *)self _performCommands:v35 applyingUserInfo:0];

          v26 = [(CRKCardSectionViewController *)self cardSection];
          v27 = [v26 playCommands];
          v38 = @"CRKAudioPlaybackCardSectionIgnoresMuteSwitch";
          v39[0] = MEMORY[0x277CBEC38];
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
          [(SUICKPAudioPlaybackCardSectionViewController *)self _performCommands:v27 applyingUserInfo:v36];

          goto LABEL_18;
        }

        v25 = [v23 state];

        if (v25 == 2)
        {
          v26 = [(CRKCardSectionViewController *)self cardSection];
          v27 = [v26 stopCommands];
          [(SUICKPAudioPlaybackCardSectionViewController *)self _performCommands:v27 applyingUserInfo:0];
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        v30 = [v20 backingCardSection];
        v31 = [v30 nextCard];

        if (v31)
        {
          v26 = objc_alloc_init(MEMORY[0x277CF9448]);
          v32 = [(CRKCardSectionViewController *)self cardSection];
          v33 = [v32 backingCardSection];
          v34 = [v33 nextCard];
          [v26 setNextCard:v34];

          [(CRKCardSectionViewController *)self _performCommand:v26];
LABEL_19:
        }
      }
    }

    else
    {
      v29 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        [SUICKPAudioPlaybackCardSectionViewController didEngageCardSection:v29];
      }
    }
  }

  else
  {
    v28 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPAudioPlaybackCardSectionViewController cardEventDidOccur:v28 withIdentifier:self userInfo:?];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_performCommands:(id)a3 applyingUserInfo:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setUserInfo:v7];
        [(CRKCardSectionViewController *)self _performCommand:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cardEventDidOccur:(void *)a1 withIdentifier:(void *)a2 userInfo:.cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cardSection];
  v5 = objc_opt_class();
  OUTLINED_FUNCTION_0_0(&dword_264EDF000, v6, v7, "SUICKPAudioPlaybackCardSectionViewController using %@. Expecting SFAudioPlaybackCardSection", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cardEventDidOccur:(void *)a1 withIdentifier:(void *)a2 userInfo:.cold.2(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 view];
  v5 = objc_opt_class();
  OUTLINED_FUNCTION_0_0(&dword_264EDF000, v6, v7, "SUICKPAudioPlaybackCardSectionViewController view is %@. Expecting SearchUICardSectionViewUpdatable", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

@end