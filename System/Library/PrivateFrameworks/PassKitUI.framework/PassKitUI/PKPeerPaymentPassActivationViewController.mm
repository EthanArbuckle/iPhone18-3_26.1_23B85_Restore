@interface PKPeerPaymentPassActivationViewController
- (BOOL)_shouldShowAddDebitCardViewController;
- (PKPeerPaymentPassActivationViewController)initWithPeerPaymentSetupFlowController:(id)a3;
- (id)_bodyStringForState;
- (id)_titleStringForState;
- (int64_t)_textAlignmentForState;
- (void)_beginSetup;
- (void)_handleActivatedState;
- (void)_invalidateCLInUseAssertion;
- (void)_presentActivationFailedErrorAlert;
- (void)_presentDisplayableError:(id)a3;
- (void)_setState:(unint64_t)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)_terminateSetupFlow;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPeerPaymentPassActivationViewController

- (PKPeerPaymentPassActivationViewController)initWithPeerPaymentSetupFlowController:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentPassActivationViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v20, sel_initWithContext_, [v5 context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerPaymentSetupFlowController, a3);
    [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController setParentViewController:v7];
    v8 = [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController configuration];
    v9 = [v8 peerPaymentSetupConfigurationType];

    if (!v9)
    {
      v10 = [(PKPeerPaymentSetupFlowController *)v7->_peerPaymentSetupFlowController configuration];
      v11 = [v10 setupDelegate];
      objc_storeWeak(&v7->_setupDelegate, v11);
    }

    v7->_operations = 58;
    v12 = [(PKExplanationViewController *)v7 explanationView];
    v13 = [PKPeerPaymentSetupFlowHeroView alloc];
    v14 = [v5 passSnapShot];
    v15 = [v5 peerPaymentCredential];
    v16 = [(PKPeerPaymentSetupFlowHeroView *)v13 initWithPeerPaymentPassSnapShot:v14 peerPaymentCredential:v15];
    heroView = v7->_heroView;
    v7->_heroView = v16;

    [v12 setHeroView:v7->_heroView];
    v18 = [(PKPeerPaymentPassActivationViewController *)v7 navigationItem];
    [v18 setHidesBackButton:1 animated:0];

    [(PKExplanationViewController *)v7 setShowCancelButton:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentPassActivationViewController;
  [(PKExplanationViewController *)&v6 viewDidLoad];
  v3 = [(PKExplanationViewController *)self explanationView];
  v4 = [v3 dockView];
  v5 = [v4 footerView];
  [v3 setShowPrivacyView:0];
  [v3 setDelegate:self];
  [v3 setTopMargin:12.0];
  [v5 setSetUpLaterButton:0];
  [(PKPeerPaymentPassActivationViewController *)self _beginSetup];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(PKPeerPaymentPassActivationViewController *)self _invalidateCLInUseAssertion];
  v5.receiver = self;
  v5.super_class = PKPeerPaymentPassActivationViewController;
  [(PKPeerPaymentPassActivationViewController *)&v5 viewWillDisappear:v3];
}

- (void)dealloc
{
  [(PKPeerPaymentPassActivationViewController *)self _invalidateCLInUseAssertion];
  v3.receiver = self;
  v3.super_class = PKPeerPaymentPassActivationViewController;
  [(PKPeerPaymentPassActivationViewController *)&v3 dealloc];
}

