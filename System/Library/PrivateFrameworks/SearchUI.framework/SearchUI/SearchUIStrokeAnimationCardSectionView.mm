@interface SearchUIStrokeAnimationCardSectionView
- (id)setupContentView;
- (void)animationDidStart;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIStrokeAnimationCardSectionView

- (id)setupContentView
{
  v3 = objc_alloc(MEMORY[0x1E69D4E10]);
  v4 = [v3 strokeViewWithDelegate:self];

  return v4;
}

- (void)updateWithRowModel:(id)a3
{
  v15.receiver = self;
  v15.super_class = SearchUIStrokeAnimationCardSectionView;
  [(SearchUICardSectionView *)&v15 updateWithRowModel:a3];
  v4 = [(SearchUICardSectionView *)self rowModel];
  v5 = [v4 cardSection];

  v6 = objc_alloc(MEMORY[0x1E69D4E08]);
  v7 = [v5 characters];
  v8 = [v7 firstObject];
  v9 = [v5 strokeAnimationRepresentation];
  v10 = [v5 strokeNames];
  v11 = [v5 pronunciations];
  v12 = [v11 firstObject];
  v13 = [v6 initWithCharacter:v8 strokeAnimationRepresention:v9 strokeNames:v10 pronunciation:v12];

  v14 = [(SearchUICardSectionView *)self contentView];
  [v14 updateWithData:v13];
}

- (void)animationDidStart
{
  v3 = [(SearchUICardSectionView *)self rowModel];
  v4 = [v3 cardSection];
  v5 = [v4 commands];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69C9F10]);
    v8 = [(SearchUICardSectionView *)self section];
    v10 = [v7 initWithCardSection:v8 destination:0 triggerEvent:2 actionCardType:1];

    [v10 setActionTarget:4];
    v9 = [(SearchUICardSectionView *)self feedbackDelegate];
    [v9 didEngageCardSection:v10];
  }
}

@end