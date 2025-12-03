@interface SCKPInteractiveCardSectionViewController
+ (id)cardSectionClasses;
- (void)_loadCardSectionView;
@end

@implementation SCKPInteractiveCardSectionViewController

+ (id)cardSectionClasses
{
  if (cardSectionClasses_onceToken != -1)
  {
    +[SCKPInteractiveCardSectionViewController cardSectionClasses];
  }

  v3 = cardSectionClasses_cardSectionClasses;

  return v3;
}

uint64_t __62__SCKPInteractiveCardSectionViewController_cardSectionClasses__block_invoke()
{
  cardSectionClasses_cardSectionClasses = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)_loadCardSectionView
{
  v4.receiver = self;
  v4.super_class = SCKPInteractiveCardSectionViewController;
  [(CRKCardSectionViewController *)&v4 _loadCardSectionView];
  view = [(SCKPInteractiveCardSectionViewController *)self view];
  [view setInterceptsTouches:0];
}

@end