@interface PKPeerPaymentAssociatedAccountActivationViewController
- (BOOL)_isAssociatedAccountPending;
- (PKPeerPaymentAssociatedAccountActivationViewController)initWithPeerPaymentSetupFlowController:(id)a3;
- (unint64_t)_nextStateAfterCheckingFamilyMemberAppleCashCapabilities:(BOOL *)a3;
- (void)_cancelTimer;
- (void)_checkFamilyMemberAppleCashCapabilities;
- (void)_handlePeerPaymentAccountDidChangeNotification;
- (void)_presentDisplayableError:(id)a3;
- (void)_sendMoneyInMessages;
- (void)_setState:(unint64_t)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)_startTimerIfNeccessary;
- (void)_terminateAddAssociatedAccountFlowWithSucces:(BOOL)a3 updatedAccount:(id)a4;
- (void)dealloc;
- (void)deviceSharingCapabilitiesUpdated:(id)a3 maximumPossibleDevices:(int64_t)a4 forAppleID:(id)a5;
- (void)deviceSharingCapabilitiesUpdated:(id)a3 newSharingCapabilties:(id)a4 forAppleID:(id)a5;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentAssociatedAccountActivationViewController

- (PKPeerPaymentAssociatedAccountActivationViewController)initWithPeerPaymentSetupFlowController:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentAssociatedAccountActivationViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v20, sel_initWithContext_, [v5 context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
    v8 = [(PKPeerPaymentSetupFlowController *)v7->_controller deviceCapabiltiesManager];
    [v8 registerObserver:v7];

    v9 = [(PKPeerPaymentSetupFlowController *)v7->_controller configuration];
    v10 = [v9 peerPaymentSetupConfigurationType];

    if (v10 == 1)
    {
      v11 = [(PKPeerPaymentSetupFlowController *)v7->_controller configuration];
      v12 = [v11 familyMember];
      familyMember = v7->_familyMember;
      v7->_familyMember = v12;

      v14 = [v11 associatedAccountSetupDelegate];
      objc_storeWeak(&v7->_delegate, v14);

      v7->_setupType = [v11 setupType];
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = *MEMORY[0x1E69BC378];
    v17 = [(PKPeerPaymentSetupFlowController *)v7->_controller peerPaymentWebService];
    v18 = [v17 targetDevice];
    [v15 addObserver:v7 selector:sel__handlePeerPaymentAccountDidChangeNotification name:v16 object:v18];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(PKPeerPaymentSetupFlowController *)self->_controller deviceCapabiltiesManager];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = PKPeerPaymentAssociatedAccountActivationViewController;
  [(PKPeerPaymentAssociatedAccountActivationViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PKPeerPaymentAssociatedAccountActivationViewController;
  [(PKExplanationViewController *)&v14 viewDidLoad];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  v3 = [(PKPeerPaymentAssociatedAccountActivationViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setDelegate:self];
  [v4 setForceShowSetupLaterButton:0];
  [v4 setShowPrivacyView:0];
  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsBridge() & 1) == 0)
  {
    v5 = PKPassKitUIBundle();
    v6 = [v5 URLForResource:@"AppleCashIcon" withExtension:@"pdf"];
    v7 = PKUIScreenScale();
    v8 = PKUIImageFromPDF(v6, 80.0, 80.0, v7);

    [v4 setImage:v8];
    v9 = [v4 imageView];
    [v9 setClipsToBounds:1];
    [v9 _setContinuousCornerRadius:20.0];
    [v4 setTopMargin:30.0];
  }

  v10 = [(PKPeerPaymentSetupFlowController *)self->_controller peerPaymentAccount];
  account = self->_account;
  self->_account = v10;

  v12 = objc_alloc_init(PKPeerPaymentIconEducationView);
  iconEducationView = self->_iconEducationView;
  self->_iconEducationView = v12;

  [(PKPeerPaymentAssociatedAccountActivationViewController *)self _setState:1];
}

- (void)_setState:(unint64_t)a3
{
  v103 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != a3)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PKPeerPaymentAssociatedAccountActivationStateToString(state);
      v8 = PKPeerPaymentAssociatedAccountActivationStateToString(a3);
      *buf = 138412546;
      v100 = v7;
      v101 = 2112;
      v102 = v8;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentAssociatedAccountActivationViewController transitioning from state %@ to state %@", buf, 0x16u);
    }

    self->_state = a3;
    v9 = [(PKFamilyMember *)self->_familyMember firstName];
    v10 = [(PKExplanationViewController *)self explanationView];
    v11 = [v10 dockView];
    v12 = [v11 footerView];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke;
    aBlock[3] = &unk_1E8020298;
    v13 = v10;
    v91 = v13;
    v14 = v11;
    v92 = v14;
    v15 = v12;
    v93 = v15;
    v94 = self;
    v16 = _Block_copy(aBlock);
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_2;
    v87[3] = &unk_1E8012FD0;
    v17 = v14;
    v88 = v17;
    v89 = self;
    v18 = _Block_copy(v87);
    v19 = v18;
    v20 = self->_state;
    v21 = 4;
    if (v20 <= 5)
    {
      if (v20 > 2)
      {
        if ((v20 - 3) < 2)
        {
          v84 = v15;
          v22 = v9;
          (*(v18 + 2))(v18, 0);
          v23 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_12.isa);
          v24 = [(PKPeerPaymentAccount *)self->_account supportsFamilySharingFeatureDescriptor];
          v25 = [v24 osVersionRange];

          v26 = [v25 minimum];
          v27 = [v26 iphone];

          v28 = [v25 minimum];
          v29 = [v28 watch];

          if (v27 && v29)
          {
            PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_13.isa, &stru_1F3BDB530.isa, v22, v27, v29, v22);
          }

          else
          {
            PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_14.isa, &stru_1F3BD5BF0.isa, v22);
          }
          v66 = ;
          (*(v16 + 2))(v16, v23, v66, 0, 1, 0);

          v21 = 4;
          v9 = v22;
