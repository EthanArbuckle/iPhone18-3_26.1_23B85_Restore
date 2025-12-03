@interface SUICKPAudioPlaybackCardSectionViewController
+ (id)cardSectionClasses;
- (void)_performCommands:(id)commands applyingUserInfo:(id)info;
- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info;
- (void)didEngageCardSection:(id)section;
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

- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info
{
  v42 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v36.receiver = self;
  v36.super_class = SUICKPAudioPlaybackCardSectionViewController;
  [(CRKCardSectionViewController *)&v36 cardEventDidOccur:occur withIdentifier:identifierCopy userInfo:info];
  cardSection = [(CRKCardSectionViewController *)self cardSection];
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

  view = [(SUICKPAudioPlaybackCardSectionViewController *)self view];
  v12 = [view conformsToProtocol:&unk_2876D4898];

  if ((v12 & 1) == 0)
  {
    v27 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPAudioPlaybackCardSectionViewController cardEventDidOccur:v27 withIdentifier:self userInfo:?];
    }

    goto LABEL_26;
  }

  if (occur == 2)
  {
    cardSection2 = [(CRKCardSectionViewController *)self cardSection];
    state = [cardSection2 state];

    if (!state)
    {
      goto LABEL_26;
    }

    cardSection3 = [(CRKCardSectionViewController *)self cardSection];
    v31 = cardSection3;
    v32 = 0;
LABEL_23:
    [cardSection3 setState:v32];

    view2 = [(SUICKPAudioPlaybackCardSectionViewController *)self view];
    cardSection4 = [(CRKCardSectionViewController *)self cardSection];
    [view2 updateStateFromCardSection:cardSection4];

LABEL_25:
    goto LABEL_26;
  }

  if (occur != 1)
  {
    goto LABEL_26;
  }

  view2 = [(CRKCardSectionViewController *)self cardSection];
  playCommands = [view2 playCommands];
  v15 = identifierCopy;
  v16 = playCommands;
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
  v35 = view2;
  v20 = *v38;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v38 != v20)
      {
        objc_enumerationMutation(v17);
      }

      value = [*(*(&v37 + 1) + 8 * i) value];
      referentialCommand = [value referentialCommand];
      referenceIdentifier = [referentialCommand referenceIdentifier];

      v25 = [referenceIdentifier isEqualToString:v15];
      if (v25)
      {

LABEL_22:
        cardSection3 = [(CRKCardSectionViewController *)self cardSection];
        v31 = cardSection3;
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

- (void)didEngageCardSection:(id)section
{
  v39[1] = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    v8 = MEMORY[0x277CF9470];
    cardSection = [sectionCopy cardSection];
    v10 = [v8 cardSectionWithSFCardSection:cardSection];
    [delegate2 cardSectionView:v10 willProcessEngagementFeedback:sectionCopy];
  }

  delegate3 = [(CRKCardSectionViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate4 = [(CRKCardSectionViewController *)self delegate];
    cardSection2 = [(CRKCardSectionViewController *)self cardSection];
    [delegate4 userDidEngageCardSection:cardSection2 withEngagementFeedback:sectionCopy];
  }

  cardSection3 = [(CRKCardSectionViewController *)self cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    delegate5 = [(CRKCardSectionViewController *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      actionTarget = [sectionCopy actionTarget];
      cardSection4 = [(CRKCardSectionViewController *)self cardSection];
      v21 = cardSection4;
      if (actionTarget == 4)
      {
        state = [cardSection4 state];

        cardSection5 = [(CRKCardSectionViewController *)self cardSection];
        v24 = cardSection5;
        if (!state)
        {
          stopCommands = [cardSection5 stopCommands];
          [(SUICKPAudioPlaybackCardSectionViewController *)self _performCommands:stopCommands applyingUserInfo:0];

          cardSection6 = [(CRKCardSectionViewController *)self cardSection];
          playCommands = [cardSection6 playCommands];
          v38 = @"CRKAudioPlaybackCardSectionIgnoresMuteSwitch";
          v39[0] = MEMORY[0x277CBEC38];
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
          [(SUICKPAudioPlaybackCardSectionViewController *)self _performCommands:playCommands applyingUserInfo:v36];

          goto LABEL_18;
        }

        state2 = [cardSection5 state];

        if (state2 == 2)
        {
          cardSection6 = [(CRKCardSectionViewController *)self cardSection];
          playCommands = [cardSection6 stopCommands];
          [(SUICKPAudioPlaybackCardSectionViewController *)self _performCommands:playCommands applyingUserInfo:0];
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        backingCardSection = [cardSection4 backingCardSection];
        nextCard = [backingCardSection nextCard];

        if (nextCard)
        {
          cardSection6 = objc_alloc_init(MEMORY[0x277CF9448]);
          cardSection7 = [(CRKCardSectionViewController *)self cardSection];
          backingCardSection2 = [cardSection7 backingCardSection];
          nextCard2 = [backingCardSection2 nextCard];
          [cardSection6 setNextCard:nextCard2];

          [(CRKCardSectionViewController *)self _performCommand:cardSection6];
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

- (void)_performCommands:(id)commands applyingUserInfo:(id)info
{
  v19 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  infoCopy = info;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [commandsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(commandsCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setUserInfo:infoCopy];
        [(CRKCardSectionViewController *)self _performCommand:v12];
      }

      v9 = [commandsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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