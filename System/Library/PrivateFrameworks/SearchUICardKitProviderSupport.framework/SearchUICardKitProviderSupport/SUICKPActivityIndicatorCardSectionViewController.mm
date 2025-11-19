@interface SUICKPActivityIndicatorCardSectionViewController
+ (id)cardSectionClasses;
@end

@implementation SUICKPActivityIndicatorCardSectionViewController

+ (id)cardSectionClasses
{
  if (cardSectionClasses_onceToken_0 != -1)
  {
    +[SUICKPActivityIndicatorCardSectionViewController cardSectionClasses];
  }

  v3 = cardSectionClasses_cardSectionClasses_0;

  return v3;
}

uint64_t __70__SUICKPActivityIndicatorCardSectionViewController_cardSectionClasses__block_invoke()
{
  cardSectionClasses_cardSectionClasses_0 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end