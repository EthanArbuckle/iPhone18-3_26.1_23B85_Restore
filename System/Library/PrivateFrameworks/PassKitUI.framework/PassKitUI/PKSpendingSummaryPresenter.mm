@interface PKSpendingSummaryPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKSpendingSummaryPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureView:(id)a3 item:(id)a4 presentationStyle:(unint64_t)a5;
- (void)swapSummaryInCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKSpendingSummaryPresenter

- (PKSpendingSummaryPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKSpendingSummaryPresenter;
  v2 = [(PKSpendingSummaryPresenter *)&v7 init];
  if (v2)
  {
    v3 = PKPassKitUIBundle();
    v4 = [v3 URLForResource:@"ArrowDown" withExtension:@"pdf"];
    v5 = [v3 URLForResource:@"ArrowUp" withExtension:@"pdf"];

    v2->_needsSizing = 1;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"spendingPresenter";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = [a4 dequeueReusableCellWithReuseIdentifier:@"spendingPresenter" forIndexPath:a5];
  v10 = [v9 hostedContentView];

  if (!v10)
  {
    v11 = [PKSpendingSummaryView alloc];
    v12 = [(PKSpendingSummaryView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [v9 setHostedContentView:v12];
  }

  v13 = [v9 hostedContentView];
  [(PKSpendingSummaryPresenter *)self _configureView:v13 item:v8 presentationStyle:0];

  return v9;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v8 = a4;
  v9 = [v10 hostedContentView];
  [(PKSpendingSummaryPresenter *)self _configureView:v9 item:v8 presentationStyle:1];
}

- (void)swapSummaryInCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v8 = a4;
  v9 = [v10 hostedContentView];
  [(PKSpendingSummaryPresenter *)self _configureView:v9 item:v8 presentationStyle:2];
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self->_needsSizing)
  {
    sampleView = self->_sampleView;
    if (!sampleView)
    {
      v14 = [PKSpendingSummaryView alloc];
      v15 = [(PKSpendingSummaryView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v16 = self->_sampleView;
      self->_sampleView = v15;

      sampleView = self->_sampleView;
    }

    [(PKSpendingSummaryPresenter *)self _configureView:sampleView item:v10 presentationStyle:0];
    v17 = self->_sampleView;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKSpendingSummaryView *)v17 sizeThatFits:a5 + v18 * -2.0, 3.40282347e38];
    width = v19;
    height = v21;
    self->_summarySize.width = v19;
    self->_summarySize.height = v21;
  }

  else
  {
    width = self->_summarySize.width;
    height = self->_summarySize.height;
  }

  v23 = width;
  v24 = height;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      v7 = a4;
      v8 = [a3 preferredContentSizeCategory];
      v9 = [v7 preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(v8, v9);
      if (v10)
      {
        self->_needsSizing = 1;
        v11 = [PKSpendingSummaryView alloc];
        v12 = [(PKSpendingSummaryView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleView = self->_sampleView;
        self->_sampleView = v12;
      }
    }
  }
}

- (void)_configureView:(id)a3 item:(id)a4 presentationStyle:(unint64_t)a5
{
  if (a3)
  {
    v7 = a3;
    v8 = [a4 spendingSummary];
    [v7 configureWithSummary:v8 presentationStyle:a5];
  }
}

@end