LABEL_38:
          v15 = v84;
          goto LABEL_39;
        }

        if (v20 == 5)
        {
          (*(v18 + 2))(v18, 0);
          v80 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_15.isa);
          v82 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_16.isa);
          v78 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_17.isa, &stru_1F3BD6370.isa, v9, v82);
          v51 = [v78 rangeOfString:v82];
          v74 = v52;
          v76 = v51;
          v53 = objc_alloc(MEMORY[0x1E696AD40]);
          v97 = *MEMORY[0x1E69DB650];
          [MEMORY[0x1E69DC888] labelColor];
          v54 = v15;
          v56 = v55 = v9;
          v98 = v56;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v58 = [v53 initWithString:v78 attributes:v57];

          v9 = v55;
          v15 = v54;
          v59 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/102660"];
          v60 = [MEMORY[0x1E69DC888] linkColor];
          [v58 pk_addLinkURL:v59 toRange:v76 withColor:v74 isUnderlined:{v60, 0}];

          v61 = [v58 copy];
          v45 = v80;
          (*(v16 + 2))(v16, v80, 0, v61, 1, 0);

          v46 = v82;
          goto LABEL_23;
        }

LABEL_39:
        [v13 setTitleAlignment:v21];
        [v13 setBodyTextAlignment:v21];

        return;
      }

      if (v20 == 1)
      {
        v21 = 1;
        (*(v18 + 2))(v18, 1);
        [(PKPeerPaymentIconEducationView *)self->_iconEducationView removeFromSuperview];
        v63 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAct.isa);
        [v13 setTitleText:v63];

        v64 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_9.isa);
        [v13 setBodyText:v64];

        controller = self->_controller;
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_3;
        v86[3] = &unk_1E80129B0;
        v86[4] = self;
        [(PKPeerPaymentSetupFlowController *)controller nextViewControllerAfterPerfomingOperations:128 completion:v86];
        goto LABEL_39;
      }

      if (v20 != 2)
      {
        goto LABEL_39;
      }

      (*(v18 + 2))(v18, 1);
      v50 = [(PKPeerPaymentSetupFlowController *)self->_controller peerPaymentService];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_4;
      v85[3] = &unk_1E80140E8;
      v85[4] = self;
      [v50 updateAccountAndAssociatedAccountsWithCompletion:v85];
