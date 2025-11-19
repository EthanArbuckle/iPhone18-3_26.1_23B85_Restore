@interface SUICKPInteractiveCardSectionViewController
+ (id)cardSectionClasses;
- (BOOL)_shouldRenderButtonOverlay;
- (void)didEngageCardSection:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation SUICKPInteractiveCardSectionViewController

+ (id)cardSectionClasses
{
  if (cardSectionClasses_onceToken != -1)
  {
    +[SUICKPInteractiveCardSectionViewController cardSectionClasses];
  }

  v3 = cardSectionClasses_cardSectionClasses;

  return v3;
}

uint64_t __64__SUICKPInteractiveCardSectionViewController_cardSectionClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  cardSectionClasses_cardSectionClasses = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_shouldRenderButtonOverlay
{
  v2 = [(CRKCardSectionViewController *)self cardSection];
  v3 = [v2 backingCardSection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 _SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didEngageCardSection:(id)a3
{
  v17 = a3;
  v4 = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKCardSectionViewController *)self delegate];
    v7 = MEMORY[0x277CF9470];
    v8 = [v17 cardSection];
    v9 = [v7 cardSectionWithSFCardSection:v8];
    [v6 cardSectionView:v9 willProcessEngagementFeedback:v17];
  }

  if ([v17 actionTarget] != 4)
  {
    v10 = [v17 destination];

    if (!v10)
    {
      [(CRKCardSectionViewController *)self _performAllCommands];
    }
  }

  v11 = [(CRKCardSectionViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CRKCardSectionViewController *)self delegate];
    v14 = MEMORY[0x277CF9470];
    v15 = [v17 cardSection];
    v16 = [v14 cardSectionWithSFCardSection:v15];
    [v13 userDidEngageCardSection:v16 withEngagementFeedback:v17];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = SUICKPInteractiveCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v20 touchesBegan:v6 withEvent:v7];
  v8 = [(CRKCardSectionViewController *)self cardSection];
  v9 = [v8 backingCardSection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v6 anyObject];
    v11 = [(SUICKPInteractiveCardSectionViewController *)self view];
    [v10 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = [(SUICKPInteractiveCardSectionViewController *)self view];
    v17 = [v16 hitTest:v7 withEvent:{v13, v15}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && [v9 _SUICKPInteractiveCardSectionViewController_shouldHandlePunchout])
    {
      v18 = [(SUICKPInteractiveCardSectionViewController *)self view];
      v19 = [MEMORY[0x277D75348] siriui_highlightColor];
      [v18 setBackgroundColor:v19];

      [(CRKCardSectionViewController *)self _cardSectionTapped];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUICKPInteractiveCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v7 touchesEnded:a3 withEvent:a4];
  v5 = [(SUICKPInteractiveCardSectionViewController *)self view];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = SUICKPInteractiveCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v7 touchesCancelled:a3 withEvent:a4];
  v5 = [(SUICKPInteractiveCardSectionViewController *)self view];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];
}

@end