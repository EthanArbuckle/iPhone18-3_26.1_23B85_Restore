@interface PKDashboardPaymentProductsTransitPresenter
- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardPaymentProductsTransitPresenter)initWithPassGroupView:(id)a3 paymentDataProvider:(id)a4;
- (id)_actionHandlerForItem:(id)a3 indexPath:(id)a4;
- (id)_allocViewForTransitItem:(id)a3;
- (id)_identifierForItem:(id)a3;
- (id)_passForTransitItem:(id)a3 indexPath:(id)a4;
- (id)_renewActionForItem:(id)a3 commutePlanIdentifier:(id)a4;
- (id)_sampleViewForTransitItem:(id)a3;
- (id)_topUpActionForItem:(id)a3 indexPath:(id)a4 balanceIdentifier:(id)a5;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)displayableBalancesForTransitItem:(id)a3;
- (int64_t)_viewTypeForTransitItem:(id)a3;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)_configureView:(id *)a3 transitItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)performActionViewControllerDidCancel:(id)a3;
- (void)performActionViewControllerDidPerformAction:(id)a3;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKDashboardPaymentProductsTransitPresenter

- (PKDashboardPaymentProductsTransitPresenter)initWithPassGroupView:(id)a3 paymentDataProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = PKDashboardPaymentProductsTransitPresenter;
  v9 = [(PKDashboardPaymentProductsTransitPresenter *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passGroupView, a3);
    v11 = [PKAdjustableSingleCellView alloc];
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [(PKAdjustableSingleCellView *)v11 initWithFrame:*MEMORY[0x1E695F058], v13, v14, v15];
    sampleSingleCellView = v10->_sampleSingleCellView;
    v10->_sampleSingleCellView = v16;

    v18 = [[PKFusedDoubleCellView alloc] initWithFrame:v12, v13, v14, v15];
    sampleFusedCellView = v10->_sampleFusedCellView;
    v10->_sampleFusedCellView = v18;

    v20 = [[PKSimplePrimaryButtonCellView alloc] initWithFrame:v12, v13, v14, v15];
    sampleSingleCellButtonView = v10->_sampleSingleCellButtonView;
    v10->_sampleSingleCellButtonView = v20;

    objc_storeStrong(&v10->_paymentDataProvider, a4);
  }

  return v10;
}

- (id)collectionViewCellClasses
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"paymentProductsTransitPresenterAdjustableVIew";
  v5[0] = objc_opt_class();
  v4[1] = @"paymentProductsTransitPresenterFusedView";
  v5[1] = objc_opt_class();
  v4[2] = @"paymentProductsTransitPresenterButtonView";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)_identifierForItem:(id)a3
{
  v3 = [(PKDashboardPaymentProductsTransitPresenter *)self _viewTypeForTransitItem:a3];
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8018B50[v3];
  }
}

- (int64_t)_viewTypeForTransitItem:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:v4];
  v6 = [v5 count];
  v7 = [v4 transitItemType];

  v8 = 2;
  if (v7 - 4 >= 2)
  {
    v8 = 0;
  }

  if (v7 >= 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6 != 1;
  }

  return v9;
}

- (id)displayableBalancesForTransitItem:(id)a3
{
  v3 = a3;
  v4 = [v3 transitItemType];
  switch(v4)
  {
    case 2:
      v5 = [v3 transitBalanceModel];
      v6 = [v5 displayablePointsBalances];
      goto LABEL_7;
    case 1:
      v5 = [v3 transitBalanceModel];
      v6 = [v5 displayableCurrencyBalances];
      goto LABEL_7;
    case 0:
      v5 = [v3 transitBalanceModel];
      v6 = [v5 displayableBalances];
LABEL_7:
      v7 = v6;

      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKDashboardPaymentProductsTransitPresenter *)self _identifierForItem:v10];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  [(PKDashboardPaymentProductsTransitPresenter *)self _configureCell:v12 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v12;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [v11 hostedContentView];
  v13 = v12;
  if (!v12 || (v14 = [v12 viewType], v14 != -[PKDashboardPaymentProductsTransitPresenter _viewTypeForTransitItem:](self, "_viewTypeForTransitItem:", v9)))
  {
    v15 = [(PKDashboardPaymentProductsTransitPresenter *)self _allocViewForTransitItem:v9];

    v13 = v15;
  }

  v17 = v13;
  [(PKDashboardPaymentProductsTransitPresenter *)self _configureView:&v17 transitItem:v9 indexPath:v10 animated:0];
  v16 = v17;

  [v11 setHostedContentView:v16];
}

