@interface SiriUILegacyStocksChartCardSectionViewController
+ (id)cardSectionClasses;
- (void)_loadCardSectionView;
- (void)_updateContentSize;
- (void)viewDidLayoutSubviews;
@end

@implementation SiriUILegacyStocksChartCardSectionViewController

+ (id)cardSectionClasses
{
  if (cardSectionClasses_onceToken != -1)
  {
    +[SiriUILegacyStocksChartCardSectionViewController cardSectionClasses];
  }

  v3 = cardSectionClasses_cardSectionClasses;

  return v3;
}

uint64_t __70__SiriUILegacyStocksChartCardSectionViewController_cardSectionClasses__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v1 = cardSectionClasses_cardSectionClasses;
  cardSectionClasses_cardSectionClasses = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_loadCardSectionView
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [SiriUICardSectionView alloc];
  v4 = [(SiriUICardSectionView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SiriUILegacyStocksChartCardSectionViewController *)self setView:v4];

  cardSection = [(CRKCardSectionViewController *)self cardSection];
  backingCardSection = [cardSection backingCardSection];

  v7 = objc_alloc_init(MEMORY[0x277D47958]);
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  chartData = [backingCardSection chartData];
  v10 = [v8 initWithData:chartData encoding:4];
  [v7 setChartData:v10];

  v11 = objc_alloc_init(MEMORY[0x277D47960]);
  v18[0] = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v11 setStocks:v12];

  v13 = +[SiriUISnippetManager sharedInstance];
  v14 = [v13 snippetViewControllerForSnippet:v11];
  snippetViewController = self->_snippetViewController;
  self->_snippetViewController = v14;

  [(SiriUILegacyStocksChartCardSectionViewController *)self _updateContentSize];
  [(SiriUILegacyStocksChartCardSectionViewController *)self addChildViewController:self->_snippetViewController];
  view = [(SiriUILegacyStocksChartCardSectionViewController *)self view];
  view2 = [(SiriUISnippetViewController *)self->_snippetViewController view];
  [view setContentView:view2];

  [(SiriUISnippetViewController *)self->_snippetViewController didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SiriUILegacyStocksChartCardSectionViewController;
  [(CRKCardSectionViewController *)&v3 viewDidLayoutSubviews];
  [(SiriUILegacyStocksChartCardSectionViewController *)self _updateContentSize];
}

- (void)_updateContentSize
{
  delegate = [(CRKCardSectionViewController *)self delegate];
  [delegate boundingSizeForCardSectionViewController:self];
  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    view = [(SiriUILegacyStocksChartCardSectionViewController *)self view];
    [(SiriUISnippetViewController *)self->_snippetViewController desiredHeightForWidth:v5];
  }

  else
  {
    view = [(SiriUILegacyStocksChartCardSectionViewController *)self view];
    [(SiriUIBaseSnippetViewController *)self->_snippetViewController desiredHeight];
  }

  [view setContentSize:{v5, v6}];
}

@end