LABEL_27:

      goto LABEL_28;
    }

    if (v20 <= 7)
    {
      if (v20 != 6)
      {
        (*(v18 + 2))(v18, 0);
        v81 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_20.isa);
        v30 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_22.isa);
        v31 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_21.isa, &stru_1F3BD6370.isa, v9, v30);

        v32 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_22.isa);
        v33 = v31;
        v75 = v31;
        v34 = [v31 rangeOfString:v32];
        v77 = v35;
        v79 = v34;

        v36 = objc_alloc(MEMORY[0x1E696AD40]);
        v95 = *MEMORY[0x1E69DB650];
        v37 = [MEMORY[0x1E69DC888] labelColor];
        v96 = v37;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v38 = v15;
        v40 = v39 = v9;
        v41 = [v36 initWithString:v33 attributes:v40];

        v9 = v39;
        v15 = v38;

        v42 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/kb/HT211324"];
        v43 = [MEMORY[0x1E69DC888] linkColor];
        [v41 pk_addLinkURL:v42 toRange:v79 withColor:v77 isUnderlined:{v43, 0}];

        v44 = [v41 copy];
        v45 = v81;
        (*(v16 + 2))(v16, v81, 0, v44, 1, 0);

        v46 = v75;
LABEL_23:

LABEL_28:
        v21 = 4;
        goto LABEL_39;
      }

      (*(v18 + 2))(v18, 0);
      v50 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_18.isa);
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_19.isa, &stru_1F3BD5BF0.isa, v9);
      goto LABEL_26;
    }

    if (v20 == 8)
    {
      (*(v18 + 2))(v18, 0);
      v50 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_12.isa);
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_23.isa, &stru_1F3BD5BF0.isa, v9);
      v62 = LABEL_26:;
      (*(v16 + 2))(v16, v50, v62, 0, 1, 0);

      goto LABEL_27;
    }

    if (v20 != 9)
    {
      goto LABEL_39;
    }

    (*(v18 + 2))(v18, 0);
    v47 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_24.isa);
    setupType = self->_setupType;
    v83 = v9;
    v84 = v15;
    if (setupType == 1)
    {
      v72 = v9;
      v73 = v9;
      v49 = PKLocalizedFeatureString();
    }

    else
    {
      if (setupType)
      {
        v67 = 0;
        goto LABEL_35;
      }

      v49 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_25.isa, &stru_1F3BD5BF0.isa, v9);
    }

    v67 = v49;
LABEL_35:
    [(PKExplanationViewController *)self context:v72];
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
    if ((IsSetupAssistant & 1) == 0)
    {
      [v15 manualEntryButton];
      v70 = v69 = v47;
      v71 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_26.isa);
      [v70 setTitle:v71 forState:0];

      [v70 addTarget:self action:sel__sendMoneyInMessages forControlEvents:64];
      v47 = v69;
    }

    [v13 setTitleLineBreakStrategy:1];
    [v13 showCheckmark:1 animated:1];
    (*(v16 + 2))(v16, v47, v67, 0, IsSetupAssistant, 1);

    v21 = 4;
    v9 = v83;
    goto LABEL_38;
  }
}

void __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, int a6)
{
  v18 = a3;
  v11 = a4;
  [*(a1 + 32) setTitleText:a2];
  v12 = *(a1 + 32);
  if (v18)
  {
    [v12 setBodyText:?];
  }

  else
  {
    [v12 setAttributedBodyText:v11];
  }

  v13 = [*(a1 + 40) primaryButton];
  v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentAdd_11.isa);
  [v13 setTitle:v14 forState:0];

  if (a5)
  {
    [*(a1 + 48) setManualEntryButton:0];
  }

  [*(a1 + 48) setSetUpLaterButton:0];
  v15 = *(*(a1 + 56) + 1120);
  if (a6)
  {
    [v15 setShowIconsView:1];
    v16 = *(a1 + 56);
    v17 = v16[140];
    [v16 context];
    [v17 setShowWatchView:PKPaymentSetupContextIsBridge()];
    [*(a1 + 32) setBodyView:*(*(a1 + 56) + 1120)];
  }

  else
  {
    [v15 removeFromSuperview];
  }
}