- (id)_renewActionForItem:(id)a3 commutePlanIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 transitBalanceModel];
  v7 = [v6 displayableCommutePlanActions];
  v8 = [v7 pk_objectsPassingTest:&__block_literal_global_91];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__PKDashboardPaymentProductsTransitPresenter__renewActionForItem_commutePlanIdentifier___block_invoke_2;
  v12[3] = &unk_1E8018AC0;
  v13 = v5;
  v9 = v5;
  v10 = [v8 pk_firstObjectPassingTest:v12];

  return v10;
}

BOOL __88__PKDashboardPaymentProductsTransitPresenter__renewActionForItem_commutePlanIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 2 && objc_msgSend(v2, "isActionAvailable") && (objc_msgSend(v2, "unavailableActionBehavior") & 1) == 0;

  return v3;
}

BOOL __88__PKDashboardPaymentProductsTransitPresenter__renewActionForItem_commutePlanIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 associatedPlanIdentifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 caseInsensitiveCompare:v6] == 0;
    }
  }

  return v8;
}

- (id)_topUpActionForItem:(id)a3 indexPath:(id)a4 balanceIdentifier:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [a3 pass];
  v8 = [v7 activationState];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v7 availableActions];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v21 + 1) + 8 * v13);
      if ([v14 type] == 6 || !objc_msgSend(v14, "type") || objc_msgSend(v14, "type") == 1 && ((v8 - 1) < 2 || (objc_msgSend(v14, "unavailableActionBehavior") & 1) != 0))
      {
        break;
      }

      if ([v14 type] == 1 && objc_msgSend(v6, "pk_hasObjectPassingTest:", &__block_literal_global_31_0) || objc_msgSend(v14, "featured") && (objc_msgSend(v14, "associatedEnteredValueIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15) || (v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __94__PKDashboardPaymentProductsTransitPresenter__topUpActionForItem_indexPath_balanceIdentifier___block_invoke_2, v20[3] = &unk_1E8013098, v20[4] = v14, (objc_msgSend(v6, "pk_hasObjectPassingTest:", v20) & 1) != 0))
      {
LABEL_24:
        v18 = v14;
        goto LABEL_25;
      }

      if ([v14 type] == 1)
      {
        v16 = [v14 relevantPropertyIdentifier];
        if (v16)
        {
        }

        else
        {
          v17 = [v14 associatedEnteredValueIdentifier];

          if (!v17)
          {
            goto LABEL_24;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v18 = 0;
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }
    }
  }

  v18 = 0;
LABEL_25:

  return v18;
}

BOOL __94__PKDashboardPaymentProductsTransitPresenter__topUpActionForItem_indexPath_balanceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E69BC060];
  v4 = v2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v4 && v3)
    {
      v6 = [v3 caseInsensitiveCompare:v4] == 0;
    }
  }

  return v6;
}

