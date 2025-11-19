@interface PKPassPaymentConfirmationView
- (BOOL)_isExpressOutstanding;
- (BOOL)_isRegisteredForAllExpressTransactionNotifications;
- (BOOL)_shouldDisplayPrimaryView;
- (BOOL)_shouldDisplaySecondaryView;
- (PKPassPaymentConfirmationView)initWithPass:(id)a3 passStateProvider:(id)a4 context:(id)a5;
- (id)_expressNotificationNames;
- (id)_findOrCreatePrimaryAdjustableSingleCellView;
- (id)_findOrCreatePrimaryFusedDoubleCellView;
- (id)_findOrCreateSecondaryView;
- (id)_groupTileForTiles:(id)a3;
- (void)_beginResolution;
- (void)_disableActivityTimer;
- (void)_handleExpressNotification:(id)a3;
- (void)_presentCheckmarkIfNecessary;
- (void)_registerForExpressTransactionNotifications:(BOOL)a3;
- (void)_registerObserverForNotificationName:(id)a3 center:(id)a4 handler:(id)a5;
- (void)_reloadTiles;
- (void)_resolveActivityIfNecessary;
- (void)_resolveActivityIfNecessaryWithDelay;
- (void)_updateContentPrimaryView;
- (void)_updateContentSecondaryView;
- (void)dealloc;
- (void)didBecomeHiddenAnimated:(BOOL)a3;
- (void)didBecomeVisibleAnimated:(BOOL)a3;
- (void)layoutIfNeededAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4;
- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5;
- (void)payStateView:(id)a3 revealingCheckmark:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)willBecomeHiddenAnimated:(BOOL)a3;
- (void)willBecomeVisibleAnimated:(BOOL)a3;
@end

@implementation PKPassPaymentConfirmationView

- (PKPassPaymentConfirmationView)initWithPass:(id)a3 passStateProvider:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v72.receiver = self;
  v72.super_class = PKPassPaymentConfirmationView;
  v11 = [(PKPassFooterContentView *)&v72 initWithPass:v8 presentationContext:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_passStateProvider, a4);
    [v9 addPassStateObserver:v12];
    v13 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v12->_paymentService;
    v12->_paymentService = v13;

    [(PKPaymentService *)v12->_paymentService registerObserver:v12];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registeredExpressObservers = v12->_registeredExpressObservers;
    v12->_registeredExpressObservers = v15;

    v12->_transactionType = [v10 standaloneTransactionType];
    [(PKPassPaymentConfirmationView *)v12 _registerForExpressTransactionNotifications:1];
    v17 = [(PKPaymentService *)v12->_paymentService outstandingExpressTransactionState];
    expressState = v12->_expressState;
    v12->_expressState = v17;

    if (![(PKPassPaymentConfirmationView *)v12 _isExpressOutstanding]|| ![(PKPassPaymentConfirmationView *)v12 _isRegisteredForAllExpressTransactionNotifications])
    {
      [(PKPassPaymentConfirmationView *)v12 _registerForExpressTransactionNotifications:0];
      v19 = v12->_expressState;
      if (!v19)
      {
        v20 = [MEMORY[0x1E69B8860] create];
        v21 = v12->_expressState;
        v12->_expressState = v20;

        v19 = v12->_expressState;
      }

      if ([(PKExpressTransactionState *)v19 isProcessing])
      {
        [(PKExpressTransactionState *)v12->_expressState resolve];
      }
    }

    v22 = [v8 paymentPass];
    v23 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v22];
    transitBalanceModel = v12->_transitBalanceModel;
    v12->_transitBalanceModel = v23;

    v45 = [v22 devicePrimaryPaymentApplication];
    v44 = v8;
    if (([(PKPassFooterContentView *)v12 style]- 1) >= 3)
    {
      v25 = [v22 isStoredValuePass];
    }

    else
    {
      v25 = 0;
    }

    v26 = [v22 uniqueID];
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x3032000000;
    v70[3] = __Block_byref_object_copy__52;
    v70[4] = __Block_byref_object_dispose__52;
    v71 = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x3032000000;
    v68[3] = __Block_byref_object_copy__52;
    v68[4] = __Block_byref_object_dispose__52;
    v69 = 0;
    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x3032000000;
    v66[3] = __Block_byref_object_copy__52;
    v66[4] = __Block_byref_object_dispose__52;
    v67 = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x3032000000;
    v64[3] = __Block_byref_object_copy__52;
    v64[4] = __Block_byref_object_dispose__52;
    v65 = 0;
    objc_initWeak(&location, v12);
    v27 = dispatch_group_create();
    v28 = v27;
    if (v25)
    {
      dispatch_group_enter(v27);
      v29 = v12->_paymentService;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke;
      v58[3] = &unk_1E8016A48;
      v62 = v68;
      v59 = v45;
      v60 = v22;
      v30 = v28;
      v61 = v30;
      [(PKPaymentService *)v29 transitStateWithPassUniqueIdentifier:v26 paymentApplication:v59 completion:v58];
      dispatch_group_enter(v30);
      v31 = v12->_paymentService;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_2;
      v55[3] = &unk_1E8016A70;
      v57 = v66;
      v32 = v30;
      v56 = v32;
      [(PKPaymentService *)v31 balancesForPaymentPassWithUniqueIdentifier:v26 completion:v55];
      dispatch_group_enter(v32);
      v33 = v12->_paymentService;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_3;
      v52[3] = &unk_1E8012BB0;
      v54 = v64;
      v53 = v32;
      [(PKPaymentService *)v33 plansForPaymentPassWithUniqueIdentifier:v26 completion:v52];
    }

    dispatch_group_enter(v28);
    v34 = v12->_paymentService;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_4;
    v48[3] = &unk_1E801A478;
    v50 = v70;
    objc_copyWeak(&v51, &location);
    v35 = v28;
    v49 = v35;
    [(PKPaymentService *)v34 tilesForPassWithUniqueIdentifier:v26 context:1 completion:v48];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_5;
    block[3] = &unk_1E80212D8;
    objc_copyWeak(&v47, &location);
    block[4] = v68;
    block[5] = v66;
    block[6] = v64;
    block[7] = v70;
    dispatch_group_notify(v35, MEMORY[0x1E69E96A0], block);
    v36 = [[PKPassPaymentPayStateView alloc] initWithStyle:[(PKPassFooterContentView *)v12 style]];
    payStateView = v12->_payStateView;
    v12->_payStateView = v36;

    v38 = [v22 isAccessPass];
    [(PKPassPaymentPayStateView *)v12->_payStateView setAccessPass:v38];
    v39 = v12->_payStateView;
    if (v38)
    {
      v40 = [v22 accessType] == 3;
    }

    else
    {
      v40 = 0;
    }

    [(PKPassPaymentPayStateView *)v39 setHomeKeyPass:v40];
    -[PKPassPaymentPayStateView setIdentityPass:](v12->_payStateView, "setIdentityPass:", [v22 isIdentityPass]);
    [(PKPassPaymentPayStateView *)v12->_payStateView setDelegate:v12];
    [(PKPassPaymentPayStateView *)v12->_payStateView setAlpha:1.0];
    v41 = [(PKPassPaymentPayStateView *)v12->_payStateView glyph];
    [v41 setState:6 animated:0 completionHandler:0];

    [(PKPassPaymentConfirmationView *)v12 addSubview:v12->_payStateView];
    v42 = [(PKPassFooterContentView *)v12 bottomRule];
    [v42 setAlpha:0.0];

    [(PKPassFooterContentView *)v12 setInfoButtonAlpha:0.0];
    objc_destroyWeak(&v47);

    objc_destroyWeak(&v51);
    objc_destroyWeak(&location);
    _Block_object_dispose(v64, 8);

    _Block_object_dispose(v66, 8);
    _Block_object_dispose(v68, 8);

    _Block_object_dispose(v70, 8);
    v8 = v44;
  }

  return v12;
}

