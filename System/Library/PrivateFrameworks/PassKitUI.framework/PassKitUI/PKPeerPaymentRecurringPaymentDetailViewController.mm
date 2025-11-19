@interface PKPeerPaymentRecurringPaymentDetailViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (BOOL)_shouldShowDashboardMessages;
- (PKPeerPaymentRecurringPaymentDetailViewController)initWithRecurringPayment:(id)a3 recipient:(id)a4 mode:(unint64_t)a5 context:(int64_t)a6 peerPaymentController:(id)a7 remoteMessagesComposer:(id)a8;
- (PKPeerPaymentRecurringPaymentDetailViewController)initWithRecurringPayment:(id)a3 recipientAddress:(id)a4 mode:(unint64_t)a5 context:(int64_t)a6 peerPaymentController:(id)a7 remoteMessagesComposer:(id)a8;
- (PKPeerPaymentRecurringPaymentDetailViewControllerDelegate)delegate;
- (id)_cancelEditingItem;
- (id)_composeRecipientForAddress:(id)a3;
- (id)_dashboardMessages;
- (id)_dismissItem;
- (id)_doneItem;
- (id)_editItem;
- (id)_messageForErrorCode:(unint64_t)a3 paymentDate:(id)a4;
- (id)_pendingRecurringPayment;
- (id)_recipientName;
- (id)_titleForErrorCode:(unint64_t)a3;
- (void)_authorizeRecurringPaymentWithCompletion:(id)a3;
- (void)_cancelEditsAction;
- (void)_cancelRecurringPaymentWithCompletion:(id)a3;
- (void)_configureAvatarView;
- (void)_didCompleteSetupFlow;
- (void)_dismissAction;
- (void)_keyboardWillChange:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_pauseRecurringPaymentWithCompletion:(id)a3;
- (void)_presentPeerPaymentAddDebitFlow;
- (void)_processEditsIfNeededWithCompletion:(id)a3;
- (void)_reloadWithPayments:(id)a3;
- (void)_rightBarButtonAction;
- (void)_setUpNavigationBar;
- (void)_showAlertForError:(id)a3 completion:(id)a4;
- (void)_showConfirmationAlertIfNeededForAction:(unint64_t)a3 withItem:(id)a4 completion:(id)a5;
- (void)_updateBarButtonItems;
- (void)_updateCancelSectionFooter;
- (void)_updateDetailSectionFooter;
- (void)_updateLayoutForKeyboardAction:(id)a3;
- (void)_updatePauseSectionFooter;
- (void)_updateRecurringPaymentsWithCompletion:(id)a3;
- (void)_updateSections;
- (void)_validatePaymentEditsWithCompletion:(id)a3;
- (void)dealloc;
- (void)didSelectAmountSection;
- (void)fundingSourceSectionSelected;
- (void)makeCellFirstResponderWithItem:(id)a3;
- (void)memoIconChooserDidChooseMemo:(id)a3;
- (void)memoIconWasTapped;
- (void)paymentMethodSelectionViewController:(id)a3 didSelectPaymentMethod:(id)a4;
- (void)paymentMethodSelectionViewController:(id)a3 didToggleUseAppleCashBalance:(BOOL)a4;
- (void)performAction:(unint64_t)a3 forItem:(id)a4 startHandler:(id)a5 completion:(id)a6;
- (void)recurringPaymentsChanged;
- (void)setShowCancelButton:(BOOL)a3;
- (void)updateFooterForSectionIdentifier:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentRecurringPaymentDetailViewController

- (PKPeerPaymentRecurringPaymentDetailViewController)initWithRecurringPayment:(id)a3 recipientAddress:(id)a4 mode:(unint64_t)a5 context:(int64_t)a6 peerPaymentController:(id)a7 remoteMessagesComposer:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a3;
  v17 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _composeRecipientForAddress:a4];
  v18 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self initWithRecurringPayment:v16 recipient:v17 mode:a5 context:a6 peerPaymentController:v15 remoteMessagesComposer:v14];

  return v18;
}

- (PKPeerPaymentRecurringPaymentDetailViewController)initWithRecurringPayment:(id)a3 recipient:(id)a4 mode:(unint64_t)a5 context:(int64_t)a6 peerPaymentController:(id)a7 remoteMessagesComposer:(id)a8
{
  v91[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  obj = a8;
  v18 = a8;
  v90.receiver = self;
  v90.super_class = PKPeerPaymentRecurringPaymentDetailViewController;
  v19 = [(PKDynamicCollectionViewController *)&v90 init];
  v20 = v19;
  if (v19)
  {
    v89 = v18;
    objc_storeStrong(&v19->_recurringPayment, a3);
    objc_storeStrong(&v20->_recipient, a4);
    v21 = [MEMORY[0x1E69B8A58] sharedInstance];
    v87 = v15;
    v22 = [v15 fundingSource];
    v23 = [v22 fpanIdentifier];
    v24 = [v21 passWithFPANIdentifier:v23];
    selectedPass = v20->_selectedPass;
    v20->_selectedPass = v24;

    v20->_mode = a5;
    v20->_context = a6;
    objc_storeStrong(&v20->_peerPaymentController, a7);
    v26 = objc_alloc_init(PKAvatarView);
    avatarView = v20->_avatarView;
    v20->_avatarView = v26;

    if (_UISolariumFeatureFlagEnabled())
    {
      [(PKAvatarView *)v20->_avatarView setDiameter:44.0];
    }

    v28 = [(PKPeerPaymentController *)v20->_peerPaymentController account];
    v29 = [v28 recurringPaymentsFeatureDescriptor];
    v30 = [v29 supportedFundingSourceCountryCodes];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v33 = MEMORY[0x1E695DFD8];
      v34 = [(PKPeerPaymentController *)v20->_peerPaymentController account];
      v35 = [v34 countryCode];
      v32 = [v33 setWithObject:v35];
    }

    v36 = objc_alloc_init(MEMORY[0x1E69B8FE8]);
    paymentRequest = v20->_paymentRequest;
    v20->_paymentRequest = v36;

    v38 = v20->_paymentRequest;
    v39 = [v29 merchantIdentifier];
    [(PKPeerPaymentRequest *)v38 setMerchantIdentifier:v39];

    v40 = v20->_paymentRequest;
    v41 = [v29 supportedNetworks];
    [(PKPeerPaymentRequest *)v40 setSupportedNetworks:v41];

    -[PKPeerPaymentRequest setMerchantCapabilities:](v20->_paymentRequest, "setMerchantCapabilities:", [v29 merchantCapabilities]);
    [(PKPeerPaymentRequest *)v20->_paymentRequest setSupportedCountries:v32];
    [(PKPeerPaymentRequest *)v20->_paymentRequest setPeerPaymentType:2];
    if (v18)
    {
      objc_storeStrong(&v20->_remoteMessagesComposer, obj);
      [(PKPeerPaymentRemoteMessagesComposer *)v20->_remoteMessagesComposer setActionType:2];
    }

    else
    {
      v42 = [[PKPeerPaymentRemoteMessagesComposer alloc] initWithPeerPaymentController:v20->_peerPaymentController presentingViewController:v20 actionType:2 sourceType:0];
      remoteMessagesComposer = v20->_remoteMessagesComposer;
      v20->_remoteMessagesComposer = v42;
    }

    v44 = [MEMORY[0x1E69B9000] sharedInstance];
    peerPaymentService = v20->_peerPaymentService;
    v20->_peerPaymentService = v44;

    [(PKPeerPaymentService *)v20->_peerPaymentService registerObserver:v20];
    [(PKDynamicCollectionViewController *)v20 setUseItemIdentityWhenUpdating:1];
    mode = v20->_mode;
    if (!mode || mode == 2)
    {
      v20->_allowEdits = 0;
    }

    else if (mode == 1)
    {
      v20->_allowEdits = 1;
      v47 = [MEMORY[0x1E69B8A58] sharedInstance];
      v48 = [v28 associatedPassUniqueID];
      v49 = [v47 passWithUniqueID:v48];
      v50 = [v49 paymentPass];

      -[PKPeerPaymentRecurringPayment setUsesAppleCashBalance:](v20->_recurringPayment, "setUsesAppleCashBalance:", ([v50 settings] & 0x800) == 0);
    }

    v51 = [PKPeerPaymentRecurringPaymentDetailAmountSectionController alloc];
    v52 = [(PKPeerPaymentRecurringPayment *)v20->_recurringPayment amount];
    v53 = [(PKPeerPaymentRecurringPayment *)v20->_recurringPayment currency];
    v54 = [(PKPeerPaymentRecurringPaymentDetailAmountSectionController *)v51 initWithAmount:v52 currency:v53 delegate:v20];
    amountSectionController = v20->_amountSectionController;
    v20->_amountSectionController = v54;

    v56 = [PKDashboardMessageSectionController alloc];
    v57 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v20 _dashboardMessages];
    v58 = [(PKDashboardMessageSectionController *)v56 initWithMessages:v57 delegate:v20];
    messageSectionController = v20->_messageSectionController;
    v20->_messageSectionController = v58;

    v60 = [PKPeerPaymentRecurringPaymentDetailSectionController alloc];
    recurringPayment = v20->_recurringPayment;
    v62 = [v29 productTimeZone];
    v63 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)v60 initWithRecurringPayment:recurringPayment productTimeZone:v62 mode:v20->_mode delegate:v20];
    detailSectionController = v20->_detailSectionController;
    v20->_detailSectionController = v63;

    v65 = v20->_detailSectionController;
    v66 = [v29 frequencyOptions];
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)v65 setFrequencyOptions:v66];

    [(PKPeerPaymentRecurringPaymentDetailSectionController *)v20->_detailSectionController setIsEditable:v20->_allowEdits];
    v67 = [PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController alloc];
    v68 = [(PKPeerPaymentRecurringPayment *)v20->_recurringPayment fundingSource];
    v69 = [v68 name];
    v70 = [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)v67 initWithFundingSource:v69 useAppleCashBalance:[(PKPeerPaymentRecurringPayment *)v20->_recurringPayment usesAppleCashBalance] delegate:v20];
    fundingSourceSectionController = v20->_fundingSourceSectionController;
    v20->_fundingSourceSectionController = v70;

    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)v20->_fundingSourceSectionController setIsEditable:v20->_allowEdits];
    if ((PKIsVision() & 1) == 0)
    {
      v72 = [(PKPeerPaymentRecurringPayment *)v20->_recurringPayment actions];
      v73 = [(PKPeerPaymentRecurringPayment *)v20->_recurringPayment status];
      if (v72)
      {
        v74 = [[PKPeerPaymentRecurringPaymentDetailActionSectionController alloc] initWithAction:1 delegate:v20];
        pauseSectionController = v20->_pauseSectionController;
        v20->_pauseSectionController = v74;

        [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)v20->_pauseSectionController setStatus:v73];
      }

      if ((v72 & 2) != 0)
      {
        v76 = [[PKPeerPaymentRecurringPaymentDetailActionSectionController alloc] initWithAction:2 delegate:v20];
        cancelSectionController = v20->_cancelSectionController;
        v20->_cancelSectionController = v76;

        [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)v20->_cancelSectionController setStatus:v73];
      }
    }

    v78 = [PKPeerPaymentRecurringPaymentMemoSectionController alloc];
    v79 = [(PKPeerPaymentRecurringPayment *)v20->_recurringPayment memo];
    v80 = [(CNComposeRecipient *)v20->_recipient contact];
    v81 = [(PKPeerPaymentRecurringPaymentMemoSectionController *)v78 initWithRecurringPaymentMemo:v79 contact:v80 delegate:v20];
    memoSectionController = v20->_memoSectionController;
    v20->_memoSectionController = v81;

    [(PKPeerPaymentRecurringPaymentMemoSectionController *)v20->_memoSectionController setIsEditable:v20->_allowEdits];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v20 _updateSections];
    [(PKPeerPaymentRecurringPaymentDetailViewController *)v20 _setUpNavigationBar];
    v83 = [MEMORY[0x1E696AD88] defaultCenter];
    [v83 addObserver:v20 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v83 addObserver:v20 selector:sel__keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
    [v83 addObserver:v20 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    v91[0] = objc_opt_class();
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:1];
    v85 = [(PKPeerPaymentRecurringPaymentDetailViewController *)v20 registerForTraitChanges:v84 withHandler:&__block_literal_global_1];

    v15 = v87;
    v18 = v89;
  }

  return v20;
}

