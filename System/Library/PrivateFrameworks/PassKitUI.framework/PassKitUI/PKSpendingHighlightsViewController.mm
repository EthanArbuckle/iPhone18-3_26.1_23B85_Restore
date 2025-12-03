@interface PKSpendingHighlightsViewController
- (PKSpendingHighlightsViewController)init;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSpendingHighlightsViewController

- (PKSpendingHighlightsViewController)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC840]);
  v6.receiver = self;
  v6.super_class = PKSpendingHighlightsViewController;
  v4 = [(PKSpendingHighlightsViewController *)&v6 initWithCollectionViewLayout:v3];

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKSpendingHighlightsViewController;
  [(PKSpendingHighlightsViewController *)&v6 viewDidLoad];
  navigationItem = [(PKSpendingHighlightsViewController *)self navigationItem];
  v4 = PKLocalizedPaymentString(&cfstr_FinhealthInsig.isa);
  [navigationItem setTitle:v4];

  collectionView = [(PKSpendingHighlightsViewController *)self collectionView];
  [collectionView setShowsVerticalScrollIndicator:1];
  [collectionView setAlwaysBounceVertical:1];
  [collectionView setBounces:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PKSpendingHighlightsViewController;
  [(PKSpendingHighlightsViewController *)&v3 viewWillAppear:appear];
}

- (void)viewWillLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = PKSpendingHighlightsViewController;
  [(PKSpendingHighlightsViewController *)&v2 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = PKSpendingHighlightsViewController;
  [(PKSpendingHighlightsViewController *)&v2 viewDidLayoutSubviews];
}

@end