void __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:a1[5]];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _groupTileForTiles:v3];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  dispatch_group_leave(v8);
}

void __72__PKPassPaymentConfirmationView_initWithPass_passStateProvider_context___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[77] setTransitProperties:*(*(*(a1 + 32) + 8) + 40)];
    [v3[77] setDynamicBalances:*(*(*(a1 + 40) + 8) + 40)];
    [v3[77] updateWithDynamicCommutePlans:*(*(*(a1 + 48) + 8) + 40)];
    objc_storeStrong(v3 + 76, *(*(*(a1 + 56) + 8) + 40));
    [v3 _updateContentPrimaryView];
    [v3 _updateContentSecondaryView];
    WeakRetained = v3;
  }
}

- (id)_groupTileForTiles:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 metadata];
    if ([v5 isGroupType])
    {
      [v3 pk_firstObjectPassingTest:&__block_literal_global_212];
    }

    else
    {
      [MEMORY[0x1E69B8A90] _createDefaultDashboardGroupTileWithChildTiles:v3];
    }
    v6 = ;
  }

  else
  {
    v6 = [v3 pk_firstObjectPassingTest:&__block_literal_global_212];
  }

  return v6;
}

BOOL __52__PKPassPaymentConfirmationView__groupTileForTiles___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 prearmTiles];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_reloadTiles
{
  objc_initWeak(&location, self);
  paymentService = self->_paymentService;
  v4 = [(PKPassFooterContentView *)self paymentPass];
  v5 = [v4 uniqueID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PKPassPaymentConfirmationView__reloadTiles__block_invoke;
  v6[3] = &unk_1E8011850;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [(PKPaymentService *)paymentService tilesForPassWithUniqueIdentifier:v5 context:1 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __45__PKPassPaymentConfirmationView__reloadTiles__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _groupTileForTiles:v3];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__PKPassPaymentConfirmationView__reloadTiles__block_invoke_2;
    v8[3] = &unk_1E8010A10;
    v8[4] = *(a1 + 32);
    v9 = v6;
    v7 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

uint64_t __45__PKPassPaymentConfirmationView__reloadTiles__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 608), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateContentPrimaryView];
}

