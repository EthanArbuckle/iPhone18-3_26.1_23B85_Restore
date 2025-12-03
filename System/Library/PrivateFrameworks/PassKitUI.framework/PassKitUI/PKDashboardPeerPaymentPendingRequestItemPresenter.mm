@interface PKDashboardPeerPaymentPendingRequestItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPeerPaymentPendingRequestItemPresenter)init;
- (id)_defaultImageData;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path forSizing:(BOOL)sizing;
- (void)_updateAvatarOnTransactionCell:(id)cell contact:(id)contact;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardPeerPaymentPendingRequestItemPresenter

- (PKDashboardPeerPaymentPendingRequestItemPresenter)init
{
  v7.receiver = self;
  v7.super_class = PKDashboardPeerPaymentPendingRequestItemPresenter;
  v2 = [(PKDashboardPeerPaymentPendingRequestItemPresenter *)&v7 init];
  if (v2)
  {
    v3 = [PKPaymentTransactionCollectionViewCell alloc];
    v4 = [(PKPaymentTransactionCollectionViewCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v4;
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"PKDashboardPeerPaymentPendingRequestItemPresenterIdentifier";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  controllerCopy = controller;
  itemCopy = item;
  pendingRequest = [itemCopy pendingRequest];
  v10 = [PKPeerPaymentGroupedPaymentsViewController alloc];
  transactionSourceCollection = [itemCopy transactionSourceCollection];

  v12 = [(PKPeerPaymentGroupedPaymentsViewController *)v10 initWithRequest:pendingRequest transactionSourceCollection:transactionSourceCollection context:0];
  [controllerCopy pushViewController:v12 animated:1];
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKDashboardPeerPaymentPendingRequestItemPresenterIdentifier" forIndexPath:pathCopy];
  [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy forSizing:0];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _configureCell:self->_sampleCell forItem:item inCollectionView:view forIndexPath:path forSizing:1];
  sampleCell = self->_sampleCell;

  [(PKPaymentTransactionCollectionViewCell *)sampleCell sizeThatFits:width, 3.40282347e38];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path forSizing:(BOOL)sizing
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  if (!cellCopy)
  {
    goto LABEL_15;
  }

  sizingCopy = sizing;
  v36 = pathCopy;
  pendingRequest = [itemCopy pendingRequest];
  transactionView = [cellCopy transactionView];
  [transactionView setShowsDisclosureView:1];
  v35 = PKLocalizedPeerPaymentString(&cfstr_GroupedPayment_3.isa);
  [transactionView setPrimaryString:?];
  memo = [pendingRequest memo];
  v18 = PKPeerPaymentTotalAmountReceivedForPendingRequest(pendingRequest);
  v19 = [memo length];
  v20 = v19;
  if (!v18)
  {
    v22 = 0;
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  minimalFormattedStringValue = [v18 minimalFormattedStringValue];
  v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);

  if (v20)
  {
LABEL_4:
    v20 = v22;
    v22 = memo;
  }

LABEL_5:
  v33 = v18;
  [transactionView setSecondaryString:v22];
  v32 = v20;
  [transactionView setTertiaryString:v20];
  currencyAmount = [pendingRequest currencyAmount];
  if (currencyAmount)
  {
    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    formattedStringValue = [currencyAmount formattedStringValue];
    v26 = [v24 initWithString:formattedStringValue attributes:0];

    [transactionView setTransactionValueAttributedText:v26];
  }

  else
  {
    [transactionView setTransactionValueAttributedText:0];
  }

  v34 = memo;
  groupID = [pendingRequest groupID];
  [transactionView setShowsAvatarView:1];
  [transactionView setPrimaryImage:0];
  objc_initWeak(&location, self);
  if (sizingCopy || !groupID)
  {
    v28 = viewCopy;
    v29 = itemCopy;
    v30 = objc_alloc_init(MEMORY[0x1E695CF18]);
    _defaultImageData = [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _defaultImageData];
    [v30 setImageData:_defaultImageData];

    [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _updateAvatarOnTransactionCell:cellCopy contact:v30];
    itemCopy = v29;
    viewCopy = v28;
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __116__PKDashboardPeerPaymentPendingRequestItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke;
    v39[3] = &unk_1E80113E0;
    objc_copyWeak(&v41, &location);
    v40 = cellCopy;
    PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier(groupID, v39);

    objc_destroyWeak(&v41);
  }

  objc_destroyWeak(&location);

  pathCopy = v36;
LABEL_15:
}

void __116__PKDashboardPeerPaymentPendingRequestItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v9 length])
    {
      v7 = [*(a1 + 32) transactionView];
      [v7 setPrimaryString:v9];
    }

    v8 = objc_alloc_init(MEMORY[0x1E695CF18]);
    if (!v5)
    {
      v5 = [WeakRetained _defaultImageData];
    }

    [v8 setImageData:v5];
    [WeakRetained _updateAvatarOnTransactionCell:*(a1 + 32) contact:v8];
  }
}

- (void)_updateAvatarOnTransactionCell:(id)cell contact:(id)contact
{
  v16[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  transactionView = [cell transactionView];
  avatarView = [transactionView avatarView];

  if (contactCopy)
  {
    v16[0] = contactCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v9 setContactType:0];
    v15 = v9;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PKDashboardPeerPaymentPendingRequestItemPresenter__updateAvatarOnTransactionCell_contact___block_invoke;
  block[3] = &unk_1E8010A10;
  v13 = avatarView;
  v14 = v8;
  v10 = v8;
  v11 = avatarView;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_defaultImageData
{
  defaultImageData = self->_defaultImageData;
  if (defaultImageData)
  {
    v3 = defaultImageData;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:16.0];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.3.fill" withConfiguration:v5];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v8 = [v6 imageWithTintColor:systemGrayColor];

    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    v10 = PKUIImageWithBackgroundAndCornerRadius(v8, systemGray5Color, 45.0, 45.0, 0.0);

    v11 = UIImagePNGRepresentation(v10);
    v12 = self->_defaultImageData;
    self->_defaultImageData = v11;

    v3 = self->_defaultImageData;
  }

  return v3;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  traitCopy = trait;
  toTraitCopy = toTrait;
  if (traitCopy && toTraitCopy)
  {
    preferredContentSizeCategory = [traitCopy preferredContentSizeCategory];
    preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2))
    {
    }

    else
    {
      legibilityWeight = [traitCopy legibilityWeight];
      legibilityWeight2 = [toTraitCopy legibilityWeight];

      if (legibilityWeight == legibilityWeight2)
      {
        goto LABEL_7;
      }
    }

    v12 = [PKPaymentTransactionCollectionViewCell alloc];
    v13 = [(PKPaymentTransactionCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = self->_sampleCell;
    self->_sampleCell = v13;
  }

LABEL_7:
}

@end