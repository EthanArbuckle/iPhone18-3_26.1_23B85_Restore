@interface PKDashboardPaymentProductsTransitPresenter
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPaymentProductsTransitPresenter)initWithPassGroupView:(id)view paymentDataProvider:(id)provider;
- (id)_actionHandlerForItem:(id)item indexPath:(id)path;
- (id)_allocViewForTransitItem:(id)item;
- (id)_identifierForItem:(id)item;
- (id)_passForTransitItem:(id)item indexPath:(id)path;
- (id)_renewActionForItem:(id)item commutePlanIdentifier:(id)identifier;
- (id)_sampleViewForTransitItem:(id)item;
- (id)_topUpActionForItem:(id)item indexPath:(id)path balanceIdentifier:(id)identifier;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)displayableBalancesForTransitItem:(id)item;
- (int64_t)_viewTypeForTransitItem:(id)item;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)_configureView:(id *)view transitItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
@end

@implementation PKDashboardPaymentProductsTransitPresenter

- (PKDashboardPaymentProductsTransitPresenter)initWithPassGroupView:(id)view paymentDataProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = PKDashboardPaymentProductsTransitPresenter;
  v9 = [(PKDashboardPaymentProductsTransitPresenter *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passGroupView, view);
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

    objc_storeStrong(&v10->_paymentDataProvider, provider);
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

- (id)_identifierForItem:(id)item
{
  v3 = [(PKDashboardPaymentProductsTransitPresenter *)self _viewTypeForTransitItem:item];
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8018B50[v3];
  }
}

- (int64_t)_viewTypeForTransitItem:(id)item
{
  itemCopy = item;
  v5 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:itemCopy];
  v6 = [v5 count];
  transitItemType = [itemCopy transitItemType];

  v8 = 2;
  if (transitItemType - 4 >= 2)
  {
    v8 = 0;
  }

  if (transitItemType >= 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6 != 1;
  }

  return v9;
}