- (id)_findOrCreatePrimaryAdjustableSingleCellView
{
  singleValueCellPrimary = self->_singleValueCellPrimary;
  if (!singleValueCellPrimary)
  {
    v4 = [PKAdjustableSingleCellView alloc];
    v5 = [(PKAdjustableSingleCellView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_singleValueCellPrimary;
    self->_singleValueCellPrimary = v5;

    [(PKPaymentDashboardCellActionHandleable *)self->_singleValueCellPrimary setAlpha:0.0];
    [(PKPassPaymentConfirmationView *)self addSubview:self->_singleValueCellPrimary];
    singleValueCellPrimary = self->_singleValueCellPrimary;
  }

  return singleValueCellPrimary;
}

- (id)_findOrCreatePrimaryFusedDoubleCellView
{
  dualValueCellPrimary = self->_dualValueCellPrimary;
  if (!dualValueCellPrimary)
  {
    v4 = [PKFusedDoubleCellView alloc];
    v5 = [(PKFusedDoubleCellView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_dualValueCellPrimary;
    self->_dualValueCellPrimary = v5;

    [(PKPaymentDashboardCellActionHandleable *)self->_dualValueCellPrimary setAlpha:0.0];
    [(PKPassPaymentConfirmationView *)self addSubview:self->_dualValueCellPrimary];
    dualValueCellPrimary = self->_dualValueCellPrimary;
  }

  return dualValueCellPrimary;
}

- (id)_findOrCreateSecondaryView
{
  singleValueCellSecondary = self->_singleValueCellSecondary;
  if (!singleValueCellSecondary)
  {
    v4 = [PKAdjustableSingleCellView alloc];
    v5 = [(PKAdjustableSingleCellView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_singleValueCellSecondary;
    self->_singleValueCellSecondary = v5;

    [(PKPaymentDashboardCellActionHandleable *)self->_singleValueCellSecondary setAlpha:0.0];
    [(PKPassPaymentConfirmationView *)self addSubview:self->_singleValueCellSecondary];
    singleValueCellSecondary = self->_singleValueCellSecondary;
  }

  return singleValueCellSecondary;
}

- (BOOL)_shouldDisplayPrimaryView
{
  if (([(PKPassFooterContentView *)self style]- 1) >= 3)
  {
    v3 = [(PKPassFooterContentView *)self paymentPass];
    if ([v3 isStoredValuePass])
    {
      v4 = [(PKTransitBalanceModel *)self->_transitBalanceModel hasBalanceContent];

      if (v4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

- (BOOL)_shouldDisplaySecondaryView
{
  v3 = [(PKPassPaymentConfirmationView *)self _canDisplaySecondaryView];
  if (v3)
  {
    v4 = [(PKPassFooterContentView *)self paymentPass];
    if ([v4 isTransitPass])
    {
      v5 = [(PKTransitBalanceModel *)self->_transitBalanceModel hasCommutePlanContent];

      if (v5)
      {
        LOBYTE(v3) = 1;
        return v3;
      }
    }

    else
    {
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_updateContentPrimaryView
{
  if ([(PKTransitBalanceModel *)self->_transitBalanceModel hasBalanceContent])
  {
    v39 = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableBalances];
    v3 = [(UIView *)v39 count];
    v4 = v3;
    if (v3 == 1)
    {
      v5 = [(PKPassPaymentConfirmationView *)self _findOrCreatePrimaryAdjustableSingleCellView];
    }

    else
    {
      if (!v3)
      {
LABEL_11:
        v10 = [(UIView *)self->_displayedCellPrimary layer];
        v11 = [v10 presentationLayer];
        v12 = v11;
        if (!v11)
        {
          v11 = v10;
        }

        [v11 opacity];
        v15 = v14;

        v16 = v4 - 1;
        if (v4 == 1)
        {
          v17 = [(UIView *)v39 objectAtIndexedSubscript:0];
          v18 = self->_displayedCellPrimary;
          [(UIView *)v18 setAlpha:1.0];
          [(UIView *)v18 beginUpdates];
          [(UIView *)v18 setEnableDisclosure:0];
          v19 = [(PKPassFooterContentView *)self paymentPass];
          [(UIView *)v18 setPass:v19];

          v20 = [(UIView *)v17 localizedTitle];
          if (v20)
          {
            [(UIView *)v18 setTitle:v20];
          }

          else
          {
            v23 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
            [(UIView *)v18 setTitle:v23];
          }

          v24 = v15 > 0.0;

          v25 = [(UIView *)v17 formattedValue];
          [(UIView *)v18 setDetail:v25];

          [(UIView *)v18 setSubDetail:0];
          v26 = v18;
        }

        else
        {
          if (v4 == 2)
          {
            v17 = self->_displayedCellPrimary;
            [(UIView *)v17 setAlpha:1.0];
            [(UIView *)v17 beginUpdates];
            v18 = [(UIView *)v39 objectAtIndexedSubscript:0];
            v21 = [(UIView *)v18 localizedTitle];
            if (v21)
            {
              [(UIView *)v17 setLeftTitle:v21];
            }

            else
            {
              v27 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
              [(UIView *)v17 setLeftTitle:v27];
            }

            v28 = [(UIView *)v18 formattedValue];
            [(UIView *)v17 setLeftDetail:v28];

            [(UIView *)v17 setLeftSubDetail:0];
            v29 = [(UIView *)v39 objectAtIndexedSubscript:1];
            v30 = [v29 localizedTitle];
            if (v30)
            {
              [(UIView *)v17 setRightTitle:v30];
            }

            else
            {
              v31 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
              [(UIView *)v17 setRightTitle:v31];
            }

            v32 = [v29 formattedValue];
            [(UIView *)v17 setRightDetail:v32];

            [(UIView *)v17 setRightSubDetail:0];
            v33 = [(PKPassFooterContentView *)self paymentPass];
            [(UIView *)v17 setPass:v33];

            [(UIView *)v17 setEnableDisclosure:0];
            [(UIView *)v17 endUpdates:v15 > 0.0];

            goto LABEL_33;
          }

          if (v4 < 3)
          {
LABEL_34:
            v13 = v39;
            goto LABEL_35;
          }

          v17 = self->_displayedCellPrimary;
          [(UIView *)v17 setAlpha:1.0];
          [(UIView *)v17 beginUpdates];
          v18 = [(UIView *)v39 objectAtIndexedSubscript:0];
          v22 = [(UIView *)v18 localizedTitle];
          if (v22)
          {
            [(UIView *)v17 setLeftTitle:v22];
          }

          else
          {
            v34 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
            [(UIView *)v17 setLeftTitle:v34];
          }

          v24 = v15 > 0.0;

          v35 = [(UIView *)v18 formattedValue];
          [(UIView *)v17 setLeftDetail:v35];

          [(UIView *)v17 setLeftSubDetail:0];
          v36 = PKLocalizedPaymentString(&cfstr_PropertySummar_0.isa);
          [(UIView *)v17 setRightTitle:v36];

          v37 = PKLocalizedPaymentString(&cfstr_PropertySummar_1.isa, &cfstr_Lu.isa, v16);
          [(UIView *)v17 setRightDetail:v37];

          [(UIView *)v17 setRightSubDetail:0];
          v38 = [(PKPassFooterContentView *)self paymentPass];
          [(UIView *)v17 setPass:v38];

          [(UIView *)v17 setEnableDisclosure:0];
          v26 = v17;
        }

        [(UIView *)v26 endUpdates:v24];
LABEL_33:

        goto LABEL_34;
      }

      v5 = [(PKPassPaymentConfirmationView *)self _findOrCreatePrimaryFusedDoubleCellView];
    }

    displayedCellPrimary = self->_displayedCellPrimary;
    self->_displayedCellPrimary = v5;

    goto LABEL_11;
  }

  if (!self->_groupTile)
  {
    v13 = self->_displayedCellPrimary;
    self->_displayedCellPrimary = 0;
LABEL_35:

    return;
  }

  tileGroupView = self->_tileGroupView;
  if (!tileGroupView)
  {
    v7 = objc_alloc_init(PKPassTileGroupView);
    v8 = self->_tileGroupView;
    self->_tileGroupView = v7;

    [(PKPassPaymentConfirmationView *)self addSubview:self->_tileGroupView];
    tileGroupView = self->_tileGroupView;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __58__PKPassPaymentConfirmationView__updateContentPrimaryView__block_invoke;
  v40[3] = &unk_1E8010970;
  v40[4] = self;
  [(PKPassTileGroupView *)tileGroupView performBatchUpdates:v40 animated:1];
  objc_storeStrong(&self->_displayedCellPrimary, self->_tileGroupView);
}

void __58__PKPassPaymentConfirmationView__updateContentPrimaryView__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _canDisplaySecondaryView])
  {
    if ([*(a1 + 32) _shouldDisplaySecondaryView])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = *(a1 + 32);
  v4 = v3[65];
  v5 = [v3 paymentPass];
  v6 = *(a1 + 32);
  v7 = *(v6 + 608);
  v8 = [*(v6 + 480) passState];
  v9[0] = 1;
  v10 = v2;
  v11 = 0;
  [v4 setPass:v5 content:v7 passState:v8 context:v9 animated:0];
}

- (void)_updateContentSecondaryView
{
  if ([(PKTransitBalanceModel *)self->_transitBalanceModel hasCommutePlanContent])
  {
    v3 = [(PKPaymentDashboardCellActionHandleable *)self->_singleValueCellSecondary layer];
    v4 = [v3 presentationLayer];
    v5 = v4;
    if (!v4)
    {
      v4 = v3;
    }

    [v4 opacity];
    v7 = v6;

    v8 = [(PKPassPaymentConfirmationView *)self _findOrCreateSecondaryView];
    singleValueCellSecondary = self->_singleValueCellSecondary;
    self->_singleValueCellSecondary = v8;

    v10 = self->_singleValueCellSecondary;
    [(PKPaymentDashboardCellActionHandleable *)v10 setAlpha:1.0];
    [(PKPaymentDashboardCellActionHandleable *)v10 beginUpdates];
    v11 = [(PKPassFooterContentView *)self paymentPass];
    [(PKPaymentDashboardCellActionHandleable *)v10 setPass:v11];
    [(PKPaymentDashboardCellActionHandleable *)v10 setEnableDisclosure:0];
    transitBalanceModel = self->_transitBalanceModel;
    v22 = 0;
    v20 = 0;
    v21 = 0;
    v19 = &stru_1F3BD7330;
    [(PKTransitBalanceModel *)transitBalanceModel getDisplayableCommutePlanDetailsForTitle:&v21 value:&v20 subtitle:&v19 isExpired:&v22];
    v13 = v21;
    v14 = v20;
    v15 = v19;
    PKCommutePlanFieldEitherLabelOrValueIsEmpty();
    PKCommutePlanFormatTitleFromLabelAndValue();
    v16 = v13;

    v17 = v14;
    [(PKPaymentDashboardCellActionHandleable *)v10 setTitle:v16];
    [(PKPaymentDashboardCellActionHandleable *)v10 setDetail:v17];
    [(PKPaymentDashboardCellActionHandleable *)v10 setSubDetail:v15];
    if (v22)
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v18 = ;
    [(PKPaymentDashboardCellActionHandleable *)v10 setSubDetailColor:v18];

    [(PKPaymentDashboardCellActionHandleable *)v10 endUpdates:v7 > 0.0];
    [(PKPassPaymentConfirmationView *)self layoutIfNeeded];
    [(PKPassPaymentConfirmationView *)self setNeedsLayout];
  }
}

- (void)dealloc
{
  [(PKPassPaymentConfirmationView *)self _disableActivityTimer];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  [(PKPassPaymentConfirmationView *)self _registerForExpressTransactionNotifications:0];
  [(PKPassDynamicStateProviding *)self->_passStateProvider removePassStateObserver:self];
  v3.receiver = self;
  v3.super_class = PKPassPaymentConfirmationView;
  [(PKPassFooterContentView *)&v3 dealloc];
}

- (void)layoutIfNeededAnimated:(BOOL)a3
{
  self->_animated = a3;
  [(PKPassPaymentConfirmationView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PKPassPaymentConfirmationView;
  [(PKPassFooterContentView *)&v19 layoutSubviews];
  [(PKPassPaymentConfirmationView *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  memset(&slice, 0, sizeof(slice));
  remainder = v20;
  CGRectDivide(v20, &slice, &remainder, 10.0, CGRectMinYEdge);
  if ([(PKPassPaymentConfirmationView *)self _shouldDisplayPrimaryView]&& !self->_receivedTransaction)
  {
    [(UIView *)self->_displayedCellPrimary sizeThatFits:width, 1.79769313e308];
    amount = v7;
    displayedCellPrimary = self->_displayedCellPrimary;
    PKSizeAlignedInRect();
    [(UIView *)displayedCellPrimary pkui_setFrame:self->_animated animated:?];
    CGRectDivide(remainder, &slice, &remainder, amount, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
  }

  if ([(PKPassPaymentConfirmationView *)self _shouldDisplaySecondaryView]&& !self->_receivedTransaction)
  {
    [(PKPaymentDashboardCellActionHandleable *)self->_singleValueCellSecondary sizeThatFits:width, 1.79769313e308];
    amounta = v9;
    singleValueCellSecondary = self->_singleValueCellSecondary;
    PKSizeAlignedInRect();
    [(PKPaymentDashboardCellActionHandleable *)singleValueCellSecondary pkui_setFrame:self->_animated animated:?];
    CGRectDivide(remainder, &slice, &remainder, amounta, CGRectMinYEdge);
  }

  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = height;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectDivide(v21, &slice, &remainder, 10.0, CGRectMinYEdge);
  if ([(PKPassPaymentConfirmationView *)self _shouldDisplayPrimaryView])
  {
    v11 = self->_displayedCellPrimary;
    if (v11)
    {
      [(UIView *)v11 frame];
      CGRectDivide(remainder, &slice, &remainder, v12, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
    }
  }

  if ([(PKPassPaymentConfirmationView *)self _shouldDisplaySecondaryView])
  {
    v13 = self->_singleValueCellSecondary;
    if (v13)
    {
      [(PKPaymentDashboardCellActionHandleable *)v13 frame];
      CGRectDivide(remainder, &slice, &remainder, v14, CGRectMinYEdge);
    }
  }

  [(UIView *)self->_payStateView pkui_setFrame:self->_animated animated:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
}

- (void)willBecomeVisibleAnimated:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPassPaymentConfirmationView;
  [(PKPassFooterContentView *)&v6 willBecomeVisibleAnimated:a3];
  v4 = [MEMORY[0x1E695DF00] date];
  visibleDate = self->_visibleDate;
  self->_visibleDate = v4;
}

- (void)didBecomeVisibleAnimated:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKPassPaymentConfirmationView;
  [(PKPassFooterContentView *)&v8 didBecomeVisibleAnimated:a3];
  self->_needsResolution = 1;
  if (![(PKPassPaymentConfirmationView *)self _isExpressOutstanding])
  {
    goto LABEL_9;
  }

  v4 = [(PKPaymentService *)self->_paymentService outstandingExpressTransactionState];
  expressState = self->_expressState;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (([(PKExpressTransactionState *)expressState mergeState:v4]& 1) == 0)
  {
    expressState = self->_expressState;
LABEL_5:
    [(PKExpressTransactionState *)expressState resolve];
  }

  if (![(PKPassPaymentConfirmationView *)self _isExpressOutstanding])
  {
    [(PKPassPaymentConfirmationView *)self _registerForExpressTransactionNotifications:0];
  }

LABEL_9:
  v6 = self->_expressState;
  if (v6 && ![(PKExpressTransactionState *)v6 status])
  {
    [(PKPassPaymentPayStateView *)self->_payStateView setState:7 animated:1 withCompletionHandler:0];
  }

  else
  {
    [(PKPassPaymentConfirmationView *)self _presentCheckmarkIfNecessary];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PKPassPaymentConfirmationView_didBecomeVisibleAnimated___block_invoke;
  v7[3] = &unk_1E8010970;
  v7[4] = self;
  [MEMORY[0x1E69DD250] pkui_animateUsingOptions:4 animations:v7 completion:0];
}

- (void)willBecomeHiddenAnimated:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassPaymentConfirmationView;
  [(PKPassFooterContentView *)&v4 willBecomeHiddenAnimated:a3];
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
}

- (void)didBecomeHiddenAnimated:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PKPassPaymentConfirmationView;
  [(PKPassFooterContentView *)&v3 didBecomeHiddenAnimated:a3];
}

- (void)_presentCheckmarkIfNecessary
{
  if (!self->_needsResolution)
  {
    return;
  }

  v3 = [(PKExpressTransactionState *)self->_expressState status];
  v4 = v3 == 1;
  if (!self->_showingResolution)
  {
    v5 = 0;
    v6 = (self->_resolutionCounter + 1);
    self->_resolutionCounter = v6;
    self->_showingResolution = 1;
    self->_showingSuccessResolution = v4;
    self->_animatingResolution = 1;
    if (v3 == 1)
    {
      v7 = 8;
    }

    else
    {
      v7 = 9;
    }

    if (v3 > 1)
    {
      if (v3 != 2)
      {
        if (v3 != 3)
        {
LABEL_28:
          objc_initWeak(&location, self);
          payStateView = self->_payStateView;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __61__PKPassPaymentConfirmationView__presentCheckmarkIfNecessary__block_invoke;
          v13[3] = &unk_1E80204F8;
          objc_copyWeak(v14, &location);
          v14[1] = v6;
          [(PKPassPaymentPayStateView *)payStateView setState:v7 animated:1 withOverrideText:v5 preserveGlyphState:0 completionHandler:v13];
          objc_destroyWeak(v14);
          objc_destroyWeak(&location);

          return;
        }

        v8 = @"PAYMENT_TRY_WITH_DIFFERENT_CARD";
        goto LABEL_20;
      }
    }

    else if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    v8 = @"PAYMENT_TRY_AGAIN";
LABEL_20:
    v9 = PKLocalizedPaymentString(&v8->isa);
LABEL_27:
    v5 = v9;
    goto LABEL_28;
  }

  if (v3 == 1 && !self->_showingSuccessResolution)
  {
    v6 = (self->_resolutionCounter + 1);
    self->_resolutionCounter = v6;
    self->_showingResolution = 1;
    self->_showingSuccessResolution = v4;
    self->_animatingResolution = 1;
    v7 = 8;
LABEL_22:
    v10 = [(PKExpressTransactionState *)self->_expressState standaloneTransactionType];
    if (v10 == 2)
    {
      v11 = @"TRANSACTION_UNLOCKED";
    }

    else
    {
      if (v10 != 1)
      {
        v5 = 0;
        goto LABEL_28;
      }

      v11 = @"TRANSACTION_LOCKED";
    }

    v9 = PKLocalizedCredentialString(&v11->isa);
    goto LABEL_27;
  }

  if (![(PKPassPaymentConfirmationView *)self _isExpressOutstanding])
  {

    [(PKPassPaymentConfirmationView *)self _beginResolution];
  }
}

void __61__PKPassPaymentConfirmationView__presentCheckmarkIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 72) == *(a1 + 40))
    {
      *(WeakRetained + 557) = 0;
      v5 = WeakRetained;
      v4 = [WeakRetained _isExpressOutstanding];
      v3 = v5;
      if ((v4 & 1) == 0)
      {
        [v5 _beginResolution];
        v3 = v5;
      }
    }
  }
}

- (void)_disableActivityTimer
{
  activityResolutionTimer = self->_activityResolutionTimer;
  if (activityResolutionTimer)
  {
    dispatch_source_cancel(activityResolutionTimer);
    v4 = self->_activityResolutionTimer;
    self->_activityResolutionTimer = 0;
  }
}

- (void)_beginResolution
{
  if (!self->_animatingResolution && self->_needsResolution && !self->_showingAlert)
  {
    if (!self->_showingSuccessResolution && -[PKExpressTransactionState status](self->_expressState, "status") == 3 && (-[PKPassFooterContentView pass](self, "pass"), v3 = objc_claimAutoreleasedReturnValue(), [v3 paymentPass], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isTransitPass"), v4, v3, v5))
    {
      v6 = [(UIView *)self pkui_viewControllerFromResponderChain];
      if (v6)
      {
        self->_showingAlert = 1;
        [(PKPassPaymentConfirmationView *)self _disableActivityTimer];
        v7 = PKLocalizedPaymentString(&cfstr_PaymentAlertIn.isa);
        v8 = PKLocalizedPaymentString(&cfstr_PaymentAlertIn_0.isa);
        objc_initWeak(&location, self);
        v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
        v10 = MEMORY[0x1E69DC648];
        v11 = PKLocalizedPaymentString(&cfstr_PaymentAlertIn_1.isa);
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __49__PKPassPaymentConfirmationView__beginResolution__block_invoke;
        v16 = &unk_1E8012CC0;
        objc_copyWeak(&v17, &location);
        v12 = [v10 actionWithTitle:v11 style:0 handler:&v13];
        [v9 addAction:{v12, v13, v14, v15, v16}];

        [v6 presentViewController:v9 animated:1 completion:0];
        objc_destroyWeak(&v17);

        objc_destroyWeak(&location);
      }

      else
      {
        [(PKPassPaymentConfirmationView *)self _resolveActivityIfNecessaryWithDelay];
      }
    }

    else
    {

      [(PKPassPaymentConfirmationView *)self _resolveActivityIfNecessaryWithDelay];
    }
  }
}

void __49__PKPassPaymentConfirmationView__beginResolution__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resolveActivityIfNecessary];
    WeakRetained = v2;
  }
}

- (void)_resolveActivityIfNecessaryWithDelay
{
  if (!self->_animatingResolution && self->_needsResolution && !self->_showingAlert)
  {
    [(PKPassPaymentConfirmationView *)self _disableActivityTimer];
    objc_initWeak(&location, self);
    if (self->_receivedTransaction)
    {
      [MEMORY[0x1E69B92B0] defaultDuration];
      v4 = v3 + 0.35;
    }

    else if (self->_receivedExit)
    {
      v4 = 1.0;
    }

    else
    {
      v4 = 0.5;
    }

    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    activityResolutionTimer = self->_activityResolutionTimer;
    self->_activityResolutionTimer = v5;

    v7 = self->_activityResolutionTimer;
    v8 = dispatch_time(0, (v4 * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v9 = self->_activityResolutionTimer;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__PKPassPaymentConfirmationView__resolveActivityIfNecessaryWithDelay__block_invoke;
    v10[3] = &unk_1E8010998;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_activityResolutionTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __69__PKPassPaymentConfirmationView__resolveActivityIfNecessaryWithDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[71];
    v5 = v2;
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = v5[71];
      v5[71] = 0;

      v2 = v5;
    }

    [v2 _resolveActivityIfNecessary];
    v2 = v5;
  }
}

- (void)_resolveActivityIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_needsResolution)
  {
    v3 = [(PKPassFooterContentView *)self delegate];
    v4 = [v3 isPassFooterContentViewInGroup:self];

    self->_needsResolution = 0;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = *MEMORY[0x1E69BC068];
    v9 = *MEMORY[0x1E69BC070];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v5 postNotificationName:v6 object:self userInfo:v8];
  }
}

- (void)passStateProvider:(id)a3 didUpdatePassState:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPassPaymentConfirmationView_passStateProvider_didUpdatePassState___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)payStateView:(id)a3 revealingCheckmark:(BOOL)a4
{
  v5 = a3;
  kdebug_trace();
  v6 = [(PKPassFooterContentView *)self delegate];
  [v6 passFooterContentViewDidTransact:self success:1];

  LODWORD(self) = [v5 accessPass];
  if (self)
  {
    v7 = 1163;
  }

  else
  {
    v7 = 1394;
  }

  AudioServicesPlaySystemSound(v7);
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPassPaymentConfirmationView_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__PKPassPaymentConfirmationView_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) transactionDate];
  v2 = [*(a1 + 40) _isExpressOutstanding];
  v3 = *(a1 + 40);
  if ((v2 & 1) != 0 || *(v3 + 553) == 1)
  {
    if (*(v3 + 584))
    {
      v4 = v8 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      [v8 timeIntervalSinceDate:?];
      if (v5 <= -10.0)
      {
        goto LABEL_11;
      }

      v3 = *(a1 + 40);
    }

    v6 = [v3 paymentPass];
    v7 = [v6 hasDeviceTransactionSourceIdentifier:*(a1 + 48)];

    if (v7)
    {
      *(*(a1 + 40) + 552) = 1;
      [*(a1 + 40) _updateContentPrimaryView];
      [*(a1 + 40) _updateContentSecondaryView];
    }
  }

LABEL_11:
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPassPaymentConfirmationView_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPassPaymentConfirmationView_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paymentPass];
  v3 = [v2 uniqueID];
  v4 = PKEqualObjects();

  if (v4)
  {
    [*(*(a1 + 32) + 616) setTransitProperties:*(a1 + 48)];
    [*(a1 + 32) _updateContentPrimaryView];
    v5 = *(a1 + 32);

    [v5 _updateContentSecondaryView];
  }
}

- (void)passWithUniqueIdentifier:(id)a3 didUpdateTiles:(id)a4 forContext:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 1)
  {
    v10 = [(PKPassFooterContentView *)self paymentPass];
    v11 = [v10 uniqueID];
    v12 = v8;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if (!v12 || !v11)
      {

        goto LABEL_10;
      }

      v14 = [v11 isEqualToString:v12];

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v15 = [(PKPassPaymentConfirmationView *)self _groupTileForTiles:v9];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__PKPassPaymentConfirmationView_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke;
    v17[3] = &unk_1E8010A10;
    v17[4] = self;
    v18 = v15;
    v16 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

LABEL_10:
}

uint64_t __84__PKPassPaymentConfirmationView_passWithUniqueIdentifier_didUpdateTiles_forContext___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 608), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _updateContentPrimaryView];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKPassPaymentConfirmationView_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__PKPassPaymentConfirmationView_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paymentPass];
  v3 = [v2 uniqueID];
  v4 = PKEqualObjects();

  if (v4)
  {
    [*(*(a1 + 32) + 616) setDynamicBalances:*(a1 + 48)];
    [*(a1 + 32) _updateContentPrimaryView];
    v5 = *(a1 + 32);

    [v5 _updateContentSecondaryView];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPassPaymentConfirmationView_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __86__PKPassPaymentConfirmationView_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paymentPass];
  v3 = [v2 uniqueID];
  v4 = PKEqualObjects();

  if (v4)
  {
    [*(*(a1 + 32) + 616) updateWithDynamicCommutePlans:*(a1 + 48)];
    [*(a1 + 32) _updateContentPrimaryView];
    v5 = *(a1 + 32);

    [v5 _updateContentSecondaryView];
  }
}

