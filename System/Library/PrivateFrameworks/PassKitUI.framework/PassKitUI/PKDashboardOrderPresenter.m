@interface PKDashboardOrderPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardOrderPresenter)init;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (void)_updateCell:(id)a3 withOrderItem:(id)a4;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardOrderPresenter

- (PKDashboardOrderPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardOrderPresenter;
  v2 = [(PKDashboardOrderPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKDashboardSearchResultCell alloc];
    v4 = [(PKDashboardSearchResultCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleSearchResultCell = v2->_sampleSearchResultCell;
    v2->_sampleSearchResultCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardOrderPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(PKDashboardOrderPresenter *)self _identifierForItem:v8];
  v12 = [v10 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

  [(PKDashboardOrderPresenter *)self _updateCell:v12 withOrderItem:v8];

  return v12;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardOrderPresenter *)self _updateCell:self->_sampleSearchResultCell withOrderItem:a3, a6];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v9 = a5 + v8 * -2.0;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell prepareForReuse];
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v14 = a6;
  v8 = getFKOrderDetailsViewControllerProviderClass[0];
  v9 = a3;
  v10 = v8();
  v11 = [v9 orderTypeIdentifier];
  v12 = [v9 orderIdentifier];

  v13 = [(objc_class *)v10 makeViewControllerWithOrderTypeIdentifier:v11 orderIdentifier:v12 fulfillmentIdentifier:0];

  if (v13)
  {
    [v14 presentViewController:v13 animated:1 completion:0];
  }
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
        v11 = [PKDashboardSearchResultCell alloc];
        v12 = [(PKDashboardSearchResultCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleSearchResultCell = self->_sampleSearchResultCell;
        self->_sampleSearchResultCell = v12;
      }
    }
  }
}

- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a4 cellForItemAtIndexPath:a5];
  v6 = [v5 title];

  return v6;
}

- (void)_updateCell:(id)a3 withOrderItem:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v5 displayName];
  [v12 setTitle:v6];

  v7 = [v5 contentDescription];
  [v12 setSubtitle:v7];

  v8 = [v5 thumbnailData];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v10 = [v5 thumbnailData];
    v11 = [v9 initWithData:v10];

    [v12 setThumbnail:v11];
  }
}

@end