- (id)displayableBalancesForTransitItem:(id)item
{
  itemCopy = item;
  transitItemType = [itemCopy transitItemType];
  switch(transitItemType)
  {
    case 2:
      transitBalanceModel = [itemCopy transitBalanceModel];
      displayablePointsBalances = [transitBalanceModel displayablePointsBalances];
      goto LABEL_7;
    case 1:
      transitBalanceModel = [itemCopy transitBalanceModel];
      displayablePointsBalances = [transitBalanceModel displayableCurrencyBalances];
      goto LABEL_7;
    case 0:
      transitBalanceModel = [itemCopy transitBalanceModel];
      displayablePointsBalances = [transitBalanceModel displayableBalances];
LABEL_7:
      v7 = displayablePointsBalances;

      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [(PKDashboardPaymentProductsTransitPresenter *)self _identifierForItem:itemCopy];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(PKDashboardPaymentProductsTransitPresenter *)self _configureCell:v12 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v12;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  cellCopy = cell;
  hostedContentView = [cellCopy hostedContentView];
  v13 = hostedContentView;
  if (!hostedContentView || (v14 = [hostedContentView viewType], v14 != -[PKDashboardPaymentProductsTransitPresenter _viewTypeForTransitItem:](self, "_viewTypeForTransitItem:", itemCopy)))
  {
    v15 = [(PKDashboardPaymentProductsTransitPresenter *)self _allocViewForTransitItem:itemCopy];

    v13 = v15;
  }

  v17 = v13;
  [(PKDashboardPaymentProductsTransitPresenter *)self _configureView:&v17 transitItem:itemCopy indexPath:pathCopy animated:0];
  v16 = v17;

  [cellCopy setHostedContentView:v16];
}

- (id)_renewActionForItem:(id)item commutePlanIdentifier:(id)identifier
{
  identifierCopy = identifier;
  transitBalanceModel = [item transitBalanceModel];
  displayableCommutePlanActions = [transitBalanceModel displayableCommutePlanActions];
  v8 = [displayableCommutePlanActions pk_objectsPassingTest:&__block_literal_global_91];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__PKDashboardPaymentProductsTransitPresenter__renewActionForItem_commutePlanIdentifier___block_invoke_2;
  v12[3] = &unk_1E8018AC0;
  v13 = identifierCopy;
  v9 = identifierCopy;
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

- (id)_topUpActionForItem:(id)item indexPath:(id)path balanceIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pass = [item pass];
  activationState = [pass activationState];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  availableActions = [pass availableActions];
  v10 = [availableActions countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(availableActions);
      }

      v14 = *(*(&v21 + 1) + 8 * v13);
      if ([v14 type] == 6 || !objc_msgSend(v14, "type") || objc_msgSend(v14, "type") == 1 && ((activationState - 1) < 2 || (objc_msgSend(v14, "unavailableActionBehavior") & 1) != 0))
      {
        break;
      }

      if ([v14 type] == 1 && objc_msgSend(identifierCopy, "pk_hasObjectPassingTest:", &__block_literal_global_31_0) || objc_msgSend(v14, "featured") && (objc_msgSend(v14, "associatedEnteredValueIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15) || (v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __94__PKDashboardPaymentProductsTransitPresenter__topUpActionForItem_indexPath_balanceIdentifier___block_invoke_2, v20[3] = &unk_1E8013098, v20[4] = v14, (objc_msgSend(identifierCopy, "pk_hasObjectPassingTest:", v20) & 1) != 0))
      {
LABEL_24:
        v18 = v14;
        goto LABEL_25;
      }

      if ([v14 type] == 1)
      {
        relevantPropertyIdentifier = [v14 relevantPropertyIdentifier];
        if (relevantPropertyIdentifier)
        {
        }

        else
        {
          associatedEnteredValueIdentifier = [v14 associatedEnteredValueIdentifier];

          if (!associatedEnteredValueIdentifier)
          {
            goto LABEL_24;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [availableActions countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  v12 = width + v11 * -2.0;
  v13 = itemCopy;
  v14 = [(PKDashboardPaymentProductsTransitPresenter *)self _sampleViewForTransitItem:v13];
  v22 = v14;
  [(PKDashboardPaymentProductsTransitPresenter *)self _configureView:&v22 transitItem:v13 indexPath:pathCopy animated:0];

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

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  viewCopy = view;
  if (trait)
  {
    if (toTrait)
    {
      v24 = viewCopy;
      toTraitCopy = toTrait;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];

      v12 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);
      viewCopy = v24;
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
        viewCopy = v24;
      }
    }
  }
}

- (id)_sampleViewForTransitItem:(id)item
{
  itemCopy = item;
  v5 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:itemCopy];
  v6 = [v5 count];
  transitItemType = [itemCopy transitItemType];

  if (transitItemType < 3)
  {
    v8 = 32;
    if (v6 == 1)
    {
      v8 = 24;
    }
  }

  else if (transitItemType - 4 >= 2)
  {
    if (transitItemType != 3)
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

- (id)_allocViewForTransitItem:(id)item
{
  itemCopy = item;
  v5 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:itemCopy];
  v6 = [v5 count];
  transitItemType = [itemCopy transitItemType];

  v8 = off_1E8004698;
  if (transitItemType < 3)
  {
    if (v6 != 1)
    {
      v8 = off_1E8005188;
    }

    goto LABEL_8;
  }

  if (transitItemType - 4 < 2)
  {
    v8 = off_1E8006420;
LABEL_8:
    v9 = objc_alloc(*v8);
    v6 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    goto LABEL_9;
  }

  if (transitItemType == 3)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

- (void)_configureView:(id *)view transitItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  pathCopy = path;
  transitBalanceModel = [itemCopy transitBalanceModel];
  displayableCommutePlans = [transitBalanceModel displayableCommutePlans];
  v12 = [displayableCommutePlans count];
  v13 = [(PKDashboardPaymentProductsTransitPresenter *)self displayableBalancesForTransitItem:itemCopy];
  v14 = [v13 count];
  transitItemType = [itemCopy transitItemType];
  v73 = [(PKDashboardPaymentProductsTransitPresenter *)self _passForTransitItem:itemCopy indexPath:pathCopy];
  v16 = 0;
  if (transitItemType > 2)
  {
    switch(transitItemType)
    {
      case 3:
        v66 = v13;
        v30 = *view;
        [v30 beginUpdates];
        [v30 setPass:v73];
        [v30 setAction:0];
        [v30 setActionHandler:0];
        [v30 setEnableDisclosure:v12 > 1];
        v88[0] = 0;
        v86 = 0;
        v87 = 0;
        v85 = &stru_1F3BD7330;
        v70 = transitBalanceModel;
        [transitBalanceModel getDisplayableCommutePlanDetailsForTitle:&v87 value:&v86 subtitle:&v85 isExpired:v88];
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

        transitBalanceModel = v70;
        v13 = v66;
        if (v12 == 1)
        {
          firstObject = [displayableCommutePlans firstObject];
          identifier = [firstObject identifier];
          v45 = [(PKDashboardPaymentProductsTransitPresenter *)self _renewActionForItem:itemCopy commutePlanIdentifier:identifier];

          v46 = [(PKDashboardPaymentProductsTransitPresenter *)self _actionHandlerForItem:itemCopy indexPath:pathCopy];
          v47 = v46;
          if (v45 && v46 && [v45 isActionAvailable])
          {
            v48 = [v73 isSuicaPass] && objc_msgSend(v45, "type") == 2 && objc_msgSend(v73, "transitCommutePlanType") == 1;
            [v45 setReverseButtonTitleForLegacySuica:v48];
            [v30 setAction:v45];
            [v30 setActionHandler:v47];
          }
        }

        [v30 endUpdates:animatedCopy];
        v62 = *MEMORY[0x1E69B9AD0];
        v16 = v30;
        [v16 setAccessibilityIdentifier:v62];

        v29 = v65;
        break;
      case 4:
        v37 = *view;
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __92__PKDashboardPaymentProductsTransitPresenter__configureView_transitItem_indexPath_animated___block_invoke;
        v79[3] = &unk_1E8010A88;
        v38 = v37;
        v80 = v38;
        v81 = v73;
        v82 = transitBalanceModel;
        [v38 performBatchUpdates:v79 animated:animatedCopy];
        v39 = pathCopy;
        v40 = v82;
        v16 = v38;

        pathCopy = v39;
        v29 = v80;
        break;
      case 5:
        v25 = *view;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __92__PKDashboardPaymentProductsTransitPresenter__configureView_transitItem_indexPath_animated___block_invoke_2;
        v74[3] = &unk_1E8011C98;
        v26 = v25;
        v75 = v26;
        v76 = v73;
        v77 = itemCopy;
        v78 = transitBalanceModel;
        [v26 performBatchUpdates:v74 animated:animatedCopy];
        v27 = pathCopy;
        v28 = v78;
        v16 = v26;

        pathCopy = v27;
        v29 = v75;
        break;
      default:
        goto LABEL_50;
    }

    goto LABEL_50;
  }

  if (transitItemType < 3)
  {
    v16 = *view;
    [v16 beginUpdates];
    if (v14 == 2)
    {
      v19 = [v13 objectAtIndexedSubscript:0];
      localizedTitle = [v19 localizedTitle];
      if (localizedTitle)
      {
        [v16 setLeftTitle:localizedTitle];
      }

      else
      {
        v53 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [v16 setLeftTitle:v53];
      }

      formattedValue = [v19 formattedValue];
      [v16 setLeftDetail:formattedValue];

      [v16 setLeftSubDetail:0];
      v21 = [v13 objectAtIndexedSubscript:1];
      localizedTitle2 = [v21 localizedTitle];
      if (localizedTitle2)
      {
        [v16 setRightTitle:localizedTitle2];
      }

      else
      {
        v56 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [v16 setRightTitle:v56];
      }

      formattedValue2 = [v21 formattedValue];
      [v16 setRightDetail:formattedValue2];

      [v16 setRightSubDetail:0];
      [v16 setPass:v73];
      [v16 setEnableDisclosure:1];
      [v16 endUpdates:animatedCopy];
    }

    else
    {
      viewCopy = view;
      v17 = pathCopy;
      v18 = v14 - 1;
      if (v14 != 1)
      {
        v19 = [v13 objectAtIndexedSubscript:0];
        localizedTitle3 = [v19 localizedTitle];
        if (localizedTitle3)
        {
          [v16 setLeftTitle:localizedTitle3];
        }

        else
        {
          v58 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
          [v16 setLeftTitle:v58];
        }

        formattedValue3 = [v19 formattedValue];
        [v16 setLeftDetail:formattedValue3];

        [v16 setLeftSubDetail:0];
        v60 = PKLocalizedPaymentString(&cfstr_PropertySummar_0.isa);
        [v16 setRightTitle:v60];

        v61 = PKLocalizedPaymentString(&cfstr_PropertySummar_1.isa, &cfstr_Lu.isa, v18);
        [v16 setRightDetail:v61];

        [v16 setRightSubDetail:0];
        [v16 setPass:v73];
        [v16 setEnableDisclosure:1];
        [v16 endUpdates:animatedCopy];
        pathCopy = v17;
        view = viewCopy;
        goto LABEL_44;
      }

      [v16 setAction:0];
      [v16 setActionHandler:0];
      v19 = [v13 objectAtIndexedSubscript:0];
      identifiers = [v19 identifiers];
      pathCopy = v17;
      v21 = [(PKDashboardPaymentProductsTransitPresenter *)self _topUpActionForItem:itemCopy indexPath:v17 balanceIdentifier:identifiers];

      v22 = [(PKDashboardPaymentProductsTransitPresenter *)self _actionHandlerForItem:itemCopy indexPath:v17];
      v23 = v22;
      if (v21 && v22 && [v21 isActionAvailable])
      {
        [v16 setAction:v21];
        [v16 setActionHandler:v23];
      }

      v67 = v23;
      [v16 setEnableDisclosure:0];
      localizedTitle4 = [v19 localizedTitle];
      view = viewCopy;
      if (localizedTitle4)
      {
        [v16 setTitle:localizedTitle4];
      }

      else
      {
        v49 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
        [v16 setTitle:v49];
      }

      formattedValue4 = [v19 formattedValue];
      [v16 setDetail:formattedValue4];

      if ([v73 isAutoTopUpBalance:v19] && objc_msgSend(v73, "isAutoTopEnabled"))
      {
        v51 = PKLocalizedPaymentString(&cfstr_DashboardBalan.isa);
        [v16 setSubDetail:v51];
      }

      else
      {
        [v16 setSubDetail:0];
      }

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v16 setSubDetailColor:secondaryLabelColor];

      [v16 setPass:v73];
      [v16 endUpdates:animatedCopy];
    }

LABEL_44:
    [v16 setAccessibilityIdentifier:*MEMORY[0x1E69B9500]];
  }

LABEL_50:
  v63 = v16;
  *view = v16;
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

- (id)_actionHandlerForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
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

- (id)_passForTransitItem:(id)item indexPath:(id)path
{
  v4 = [(PKPassGroupView *)self->_passGroupView frontmostPassView:item];
  pass = [v4 pass];

  return pass;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  cellCopy = cell;
  hostedContentView = [cellCopy hostedContentView];
  if (!hostedContentView)
  {
    hostedContentView = [(PKDashboardPaymentProductsTransitPresenter *)self _allocViewForTransitItem:itemCopy];
  }

  v14 = hostedContentView;
  [(PKDashboardPaymentProductsTransitPresenter *)self _configureView:&v14 transitItem:itemCopy indexPath:pathCopy animated:0];
  v13 = v14;

  [cellCopy setHostedContentView:v13];
}

- (void)performActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [cancelCopy setDelegate:0];
  presentingViewController = [cancelCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)performActionViewControllerDidPerformAction:(id)action
{
  actionCopy = action;
  [actionCopy setDelegate:0];
  presentingViewController = [actionCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  if ([itemCopy transitItemType] == 4 || objc_msgSend(itemCopy, "transitItemType") == 5)
  {
    v11 = 1;
  }

  else
  {
    v12 = [viewCopy cellForItemAtIndexPath:pathCopy];
    v13 = v12;
    if (v12)
    {
      hostedContentView = [v12 hostedContentView];
      enableDisclosure = [hostedContentView enableDisclosure];
    }

    else
    {
      enableDisclosure = 0;
    }

    frontmostPassView = [(PKPassGroupView *)self->_passGroupView frontmostPassView];
    pass = [frontmostPassView pass];

    if ([pass activationState])
    {
      v11 = 0;
    }

    else
    {
      v11 = enableDisclosure;
    }
  }

  return v11;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  itemCopy = item;
  controllerCopy = controller;
  v11 = itemCopy;
  if ([v11 transitItemType] == 5)
  {
    externalActionContent = [v11 externalActionContent];
    pass = [v11 pass];
    displayName = [(PKPassTransitProductsViewController *)externalActionContent displayName];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke;
    v36[3] = &unk_1E8014560;
    v37 = controllerCopy;
    PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, displayName, v36);

    v15 = v37;
LABEL_9:

    goto LABEL_10;
  }

  if ([v11 transitItemType] == 4)
  {
    actionGroups = [v11 actionGroups];
    externalActionContent = [actionGroups firstObject];

    if ([(PKPassTransitProductsViewController *)externalActionContent hasExternalActionContent])
    {
      pass2 = [v11 pass];
      v12ExternalActionContent = [(PKPassTransitProductsViewController *)externalActionContent externalActionContent];
      title = [(PKPassTransitProductsViewController *)externalActionContent title];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_2;
      v34[3] = &unk_1E8014560;
      v20 = &v35;
      v35 = controllerCopy;
      PKPaymentPassActionPerformExternalActionContent(pass2, v12ExternalActionContent, title, v34);
    }

    else
    {
      v23 = [PKPaymentPassCombinedActionDataController alloc];
      pass3 = [v11 pass];
      actionGroups2 = [v11 actionGroups];
      paymentDataProvider = self->_paymentDataProvider;
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      transitBalanceModel = [v11 transitBalanceModel];
      v29 = [(PKPaymentPassCombinedActionDataController *)v23 initWithPass:pass3 actionGroups:actionGroups2 paymentDataProvider:paymentDataProvider webService:mEMORY[0x1E69B8EF8] balanceModel:transitBalanceModel mode:0];
      combinedActionController = self->_combinedActionController;
      self->_combinedActionController = v29;

      v31 = self->_combinedActionController;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __121__PKDashboardPaymentProductsTransitPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke_3;
      v32[3] = &unk_1E8018B30;
      v20 = &v33;
      v33 = controllerCopy;
      [(PKPaymentPassCombinedActionDataController *)v31 fetchViewController:v32];
    }

    v15 = *v20;
    goto LABEL_9;
  }

  v21 = [PKPassTransitProductsViewController alloc];
  pass4 = [v11 pass];
  externalActionContent = -[PKPassTransitProductsViewController initWithPaymentPass:transitType:](v21, "initWithPaymentPass:transitType:", pass4, [v11 transitItemType]);

  objc_storeWeak(&self->_productDetailsController, externalActionContent);
  [controllerCopy pushViewController:externalActionContent animated:1];
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