uint64_t __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setHidden:a2];
  v4 = *(a1 + 40);

  return [v4 _showSpinner:a2];
}

void __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_3(uint64_t a1, void *a2, int a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  if (v7)
  {
    [*(a1 + 32) _presentDisplayableError:v7];
  }

  else if (a3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1096));
    [WeakRetained addPeerPaymentAssociatedAccountSetupCompletedWithSucess:0 updatedAccount:0 forFamilyMember:*(*(a1 + 32) + 1088)];
  }

  else
  {
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = [v9 navigationController];
      [v10 pk_presentPaymentSetupViewController:v11 animated:1 completion:0];
    }

    else
    {
      [v9 _setState:2];
    }
  }
}

void __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_5;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __68__PKPeerPaymentAssociatedAccountActivationViewController__setState___block_invoke_5(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1128), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _checkFamilyMemberAppleCashCapabilities];
}

- (BOOL)_isAssociatedAccountPending
{
  v3 = [(PKFamilyMember *)self->_familyMember altDSID];
  v4 = [(PKPeerPaymentAccount *)self->_account peerPaymentAccountWithAltDSID:v3];
  v5 = [(PKPeerPaymentAccount *)self->_account accountInvitationWithAltDSID:v3];
  v6 = v5;
  v7 = v5 && [v5 status] == 1 || v4 == 0;

  return v7;
}

- (void)_cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }
}

- (void)_startTimerIfNeccessary
{
  if (!self->_timer && !self->_timerHasFired)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    timer = self->_timer;
    self->_timer = v3;

    v5 = self->_timer;
    v6 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v7 = self->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __81__PKPeerPaymentAssociatedAccountActivationViewController__startTimerIfNeccessary__block_invoke;
    handler[3] = &unk_1E8010970;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    v8 = self->_timer;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__PKPeerPaymentAssociatedAccountActivationViewController__startTimerIfNeccessary__block_invoke_112;
    v11[3] = &unk_1E8010970;
    v11[4] = self;
    dispatch_source_set_cancel_handler(v8, v11);
    dispatch_resume(self->_timer);
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Starting timer to wait for IDS responses for apple cash capabilities.", v10, 2u);
    }
  }
}

uint64_t __81__PKPeerPaymentAssociatedAccountActivationViewController__startTimerIfNeccessary__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 1136))
  {
    v1 = result;
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Apple cash capabilities fetch timer fired.", v5, 2u);
    }

    v3 = *(v1 + 32);
    v4 = *(v3 + 1136);
    *(v3 + 1136) = 0;

    *(*(v1 + 32) + 1144) = 1;
    return [*(v1 + 32) _checkFamilyMemberAppleCashCapabilities];
  }

  return result;
}

void __81__PKPeerPaymentAssociatedAccountActivationViewController__startTimerIfNeccessary__block_invoke_112(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1136);
  *(v2 + 1136) = 0;

  *(*(a1 + 32) + 1144) = 1;
}