BOOL __94__PKDashboardPaymentProductsTransitPresenter__topUpActionForItem_indexPath_balanceIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) relevantPropertyIdentifier];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
  {
    v9 = 1;
    v10 = v6;
    v11 = v5;
LABEL_14:

    goto LABEL_15;
  }

  if (!v5 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [v5 caseInsensitiveCompare:v6];

  if (v8)
  {
LABEL_8:
    v12 = [*(a1 + 32) associatedEnteredValueIdentifier];
    v10 = v5;
    v13 = v12;
    v11 = v13;
    if (v13 == v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      if (v5 && v13)
      {
        v9 = [v10 caseInsensitiveCompare:v13] == 0;
      }
    }

    goto LABEL_14;
  }

  v9 = 1;
LABEL_15:

  return v9;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v9 = a3;
  v10 = a6;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v12 = a5 + v11 * -2.0;
  v13 = v9;
  v14 = [(PKDashboardPaymentProductsTransitPresenter *)self _sampleViewForTransitItem:v13];
  v22 = v14;
  [(PKDashboardPaymentProductsTransitPresenter *)self _configureView:&v22 transitItem:v13 indexPath:v10 animated:0];

  v15 = v22;
  [v15 sizeThatFits:{v12, 1.79769313e308}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v8 = a5;
  if (a3)
  {
    if (a4)
    {
      v24 = v8;
      v9 = a4;
      v10 = [a3 preferredContentSizeCategory];
      v11 = [v9 preferredContentSizeCategory];

      v12 = UIContentSizeCategoryCompareToCategory(v10, v11);
      v8 = v24;
      if (v12)
      {
        v13 = [PKAdjustableSingleCellView alloc];
        v14 = *MEMORY[0x1E695F058];
        v15 = *(MEMORY[0x1E695F058] + 8);
        v16 = *(MEMORY[0x1E695F058] + 16);
        v17 = *(MEMORY[0x1E695F058] + 24);
        v18 = [(PKAdjustableSingleCellView *)v13 initWithFrame:*MEMORY[0x1E695F058], v15, v16, v17];
        sampleSingleCellView = self->_sampleSingleCellView;
        self->_sampleSingleCellView = v18;

        v20 = [[PKFusedDoubleCellView alloc] initWithFrame:v14, v15, v16, v17];
        sampleFusedCellView = self->_sampleFusedCellView;
        self->_sampleFusedCellView = v20;

        v22 = [[PKSimplePrimaryButtonCellView alloc] initWithFrame:v14, v15, v16, v17];
        sampleSingleCellButtonView = self->_sampleSingleCellButtonView;
        self->_sampleSingleCellButtonView = v22;

        [v24 reloadData];
        v8 = v24;
      }
    }
  }
}

- (id)_sampleViewForTransitItem:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:v4];
  v6 = [v5 count];
  v7 = [v4 transitItemType];

  if (v7 < 3)
  {
    v8 = 32;
    if (v6 == 1)
    {
      v8 = 24;
    }
  }

  else if (v7 - 4 >= 2)
  {
    if (v7 != 3)
    {
      goto LABEL_10;
    }

    v8 = 24;
  }

  else
  {
    v8 = 40;
  }

  v6 = *(&self->super.isa + v8);
LABEL_10:

  return v6;
}

- (id)_allocViewForTransitItem:(id)a3
{
  v4 = a3;
  v5 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:v4];
  v6 = [v5 count];
  v7 = [v4 transitItemType];

  v8 = off_1E8004698;
  if (v7 < 3)
  {
    if (v6 != 1)
    {
      v8 = off_1E8005188;
    }

    goto LABEL_8;
  }

  if (v7 - 4 < 2)
  {
    v8 = off_1E8006420;
LABEL_8:
    v9 = objc_alloc(*v8);
    v6 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    goto LABEL_9;
  }

  if (v7 == 3)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

