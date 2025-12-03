@interface SearchUIStrokeAnimationCardSectionView
- (id)setupContentView;
- (void)animationDidStart;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIStrokeAnimationCardSectionView

- (id)setupContentView
{
  v3 = objc_alloc(MEMORY[0x1E69D4E10]);
  v4 = [v3 strokeViewWithDelegate:self];

  return v4;
}

- (void)updateWithRowModel:(id)model
{
  v15.receiver = self;
  v15.super_class = SearchUIStrokeAnimationCardSectionView;
  [(SearchUICardSectionView *)&v15 updateWithRowModel:model];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  v6 = objc_alloc(MEMORY[0x1E69D4E08]);
  characters = [cardSection characters];
  firstObject = [characters firstObject];
  strokeAnimationRepresentation = [cardSection strokeAnimationRepresentation];
  strokeNames = [cardSection strokeNames];
  pronunciations = [cardSection pronunciations];
  firstObject2 = [pronunciations firstObject];
  v13 = [v6 initWithCharacter:firstObject strokeAnimationRepresention:strokeAnimationRepresentation strokeNames:strokeNames pronunciation:firstObject2];

  contentView = [(SearchUICardSectionView *)self contentView];
  [contentView updateWithData:v13];
}

- (void)animationDidStart
{
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];
  commands = [cardSection commands];
  v6 = [commands count];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69C9F10]);
    section = [(SearchUICardSectionView *)self section];
    v10 = [v7 initWithCardSection:section destination:0 triggerEvent:2 actionCardType:1];

    [v10 setActionTarget:4];
    feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
    [feedbackDelegate didEngageCardSection:v10];
  }
}

@end