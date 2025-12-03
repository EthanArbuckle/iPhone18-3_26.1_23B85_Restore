@interface PKDashboardSearchSeeAllHeaderItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardSearchSeeAllHeaderItemPresenter)init;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_updateCell:(id)cell withHeaderItem:(id)item;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardSearchSeeAllHeaderItemPresenter

- (PKDashboardSearchSeeAllHeaderItemPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardSearchSeeAllHeaderItemPresenter;
  v2 = [(PKDashboardSearchSeeAllHeaderItemPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKTransactionHistoryTransactionGroupHeaderCell alloc];
    v4 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardSearchSeeAllHeaderItemPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  viewCopy = view;
  v11 = [(PKDashboardSearchSeeAllHeaderItemPresenter *)self _identifierForItem:itemCopy];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(PKDashboardSearchSeeAllHeaderItemPresenter *)self _updateCell:v12 withHeaderItem:itemCopy];

  return v12;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardSearchSeeAllHeaderItemPresenter *)self _updateCell:self->_sampleCell withHeaderItem:item, path];
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v9 = width + v8 * -2.0;
  [(PKTransactionHistoryTransactionGroupHeaderCell *)self->_sampleCell sizeThatFits:v9, 1.79769313e308];
  v11 = v10;
  [(PKDashboardCollectionViewCell *)self->_sampleCell prepareForReuse];
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
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
        v11 = [PKTransactionHistoryTransactionGroupHeaderCell alloc];
        v12 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v12;
      }
    }
  }
}

- (void)_updateCell:(id)cell withHeaderItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  results = [itemCopy results];
  v7 = [results count];

  query = [itemCopy query];

  type = [query type];
  text = [query text];
  v11 = [text length];

  if (v11)
  {
    text2 = [query text];
    v13 = PKLocalizedString(&cfstr_SearchTextResu.isa, &stru_1F3BD5BF0.isa, text2);
LABEL_5:

    goto LABEL_6;
  }

  displayNameToken = [query displayNameToken];
  displayName = [displayNameToken displayName];
  v16 = [displayName length];

  if (v16)
  {
    text2 = [query displayNameToken];
    displayName2 = [text2 displayName];
    v13 = PKLocalizedString(&cfstr_SearchTextResu.isa, &stru_1F3BD5BF0.isa, displayName2);

    goto LABEL_5;
  }

  v13 = PKLocalizedString(&cfstr_SearchResults.isa);
LABEL_6:
  [cellCopy setTitle:v13];
  if (v7)
  {
    v18 = 0;
    if (type > 8)
    {
      if (type == 9)
      {
        PKLocalizedString(&cfstr_PaymentSetupPr.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }

      if (type == 13)
      {
        PKLocalizedString(&cfstr_PendingPeerPay.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }

      if (type != 14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((type - 1) < 2)
      {
        PKLocalizedString(&cfstr_CardsCount.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }

      if (type != 3)
      {
        if (type != 8)
        {
          goto LABEL_23;
        }

        PKLocalizedString(&cfstr_OrdersCount.isa, &cfstr_Lu.isa, v7);
        goto LABEL_21;
      }
    }

    PKLocalizedString(&cfstr_PassesCount.isa, &cfstr_Lu.isa, v7);
    v19 = LABEL_21:;
    goto LABEL_22;
  }

  v19 = PKLocalizedString(&cfstr_Loading_1.isa);
LABEL_22:
  v18 = v19;
LABEL_23:
  [cellCopy setSubtitle:v18];
  v20 = MEMORY[0x1E69DCAB8];
  v21 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:70.0];
  v22 = [v20 systemImageNamed:@"magnifyingglass" withConfiguration:v21];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v24 = [v22 imageWithTintColor:whiteColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v26 = PKUIImageWithBackgroundAndCornerRadius(v24, blackColor, 100.0, 100.0, 0.0);

  [cellCopy setImage:v26 animated:0];
  [cellCopy setStrokeImage:1];
}

@end