- (void)_invalidateCLInUseAssertion
{
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v4 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  if (self->_state == 2)
  {
    [(PKPeerPaymentPassActivationViewController *)self _handleActivatedState];
  }

  else
  {
    [(PKPeerPaymentPassActivationViewController *)self _terminateSetupFlow];
  }
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v9, 2u);
  }

  v4 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController flowItemDelegate];
  v5 = v4;
  if (v4)
  {
    [v4 peerPaymentSetupFlowControllerDidFinish:self->_peerPaymentSetupFlowController];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained viewControllerDidTerminateSetupFlow:self];
    }

    else
    {
      v8 = [(PKPeerPaymentPassActivationViewController *)self presentingViewController];
      [v8 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_beginSetup
{
  [(PKPeerPaymentPassActivationViewController *)self _setState:1];
  if (!self->_inUseAssertion)
  {
    v3 = MEMORY[0x1E695FBE0];
    v4 = PKPassKitCoreBundle();
    v5 = [v3 newAssertionForBundle:v4 withReason:@"Peer Payment registration"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v5;
  }

  peerPaymentSetupFlowController = self->_peerPaymentSetupFlowController;
  operations = self->_operations;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PKPeerPaymentPassActivationViewController__beginSetup__block_invoke;
  v9[3] = &unk_1E80129B0;
  v9[4] = self;
  [(PKPeerPaymentSetupFlowController *)peerPaymentSetupFlowController nextViewControllerAfterPerfomingOperations:operations completion:v9];
}

void __56__PKPeerPaymentPassActivationViewController__beginSetup__block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  [*(a1 + 32) _invalidateCLInUseAssertion];
  if (v8)
  {
    [*(a1 + 32) _presentDisplayableError:v8];
    [*(a1 + 32) _showSpinner:0];
  }

  else if (a3)
  {
    [*(a1 + 32) _showSpinner:0];
    [*(a1 + 32) _terminateSetupFlow];
  }

  else
  {
    v9 = *(a1 + 32);
    if (v7)
    {
      v10 = [v9 navigationController];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__PKPeerPaymentPassActivationViewController__beginSetup__block_invoke_2;
      v11[3] = &unk_1E8011D28;
      v11[4] = *(a1 + 32);
      [v10 pk_presentPaymentSetupViewController:v7 animated:1 completion:v11];
    }

    else
    {
      [v9 _setState:2];
    }
  }
}

- (void)_setState:(unint64_t)a3
{
  if (self->_state == a3)
  {
    return;
  }

  self->_state = a3;
  v21 = [(PKExplanationViewController *)self explanationView];
  state = self->_state;
  if (!state)
  {
    [(PKPeerPaymentPassActivationViewController *)self _showSpinner:0];
    [(PKPeerPaymentPassActivationViewController *)self _presentActivationFailedErrorAlert];
    goto LABEL_16;
  }

  if (state != 2)
  {
    if (state == 1)
    {
      v5 = [(PKPeerPaymentPassActivationViewController *)self _titleStringForState];
      [v21 setTitleText:v5];

      [v21 setTitleAlignment:{-[PKPeerPaymentPassActivationViewController _textAlignmentForState](self, "_textAlignmentForState")}];
      v6 = [(PKPeerPaymentPassActivationViewController *)self _bodyStringForState];
      [v21 setBodyText:v6];

      [v21 setBodyTextAlignment:{-[PKPeerPaymentPassActivationViewController _textAlignmentForState](self, "_textAlignmentForState")}];
      [v21 setTitleLineBreakStrategy:1];
      [(PKPeerPaymentPassActivationViewController *)self _showSpinner:1];
      v7 = [(PKExplanationViewController *)self explanationView];
      v8 = [v7 dockView];
      [v8 setHidden:1];

      v9 = [(PKPeerPaymentPassActivationViewController *)self navigationItem];
      [v9 setRightBarButtonItem:0];
LABEL_15:
    }

LABEL_16:
    v20 = [(PKPeerPaymentPassActivationViewController *)self view];
    PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], v20);
    [v20 setNeedsLayout];

    goto LABEL_17;
  }

  [(PKExplanationViewController *)self context];
  if (!PKPaymentSetupContextIsSetupAssistant())
  {
    v10 = [(PKPeerPaymentPassActivationViewController *)self _titleStringForState];
    [v21 setTitleText:v10];

    [v21 setTitleAlignment:{-[PKPeerPaymentPassActivationViewController _textAlignmentForState](self, "_textAlignmentForState")}];
    v11 = [(PKPeerPaymentPassActivationViewController *)self _bodyStringForState];
    [v21 setBodyText:v11];

    [v21 setBodyTextAlignment:{-[PKPeerPaymentPassActivationViewController _textAlignmentForState](self, "_textAlignmentForState")}];
    [v21 setTitleLineBreakStrategy:1];
    [(PKPeerPaymentPassActivationViewController *)self _showSpinner:0];
    v12 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController peerPaymentCredential];
    v13 = [v12 flowState];

    if (v13 == 2)
    {
      [(PKPeerPaymentSetupFlowHeroView *)self->_heroView startAnimation];
    }

    v14 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController peerPaymentWebService];
    v15 = [v14 targetDevice];
    [v15 setUserHasDisabledPeerPayment:0];

    v16 = [(PKExplanationViewController *)self explanationView];
    v9 = [v16 dockView];

    [v9 setHidden:0];
    v17 = [(PKPeerPaymentPassActivationViewController *)self _shouldShowAddDebitCardViewController];
    self->_shouldShowAddDebitCardViewController = v17;
    v18 = [v9 primaryButton];
    if (v17)
    {
      PKLocalizedPaymentString(&cfstr_Continue.isa);
    }

    else
    {
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet.isa);
    }
    v19 = ;
    [v18 setTitle:v19 forState:0];

    goto LABEL_15;
  }

  [(PKPeerPaymentPassActivationViewController *)self _handleActivatedState];