- (void)_configureView:(id *)a3 transitItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v71 = a6;
  v9 = a4;
  v10 = a5;
  v11 = [v9 transitBalanceModel];
  v72 = [v11 displayableCommutePlans];
  v12 = [v72 count];
  v13 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:v9];
  v14 = [v13 count];
  v15 = [v9 transitItemType];
  v73 = [(PKDashboardPaymentProductsTransitPresenter *)self _passForTransitItem:v9 indexPath:v10];
  v16 = 0;
  if (v15 > 2)
  {
    switch(v15)
    {
      case 3:
        v66 = v13;
        v30 = *a3;
        [v30 beginUpdates];
        [v30 setPass:v73];
        [v30 setAction:0];
        [v30 setActionHandler:0];
        [v30 setEnableDisclosure:v12 > 1];
        v88[0] = 0;
        v86 = 0;
        v87 = 0;
        v85 = &stru_1F3BD7330;
        v70 = v11;
        [v11 getDisplayableCommutePlanDetailsForTitle:&v87 value:&v86 subtitle:&v85 isExpired:v88];
        v31 = v87;
        v32 = v86;
        v33 = v85;
        PKCommutePlanFieldEitherLabelOrValueIsEmpty();
        v83 = v32;
        v84 = v31;
        PKCommutePlanFormatTitleFromLabelAndValue();
        v34 = v31;

        v35 = v32;
        v65 = v34;
        [v30 setTitle:v34];
        v64 = v35;
        [v30 setDetail:v35];
        v68 = v33;
        [v30 setSubDetail:v33];
        if (v88[0])
        {
          [MEMORY[0x1E69DC888] systemRedColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] secondaryLabelColor];
        }
        v42 = ;
        [v30 setSubDetailColor:v42];

        v11 = v70;
        v13 = v66;
        if (v12 == 1)
        {
          v43 = [v72 firstObject];
          v44 = [v43 identifier];
          v45 = [(PKDashboardPaymentProductsTransitPresenter *)self _renewActionForItem:v9 commutePlanIdentifier:v44];

          v46 = [(PKDashboardPaymentProductsTransitPresenter *)self _actionHandlerForItem:v9 indexPath:v10];
          v47 = v46;
          if (v45 && v46 && [v45 isActionAvailable])
          {
            v48 = [v73 isSuicaPass] && objc_msgSend(v45, "type") == 2 && objc_msgSend(v73, "transitCommutePlanType") == 1;
            [v45 setReverseButtonTitleForLegacySuica:v48];
            [v30 setAction:v45];
            [v30 setActionHandler:v47];
          }
        }

        [v30 endUpdates:v71];
        v62 = *MEMORY[0x1E69B9AD0];
        v16 = v30;
        [v16 setAccessibilityIdentifier:v62];

        v29 = v65;
        break;
      case 4:
        v37 = *a3;
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __92__PKDashboardPaymentProductsTransitPresenter__configureView_transitItem_indexPath_animated___block_invoke;
        v79[3] = &unk_1E8010A88;
        v38 = v37;
        v80 = v38;
        v81 = v73;
        v82 = v11;
        [v38 performBatchUpdates:v79 animated:v71];
        v39 = v10;
        v40 = v82;
        v16 = v38;

        v10 = v39;
        v29 = v80;
        break;
      case 5:
        v25 = *a3;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __92__PKDashboardPaymentProductsTransitPresenter__configureView_transitItem_indexPath_animated___block_invoke_2;
        v74[3] = &unk_1E8011C98;
        v26 = v25;
        v75 = v26;
        v76 = v73;
        v77 = v9;
        v78 = v11;
        [v26 performBatchUpdates:v74 animated:v71];
        v27 = v10;
        v28 = v78;
        v16 = v26;

        v10 = v27;
        v29 = v75;
        break;
      default:
        goto LABEL_50;
    }

    goto LABEL_50;
  }

  if (v15 < 3)
  {
    v16 = *a3;
    [v16 beginUpdates];
    if (v14 == 2)
    {
      v19 = [v13 objectAtIndexedSubscript:0];
      v36 = [v19 localizedTitle];
      if (v36)
      {
        [v16 setLeftTitle:v36];
      }

      else
      {
        v53 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [v16 setLeftTitle:v53];
      }

      v54 = [v19 formattedValue];
      [v16 setLeftDetail:v54];

      [v16 setLeftSubDetail:0];
      v21 = [v13 objectAtIndexedSubscript:1];
      v55 = [v21 localizedTitle];
      if (v55)
      {
        [v16 setRightTitle:v55];
      }

      else
      {
        v56 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [v16 setRightTitle:v56];
      }

      v57 = [v21 formattedValue];
      [v16 setRightDetail:v57];

      [v16 setRightSubDetail:0];
      [v16 setPass:v73];
      [v16 setEnableDisclosure:1];
      [v16 endUpdates:v71];
    }

    else
    {
      v69 = a3;
      v17 = v10;
      v18 = v14 - 1;
      if (v14 != 1)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        v41 = [v19 localizedTitle];
        if (v41)
        {
          [v16 setLeftTitle:v41];
        }

        else
        {
          v58 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
          [v16 setLeftTitle:v58];
        }

        v59 = [v19 formattedValue];
        [v16 setLeftDetail:v59];

        [v16 setLeftSubDetail:0];
        v60 = PKLocalizedPaymentString(&cfstr_PropertySummar_0.isa);
        [v16 setRightTitle:v60];

        v61 = PKLocalizedPaymentString(&cfstr_PropertySummar_1.isa, &cfstr_Lu.isa, v18);
        [v16 setRightDetail:v61];

        [v16 setRightSubDetail:0];
        [v16 setPass:v73];
        [v16 setEnableDisclosure:1];
        [v16 endUpdates:v71];
        v10 = v17;
        a3 = v69;
        goto LABEL_44;
      }

      [v16 setAction:0];
      [v16 setActionHandler:0];
      v19 = [v13 objectAtIndexedSubscript:0];
      v20 = [v19 identifiers];
      v10 = v17;
      v21 = [(PKDashboardPaymentProductsTransitPresenter *)self _topUpActionForItem:v9 indexPath:v17 balanceIdentifier:v20];

      v22 = [(PKDashboardPaymentProductsTransitPresenter *)self _actionHandlerForItem:v9 indexPath:v17];
      v23 = v22;
      if (v21 && v22 && [v21 isActionAvailable])
      {
        [v16 setAction:v21];
        [v16 setActionHandler:v23];
      }

      v67 = v23;
      [v16 setEnableDisclosure:0];
      v24 = [v19 localizedTitle];
      a3 = v69;
      if (v24)
      {
        [v16 setTitle:v24];
      }

      else
      {
        v49 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [v16 setTitle:v49];
      }

      v50 = [v19 formattedValue];
      [v16 setDetail:v50];

      if ([v73 isAutoTopUpBalance:v19] && objc_msgSend(v73, "isAutoTopEnabled"))
      {
        v51 = PKLocalizedPaymentString(&cfstr_DashboardBalan.isa);
        [v16 setSubDetail:v51];
      }

      else
      {
        [v16 setSubDetail:0];
      }

      v52 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v16 setSubDetailColor:v52];

      [v16 setPass:v73];
      [v16 endUpdates:v71];
    }