void __146__PKPeerPaymentRecurringPaymentDetailViewController_initWithRecurringPayment_recipient_mode_context_peerPaymentController_remoteMessagesComposer___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 overrideUserInterfaceStyle] == 2)
  {
    [v4[159] setOverrideUserInterfaceStyle:2];
    v2 = v4[149];
    v3 = +[PKPeerPaymentTheme primaryNavigationTintColor];
    [v2 setTintColor:v3];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentRecurringPaymentDetailViewController;
  [(PKPeerPaymentRecurringPaymentDetailViewController *)&v4 dealloc];
}

- (void)setShowCancelButton:(BOOL)a3
{
  if (self->_showCancelButton != a3)
  {
    self->_showCancelButton = a3;
    [(PKPeerPaymentRecurringPaymentDetailViewController *)self _setUpNavigationBar];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentRecurringPaymentDetailViewController;
  [(PKDynamicCollectionViewController *)&v5 viewDidLoad];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _configureAvatarView];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _setUpNavigationBar];
  v3 = [(PKDynamicCollectionViewController *)self collectionView];
  [v3 setKeyboardDismissMode:1];

  v4 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self view];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B38]];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKPeerPaymentRecurringPaymentDetailViewController;
  [(PKDynamicCollectionViewController *)&v7 viewWillAppear:a3];
  v4 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self overrideUserInterfaceStyle];
  v5 = [(PKDynamicCollectionViewController *)self collectionView];
  if (v4 == 2)
  {
    +[PKPeerPaymentTheme backgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v6 = ;
  [v5 setBackgroundColor:v6];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKPeerPaymentRecurringPaymentDetailViewController;
  [(PKDynamicCollectionViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self view];
  v4 = [(PKDynamicCollectionViewController *)self collectionView];
  [v4 contentInset];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v3 bounds];
  v13 = 0.0;
  if (self->_keyboardVisible)
  {
    v13 = fmax(v11 + v12 - self->_keyboardFrame.origin.y, 0.0);
  }

  [v4 setContentInset:{v6, v8, v13, v10}];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = PKPeerPaymentRecurringPaymentDetailViewController;
  [(PKPeerPaymentRecurringPaymentDetailViewController *)&v10 viewDidDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      v9 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _pendingRecurringPayment];
      [v8 recurringPaymentDetailViewControllerDidDisappearWithRecurringPayment:v9];
    }
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PKPeerPaymentRecurringPaymentDetailViewController__keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __71__PKPeerPaymentRecurringPaymentDetailViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  v4 = *(v2 + 1160);
  v5 = *(v2 + 1168);
  v6 = *(v2 + 1176);
  *(v2 + 1184) = 1;
  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = [*(a1 + 32) view];
  v17 = [v16 window];

  v18 = *(a1 + 32);
  v19 = v18 + 144;
  if (v17)
  {
    v20 = [v18 view];
    [v17 convertRect:0 fromWindow:{v9, v11, v13, v15}];
    [v20 convertRect:0 fromView:?];
    *v19 = v21;
    *(v19 + 1) = v22;
    *(v19 + 2) = v23;
    *(v19 + 3) = v24;
  }

  else
  {
    *v19 = v9;
    v18[145] = v11;
    v18[146] = v13;
    v18[147] = v15;
  }

  v27.origin.x = v3;
  v27.origin.y = v4;
  v27.size.width = v5;
  v27.size.height = v6;
  v25 = CGRectEqualToRect(*(*(a1 + 32) + 1152), v27);

  return !v25;
}

- (void)_keyboardWillChange:(id)a3
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    v6 = [a3 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__PKPeerPaymentRecurringPaymentDetailViewController__keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __73__PKPeerPaymentRecurringPaymentDetailViewController__keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[144];
  v4 = v2[145];
  v5 = v2[146];
  v6 = v2[147];
  if (*(a1 + 40))
  {
    [*(a1 + 40) CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v2 = *(a1 + 32);
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = [v2 view];
  v16 = [v15 window];

  v17 = *(a1 + 32);
  v18 = v17 + 144;
  if (v16)
  {
    v19 = [v17 view];
    [v16 convertRect:0 fromWindow:{v8, v10, v12, v14}];
    [v19 convertRect:0 fromView:?];
    *v18 = v20;
    *(v18 + 1) = v21;
    *(v18 + 2) = v22;
    *(v18 + 3) = v23;
  }

  else
  {
    *v18 = v8;
    v17[145] = v10;
    v17[146] = v12;
    v17[147] = v14;
  }

  v26.origin.x = v3;
  v26.origin.y = v4;
  v26.size.width = v5;
  v26.size.height = v6;
  v24 = CGRectEqualToRect(*(*(a1 + 32) + 1152), v26);

  return !v24;
}

- (void)_keyboardWillHide:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__PKPeerPaymentRecurringPaymentDetailViewController__keyboardWillHide___block_invoke;
  v3[3] = &unk_1E8010EB8;
  v3[4] = self;
  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateLayoutForKeyboardAction:v3];
}

