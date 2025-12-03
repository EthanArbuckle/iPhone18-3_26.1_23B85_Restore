@interface PKSpendingSummaryPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKSpendingSummaryPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureView:(id)view item:(id)item presentationStyle:(unint64_t)style;
- (void)swapSummaryInCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  v9 = [view dequeueReusableCellWithReuseIdentifier:@"spendingPresenter" forIndexPath:path];
  hostedContentView = [v9 hostedContentView];

  if (!hostedContentView)
  {
    v11 = [PKSpendingSummaryView alloc];
    v12 = [(PKSpendingSummaryView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [v9 setHostedContentView:v12];
  }

  hostedContentView2 = [v9 hostedContentView];
  [(PKSpendingSummaryPresenter *)self _configureView:hostedContentView2 item:itemCopy presentationStyle:0];

  return v9;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  hostedContentView = [cellCopy hostedContentView];
  [(PKSpendingSummaryPresenter *)self _configureView:hostedContentView item:itemCopy presentationStyle:1];
}

- (void)swapSummaryInCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  hostedContentView = [cellCopy hostedContentView];
  [(PKSpendingSummaryPresenter *)self _configureView:hostedContentView item:itemCopy presentationStyle:2];
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
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

    [(PKSpendingSummaryPresenter *)self _configureView:sampleView item:itemCopy presentationStyle:0];
    v17 = self->_sampleView;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKSpendingSummaryView *)v17 sizeThatFits:width + v18 * -2.0, 3.40282347e38];
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

  widthCopy = width;
  v24 = height;
  result.height = v24;
  result.width = widthCopy;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  if (trait)
  {
    if (toTrait)
    {
      toTraitCopy = toTrait;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);
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

- (void)_configureView:(id)view item:(id)item presentationStyle:(unint64_t)style
{
  if (view)
  {
    viewCopy = view;
    spendingSummary = [item spendingSummary];
    [viewCopy configureWithSummary:spendingSummary presentationStyle:style];
  }
}

@end