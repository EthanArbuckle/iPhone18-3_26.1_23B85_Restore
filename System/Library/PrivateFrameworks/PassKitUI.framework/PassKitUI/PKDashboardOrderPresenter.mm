@interface PKDashboardOrderPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardOrderPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)_updateCell:(id)cell withOrderItem:(id)item;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  v11 = [(PKDashboardOrderPresenter *)self _identifierForItem:itemCopy];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(PKDashboardOrderPresenter *)self _updateCell:v12 withOrderItem:itemCopy];

  return v12;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardOrderPresenter *)self _updateCell:self->_sampleSearchResultCell withOrderItem:item, path];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v9 = width + v8 * -2.0;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;
  [(PKDashboardSearchResultCell *)self->_sampleSearchResultCell prepareForReuse];
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  controllerCopy = controller;
  v8 = getFKOrderDetailsViewControllerProviderClass[0];
  itemCopy = item;
  v10 = v8();
  orderTypeIdentifier = [itemCopy orderTypeIdentifier];
  orderIdentifier = [itemCopy orderIdentifier];

  v13 = [(objc_class *)v10 makeViewControllerWithOrderTypeIdentifier:orderTypeIdentifier orderIdentifier:orderIdentifier fulfillmentIdentifier:0];

  if (v13)
  {
    [controllerCopy presentViewController:v13 animated:1 completion:0];
  }
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
        v11 = [PKDashboardSearchResultCell alloc];
        v12 = [(PKDashboardSearchResultCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleSearchResultCell = self->_sampleSearchResultCell;
        self->_sampleSearchResultCell = v12;
      }
    }
  }
}

- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  title = [v5 title];

  return title;
}

- (void)_updateCell:(id)cell withOrderItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  displayName = [itemCopy displayName];
  [cellCopy setTitle:displayName];

  contentDescription = [itemCopy contentDescription];
  [cellCopy setSubtitle:contentDescription];

  thumbnailData = [itemCopy thumbnailData];
  if (thumbnailData)
  {
    v9 = objc_alloc(MEMORY[0x1E69DCAB8]);
    thumbnailData2 = [itemCopy thumbnailData];
    v11 = [v9 initWithData:thumbnailData2];

    [cellCopy setThumbnail:v11];
  }
}

@end