BOOL __71__PKPeerPaymentRecurringPaymentDetailViewController__keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1152);
  *(v1 + 1184) = 0;
  v2 = (*(a1 + 32) + 1152);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1152);
  v4 = *(*(a1 + 32) + 1160);
  v5 = *(*(a1 + 32) + 1168);
  v6 = *(*(a1 + 32) + 1176);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self viewIfLoaded];
    v6 = v5;
    if (v5)
    {
      [v5 layoutIfNeeded];
      if (v4[2](v4))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __84__PKPeerPaymentRecurringPaymentDetailViewController__updateLayoutForKeyboardAction___block_invoke;
        v8[3] = &unk_1E8010970;
        v9 = v6;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v8 completion:0];
      }
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (void)_updateSections
{
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKPeerPaymentRecurringPayment *)self->_recurringPayment status]== 2)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v3 = ;
  if (self->_mode == 1)
  {
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController setHideAmount:1];
    [v13 addObject:self->_amountSectionController];
  }

  if ([(PKPeerPaymentRecurringPaymentDetailViewController *)self _shouldShowDashboardMessages])
  {
    messageSectionController = self->_messageSectionController;
    v5 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _dashboardMessages];
    [(PKDashboardMessageSectionController *)messageSectionController updateWithMessages:v5 currentMessageIndex:0];

    [v13 addObject:self->_messageSectionController];
  }

  [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController updateWithRecurringPayment:self->_recurringPayment];
  [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController setIsEditable:self->_allowEdits];
  [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController setTitleColor:v3];
  [v13 addObject:self->_detailSectionController];
  if (self->_mode == 2)
  {
    [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController setHideAmount:0];
    fundingSourceSectionController = self->_fundingSourceSectionController;
    v7 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment fundingSource];
    v8 = [v7 name];
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)fundingSourceSectionController setFundingSource:v8];

    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self->_fundingSourceSectionController setUseAppleCashBalance:[(PKPeerPaymentRecurringPayment *)self->_recurringPayment usesAppleCashBalance]];
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self->_fundingSourceSectionController setIsEditable:self->_allowEdits];
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self->_fundingSourceSectionController setTitleColor:v3];
    [v13 addObject:self->_fundingSourceSectionController];
  }

  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self->_memoSectionController setIsEditable:self->_allowEdits];
  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self->_memoSectionController setMemoTextColor:v3];
  memoSectionController = self->_memoSectionController;
  v10 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment memo];
  [(PKPeerPaymentRecurringPaymentMemoSectionController *)memoSectionController setRecurringPaymentMemo:v10];

  [v13 addObject:self->_memoSectionController];
  pauseSectionController = self->_pauseSectionController;
  if (pauseSectionController && !self->_allowEdits)
  {
    [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)pauseSectionController setStatus:[(PKPeerPaymentRecurringPayment *)self->_recurringPayment status]];
    [v13 addObject:self->_pauseSectionController];
  }

  v12 = v13;
  if (self->_cancelSectionController)
  {
    [v13 addObject:?];
    v12 = v13;
  }

  [(PKDynamicCollectionViewController *)self setSections:v12 animated:1];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateDetailSectionFooter];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updatePauseSectionFooter];
  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateCancelSectionFooter];
}

- (id)_composeRecipientForAddress:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(PKAvatarView *)self->_avatarView descriptorForRequiredKeys];
    v8 = v7;
    if (v7)
    {
      v27[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v6 addObjectsFromArray:v9];
    }

    v10 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:v5 keysToFetch:v6];
    v11 = [v10 contactForHandle:v4];
    v12 = [MEMORY[0x1E69B8EF8] sharedService];
    v13 = [v12 context];
    v14 = [v13 configuration];
    v15 = [v14 contactFormatConfiguration];

    v16 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:v15];
    if ([v16 emailAddressIsValid:v4])
    {
      v17 = 0;
    }

    else
    {
      [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v4];
      v26 = v12;
      v19 = v11;
      v20 = v10;
      v21 = v8;
      v22 = v6;
      v24 = v23 = v5;
      if ([v16 phoneNumberIsValid:v24 forCountryCode:0])
      {
        v17 = 1;
      }

      else
      {
        v17 = 5;
      }

      v5 = v23;
      v6 = v22;
      v8 = v21;
      v10 = v20;
      v11 = v19;
      v12 = v26;
    }

    v18 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v11 address:v4 kind:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_configureAvatarView
{
  v4 = [(CNComposeRecipient *)self->_recipient contact];
  if (v4)
  {
    [(PKAvatarView *)self->_avatarView setShowsName:self->_mode == 2];
    [(PKAvatarView *)self->_avatarView setContact:v4];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v3 setContactType:0];
    [(PKAvatarView *)self->_avatarView setContact:v3];
  }
}

- (void)_setUpNavigationBar
{
  v4 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self navigationItem];
  [v4 setBackButtonDisplayMode:2];
  if (self->_context != 9)
  {
    v3 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self navigationItem];
    [v3 setTitleView:self->_avatarView];
  }

  [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateBarButtonItems];
}

- (void)_updateBarButtonItems
{
  if (self->_showActivityIndicator)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v3 startAnimating];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v3];
    v4 = 0;
    goto LABEL_3;
  }

  mode = self->_mode;
  if (mode == 2)
  {
    if (PKIsVision())
    {
      goto LABEL_11;
    }

    if (self->_allowEdits)
    {
      v11 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _doneItem];
      v9 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _cancelEditingItem];
    }

    else
    {
      v11 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _editItem];
      if (!self->_showCancelButton)
      {
        v5 = 0;
        goto LABEL_24;
      }

      v9 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _dismissItem];
    }

    v5 = v9;
LABEL_24:
    v10 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController amount];
    v3 = [v10 amount];

    v4 = v3 && [(NSDecimalNumber *)self->_minimumAmount compare:v3]!= NSOrderedDescending && [(NSDecimalNumber *)self->_maximumAmount compare:v3]!= NSOrderedAscending;
    goto LABEL_4;
  }

  if (mode == 1)
  {
    v11 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _doneItem];
    v7 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController amount];
    v3 = [v7 amount];

    v4 = v3 && [(NSDecimalNumber *)self->_minimumAmount compare:v3]!= NSOrderedDescending && [(NSDecimalNumber *)self->_maximumAmount compare:v3]!= NSOrderedAscending;
    if (self->_showCancelButton)
    {
      v5 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _dismissItem];
      goto LABEL_4;
    }

LABEL_3:
    v5 = 0;
LABEL_4:

    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
  v11 = 0;
  v4 = 1;
LABEL_12:
  [v11 setEnabled:v4];
  v8 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v11];
  [v8 setLeftBarButtonItem:v5];
  [v8 setHidesBackButton:v5 != 0];
}

- (id)_doneItem
{
  if ([(PKPeerPaymentRecurringPayment *)self->_recurringPayment status]== 2)
  {
    v3 = 0;
  }

  else
  {
    doneItem = self->_doneItem;
    if (!doneItem)
    {
      objc_initWeak(&location, self);
      v5 = MEMORY[0x1E69DC628];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __62__PKPeerPaymentRecurringPaymentDetailViewController__doneItem__block_invoke;
      v16 = &unk_1E8010A60;
      objc_copyWeak(&v17, &location);
      v6 = [v5 actionWithHandler:&v13];
      v7 = objc_alloc(MEMORY[0x1E69DC708]);
      v8 = [v7 initWithBarButtonSystemItem:0 primaryAction:{v6, v13, v14, v15, v16}];
      v9 = self->_doneItem;
      self->_doneItem = v8;

      if ([(PKPeerPaymentRecurringPaymentDetailViewController *)self overrideUserInterfaceStyle]== 2)
      {
        v10 = self->_doneItem;
        v11 = +[PKPeerPaymentTheme primaryNavigationTintColor];
        [(UIBarButtonItem *)v10 setTintColor:v11];
      }

      [(UIBarButtonItem *)self->_doneItem setAccessibilityIdentifier:*MEMORY[0x1E69B9720]];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      doneItem = self->_doneItem;
    }

    v3 = doneItem;
  }

  return v3;
}

void __62__PKPeerPaymentRecurringPaymentDetailViewController__doneItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rightBarButtonAction];
}

- (id)_dismissItem
{
  dismissItem = self->_dismissItem;
  if (!dismissItem)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __65__PKPeerPaymentRecurringPaymentDetailViewController__dismissItem__block_invoke;
    v13 = &unk_1E8010A60;
    objc_copyWeak(&v14, &location);
    v5 = [v4 actionWithHandler:&v10];
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithBarButtonSystemItem:24 primaryAction:{v5, v10, v11, v12, v13}];
    v8 = self->_dismissItem;
    self->_dismissItem = v7;

    [(UIBarButtonItem *)self->_dismissItem setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    dismissItem = self->_dismissItem;
  }

  return dismissItem;
}

void __65__PKPeerPaymentRecurringPaymentDetailViewController__dismissItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissAction];
}

- (id)_editItem
{
  if ([(PKPeerPaymentRecurringPayment *)self->_recurringPayment status]== 2)
  {
    v3 = 0;
  }

  else
  {
    editItem = self->_editItem;
    if (!editItem)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:self action:sel__rightBarButtonAction];
      v6 = self->_editItem;
      self->_editItem = v5;

      [(UIBarButtonItem *)self->_editItem setAccessibilityIdentifier:*MEMORY[0x1E69B9740]];
      editItem = self->_editItem;
    }

    v3 = editItem;
  }

  return v3;
}

- (id)_cancelEditingItem
{
  cancelEditingItem = self->_cancelEditingItem;
  if (!cancelEditingItem)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __71__PKPeerPaymentRecurringPaymentDetailViewController__cancelEditingItem__block_invoke;
    v13 = &unk_1E8010A60;
    objc_copyWeak(&v14, &location);
    v5 = [v4 actionWithHandler:&v10];
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithBarButtonSystemItem:1 primaryAction:{v5, v10, v11, v12, v13}];
    v8 = self->_cancelEditingItem;
    self->_cancelEditingItem = v7;

    [(UIBarButtonItem *)self->_cancelEditingItem setAccessibilityIdentifier:*MEMORY[0x1E69B95A0]];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    cancelEditingItem = self->_cancelEditingItem;
  }

  return cancelEditingItem;
}

void __71__PKPeerPaymentRecurringPaymentDetailViewController__cancelEditingItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelEditsAction];
}

