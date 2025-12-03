@interface PKDashboardPassPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPassPresenter)init;
- (PKDashboardPassPresenterDelegate)delegate;
- (id)_dateStringForPass:(id)pass inExpiredSection:(BOOL)section;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)_updateCell:(id)cell withPassItem:(id)item;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardPassPresenter

- (PKDashboardPassPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardPassPresenter;
  v2 = [(PKDashboardPassPresenter *)&v7 init];
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
  v4 = @"PKDashboardPassPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  v11 = [(PKDashboardPassPresenter *)self _identifierForItem:itemCopy];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(PKDashboardPassPresenter *)self _updateCell:v12 withPassItem:itemCopy];

  return v12;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardPassPresenter *)self _updateCell:self->_sampleSearchResultCell withPassItem:item, path];
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
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  pass = [itemCopy pass];

  uniqueID = [pass uniqueID];
  [WeakRetained dashboardPassPresenter:self didSelectPassWithUniqueIdentifier:uniqueID];
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

- (void)_updateCell:(id)cell withPassItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  pass = [itemCopy pass];
  displayName = [itemCopy displayName];
  if (displayName)
  {
    [cellCopy setTitle:displayName];
  }

  else
  {
    localizedDescription = [pass localizedDescription];
    [cellCopy setTitle:localizedDescription];
  }

  contentDescription = [itemCopy contentDescription];
  if (contentDescription)
  {
    [cellCopy setSubtitle:contentDescription];
  }

  else
  {
    localizedName = [pass localizedName];
    [cellCopy setSubtitle:localizedName];
  }

  v13 = -[PKDashboardPassPresenter _dateStringForPass:inExpiredSection:](self, "_dateStringForPass:inExpiredSection:", pass, [itemCopy isInExpiredSection]);
  [cellCopy setDetailText:v13];

  secureElementPass = [pass secureElementPass];

  if (secureElementPass)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [cellCopy setStyle:v15];
  thumbnailData = [itemCopy thumbnailData];
  if (thumbnailData)
  {
    v17 = objc_alloc(MEMORY[0x1E69DCAB8]);
    thumbnailData2 = [itemCopy thumbnailData];
    v19 = [v17 initWithData:thumbnailData2];

    [cellCopy setThumbnail:v19];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PKDashboardPassPresenter__updateCell_withPassItem___block_invoke;
  aBlock[3] = &unk_1E80110E0;
  objc_copyWeak(&v28, &location);
  v20 = pass;
  v27 = v20;
  v21 = _Block_copy(aBlock);
  groupPassCount = [itemCopy groupPassCount];
  if (![v20 passType] && PKBarcodePassSharingEnabled() && groupPassCount <= 1)
  {
    goto LABEL_21;
  }

  if ([v20 passType] != 1 || groupPassCount > 1 || (objc_msgSend(v20, "secureElementPass"), v23 = objc_claimAutoreleasedReturnValue(), v24 = PKSecureElementPassSharingMethodForPass(), v23, !v24))
  {

    v21 = 0;
    goto LABEL_21;
  }

  if (v24 != 2)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v25 = 1;
LABEL_22:
  [cellCopy setAction:v21 withButtonType:v25];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __53__PKDashboardPassPresenter__updateCell_withPassItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 dashboardPassPresenter:v4 requestSharingPass:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (id)_dateStringForPass:(id)pass inExpiredSection:(BOOL)section
{
  sectionCopy = section;
  passCopy = pass;
  relevantDates = [passCopy relevantDates];
  expirationDate = [passCopy expirationDate];
  v8 = expirationDate;
  if (!sectionCopy || !expirationDate)
  {
    if ([relevantDates count])
    {
      modifiedDate = [MEMORY[0x1E69B8A68] findDateFromDates:relevantDates option:0];
      if (modifiedDate)
      {
        pk_uppercaseFirstStringForPreferredLocale2 = PKRelativeDateString();
        pk_uppercaseFirstStringForPreferredLocale = [pk_uppercaseFirstStringForPreferredLocale2 pk_uppercaseFirstStringForPreferredLocale];
LABEL_7:
        webServiceURL = pk_uppercaseFirstStringForPreferredLocale;

        goto LABEL_14;
      }
    }

    else
    {
      if ([passCopy passType])
      {
        webServiceURL = 0;
        goto LABEL_15;
      }

      modifiedDate = [passCopy modifiedDate];
      if (modifiedDate)
      {
        webServiceURL = [passCopy webServiceURL];

        if (!webServiceURL)
        {
          goto LABEL_14;
        }

        v13 = PKRelativeDateString();
        pk_uppercaseFirstStringForPreferredLocale2 = [v13 pk_uppercaseFirstStringForPreferredLocale];

        pk_uppercaseFirstStringForPreferredLocale = PKLocalizedString(&cfstr_LastUpdatedFor.isa, &stru_1F3BD5BF0.isa, pk_uppercaseFirstStringForPreferredLocale2);
        goto LABEL_7;
      }
    }

    webServiceURL = 0;
    goto LABEL_14;
  }

  modifiedDate = PKRelativeDateString();
  webServiceURL = [modifiedDate pk_uppercaseFirstStringForPreferredLocale];
LABEL_14:

LABEL_15:

  return webServiceURL;
}

- (PKDashboardPassPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end