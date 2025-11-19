@interface PKDashboardPeerPaymentPendingRequestItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardPeerPaymentPendingRequestItemPresenter)init;
- (id)_defaultImageData;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 forSizing:(BOOL)a7;
- (void)_updateAvatarOnTransactionCell:(id)a3 contact:(id)a4;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
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

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v8 = a6;
  v9 = a3;
  v13 = [v9 pendingRequest];
  v10 = [PKPeerPaymentGroupedPaymentsViewController alloc];
  v11 = [v9 transactionSourceCollection];

  v12 = [(PKPeerPaymentGroupedPaymentsViewController *)v10 initWithRequest:v13 transactionSourceCollection:v11 context:0];
  [v8 pushViewController:v12 animated:1];
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"PKDashboardPeerPaymentPendingRequestItemPresenterIdentifier" forIndexPath:v8];
  [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8 forSizing:0];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _configureCell:self->_sampleCell forItem:a3 inCollectionView:a4 forIndexPath:a6 forSizing:1];
  sampleCell = self->_sampleCell;

  [(PKPaymentTransactionCollectionViewCell *)sampleCell sizeThatFits:a5, 3.40282347e38];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 forSizing:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    goto LABEL_15;
  }

  v37 = a7;
  v36 = v14;
  v15 = [v12 pendingRequest];
  v16 = [v11 transactionView];
  [v16 setShowsDisclosureView:1];
  v35 = PKLocalizedPeerPaymentString(&cfstr_GroupedPayment_3.isa);
  [v16 setPrimaryString:?];
  v17 = [v15 memo];
  v18 = PKPeerPaymentTotalAmountReceivedForPendingRequest(v15);
  v19 = [v17 length];
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

  v21 = [v18 minimalFormattedStringValue];
  v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen.isa, &stru_1F3BD5BF0.isa, v21);

  if (v20)
  {
LABEL_4:
    v20 = v22;
    v22 = v17;
  }

LABEL_5:
  v33 = v18;
  [v16 setSecondaryString:v22];
  v32 = v20;
  [v16 setTertiaryString:v20];
  v23 = [v15 currencyAmount];
  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E696AAB0]);
    v25 = [v23 formattedStringValue];
    v26 = [v24 initWithString:v25 attributes:0];

    [v16 setTransactionValueAttributedText:v26];
  }

  else
  {
    [v16 setTransactionValueAttributedText:0];
  }

  v34 = v17;
  v27 = [v15 groupID];
  [v16 setShowsAvatarView:1];
  [v16 setPrimaryImage:0];
  objc_initWeak(&location, self);
  if (v37 || !v27)
  {
    v28 = v13;
    v29 = v12;
    v30 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v31 = [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _defaultImageData];
    [v30 setImageData:v31];

    [(PKDashboardPeerPaymentPendingRequestItemPresenter *)self _updateAvatarOnTransactionCell:v11 contact:v30];
    v12 = v29;
    v13 = v28;
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __116__PKDashboardPeerPaymentPendingRequestItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke;
    v39[3] = &unk_1E80113E0;
    objc_copyWeak(&v41, &location);
    v40 = v11;
    PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier(v27, v39);

    objc_destroyWeak(&v41);
  }

  objc_destroyWeak(&location);

  v14 = v36;
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

- (void)_updateAvatarOnTransactionCell:(id)a3 contact:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 transactionView];
  v7 = [v6 avatarView];

  if (v5)
  {
    v16[0] = v5;
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
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
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
    v7 = [MEMORY[0x1E69DC888] systemGrayColor];
    v8 = [v6 imageWithTintColor:v7];

    v9 = [MEMORY[0x1E69DC888] systemGray5Color];
    v10 = PKUIImageWithBackgroundAndCornerRadius(v8, v9, 45.0, 45.0, 0.0);

    v11 = UIImagePNGRepresentation(v10);
    v12 = self->_defaultImageData;
    self->_defaultImageData = v11;

    v3 = self->_defaultImageData;
  }

  return v3;
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v15 = a3;
  v7 = a4;
  if (v15 && v7)
  {
    v8 = [v15 preferredContentSizeCategory];
    v9 = [v7 preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(v8, v9))
    {
    }

    else
    {
      v10 = [v15 legibilityWeight];
      v11 = [v7 legibilityWeight];

      if (v10 == v11)
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