- (void)_updateDetailSectionFooter
{
  objc_initWeak(&location, self);
  if (self->_mode == 1)
  {
    v3 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController startDate];
    v4 = [MEMORY[0x1E695DEE8] currentCalendar];
    v5 = [v4 isDateInToday:v3];

    detailSectionController = self->_detailSectionController;
    if (v5)
    {
      v7 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)detailSectionController frequency];
      v8 = 0;
      if (v7 <= 2)
      {
        if (v7 != 1 && v7 != 2)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_CreateFrequenc_3.isa);
        }

        goto LABEL_29;
      }

      v13 = [MEMORY[0x1E695DEE8] currentCalendar];
      v14 = [v13 component:16 fromDate:v3];

      v9 = PKOrdinalStringForInteger();
      PKMediumDateString();
      if (v14 > 28)
        v10 = {;
        PKLocalizedPeerPaymentRecurringString(&cfstr_CreateFrequenc_2.isa, &stru_1F3BD5F10.isa, v9, v10);
      }

      else
        v10 = {;
        PKLocalizedPeerPaymentRecurringString(&cfstr_CreateFrequenc_1.isa, &stru_1F3BD5F10.isa, v9, v10);
      }
    }

    else
    {
      v12 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)detailSectionController frequency];
      v8 = 0;
      if (v12 <= 2)
      {
        if (v12 != 1 && v12 != 2)
        {
          goto LABEL_29;
        }

LABEL_6:
        v9 = PKLocalizedWeekdaySpecificStringKeyForKey();
        v10 = PKMediumDateString();
        v11 = PKLocalizedPeerPaymentRecurringString(v9, &stru_1F3BD5BF0.isa, v10);
LABEL_27:
        v8 = v11;

        goto LABEL_28;
      }

      if (v12 != 3)
      {
        if (v12 != 4)
        {
LABEL_29:

          goto LABEL_30;
        }

        v9 = PKMediumDateString();
        v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_CreateFrequenc_8.isa, &stru_1F3BD5BF0.isa, v9);
LABEL_28:

        goto LABEL_29;
      }

      v15 = [MEMORY[0x1E695DEE8] currentCalendar];
      v16 = [v15 component:16 fromDate:v3];

      v9 = PKOrdinalStringForInteger();
      PKMediumDateString();
      if (v16 > 28)
        v10 = {;
        PKLocalizedPeerPaymentRecurringString(&cfstr_CreateFrequenc_7.isa, &stru_1F3BD5F10.isa, v9, v10);
      }

      else
        v10 = {;
        PKLocalizedPeerPaymentRecurringString(&cfstr_CreateFrequenc_6.isa, &stru_1F3BD5F10.isa, v9, v10);
      }
    }
    v11 = ;
    goto LABEL_27;
  }

  v8 = 0;
LABEL_30:
  [(PKDynamicListSectionController *)self->_detailSectionController setFooterText:v8];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPeerPaymentRecurringPaymentDetailViewController__updateDetailSectionFooter__block_invoke;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v18, &location);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __79__PKPeerPaymentRecurringPaymentDetailViewController__updateDetailSectionFooter__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[155] identifiers];
    v3 = [v2 firstObject];
    [v4 reconfigureHeaderAndFooterForSectionIdentifier:v3];

    WeakRetained = v4;
  }
}

- (void)_updatePauseSectionFooter
{
  if (self->_pauseSectionController)
  {
    objc_initWeak(&location, self);
    if ([(PKPeerPaymentRecurringPayment *)self->_recurringPayment status]== 2)
    {
      v3 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _recipientName];
      v4 = PKLocalizedPeerPaymentRecurringString(&cfstr_PauseSectionFo.isa, &stru_1F3BD5BF0.isa, v3);
    }

    else
    {
      v4 = 0;
    }

    [(PKDynamicListSectionController *)self->_pauseSectionController setFooterText:v4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PKPeerPaymentRecurringPaymentDetailViewController__updatePauseSectionFooter__block_invoke;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);

    objc_destroyWeak(&location);
  }
}

void __78__PKPeerPaymentRecurringPaymentDetailViewController__updatePauseSectionFooter__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained reloadDataForSection:WeakRetained[157] animated:1];
    v2 = [v4[157] identifiers];
    v3 = [v2 firstObject];
    [v4 reconfigureHeaderAndFooterForSectionIdentifier:v3];

    WeakRetained = v4;
  }
}

- (void)_updateCancelSectionFooter
{
  if (self->_cancelSectionController)
  {
    objc_initWeak(&location, self);
    if ([(PKPeerPaymentRecurringPayment *)self->_recurringPayment status]== 1)
    {
      v3 = PKLocalizedPeerPaymentRecurringString(&cfstr_CancelSectionF.isa);
    }

    else
    {
      v3 = 0;
    }

    [(PKDynamicListSectionController *)self->_cancelSectionController setFooterText:v3];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __79__PKPeerPaymentRecurringPaymentDetailViewController__updateCancelSectionFooter__block_invoke;
    v4[3] = &unk_1E8010998;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);

    objc_destroyWeak(&location);
  }
}

void __79__PKPeerPaymentRecurringPaymentDetailViewController__updateCancelSectionFooter__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[158] identifiers];
    v3 = [v2 firstObject];
    [v4 reconfigureHeaderAndFooterForSectionIdentifier:v3];

    WeakRetained = v4;
  }
}

- (void)_cancelEditsAction
{
  self->_allowEdits = 0;
  objc_initWeak(&location, self);
  peerPaymentService = self->_peerPaymentService;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__PKPeerPaymentRecurringPaymentDetailViewController__cancelEditsAction__block_invoke;
  v4[3] = &unk_1E8011158;
  objc_copyWeak(&v5, &location);
  [(PKPeerPaymentService *)peerPaymentService recurringPaymentsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__PKPeerPaymentRecurringPaymentDetailViewController__cancelEditsAction__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _reloadWithPayments:v5];
  }
}

- (void)_dismissAction
{
  v2 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_rightBarButtonAction
{
  if (!self->_performingAction)
  {
    objc_initWeak(&location, self);
    self->_performingAction = 1;
    [(PKPeerPaymentRecurringPaymentDetailViewController *)self setShowActivityIndicator:1];
    mode = self->_mode;
    if (mode == 1)
    {
      if (self->_context == 9)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (!WeakRetained)
        {
          goto LABEL_15;
        }

        v6 = WeakRetained;
        v7 = objc_loadWeakRetained(&self->_delegate);
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          goto LABEL_15;
        }

        v9 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _pendingRecurringPayment];
        recurringPayment = self->_recurringPayment;
        self->_recurringPayment = v9;

        v11 = objc_loadWeakRetained(&self->_delegate);
        v12 = self->_recurringPayment;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke;
        v24[3] = &unk_1E8010998;
        objc_copyWeak(&v25, &location);
        [v11 stageRecurringPayment:v12 completion:v24];

        v4 = &v25;
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_2;
        aBlock[3] = &unk_1E8010948;
        aBlock[4] = self;
        objc_copyWeak(&v23, &location);
        v13 = _Block_copy(aBlock);
        v14 = [(PKPeerPaymentController *)self->_peerPaymentController recipient];

        if (v14)
        {
          v13[2](v13);
        }

        else
        {
          remoteMessagesComposer = self->_remoteMessagesComposer;
          v16 = [(CNComposeRecipient *)self->_recipient address];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_5;
          v19[3] = &unk_1E8010EE0;
          v20 = v13;
          objc_copyWeak(&v21, &location);
          [(PKPeerPaymentRemoteMessagesComposer *)remoteMessagesComposer validateRecipientWithAddress:v16 completion:v19];

          objc_destroyWeak(&v21);
        }

        v4 = &v23;
      }
    }

    else
    {
      if (mode != 2)
      {
        self->_performingAction = 0;
        [(PKPeerPaymentRecurringPaymentDetailViewController *)self setShowActivityIndicator:0];
LABEL_15:
        objc_destroyWeak(&location);
        return;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_7;
      v17[3] = &unk_1E8011180;
      objc_copyWeak(&v18, &location);
      [(PKPeerPaymentRecurringPaymentDetailViewController *)self _processEditsIfNeededWithCompletion:v17];
      v4 = &v18;
    }

    objc_destroyWeak(v4);
    goto LABEL_15;
  }
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1136] = 0;
    v2 = WeakRetained;
    [WeakRetained setShowActivityIndicator:0];
    WeakRetained = v2;
  }
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingRecurringPayment];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1072);
  *(v3 + 1072) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 1120);
  v7 = *(v5 + 1072);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_3;
  v8[3] = &unk_1E8011180;
  objc_copyWeak(&v9, (a1 + 40));
  [v6 presentRemoteMessageComposerWithRecurringPayment:v7 overViewController:v5 completion:v8];
  objc_destroyWeak(&v9);
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_4;
  v3[3] = &unk_1E80111A8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      [WeakRetained _didCompleteSetupFlow];
    }

    else
    {
      v3 = [WeakRetained presentingViewController];
      [v3 dismissViewControllerAnimated:1 completion:0];
    }

    v4[1136] = 0;
    [v4 setShowActivityIndicator:0];
    WeakRetained = v4;
  }
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v6[3] = v2;
    v6[4] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_6;
    block[3] = &unk_1E8010998;
    objc_copyWeak(v6, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v6);
  }
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1136] = 0;
    v2 = WeakRetained;
    [WeakRetained setShowActivityIndicator:0];
    WeakRetained = v2;
  }
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_7(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_8;
  v3[3] = &unk_1E80111A8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__rightBarButtonAction__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      WeakRetained[1280] ^= 1u;
      [WeakRetained _updateSections];
      WeakRetained = v3;
    }

    WeakRetained[1136] = 0;
    [v3 setShowActivityIndicator:0];
    WeakRetained = v3;
  }
}