- (void)_checkFamilyMemberAppleCashCapabilities
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentAssociatedAccountActivationViewController: Checking family member apple cash capabilities", buf, 2u);
  }

  if (self->_state - 3 <= 6)
  {
    [(PKPeerPaymentAssociatedAccountActivationViewController *)self _cancelTimer];
    return;
  }

  if (![(PKPeerPaymentAssociatedAccountActivationViewController *)self _isAssociatedAccountPending]|| [(PKExplanationViewController *)self context]== 5)
  {
    [(PKPeerPaymentAssociatedAccountActivationViewController *)self _cancelTimer];
    [(PKPeerPaymentAssociatedAccountActivationViewController *)self _setState:9];
    return;
  }

  v4 = [(PKPeerPaymentSetupFlowController *)self->_controller deviceCapabiltiesManager];
  v5 = [(PKFamilyMember *)self->_familyMember appleID];
  v6 = [v4 currentFetchStatusForAppleID:v5];

  if (![v6 deviceCountFetchInProgress] || objc_msgSend(v6, "secondsPassedSinceFetchStart") < 11)
  {
    [(PKPeerPaymentAssociatedAccountActivationViewController *)self _startTimerIfNeccessary];
    if (!self->_timerHasFired && ([v6 deviceCountFetchInProgress] & 1) != 0)
    {
      goto LABEL_29;
    }

    v7 = [(PKFamilyMember *)self->_familyMember appleID];
    v8 = [v6 fetchError];
    v9 = v8;
    if (!v8)
    {
      if ([v6 allPossibleCapabilitiesFetched])
      {
        state = [(PKPeerPaymentAssociatedAccountActivationViewController *)self _nextStateAfterCheckingFamilyMemberAppleCashCapabilities:0];
      }

      else
      {
        v16 = 0;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Not all apple cash device capabilities have been fetched yet. Checking if one of the existing ones it capable.", buf, 2u);
        }

        state = [(PKPeerPaymentAssociatedAccountActivationViewController *)self _nextStateAfterCheckingFamilyMemberAppleCashCapabilities:&v16];
        if (!self->_timerHasFired && (v16 & 1) == 0)
        {
          state = self->_state;
        }
      }

      goto LABEL_28;
    }

    v10 = [v8 domain];
    v11 = *MEMORY[0x1E69A4770];
    v12 = v10;
    v13 = v12;
    if (v12 == v11)
    {
    }

    else
    {
      if (!v12 || !v11)
      {

        goto LABEL_27;
      }

      v14 = [v12 isEqualToString:v11];

      if (!v14)
      {
        goto LABEL_27;
      }
    }

    if ([v9 code] == 3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "The handle %@ is not registered with IDS which means they dont have a device signed in", buf, 0xCu);
      }

      state = 3;
      goto LABEL_28;
    }

LABEL_27:
    state = 7;
LABEL_28:
    [(PKPeerPaymentAssociatedAccountActivationViewController *)self _setState:state];

    goto LABEL_29;
  }

  [(PKPeerPaymentAssociatedAccountActivationViewController *)self _cancelTimer];
  [(PKPeerPaymentAssociatedAccountActivationViewController *)self _setState:7];
LABEL_29:
}

- (unint64_t)_nextStateAfterCheckingFamilyMemberAppleCashCapabilities:(BOOL *)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = [(PKFamilyMember *)self->_familyMember appleID];
  v50 = self;
  v6 = [(PKPeerPaymentSetupFlowController *)self->_controller deviceCapabiltiesManager];
  v7 = [v6 currentFetchStatusForAppleID:v5];

  if ([v7 deviceCountFetchInProgress])
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v5;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "The initial IDS fetch is still progress for %@. Handling this as an unknown error", buf, 0xCu);
    }

    v9 = 7;
    goto LABEL_79;
  }

  v10 = [v7 fetchedCapabilities];
  v11 = [v10 count];

  if (!v11)
  {
    v41 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v5;
      _os_log_impl(&dword_1BD026000, v41, OS_LOG_TYPE_DEFAULT, "The handle %@ has no devices", buf, 0xCu);
    }

    if (a3)
    {
      *a3 = 0;
    }

    v9 = 3;
    goto LABEL_79;
  }

  v12 = [(PKPeerPaymentAccount *)v50->_account supportsFamilySharingFeatureDescriptor];
  v47 = [v12 osVersionRange];

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v47 asDictionary];
    *buf = 138412546;
    v57 = v5;
    v58 = 2112;
    v59 = v14;
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Checking apple cash capabilites for %@ using required OS range %@", buf, 0x16u);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = [v7 fetchedCapabilities];
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v16)
  {

    v38 = 0;
    v9 = 7;
    goto LABEL_76;
  }

  v17 = v16;
  obj = v15;
  v43 = a3;
  v44 = v7;
  v45 = v5;
  v46 = 0;
  v48 = 0;
  v18 = *v52;