LABEL_17:
}

- (void)_handleActivatedState
{
  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsBridge() & 1) != 0 || (-[PKPeerPaymentSetupFlowController provisioningController](self->_peerPaymentSetupFlowController, "provisioningController"), v3 = objc_claimAutoreleasedReturnValue(), [v3 credentialProvisioningQueue], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "remaining"), v4, v3, v5) || !self->_shouldShowAddDebitCardViewController)
  {

    [(PKPeerPaymentPassActivationViewController *)self _terminateSetupFlow];
  }

  else
  {
    v7 = [[PKPaymentAddDebitCardViewController alloc] initWithPeerPaymentSetupFlowController:self->_peerPaymentSetupFlowController];
    v6 = [(PKPeerPaymentPassActivationViewController *)self navigationController];
    [v6 pushViewController:v7 animated:1];
  }
}

- (void)_presentDisplayableError:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PKPeerPaymentPassActivationViewController__presentDisplayableError___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(a3, 0, v6, 0);
  if (v4)
  {
    v5 = [(PKPeerPaymentPassActivationViewController *)self navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [(PKPeerPaymentPassActivationViewController *)self _terminateSetupFlow];
  }
}

- (void)_presentActivationFailedErrorAlert
{
  v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_0.isa);
  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_1.isa);
  v5 = PKDisplayableErrorCustom();

  [(PKPeerPaymentPassActivationViewController *)self _presentDisplayableError:v5];
}

- (BOOL)_shouldShowAddDebitCardViewController
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController provisioningController];
  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsBridge() & 1) != 0 || ([v3 credentialProvisioningQueue], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "remaining"), v4, v5))
  {
    v6 = 0;
  }

  else
  {
    v8 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController paymentWebService];
    v9 = [v8 targetDevice];

    [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController passesIncludingPeerPaymentPass:0 isCheckingTotalPassCount:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v26 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * i) devicePrimaryPaymentApplication];
          v16 = [v15 paymentType];

          if (v16 == 1)
          {

            v6 = 0;
            goto LABEL_24;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (PKDisableDynamicSEAllocation() && (v17 = [v10 pk_countObjectsPassingTest:&__block_literal_global_21]) != 0)
    {
      v18 = v17;
      if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v19 = [v9 maximumPaymentCards];
      }

      else
      {
        v20 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138543362;
          v28 = v22;
          _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - Target device did not respond to max payment cards. Assuming local maximum.", buf, 0xCu);
        }

        v19 = PKMaxPaymentCards();
      }

      v6 = v19 - 1 >= v18;
    }

    else
    {
      v6 = 1;
    }

LABEL_24:
  }

  return v6;
}

- (id)_titleStringForState
{
  state = self->_state;
  if (state == 1)
  {
    v4 = @"PEER_PAYMENT_ACTIVATING";
LABEL_5:
    v5 = PKLocalizedPeerPaymentString(&v4->isa);

    return v5;
  }

  if (state == 2)
  {
    v4 = @"PEER_PAYMENT_ACTIVATED";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_bodyStringForState
{
  v3 = [(PKPeerPaymentSetupFlowController *)self->_peerPaymentSetupFlowController peerPaymentCredential];
  v4 = v3;
  if (self->_state == 2)
  {
    v5 = [v3 flowState];
    if (v5 == 2)
    {
      v8 = [v4 pendingPaymentSenderName];
      v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSet_3.isa, &stru_1F3BD5BF0.isa, v8);
    }

    else
    {
      if (v5 == 1)
      {
        v6 = @"PEER_PAYMENT_SETUP_ACTIVATED_INCOMING_PAYMENT_MESSAGE";
      }

      else
      {
        v6 = @"PEER_PAYMENT_SETUP_ACTIVATED_DEFAULT_MESSAGE";
      }

      v7 = PKLocalizedPeerPaymentString(&v6->isa);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_textAlignmentForState
{
  result = self->_state;
  if (result == 2)
  {
    return PKOBKTextAlignment();
  }

  if (result != 1)
  {
    if (!result)
    {
      return PKOBKTextAlignment();
    }

    __break(1u);
  }

  return result;
}

- (void)_showSpinner:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setShowSpinner:v3];
}

@end