- (void)_processEditsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allowEdits)
  {
    objc_initWeak(&location, self);
    v6 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _pendingRecurringPayment];
    v7 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment memo];
    v8 = v7;
    if (v7)
    {
      v30 = v7;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
    }

    v9 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment fundingSource];
    v10 = [v9 fpanIdentifier];
    v11 = [v6 fundingSource];
    v12 = [v11 fpanIdentifier];
    v13 = v10;
    v14 = v12;
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      if (!v13 || !v14)
      {

LABEL_15:
        v18 = 1;
LABEL_16:

        v19 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment amount];
        v20 = [v6 amount];
        if (![v19 compare:v20])
        {
          v21 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment upcomingPaymentDates];
          v22 = [v21 firstObject];
          v23 = [v6 startDate];
          if (PKEqualObjects())
          {
            v24 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment frequency];
            if (v24 == [v6 frequency])
            {
              v25 = [v6 memo];
              v29 = PKEqualObjects();

              if (v29)
              {
                if (!v18)
                {
                  if (v5)
                  {
                    v5[2](v5, 1);
                  }

                  goto LABEL_26;
                }

                v26 = v31;
                v31[0] = MEMORY[0x1E69E9820];
                v31[1] = 3221225472;
                v31[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_4;
                v31[3] = &unk_1E8010F30;
                v27 = &v33;
                objc_copyWeak(&v33, &location);
                v32 = v5;
                v31[4] = v6;
                [(PKPeerPaymentRecurringPaymentDetailViewController *)self _validatePaymentEditsWithCompletion:v31];
                v28 = &v32;
LABEL_25:

                objc_destroyWeak(v27);
LABEL_26:

                objc_destroyWeak(&location);
                goto LABEL_27;
              }

LABEL_24:
              v26 = v34;
              v34[0] = MEMORY[0x1E69E9820];
              v34[1] = 3221225472;
              v34[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke;
              v34[3] = &unk_1E8010F58;
              v27 = &v36;
              objc_copyWeak(&v36, &location);
              v35 = v5;
              v34[4] = v6;
              v34[5] = self;
              [(PKPeerPaymentRecurringPaymentDetailViewController *)self _validatePaymentEditsWithCompletion:v34];
              v28 = &v35;
              goto LABEL_25;
            }
          }
        }

        goto LABEL_24;
      }

      v16 = [v13 isEqualToString:v14];

      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v17 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment usesAppleCashBalance];
    v18 = v17 ^ [v6 usesAppleCashBalance];
    goto LABEL_16;
  }

  if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }

LABEL_27:
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && (a2 & 1) != 0)
  {
    v5 = [*(a1 + 32) fundingSource];
    v6 = [v5 fpanIdentifier];
    v7 = [*(*(a1 + 40) + 1096) primaryAccountIdentifier];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (v8 && v9)
      {
        v11 = [v8 isEqualToString:v9];

        if (v11)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v13 = *(a1 + 32);
      v5 = [MEMORY[0x1E69B8FD8] fundingSourceWithPass:WeakRetained[137]];
      [v13 setFundingSource:v5];
    }

LABEL_14:
    v14 = [*(*(a1 + 40) + 1112) peerPaymentPass];
    [*(a1 + 32) usesAppleCashBalance];
    PKUpdatePeerPaymentBalanceUsagePreference();

    v15 = WeakRetained[140];
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_2;
    v18[3] = &unk_1E8010F30;
    objc_copyWeak(&v21, (a1 + 56));
    v20 = *(a1 + 48);
    v19 = *(a1 + 32);
    [v15 presentRemoteMessageComposerWithRecurringPayment:v16 overViewController:v17 completion:v18];

    objc_destroyWeak(&v21);
    goto LABEL_15;
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }

LABEL_15:
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_2(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      objc_storeStrong(WeakRetained + 134, a1[4]);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_3;
    block[3] = &unk_1E8010F08;
    objc_copyWeak(&v9, a1 + 6);
    v8 = a1[5];
    v10 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = a1[5];
    if (v6)
    {
      v6[2](v6, 0);
    }
  }
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [WeakRetained presentedViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v3 = v6;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, *(a1 + 48));
      v3 = v6;
    }
  }
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_4(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && (a2 & 1) != 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_5;
    v6[3] = &unk_1E8010F30;
    objc_copyWeak(&v9, a1 + 6);
    v8 = a1[5];
    v7 = a1[4];
    [WeakRetained _authorizeRecurringPaymentWithCompletion:v6];

    objc_destroyWeak(&v9);
  }

  else
  {
    v5 = a1[5];
    if (v5)
    {
      v5[2](v5, 0);
    }
  }
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__processEditsIfNeededWithCompletion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  v7 = WeakRetained;
  if (WeakRetained && a2)
  {
    objc_storeStrong(WeakRetained + 134, *(a1 + 32));
    v5 = v7;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v5 = v7;
  }
}

- (void)_validatePaymentEditsWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8010DD0;
  aBlock[4] = self;
  v5 = v4;
  v43 = v5;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (self->_selectedPass)
  {
    (*(v6 + 2))(v6);
  }

  else
  {
    v8 = [MEMORY[0x1E69B8A58] sharedInstance];
    v9 = [v8 _defaultPaymentPassForPaymentRequest:self->_paymentRequest];
    v10 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment status];
    v11 = @"DEBIT_CARD_REQUIRED_MESSAGE_EDIT_SELECT_CARD";
    if (!v9)
    {
      v11 = @"DEBIT_CARD_REQUIRED_MESSAGE_EDIT_NO_CARDS";
    }

    v12 = @"DEBIT_CARD_REQUIRED_MESSAGE_RESUME_NO_CARDS";
    if (v9)
    {
      v12 = @"DEBIT_CARD_REQUIRED_MESSAGE_RESUME_SELECT_CARD";
    }

    if (v10 == 2)
    {
      v11 = v12;
    }

    v30 = v11;
    objc_initWeak(&location, self);
    IsBridge = PKPaymentSetupContextIsBridge();
    v14 = @"DEBIT_CARD_REQUIRED_ACTION_CONTINUE";
    if (!v9)
    {
      v14 = @"DEBIT_CARD_REQUIRED_ACTION_ADD_CARD";
    }

    v15 = v14;
    v16 = MEMORY[0x1E69DC650];
    v17 = PKLocalizedPeerPaymentRecurringString(&cfstr_DebitCardRequi_5.isa);
    v18 = PKDeviceSpecificLocalizedStringKeyForKey(v30, IsBridge);
    v19 = PKLocalizedPeerPaymentRecurringString(v18);
    v20 = [v16 alertControllerWithTitle:v17 message:v19 preferredStyle:1];

    v21 = MEMORY[0x1E69DC648];
    v22 = PKLocalizedPeerPaymentRecurringString(v15);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_3;
    v36[3] = &unk_1E8010F80;
    objc_copyWeak(&v40, &location);
    v23 = v9;
    v37 = v23;
    v38 = v7;
    v24 = v5;
    v39 = v24;
    v25 = [v21 actionWithTitle:v22 style:0 handler:v36];

    v26 = MEMORY[0x1E69DC648];
    v27 = PKLocalizedPeerPaymentRecurringString(&cfstr_DebitCardRequi_6.isa);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_4;
    v34[3] = &unk_1E8011248;
    v35 = v24;
    v28 = [v26 actionWithTitle:v27 style:1 handler:v34];

    [v20 addAction:v25];
    [v20 addAction:v28];
    [v20 setPreferredAction:v25];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_5;
    block[3] = &unk_1E80110E0;
    objc_copyWeak(&v33, &location);
    v32 = v20;
    v29 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v40);

    objc_destroyWeak(&location);
  }
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1120);
  v4 = [*(v2 + 1088) address];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_2;
  v5[3] = &unk_1E8010AD8;
  v6 = *(a1 + 40);
  [v3 validateRecipientWithAddress:v4 completion:v5];
}

uint64_t __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v6 = WeakRetained;
    if (v4)
    {
      objc_storeStrong(WeakRetained + 137, v4);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [WeakRetained _presentPeerPaymentAddDebitFlow];
      v3 = v6;
      v5 = *(a1 + 48);
      if (!v5)
      {
        goto LABEL_7;
      }

      (*(v5 + 16))(v5, 0, v6);
    }

    v3 = v6;
  }

LABEL_7:
}

uint64_t __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __89__PKPeerPaymentRecurringPaymentDetailViewController__validatePaymentEditsWithCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
    WeakRetained = v3;
  }
}

- (void)_presentPeerPaymentAddDebitFlow
{
  v4 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
  v3 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self navigationController];
  [v3 presentViewController:v4 animated:1 completion:0];
}