LABEL_44:
    [v16 setAccessibilityIdentifier:*MEMORY[0x1E69B9500]];
  }

LABEL_50:
  v63 = v16;
  *a3 = v16;
}

void __92__PKDashboardPaymentProductsTransitPresenter__configureView_transitItem_indexPath_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPass:*(a1 + 40)];
  if (([*(a1 + 48) hasCommutePlanContent] & 1) == 0)
  {
    [*(a1 + 48) hasBalanceContent];
  }

  v2 = *(a1 + 32);
  v3 = PKPassLocalizedStringWithFormat();
  [v2 setTitle:{v3, 0}];
}

void __92__PKDashboardPaymentProductsTransitPresenter__configureView_transitItem_indexPath_animated___block_invoke_2(id *a1)
{
  [a1[4] setPass:a1[5]];
  v2 = [a1[6] externalActionContent];
  v3 = [v2 displayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1[5] organizationName];
  }

  v8 = v5;

  [a1[7] hasBalanceContent];
  [a1[7] hasCommutePlanContent];
  v6 = a1[4];
  v7 = PKPassLocalizedStringWithFormat();
  [v6 setTitle:{v7, v8}];
}

- (id)_actionHandlerForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __78__PKDashboardPaymentProductsTransitPresenter__actionHandlerForItem_indexPath___block_invoke;
  v14 = &unk_1E8018B08;
  objc_copyWeak(&v15, &location);
  v8 = _Block_copy(&v11);
  v9 = [v8 copy];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

void __78__PKDashboardPaymentProductsTransitPresenter__actionHandlerForItem_indexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 pass];
    v15 = 0;
    v16 = 0;
    v9 = [v8 canPerformAction:v6 unableReason:&v16 displayableError:&v15];
    v10 = v15;
    if ((v9 & 1) != 0 || v16 == 2)
    {
      if ([v6 hasExternalActionContent])
      {
        v11 = [v6 externalActionContent];
        v12 = [v6 title];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __78__PKDashboardPaymentProductsTransitPresenter__actionHandlerForItem_indexPath___block_invoke_2;
        v14[3] = &unk_1E8014560;
        v14[4] = WeakRetained;
        PKPaymentPassActionPerformExternalActionContent(v8, v11, v12, v14);
      }

      else
      {
        v11 = [[PKPerformActionViewController alloc] initWithPass:v8 action:v6];
        v12 = [[PKNavigationController alloc] initWithRootViewController:v11];
        v13 = [WeakRetained[1] pkui_viewControllerFromResponderChain];
        [v13 presentViewController:v12 animated:1 completion:0];
        [(PKPerformActionViewController *)v11 setDelegate:WeakRetained];
      }
    }

    else
    {
      v11 = [PKPerformActionViewController alertControllerForUnableReason:v16 action:v6 displayableError:v10 addCardActionHandler:0];
      v12 = [WeakRetained[1] pkui_viewControllerFromResponderChain];
      [(PKNavigationController *)v12 presentViewController:v11 animated:1 completion:0];
    }
  }
}