- (id)_expressNotificationNames
{
  v7[6] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69BB878];
  v7[0] = *MEMORY[0x1E69BB870];
  v7[1] = v2;
  v3 = *MEMORY[0x1E69BB860];
  v7[2] = *MEMORY[0x1E69BB858];
  v7[3] = v3;
  v4 = *MEMORY[0x1E69BB850];
  v7[4] = *MEMORY[0x1E69BB868];
  v7[5] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];

  return v5;
}

- (BOOL)_isRegisteredForAllExpressTransactionNotifications
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PKPassPaymentConfirmationView *)self _expressNotificationNames];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_registeredExpressObservers objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];

        if (!v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)_registerObserverForNotificationName:(id)a3 center:(id)a4 handler:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_registeredExpressObservers objectForKeyedSubscript:v11];
  if (!v10)
  {
    v10 = [v8 addObserverForName:v11 object:0 queue:0 usingBlock:v9];
    if (v10)
    {
      [(NSMutableDictionary *)self->_registeredExpressObservers setObject:v10 forKeyedSubscript:v11];
    }
  }
}

- (void)_registerForExpressTransactionNotifications:(BOOL)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (![(PKPassPaymentConfirmationView *)self _isRegisteredForAllExpressTransactionNotifications])
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__PKPassPaymentConfirmationView__registerForExpressTransactionNotifications___block_invoke;
      aBlock[3] = &unk_1E801CB50;
      objc_copyWeak(&v26, &location);
      v4 = _Block_copy(aBlock);
      v5 = [MEMORY[0x1E696ABB0] defaultCenter];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = [(PKPassPaymentConfirmationView *)self _expressNotificationNames];
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v7)
      {
        v8 = *v22;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v8)
            {
              objc_enumerationMutation(v6);
            }

            [(PKPassPaymentConfirmationView *)self _registerObserverForNotificationName:*(*(&v21 + 1) + 8 * i) center:v5 handler:v4];
          }

          v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v7);
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }
  }

  else if ([(PKPassPaymentConfirmationView *)self _isRegisteredForAnyExpressTransactionNotifications])
  {
    v10 = [MEMORY[0x1E696ABB0] defaultCenter];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(PKPassPaymentConfirmationView *)self _expressNotificationNames];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v28 count:16];
    if (v12)
    {
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v17 + 1) + 8 * j);
          v16 = [(NSMutableDictionary *)self->_registeredExpressObservers objectForKeyedSubscript:v15];
          if (v16)
          {
            [v10 removeObserver:v16];
            [(NSMutableDictionary *)self->_registeredExpressObservers removeObjectForKey:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v17 objects:v28 count:16];
      }

      while (v12);
    }
  }
}