- (void)_authorizeRecurringPaymentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController amount];
  objc_initWeak(&location, self);
  if ([(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)self->_fundingSourceSectionController useAppleCashBalance])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(PKPeerPaymentController *)self->_peerPaymentController selectMode:1];
  peerPaymentController = self->_peerPaymentController;
  selectedPass = self->_selectedPass;
  v9 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment identifier];
  v10 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController frequency];
  v11 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController startDate];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke;
  v13[3] = &unk_1E8010FF8;
  objc_copyWeak(&v15, &location);
  v12 = v4;
  v14 = v12;
  [(PKPeerPaymentController *)peerPaymentController quoteWithAmount:v5 source:3 requestToken:0 alternateFundingSource:selectedPass preserveCurrentBalance:v6 recurringPaymentIdentifier:v9 frequency:v10 startDate:v11 threshold:0 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentRecurringPaymentDetailViewController: quoteWithAmount successful", buf, 2u);
      }

      v11 = WeakRetained[139];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke_193;
      v16[3] = &unk_1E8010FD0;
      objc_copyWeak(&v18, (a1 + 40));
      v17 = *(a1 + 32);
      [v11 performQuote:v7 completion:v16];

      objc_destroyWeak(&v18);
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke_2;
      v13[3] = &unk_1E8010FA8;
      v14 = *(a1 + 32);
      v15 = 0;
      [WeakRetained _showAlertForError:v8 completion:v13];
    }
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }
}

void __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke_193(uint64_t a1, int a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = a2;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentRecurringPaymentDetailViewController: performQuote completed with success: %d", buf, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 16);
LABEL_11:
        v12();
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if (v8)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke_194;
      v14[3] = &unk_1E8010FA8;
      v15 = *(a1 + 32);
      v16 = 0;
      [WeakRetained _showAlertForError:v8 completion:v14];

      goto LABEL_12;
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v12 = *(v13 + 16);
    goto LABEL_11;
  }

LABEL_12:
}

uint64_t __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke_194(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __94__PKPeerPaymentRecurringPaymentDetailViewController__authorizeRecurringPaymentWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_showConfirmationAlertIfNeededForAction:(unint64_t)a3 withItem:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 == 2)
  {
    v23 = MEMORY[0x1E69DC650];
    v24 = PKLocalizedPeerPaymentRecurringString(&cfstr_CancelAlertTit.isa);
    v25 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _recipientName];
    v26 = PKLocalizedPeerPaymentRecurringString(&cfstr_CancelAlertMes.isa, &stru_1F3BD5BF0.isa, v25);
    v14 = [v23 alertControllerWithTitle:v24 message:v26 preferredStyle:0];

    v22 = [(PKDynamicCollectionViewController *)self cellForItem:v8];
    v27 = [v14 popoverPresentationController];
    [v27 setSourceView:v22];

    v28 = MEMORY[0x1E69DC648];
    v29 = PKLocalizedPeerPaymentRecurringString(&cfstr_CancelAlertCon.isa);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_3;
    v42[3] = &unk_1E8011248;
    v30 = v9;
    v43 = v30;
    v31 = [v28 actionWithTitle:v29 style:2 handler:v42];

    v32 = MEMORY[0x1E69DC648];
    v33 = PKLocalizedPeerPaymentRecurringString(&cfstr_CancelAlertCan.isa);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_4;
    v40[3] = &unk_1E8011248;
    v41 = v30;
    v34 = [v32 actionWithTitle:v33 style:1 handler:v40];

    [v14 addAction:v31];
    [v14 addAction:v34];
  }

  else
  {
    if (a3 != 1 || [(PKPeerPaymentRecurringPayment *)self->_recurringPayment status]!= 1)
    {
      goto LABEL_8;
    }

    v10 = MEMORY[0x1E69DC650];
    v11 = PKLocalizedPeerPaymentRecurringString(&cfstr_PauseAlertTitl.isa);
    v12 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _recipientName];
    v13 = PKLocalizedPeerPaymentRecurringString(&cfstr_PauseAlertMess.isa, &stru_1F3BD5BF0.isa, v12);
    v14 = [v10 alertControllerWithTitle:v11 message:v13 preferredStyle:1];

    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedPeerPaymentRecurringString(&cfstr_PauseAlertConf.isa);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke;
    v46[3] = &unk_1E8011248;
    v17 = v9;
    v47 = v17;
    v18 = [v15 actionWithTitle:v16 style:0 handler:v46];

    v19 = MEMORY[0x1E69DC648];
    v20 = PKLocalizedPeerPaymentRecurringString(&cfstr_PauseAlertCanc.isa);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_2;
    v44[3] = &unk_1E8011248;
    v45 = v17;
    v21 = [v19 actionWithTitle:v20 style:1 handler:v44];

    [v14 addAction:v18];
    [v14 addAction:v21];
    [v14 setPreferredAction:v18];

    v22 = v47;
  }

  if (v14)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_5;
    block[3] = &unk_1E80110E0;
    objc_copyWeak(&v38, &location);
    v37 = v14;
    v35 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);

    goto LABEL_10;
  }

LABEL_8:
  if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }

LABEL_10:
}

uint64_t __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __113__PKPeerPaymentRecurringPaymentDetailViewController__showConfirmationAlertIfNeededForAction_withItem_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
    WeakRetained = v3;
  }
}

- (id)_recipientName
{
  v3 = [(CNComposeRecipient *)self->_recipient contact];
  v4 = [v3 givenName];

  if (!v4)
  {
    v4 = [(CNComposeRecipient *)self->_recipient address];
  }

  return v4;
}

- (void)_showAlertForError:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69B8F28] displayableErrorForError:a3];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKPeerPaymentRecurringPaymentDetailViewController__showAlertForError_completion___block_invoke;
  v10[3] = &unk_1E80111F8;
  objc_copyWeak(&v13, &location);
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __83__PKPeerPaymentRecurringPaymentDetailViewController__showAlertForError_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E69B8540] pageTagForAppleCashSenderError:*(a1 + 32)];
    [MEMORY[0x1E69B8540] reportAppleCashSenderErrorPage:v3];
    v4 = *(a1 + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __83__PKPeerPaymentRecurringPaymentDetailViewController__showAlertForError_completion___block_invoke_2;
    v15 = &unk_1E8010DD0;
    v5 = v3;
    v16 = v5;
    v17 = *(a1 + 40);
    v10 = PKAlertForDisplayableErrorWithHandlers(v4, 0, &v12, 0);
    if (v10)
    {
      [WeakRetained presentViewController:v10 animated:1 completion:{0, v12, v13, v14, v15, v16}];
    }

    else
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, v6, v7, v8, v9);
      }
    }
  }
}

uint64_t __83__PKPeerPaymentRecurringPaymentDetailViewController__showAlertForError_completion___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x1E69B8540] reportAppleCashSenderErrorPage:*(a1 + 32) buttonTag:*MEMORY[0x1E69BAB80]];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_didCompleteSetupFlow
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __74__PKPeerPaymentRecurringPaymentDetailViewController__didCompleteSetupFlow__block_invoke;
  v2[3] = &unk_1E8010998;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __74__PKPeerPaymentRecurringPaymentDetailViewController__didCompleteSetupFlow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained presentingViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

- (void)_updateRecurringPaymentsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  peerPaymentService = self->_peerPaymentService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PKPeerPaymentRecurringPaymentDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke;
  v7[3] = &unk_1E8011130;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(PKPeerPaymentService *)peerPaymentService updateRecurringPaymentsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __92__PKPeerPaymentRecurringPaymentDetailViewController__updateRecurringPaymentsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentRecurringPaymentDetailViewController: Failed to update recurring payments with error %@", &v13, 0xCu);
    }

LABEL_6:
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 16);
LABEL_10:
      v11();
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  [WeakRetained _reloadWithPayments:v5];
  v12 = *(a1 + 32);
  if (v12)
  {
    v11 = *(v12 + 16);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_reloadWithPayments:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_mode == 2)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v15 = v5;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment identifier];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_12:
      v5 = v15;
    }

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PKPeerPaymentRecurringPaymentDetailViewController__reloadWithPayments___block_invoke;
    block[3] = &unk_1E80110E0;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    v14 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __73__PKPeerPaymentRecurringPaymentDetailViewController__reloadWithPayments___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v7 = WeakRetained;
    if (v3 && (v4 = [v3 status], WeakRetained = v7, v4))
    {
      objc_storeStrong(v7 + 134, *(a1 + 32));
      [v7 _updateSections];
      [v7 _updateBarButtonItems];
    }

    else
    {
      v5 = [WeakRetained navigationController];
      if ([v5 pk_settings_useStateDrivenNavigation])
      {
        [v5 pk_settings_popViewController];
      }

      else
      {
        v6 = [v5 popViewControllerAnimated:1];
      }
    }

    WeakRetained = v7;
  }
}

- (id)_pendingRecurringPayment
{
  v3 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment fundingSource];
  if (self->_selectedPass)
  {
    v4 = [MEMORY[0x1E69B8FD8] fundingSourceWithPass:?];

    v3 = v4;
  }

  v5 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment copy];
  v6 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController amount];
  v7 = [v6 amount];
  [v5 setAmount:v7];

  v8 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController startDate];
  [v5 setStartDate:v8];

  [v5 setFrequency:{-[PKPeerPaymentRecurringPaymentDetailSectionController frequency](self->_detailSectionController, "frequency")}];
  v9 = [(PKPeerPaymentRecurringPaymentMemoSectionController *)self->_memoSectionController recurringPaymentMemo];
  [v5 setMemo:v9];

  [v5 setFundingSource:v3];
  [v5 setUsesAppleCashBalance:{-[PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController useAppleCashBalance](self->_fundingSourceSectionController, "useAppleCashBalance")}];

  return v5;
}

