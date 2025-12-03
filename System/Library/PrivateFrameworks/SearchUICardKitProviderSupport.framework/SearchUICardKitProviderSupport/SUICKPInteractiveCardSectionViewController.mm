@interface SUICKPInteractiveCardSectionViewController
+ (id)cardSectionClasses;
- (BOOL)_shouldRenderButtonOverlay;
- (void)didEngageCardSection:(id)section;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
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
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  backingCardSection = [cardSection backingCardSection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay = [backingCardSection _SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay];
  }

  else
  {
    _SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay = 0;
  }

  return _SUICKPInteractiveCardSectionViewController_shouldRenderButtonOverlay;
}

- (void)didEngageCardSection:(id)section
{
  sectionCopy = section;
  delegate = [(CRKCardSectionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    v7 = MEMORY[0x277CF9470];
    cardSection = [sectionCopy cardSection];
    v9 = [v7 cardSectionWithSFCardSection:cardSection];
    [delegate2 cardSectionView:v9 willProcessEngagementFeedback:sectionCopy];
  }

  if ([sectionCopy actionTarget] != 4)
  {
    destination = [sectionCopy destination];

    if (!destination)
    {
      [(CRKCardSectionViewController *)self _performAllCommands];
    }
  }

  delegate3 = [(CRKCardSectionViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate4 = [(CRKCardSectionViewController *)self delegate];
    v14 = MEMORY[0x277CF9470];
    cardSection2 = [sectionCopy cardSection];
    v16 = [v14 cardSectionWithSFCardSection:cardSection2];
    [delegate4 userDidEngageCardSection:v16 withEngagementFeedback:sectionCopy];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = SUICKPInteractiveCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v20 touchesBegan:beganCopy withEvent:eventCopy];
  cardSection = [(CRKCardSectionViewController *)self cardSection];
  backingCardSection = [cardSection backingCardSection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    anyObject = [beganCopy anyObject];
    view = [(SUICKPInteractiveCardSectionViewController *)self view];
    [anyObject locationInView:view];
    v13 = v12;
    v15 = v14;

    view2 = [(SUICKPInteractiveCardSectionViewController *)self view];
    v17 = [view2 hitTest:eventCopy withEvent:{v13, v15}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && [backingCardSection _SUICKPInteractiveCardSectionViewController_shouldHandlePunchout])
    {
      view3 = [(SUICKPInteractiveCardSectionViewController *)self view];
      siriui_highlightColor = [MEMORY[0x277D75348] siriui_highlightColor];
      [view3 setBackgroundColor:siriui_highlightColor];

      [(CRKCardSectionViewController *)self _cardSectionTapped];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SUICKPInteractiveCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v7 touchesEnded:ended withEvent:event];
  view = [(SUICKPInteractiveCardSectionViewController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SUICKPInteractiveCardSectionViewController;
  [(SUICKPInteractiveCardSectionViewController *)&v7 touchesCancelled:cancelled withEvent:event];
  view = [(SUICKPInteractiveCardSectionViewController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];
}

@end