void __77__PKPassPaymentConfirmationView__registerForExpressTransactionNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPassPaymentConfirmationView__registerForExpressTransactionNotifications___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __77__PKPassPaymentConfirmationView__registerForExpressTransactionNotifications___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleExpressNotification:*(a1 + 32)];
}

- (void)_handleExpressNotification:(id)a3
{
  v10 = a3;
  v4 = [(PKExpressTransactionState *)self->_expressState isProcessing];
  v5 = v10;
  if (v4)
  {
    v6 = [v10 name];
    if (PKEqualObjects())
    {
      [(PKExpressTransactionState *)self->_expressState receiveEvents:1];
      payStateView = self->_payStateView;
      v8 = @"Express started";
    }

    else
    {
      if (!PKEqualObjects())
      {
        if (PKEqualObjects())
        {
          [(PKExpressTransactionState *)self->_expressState receiveEvents:256];
          [(PKPassPaymentConfirmationView *)self _presentCheckmarkIfNecessary];
          payStateView = self->_payStateView;
          v8 = @"Express ended: failure";
        }

        else
        {
          if (!PKEqualObjects())
          {
            if (PKEqualObjects())
            {
              [(PKExpressTransactionState *)self->_expressState receiveEvents:4];
              [(PKPassPaymentConfirmationView *)self _presentCheckmarkIfNecessary];
              payStateView = self->_payStateView;
              v8 = @"Express ended";
            }

            else
            {
              if (!PKEqualObjects())
              {
                goto LABEL_8;
              }

              [(PKPassPaymentConfirmationView *)self _registerForExpressTransactionNotifications:0];
              [(PKExpressTransactionState *)self->_expressState resolve];
              self->_receivedExit = 1;
              [(PKPassPaymentConfirmationView *)self _presentCheckmarkIfNecessary];
              payStateView = self->_payStateView;
              v8 = @"Express exited";
            }

            goto LABEL_6;
          }

          [(PKExpressTransactionState *)self->_expressState receiveEvents:512];
          [(PKPassPaymentConfirmationView *)self _presentCheckmarkIfNecessary];
          payStateView = self->_payStateView;
          v8 = @"Express ended: incompatible";
        }

        v9 = 1;
        goto LABEL_7;
      }

      [(PKExpressTransactionState *)self->_expressState receiveEvents:2];
      [(PKPassPaymentConfirmationView *)self _presentCheckmarkIfNecessary];
      payStateView = self->_payStateView;
      v8 = @"Express timeout";
    }

LABEL_6:
    v9 = 0;
LABEL_7:
    [(PKPassPaymentPayStateView *)payStateView updateDebugLabel:v8 isErrorState:v9];
LABEL_8:

    v5 = v10;
  }
}

- (BOOL)_isExpressOutstanding
{
  expressState = self->_expressState;
  if (expressState)
  {
    LOBYTE(expressState) = [(PKExpressTransactionState *)expressState isProcessing];
  }

  return expressState;
}

@end