- (BOOL)_shouldShowDashboardMessages
{
  v3 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment status];
  v4 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment lastExecutedTransaction];
  v5 = v4;
  if ((v3 - 3) <= 1 && [v4 status] == 3)
  {
    v6 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment lastExecutedTransactionAppearsInHistory]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_dashboardMessages
{
  v3 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment lastExecutedTransaction];
  v4 = [v3 errorCode];
  v5 = [v3 executionDate];
  v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v7 = objc_alloc_init(PKDashboardPassMessage);
  v8 = [v3 identifier];
  [(PKDashboardPassMessage *)v7 setIdentifier:v8];

  v9 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _titleForErrorCode:v4];
  [(PKDashboardPassMessage *)v7 setTitle:v9];

  v10 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self _messageForErrorCode:v4 paymentDate:v5];
  [(PKDashboardPassMessage *)v7 setMessage:v10];

  if ([v3 exceedsAppleCashLimits])
  {
    v11 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorLe.isa);
    [(PKDashboardPassMessage *)v7 setButtonTitle:v11];

    [(PKDashboardPassMessage *)v7 setActionOnButtonPress:&__block_literal_global_231];
  }

  v12 = PKPassKitUIBundle();
  v13 = [v12 URLForResource:@"MessageAlert" withExtension:@"pdf"];

  v14 = PKUIScreenScale();
  v15 = PKUIImageFromPDF(v13, 45.0, 45.0, v14);
  [(PKDashboardPassMessage *)v7 setImage:v15];
  [v6 addObject:v7];
  v16 = [v6 copy];

  return v16;
}

void __71__PKPeerPaymentRecurringPaymentDetailViewController__dashboardMessages__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/en-us/HT207884"];
  PKOpenURL();
}

- (id)_titleForErrorCode:(unint64_t)a3
{
  if (a3 == 40338)
  {
    v3 = @"PAYMENT_ERROR_PAYMENT_PAUSED_TITLE";
  }

  else
  {
    v3 = @"PAYMENT_ERROR_PROBLEM_WITH_PAYMENT_TITLE";
  }

  v4 = PKLocalizedPeerPaymentRecurringString(&v3->isa);

  return v4;
}

- (id)_messageForErrorCode:(unint64_t)a3 paymentDate:(id)a4
{
  v6 = a4;
  if (a3 > 40340)
  {
    if (a3 <= 40342)
    {
      v7 = PKMediumDayAndMonthStringFromDate();
      if (a3 == 40341)
      {
        PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorRe.isa, &stru_1F3BD5BF0.isa, v7);
      }

      else
      {
        PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorHi.isa, &stru_1F3BD5BF0.isa, v7);
      }

      goto LABEL_24;
    }

    if (a3 == 40343)
    {
      v7 = PKMediumDayAndMonthStringFromDate();
      PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorGe.isa, &stru_1F3BD5BF0.isa, v7);
      goto LABEL_24;
    }

    if (a3 == 40344)
    {
      goto LABEL_19;
    }

    if (a3 != 40345)
    {
LABEL_23:
      v7 = PKMediumDayAndMonthStringFromDate();
      PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorGe_0.isa, &stru_1F3BD5BF0.isa, v7);
      goto LABEL_24;
    }

LABEL_16:
    v8 = [(CNComposeRecipient *)self->_recipient contact];
    v9 = [v8 givenName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(CNComposeRecipient *)self->_recipient address];
    }

    v7 = v11;

    v14 = PKMediumDayAndMonthStringFromDate();
    v12 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorIn.isa, &stru_1F3BD6370.isa, v14, v7);

    goto LABEL_25;
  }

  if (a3 > 40336)
  {
    if (a3 != 40337)
    {
      if (a3 == 40338)
      {
        v12 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorCo.isa);
        goto LABEL_26;
      }

      if (a3 == 40340)
      {
        v7 = PKMediumDayAndMonthStringFromDate();
        PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorCa_0.isa, &stru_1F3BD5BF0.isa, v7);
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (a3 - 40305 >= 2)
  {
    if (a3 == 40311)
    {
LABEL_19:
      v7 = PKMediumDayAndMonthStringFromDate();
      PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorCa.isa, &stru_1F3BD5BF0.isa, v7);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v7 = PKMediumDayAndMonthStringFromDate();
  PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorSe.isa, &stru_1F3BD5BF0.isa, v7);
  v12 = LABEL_24:;
LABEL_25:

LABEL_26:

  return v12;
}

- (void)makeCellFirstResponderWithItem:(id)a3
{
  v3 = [(PKDynamicCollectionViewController *)self cellForItem:a3];
  if ([v3 canBecomeFirstResponder])
  {
    [v3 becomeFirstResponder];
  }
}

- (void)updateFooterForSectionIdentifier:(id)a3
{
  v13 = a3;
  v4 = [(PKPeerPaymentRecurringPaymentDetailSectionController *)self->_detailSectionController identifiers];
  v5 = [v4 firstObject];
  v6 = [v13 isEqualToString:v5];

  if (v6)
  {
    [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateDetailSectionFooter];
  }

  else
  {
    v7 = [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)self->_pauseSectionController identifiers];
    v8 = [v7 firstObject];
    v9 = [v13 isEqualToString:v8];

    if (v9)
    {
      [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updatePauseSectionFooter];
    }

    else
    {
      v10 = [(PKPeerPaymentRecurringPaymentDetailActionSectionController *)self->_cancelSectionController identifiers];
      v11 = [v10 firstObject];
      v12 = [v13 isEqualToString:v11];

      if (v12)
      {
        [(PKPeerPaymentRecurringPaymentDetailViewController *)self _updateCancelSectionFooter];
      }
    }
  }
}

- (void)performAction:(unint64_t)a3 forItem:(id)a4 startHandler:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (self->_performingAction)
  {
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PKPeerPaymentRecurringPaymentActionToString();
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentRecurringPaymentDetailViewController: performing %@ action", buf, 0xCu);
    }

    self->_performingAction = 1;
    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__PKPeerPaymentRecurringPaymentDetailViewController_performAction_forItem_startHandler_completion___block_invoke;
    v16[3] = &unk_1E8011040;
    objc_copyWeak(v19, buf);
    v17 = v11;
    v19[1] = a3;
    v18 = v13;
    [(PKPeerPaymentRecurringPaymentDetailViewController *)self _showConfirmationAlertIfNeededForAction:a3 withItem:v10 completion:v16];

    objc_destroyWeak(v19);
    objc_destroyWeak(buf);
  }
}

void __99__PKPeerPaymentRecurringPaymentDetailViewController_performAction_forItem_startHandler_completion___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v5 = *(a1 + 32);
      if (v5)
      {
        (*(v5 + 16))();
      }

      v6 = *(a1 + 56);
      if (v6 == 2)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __99__PKPeerPaymentRecurringPaymentDetailViewController_performAction_forItem_startHandler_completion___block_invoke_3;
        v10[3] = &unk_1E80111D0;
        v7 = &v12;
        objc_copyWeak(&v12, (a1 + 48));
        v11 = *(a1 + 40);
        [WeakRetained _cancelRecurringPaymentWithCompletion:v10];
        v8 = v11;
        goto LABEL_11;
      }

      if (v6 == 1)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __99__PKPeerPaymentRecurringPaymentDetailViewController_performAction_forItem_startHandler_completion___block_invoke_2;
        v13[3] = &unk_1E80111D0;
        v7 = &v15;
        objc_copyWeak(&v15, (a1 + 48));
        v14 = *(a1 + 40);
        [WeakRetained _pauseRecurringPaymentWithCompletion:v13];
        v8 = v14;
LABEL_11:

        objc_destroyWeak(v7);
        goto LABEL_12;
      }
    }

    WeakRetained[1136] = 0;
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }

LABEL_12:
}

void __99__PKPeerPaymentRecurringPaymentDetailViewController_performAction_forItem_startHandler_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1136) = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v3;
      (*(v4 + 16))();
      v3 = v5;
    }
  }
}

void __99__PKPeerPaymentRecurringPaymentDetailViewController_performAction_forItem_startHandler_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1136) = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v3;
      (*(v4 + 16))();
      v3 = v5;
    }
  }
}

- (void)_pauseRecurringPaymentWithCompletion:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment status];
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

LABEL_11:
    peerPaymentService = self->_peerPaymentService;
    v11 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment identifier];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke;
    v15[3] = &unk_1E8011068;
    v8 = &v17;
    objc_copyWeak(&v17, &location);
    v16 = v4;
    [(PKPeerPaymentService *)peerPaymentService performRecurringPaymentAction:1 identifier:v11 completion:v15];

    v9 = &v16;
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    goto LABEL_11;
  }

  if (v5 == 2)
  {
LABEL_10:
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_3;
    v12[3] = &unk_1E80110B8;
    v8 = &v14;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    [(PKPeerPaymentRecurringPaymentDetailViewController *)self _validatePaymentEditsWithCompletion:v12];
    v9 = &v13;
LABEL_12:

    objc_destroyWeak(v8);
    goto LABEL_13;
  }