void __78__PKDashboardPaymentProductsTransitPresenter__actionHandlerForItem_indexPath___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = a3;
    v5 = [v3 pkui_viewControllerFromResponderChain];
    [v5 presentViewController:v4 animated:1 completion:0];
  }
}

- (id)_passForTransitItem:(id)a3 indexPath:(id)a4
{
  v4 = [(PKPassGroupView *)self->_passGroupView frontmostPassView:a3];
  v5 = [v4 pass];

  return v5;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = a3;
  v12 = [v11 hostedContentView];
  if (!v12)
  {
    v12 = [(PKDashboardPaymentProductsTransitPresenter *)self _allocViewForTransitItem:v9];
  }

  v14 = v12;
  [(PKDashboardPaymentProductsTransitPresenter *)self _configureView:&v14 transitItem:v9 indexPath:v10 animated:0];
  v13 = v14;

  [v11 setHostedContentView:v13];
}

- (void)performActionViewControllerDidCancel:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v4 = [v3 presentingViewController];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)performActionViewControllerDidPerformAction:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v4 = [v3 presentingViewController];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 transitItemType] == 4 || objc_msgSend(v8, "transitItemType") == 5)
  {
    v11 = 1;
  }

  else
  {
    v12 = [v9 cellForItemAtIndexPath:v10];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 hostedContentView];
      v15 = [v14 enableDisclosure];
    }

    else
    {
      v15 = 0;
    }

    v16 = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
    v17 = [v16 pass];

    if ([v17 activationState])
    {
      v11 = 0;
    }

    else
    {
      v11 = v15;
    }
  }

  return v11;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = v9;
  if ([v11 transitItemType] == 5)
  {
    v12 = [v11 externalActionContent];
    v13 = [v11 pass];
    v14 = [(PKPassTransitProductsViewController *)v12 displayName];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke;
    v36[3] = &unk_1E8014560;
    v37 = v10;
    PKPaymentPassActionPerformExternalActionContent(v13, v12, v14, v36);

    v15 = v37;
LABEL_9:

    goto LABEL_10;
  }

  if ([v11 transitItemType] == 4)
  {
    v16 = [v11 actionGroups];
    v12 = [v16 firstObject];

    if ([(PKPassTransitProductsViewController *)v12 hasExternalActionContent])
    {
      v17 = [v11 pass];
      v18 = [(PKPassTransitProductsViewController *)v12 externalActionContent];
      v19 = [(PKPassTransitProductsViewController *)v12 title];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_2;
      v34[3] = &unk_1E8014560;
      v20 = &v35;
      v35 = v10;
      PKPaymentPassActionPerformExternalActionContent(v17, v18, v19, v34);
    }

    else
    {
      v23 = [PKPaymentPassCombinedActionDataController alloc];
      v24 = [v11 pass];
      v25 = [v11 actionGroups];
      paymentDataProvider = self->_paymentDataProvider;
      v27 = [MEMORY[0x1E69B8EF8] sharedService];
      v28 = [v11 transitBalanceModel];
      v29 = [(PKPaymentPassCombinedActionDataController *)v23 initWithPass:v24 actionGroups:v25 paymentDataProvider:paymentDataProvider webService:v27 balanceModel:v28 mode:0];
      combinedActionController = self->_combinedActionController;
      self->_combinedActionController = v29;

      v31 = self->_combinedActionController;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_3;
      v32[3] = &unk_1E8018B30;
      v20 = &v33;
      v33 = v10;
      [(PKPaymentPassCombinedActionDataController *)v31 fetchViewController:v32];
    }

    v15 = *v20;
    goto LABEL_9;
  }

  v21 = [PKPassTransitProductsViewController alloc];
  v22 = [v11 pass];
  v12 = -[PKPassTransitProductsViewController initWithPaymentPass:transitType:](v21, "initWithPaymentPass:transitType:", v22, [v11 transitItemType]);

  objc_storeWeak(&self->_productDetailsController, v12);
  [v10 pushViewController:v12 animated:1];
LABEL_10:
}

uint64_t __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

uint64_t __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

void __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }

  else if (v6)
  {
    [*(a1 + 32) pushViewController:v6 animated:1];
  }
}

@end