LABEL_10:
  v19 = 0;
  while (1)
  {
    if (*v52 != v18)
    {
      objc_enumerationMutation(obj);
    }

    v20 = *(*(&v51 + 1) + 8 * v19);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v20;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Checking apple cash device capabilities for %@", buf, 0xCu);
    }

    v21 = [(__CFString *)v20 fromDeviceVersion];
    v22 = [(__CFString *)v20 deviceRegion];
    v23 = [(PKPeerPaymentSetupFlowController *)v50->_controller paymentWebService];
    v24 = [v23 context];
    v25 = [v24 configuration];

    if (([v25 peerPaymentEnabledForRegion:v22] & 1) == 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v57 = v22;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "This devices apple cash capabilities are not supported since %@ is not an eligible region", buf, 0xCu);
      }

      v48 = 1;
      goto LABEL_42;
    }

    if (([(__CFString *)v20 supportsManatee]& 1) == 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "This devices apple cash capabilities are not supported since its not manatee capable", buf, 2u);
      }

      BYTE4(v46) = 1;
      goto LABEL_42;
    }

    if (v21)
    {
      break;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = v13;
      v32 = "Cannot check apple cash device capabilities for nil fromDeviceVersion";
LABEL_40:
      _os_log_impl(&dword_1BD026000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
    }

LABEL_41:
    LOBYTE(v46) = 1;
LABEL_42:

LABEL_43:
    if (v17 == ++v19)
    {
      v37 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      v17 = v37;
      if (v37)
      {
        goto LABEL_10;
      }

      v38 = 0;
      v39 = 5;
      v40 = BYTE4(v46);
      if (v48)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }
  }

  if (!v47 && (PKPeerPaymentSkipFamilySharingVersionCheck() & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = v13;
      v32 = "Cannot check apple cash device capabilities for nil requiredOSVersionRange. The osVersionRequirement is probably not set on the supported feature";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v26 = [v21 iphone];

  if (v26)
  {
    v27 = [v47 versionMeetsRequirements:v21 deviceClass:@"iPhone"];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      if (v27)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      v57 = v28;
      v29 = v13;
      v30 = "Compared version requirements for phone. Meets requirements %@";
      goto LABEL_50;
    }

LABEL_51:

    if (PKPeerPaymentSkipFamilySharingVersionCheck())
    {
      goto LABEL_66;
    }

    if (v27)
    {
      goto LABEL_69;
    }

LABEL_53:
    LOBYTE(v46) = 1;
    goto LABEL_43;
  }

  v33 = [v21 ipad];

  if (v33)
  {
    v27 = [v47 versionMeetsRequirements:v21 deviceClass:@"iPad"];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v34 = @"NO";
    if (v27)
    {
      v34 = @"YES";
    }

    *buf = 138412290;
    v57 = v34;
    v29 = v13;
    v30 = "Compared version requirements for ipad. Meets requirements %@";
LABEL_50:
    _os_log_impl(&dword_1BD026000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
    goto LABEL_51;
  }

  v35 = [v21 watch];

  if (v35)
  {
    v27 = [v47 versionMeetsRequirements:v21 deviceClass:@"Watch"];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    v36 = @"NO";
    if (v27)
    {
      v36 = @"YES";
    }

    *buf = 138412290;
    v57 = v36;
    v29 = v13;
    v30 = "Compared version requirements for watch. Meets requirements %@";
    goto LABEL_50;
  }

  if (!PKPeerPaymentSkipFamilySharingVersionCheck())
  {
    goto LABEL_53;
  }

LABEL_66:
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Skipping family sharing required version check", buf, 2u);
  }

LABEL_69:
  v38 = 1;
  v39 = 8;
  v40 = 1;
  if ((v48 & 1) == 0)
  {
LABEL_58:
    a3 = v43;
    if (v46)
    {
      goto LABEL_71;
    }

    v9 = 7;
    goto LABEL_74;
  }

LABEL_70:
  a3 = v43;
  if (v46)
  {
LABEL_71:
    v7 = v44;
    v5 = v45;
    if ((v40 & 1) == 0)
    {
      v9 = 4;
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v9 = 6;
LABEL_74:
  v7 = v44;
  v5 = v45;
  if ((v40 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_75:
  v9 = v39;
LABEL_76:
  if (a3)
  {
    *a3 = v38;
  }

LABEL_79:
  return v9;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  account = self->_account;
  v7 = WeakRetained;
  if (account)
  {
    [WeakRetained addPeerPaymentAssociatedAccountSetupCompletedWithSucess:1 updatedAccount:account forFamilyMember:self->_familyMember];
  }

  else
  {
    v6 = [(PKPeerPaymentSetupFlowController *)self->_controller peerPaymentAccount];
    [v7 addPeerPaymentAssociatedAccountSetupCompletedWithSucess:1 updatedAccount:v6 forFamilyMember:self->_familyMember];
  }
}

- (void)deviceSharingCapabilitiesUpdated:(id)a3 newSharingCapabilties:(id)a4 forAppleID:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __124__PKPeerPaymentAssociatedAccountActivationViewController_deviceSharingCapabilitiesUpdated_newSharingCapabilties_forAppleID___block_invoke;
  block[3] = &unk_1E8010A88;
  v12 = v8;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __124__PKPeerPaymentAssociatedAccountActivationViewController_deviceSharingCapabilitiesUpdated_newSharingCapabilties_forAppleID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentAssociatedAccountActivationViewController deviceSharingCapabilitiesUpdated:newSharingCapabilties called for handle %@, %@", &v6, 0x16u);
  }

  return [*(a1 + 48) _checkFamilyMemberAppleCashCapabilities];
}

- (void)deviceSharingCapabilitiesUpdated:(id)a3 maximumPossibleDevices:(int64_t)a4 forAppleID:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__PKPeerPaymentAssociatedAccountActivationViewController_deviceSharingCapabilitiesUpdated_maximumPossibleDevices_forAppleID___block_invoke;
  block[3] = &unk_1E8010A88;
  v12 = v8;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __125__PKPeerPaymentAssociatedAccountActivationViewController_deviceSharingCapabilitiesUpdated_maximumPossibleDevices_forAppleID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentAssociatedAccountActivationViewController deviceSharingCapabilitiesUpdated:maximumPossibleDevices called for handle %@, %@", &v6, 0x16u);
  }

  return [*(a1 + 48) _checkFamilyMemberAppleCashCapabilities];
}

- (void)_handlePeerPaymentAccountDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPeerPaymentAssociatedAccountActivationViewController__handlePeerPaymentAccountDidChangeNotification__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __104__PKPeerPaymentAssociatedAccountActivationViewController__handlePeerPaymentAccountDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentAssociatedAccountActivationViewController _handlePeerPaymentAccountDidChangeNotification", v9, 2u);
  }

  v3 = [*(*(a1 + 32) + 1080) peerPaymentWebService];
  v4 = [v3 targetDevice];
  v5 = [v4 account];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1128);
  *(v6 + 1128) = v5;

  return [*(a1 + 32) _checkFamilyMemberAppleCashCapabilities];
}

- (void)_sendMoneyInMessages
{
  v8 = [(PKFamilyMember *)self->_familyMember appleID];
  v3 = [MEMORY[0x1E696AB90] zero];
  v4 = [(PKPeerPaymentSetupFlowController *)self->_controller peerPaymentAccount];
  v5 = [v4 currentBalance];
  v6 = [v5 currency];

  v7 = PKPeerPaymentGetSendPaymentSensitiveURL();
  if (v7)
  {
    PKOpenURL();
  }
}

- (void)_presentDisplayableError:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKPeerPaymentAssociatedAccountActivationViewController__presentDisplayableError___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(a3, 0, v6, 0);
  if (v4)
  {
    v5 = [(PKPeerPaymentAssociatedAccountActivationViewController *)self navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [(PKPeerPaymentAssociatedAccountActivationViewController *)self _terminateAddAssociatedAccountFlowWithSucces:0 updatedAccount:0];
  }
}

- (void)_terminateAddAssociatedAccountFlowWithSucces:(BOOL)a3 updatedAccount:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Terminating peer payment add associated account", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained addPeerPaymentAssociatedAccountSetupCompletedWithSucess:v4 updatedAccount:v6 forFamilyMember:self->_familyMember];
  }

  else
  {
    [(PKPeerPaymentAssociatedAccountActivationViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setShowSpinner:v3];
}

@end