LABEL_4:
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    recurringPayment = self->_recurringPayment;
    *buf = 138412290;
    v20 = recurringPayment;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentRecurringPaymentDetailViewController: Unable to perform action, recurring payment is in an ineligible state: %@", buf, 0xCu);
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_13:
  objc_destroyWeak(&location);
}

void __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8011220;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v14);
}

void __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      [WeakRetained _showAlertForError:v3 completion:*(a1 + 48)];
      goto LABEL_7;
    }

    objc_storeStrong(WeakRetained + 134, *(a1 + 40));
    *(v5 + 1280) = 0;
    [v5 _updateSections];
    [v5 _updateBarButtonItems];
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

LABEL_7:
}

void __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_3(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (a2 & 1) != 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_4;
    v6[3] = &unk_1E80110B8;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [WeakRetained _authorizeRecurringPaymentWithCompletion:v6];

    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_5;
    v6[3] = &unk_1E80110B8;
    objc_copyWeak(&v8, (a1 + 40));
    v7 = *(a1 + 32);
    [WeakRetained _updateRecurringPaymentsWithCompletion:v6];

    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

void __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_5(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained || a2)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))();
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(WeakRetained + 134);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentRecurringPaymentDetailViewController: Manually updating recurring payment status for recurring payment: %@", buf, 0xCu);
    }

    v7 = *(WeakRetained + 141);
    v8 = [*(WeakRetained + 134) identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_279;
    v10[3] = &unk_1E8011090;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = *(a1 + 32);
    [v7 updateRecurringPaymentStatus:1 identifier:v8 completion:v10];

    objc_destroyWeak(&v12);
  }
}

void __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_279(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_2_280;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __90__PKPeerPaymentRecurringPaymentDetailViewController__pauseRecurringPaymentWithCompletion___block_invoke_2_280(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 134, *(a1 + 32));
    [v4 _updateSections];
    [v4 _updateBarButtonItems];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (void)_cancelRecurringPaymentWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  peerPaymentService = self->_peerPaymentService;
  v6 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__PKPeerPaymentRecurringPaymentDetailViewController__cancelRecurringPaymentWithCompletion___block_invoke;
  v8[3] = &unk_1E8011068;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [(PKPeerPaymentService *)peerPaymentService performRecurringPaymentAction:2 identifier:v6 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __91__PKPeerPaymentRecurringPaymentDetailViewController__cancelRecurringPaymentWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      [WeakRetained _showAlertForError:v4 completion:*(a1 + 32)];
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __91__PKPeerPaymentRecurringPaymentDetailViewController__cancelRecurringPaymentWithCompletion___block_invoke_2;
      v8[3] = &unk_1E80111D0;
      objc_copyWeak(&v10, (a1 + 40));
      v9 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], v8);

      objc_destroyWeak(&v10);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void __91__PKPeerPaymentRecurringPaymentDetailViewController__cancelRecurringPaymentWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained navigationController];
  if ([v2 pk_settings_useStateDrivenNavigation])
  {
    [v2 pk_settings_popViewController];
  }

  else
  {
    v3 = [v2 popViewControllerAnimated:1];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

- (void)memoIconWasTapped
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKPeerPaymentRecurringPaymentDetailViewController_memoIconWasTapped__block_invoke;
  block[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __70__PKPeerPaymentRecurringPaymentDetailViewController_memoIconWasTapped__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained overrideUserInterfaceStyle];
    v4 = [PKMemoIconChooserViewController alloc];
    v5 = [v10[159] recurringPaymentMemo];
    v6 = [(PKMemoIconChooserViewController *)v4 initWithDelegate:v10 memo:v5 context:*(*(a1 + 32) + 1080)];

    [(PKMemoIconChooserViewController *)v6 setOverrideUserInterfaceStyle:v3];
    v7 = [[PKNavigationController alloc] initWithRootViewController:v6];
    [(PKNavigationController *)v7 setOverrideUserInterfaceStyle:v3];
    v8 = *(a1 + 32);
    if (v8[135] == 9)
    {
      if (PKIsPad())
      {
        v9 = 0;
        goto LABEL_8;
      }

      v8 = *(a1 + 32);
    }

    if (![v8 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
LABEL_9:
      [v10 presentViewController:v7 animated:1 completion:0];

      WeakRetained = v10;
      goto LABEL_10;
    }

    v9 = 16;
LABEL_8:
    [(PKNavigationController *)v7 setModalPresentationStyle:v9];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)memoIconChooserDidChooseMemo:(id)a3
{
  [(PKPeerPaymentRecurringPaymentMemoSectionController *)self->_memoSectionController setRecurringPaymentMemoWithTextSuggestion:a3];
  [(PKDynamicCollectionViewController *)self reloadDataForSection:self->_memoSectionController animated:1];
  memoSectionController = self->_memoSectionController;

  [(PKPeerPaymentRecurringPaymentMemoSectionController *)memoSectionController requestBecomeFirstResponder];
}

- (void)fundingSourceSectionSelected
{
  if (self->_paymentRequest)
  {
    v3 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment fundingSource];
    v4 = [v3 fpanIdentifier];

    if (!self->_selectedPass)
    {
      if ([v4 length])
      {
        v5 = [MEMORY[0x1E69B8A58] sharedInstance];
        v6 = [v5 passWithFPANIdentifier:v4];
        selectedPass = self->_selectedPass;
        self->_selectedPass = v6;
      }
    }

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__PKPeerPaymentRecurringPaymentDetailViewController_fundingSourceSectionSelected__block_invoke;
    v8[3] = &unk_1E8010998;
    objc_copyWeak(&v9, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __81__PKPeerPaymentRecurringPaymentDetailViewController_fundingSourceSectionSelected__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = [PKPaymentMethodSelectionViewController alloc];
    v3 = *(v11 + 138);
    v4 = *(v11 + 137);
    v5 = [*(v11 + 134) fundingSource];
    v6 = [v5 name];
    v7 = [*(v11 + 134) fundingSource];
    v8 = [v7 fpanIdentifier];
    v9 = -[PKPaymentMethodSelectionViewController initWithPaymentRequest:selectedPass:paymentMethodName:paymentMethodIdentifier:allowAppleCashToggle:useAppleCashBalance:viewStyle:delegate:](v2, "initWithPaymentRequest:selectedPass:paymentMethodName:paymentMethodIdentifier:allowAppleCashToggle:useAppleCashBalance:viewStyle:delegate:", v3, v4, v6, v8, 1, [*(v11 + 156) useAppleCashBalance], 0, v11);

    v10 = [v11 navigationController];
    if ([v10 pk_settings_useStateDrivenNavigation])
    {
      [v10 pk_settings_pushViewController:v9];
    }

    else
    {
      [v10 pushViewController:v9 animated:1];
    }

    WeakRetained = v11;
  }
}

- (void)paymentMethodSelectionViewController:(id)a3 didSelectPaymentMethod:(id)a4
{
  v16 = a4;
  v6 = [(PKPaymentPass *)self->_selectedPass uniqueID];
  v7 = [v16 uniqueID];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
    }

    else
    {
      v12 = [v8 isEqualToString:v9];

      if (v12)
      {
        goto LABEL_12;
      }
    }

    objc_storeStrong(&self->_selectedPass, a4);
    fundingSourceSectionController = self->_fundingSourceSectionController;
    v8 = [(PKPaymentPass *)self->_selectedPass localizedDescription];
    [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)fundingSourceSectionController setFundingSource:v8];
  }

LABEL_12:
  v14 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self navigationController];
  if ([v14 pk_settings_useStateDrivenNavigation])
  {
    [v14 pk_settings_popViewController];
  }

  else
  {
    v15 = [v14 popViewControllerAnimated:1];
  }
}

- (void)paymentMethodSelectionViewController:(id)a3 didToggleUseAppleCashBalance:(BOOL)a4
{
  v4 = a4;
  v6 = [(PKPeerPaymentController *)self->_peerPaymentController peerPaymentPass];
  PKUpdatePeerPaymentBalanceUsagePreference();

  fundingSourceSectionController = self->_fundingSourceSectionController;

  [(PKPeerPaymentRecurringPaymentDetailFundingSourceSectionController *)fundingSourceSectionController setUseAppleCashBalance:v4];
}

- (void)didSelectAmountSection
{
  if (self->_mode == 1)
  {
    v4 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self navigationController];
    if ([v4 pk_settings_useStateDrivenNavigation])
    {
      [v4 pk_settings_popViewController];
    }

    else
    {
      v3 = [v4 popViewControllerAnimated:1];
    }
  }
}

- (void)recurringPaymentsChanged
{
  objc_initWeak(&location, self);
  peerPaymentService = self->_peerPaymentService;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PKPeerPaymentRecurringPaymentDetailViewController_recurringPaymentsChanged__block_invoke;
  v4[3] = &unk_1E8011158;
  objc_copyWeak(&v5, &location);
  [(PKPeerPaymentService *)peerPaymentService recurringPaymentsWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __77__PKPeerPaymentRecurringPaymentDetailViewController_recurringPaymentsChanged__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _reloadWithPayments:v5];
  }
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  v2 = [(PKPeerPaymentRecurringPaymentDetailViewController *)self overrideUserInterfaceStyle]== 2;
  v3 = v2;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (PKPeerPaymentRecurringPaymentDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end