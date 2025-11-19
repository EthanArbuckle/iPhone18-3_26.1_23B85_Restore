@interface PKPaymentAuthorizationPresentationCoordinator
- (BOOL)_canPresentPaymentSheetWithEmptyPass;
- (BOOL)_shouldBlockHardwareCancels;
- (BOOL)handleHomeButtonPressed;
- (BOOL)isIssuerInstallmentsRepayment;
- (BOOL)supportsSecondaryViewController;
- (PKPaymentAuthorizationPresentationCoordinator)initWithContext:(id)a3 delegate:(id)a4;
- (UIViewController)primaryPresentingViewController;
- (UIViewController)secondaryPresentingViewController;
- (id)_createPaymentInterfaceConfigurationWithRelevantPassID:(id)a3;
- (id)_springboardButtonTagForEvent:(unint64_t)a3;
- (id)createConnectionToEndpoint:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_beginSubjectReporting:(id)a3;
- (void)_canPresentPaymentRequest:(id)a3 completion:(id)a4;
- (void)_checkEligibilityForDynamicButtonWithCompletion:(id)a3;
- (void)_endAnalyticsReporting;
- (void)_handlePaymentRequestPresentationResultType:(int64_t)a3 relevantUniqueID:(id)a4;
- (void)_openApplication:(id)a3;
- (void)_presentActivatingPassAlertWithRelevantUniqueID:(id)a3;
- (void)_presentAddCardAlert;
- (void)_presentAlertController:(id)a3;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 actionTitle:(id)a5 actionHandler:(id)a6;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 cancelTitle:(id)a5 actionTitle:(id)a6 actionHandler:(id)a7 finalError:(id)a8;
- (void)_presentAwaitingRemoteNetworkPaymentRequestWithRelevantUniqueID:(id)a3;
- (void)_presentEnrollAccessibilityIntentAlert;
- (void)_presentInvalidAlert;
- (void)_presentLostModeAlertWithRelevantUniqueID:(id)a3;
- (void)_presentNextStepDismissingCurrentInterface:(BOOL)a3 withDefaultPassID:(id)a4;
- (void)_presentOnboardingForContext:(int64_t)a3;
- (void)_presentPassNotSupportedAlertWithRelevantUniqueID:(id)a3;
- (void)_presentPaymentAuthorizationWithRelevantUniqueID:(id)a3;
- (void)_presentPaymentInterface:(id)a3 completion:(id)a4;
- (void)_presentPeerPaymentIdentityVerification;
- (void)_presentPeerPaymentIdentityVerificationAlert;
- (void)_presentVerifyPassAlertWithRelevantUniqueID:(id)a3;
- (void)_presentWalletUninstalledAlert;
- (void)_reportAddCardAlertPresentedAnalytics;
- (void)_reportConnectionEstablishedAnalyticsForConnection:(id)a3;
- (void)_reportEncounteredAuthorizationEvent:(unint64_t)a3;
- (void)_reportPaymentPassMissingAnalytics;
- (void)_reportPaymentRequestDetails;
- (void)_reportUnsupportedPaymentPassAnalytics;
- (void)_reportVerificationRequiredAnalytics;
- (void)_startAnalyticsReporting;
- (void)_startSuppressingNotificationsIfNecessary;
- (void)_stopSuppressingNotifications;
- (void)authorizationDidAuthorizeApplePayTrustSignature:(id)a3;
- (void)authorizationDidAuthorizeContext;
- (void)authorizationDidAuthorizePayment:(id)a3;
- (void)authorizationDidAuthorizePeerPaymentQuote:(id)a3;
- (void)authorizationDidAuthorizePurchase:(id)a3;
- (void)authorizationDidChangeCouponCode:(id)a3;
- (void)authorizationDidFinishWithError:(id)a3;
- (void)authorizationDidFulfillPaymentRequest:(id)a3 completion:(id)a4;
- (void)authorizationDidPresent;
- (void)authorizationDidRejectPaymentRequestPromise;
- (void)authorizationDidRequestMerchantSession;
- (void)authorizationDidSelectPaymentMethod:(id)a3;
- (void)authorizationDidSelectShippingAddress:(id)a3;
- (void)authorizationDidSelectShippingMethod:(id)a3;
- (void)authorizationDidUpdateAccountServicePaymentMethod:(id)a3;
- (void)authorizationWillStart;
- (void)dealloc;
- (void)didEncounterAuthorizationEvent:(unint64_t)a3;
- (void)dismissBothPresentationsAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissPrimaryViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissSecondaryViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)dismissWithReason:(unint64_t)a3 completion:(id)a4;
- (void)invalidate;
- (void)openConnection:(id)a3;
- (void)paymentAuthorizationOnboardingDidFinishWithError:(id)a3;
- (void)paymentAuthorizationProvisioningDidFinishWithPass:(id)a3;
- (void)presentAdditionalInAppPaymentWithContext:(id)a3 completion:(id)a4;
- (void)presentPaymentProvisioningDismissingAfterwards:(BOOL)a3;
- (void)presentSecondaryViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)start;
- (void)startAllowingAdditionalPaymentPresentation;
- (void)updatePrimaryPresentingViewController:(id)a3 isInitialPresentation:(BOOL)a4;
- (void)updateSecondaryPresentingViewController:(id)a3;
@end

@implementation PKPaymentAuthorizationPresentationCoordinator

- (unint64_t)supportedInterfaceOrientations
{
  if (PKUserInterfaceIdiomSupportsLargeLayouts() & 1) == 0 && (v2 = PKLandscapePaymentSheetEnabled() ^ 1, (v2))
  {
    return (1 << (v2 & 1));
  }

  else
  {
    return 30;
  }
}

- (PKPaymentAuthorizationPresentationCoordinator)initWithContext:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PKPaymentAuthorizationPresentationCoordinator;
  v9 = [(PKPaymentAuthorizationPresentationCoordinator *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_alloc_init(MEMORY[0x1E69B8960]);
    inAppPaymentService = v10->_inAppPaymentService;
    v10->_inAppPaymentService = v11;

    [(PKInAppPaymentService *)v10->_inAppPaymentService setDelegate:v10];
    v13 = objc_alloc_init(PKPaymentAuthorizationDefaultService);
    defaultService = v10->_defaultService;
    v10->_defaultService = v13;

    [(PKPaymentAuthorizationDefaultService *)v10->_defaultService setPresenter:v10];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v10 selector:sel__openApplication_ name:@"PKOpenApplicationNotification" object:0];
  }

  return v10;
}

- (void)dealloc
{
  [(PKPaymentAuthorizationPresentationCoordinator *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationPresentationCoordinator;
  [(PKPaymentAuthorizationPresentationCoordinator *)&v3 dealloc];
}

- (void)updatePrimaryPresentingViewController:(id)a3 isInitialPresentation:(BOOL)a4
{
  self->_isPrimaryInitialViewController = a4;
  objc_storeWeak(&self->_primaryPresentingViewController, a3);

  [(PKPaymentAuthorizationPresentationCoordinator *)self start];
}

- (void)updateSecondaryPresentingViewController:(id)a3
{
  v7 = a3;
  objc_storeWeak(&self->_secondaryPresentingViewController, v7);
  v4 = v7;
  if (v7)
  {
    pendingSecondaryViewController = self->_pendingSecondaryViewController;
    if (pendingSecondaryViewController)
    {
      [v7 presentViewController:pendingSecondaryViewController animated:1 completion:0];
      v6 = self->_pendingSecondaryViewController;
      self->_pendingSecondaryViewController = 0;

      v4 = v7;
    }
  }
}

- (void)start
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "==== Payment Authorization Flow Start ====", buf, 2u);
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self _startAnalyticsReporting];
  [(PKPaymentAuthorizationPresentationCoordinator *)self _startSuppressingNotificationsIfNecessary];
  inAppPaymentService = self->_inAppPaymentService;
  v5 = [(PKInAppPaymentPresentationHostContext *)self->_context identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKPaymentAuthorizationPresentationCoordinator_start__block_invoke;
  v6[3] = &unk_1E801F9D8;
  v6[4] = self;
  [(PKInAppPaymentService *)inAppPaymentService retrievePaymentListenerEndpointForHostIdentifier:v5 completion:v6];
}

void __54__PKPaymentAuthorizationPresentationCoordinator_start__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKPaymentAuthorizationPresentationCoordinator_start__block_invoke_2;
  block[3] = &unk_1E8013D60;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__PKPaymentAuthorizationPresentationCoordinator_start__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      v11 = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEBUG, "Retrieved payment listener endpoint: %@", &v11, 0xCu);
    }

    v3 = *(a1 + 32);
    if (v3[32] == 1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator invalidated, discarding endpoint.", &v11, 2u);
      }
    }

    else
    {
      v5 = [v3 createConnectionToEndpoint:*(a1 + 40)];
      v6 = *(a1 + 32);
      v7 = *(v6 + 64);
      *(v6 + 64) = v5;

      [*(a1 + 32) openConnection:*(*(a1 + 32) + 64)];
      v8 = [MEMORY[0x1E69BC740] userIntentStyle];
      v9 = *(a1 + 32);
      if (v8 == -1)
      {
        [v9 _presentEnrollAccessibilityIntentAlert];
      }

      else
      {
        [v9 _presentNextStepDismissingCurrentInterface:0 withDefaultPassID:0];
      }
    }
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 invalidate];
  }
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "==== Payment Authorization Flow End ====", buf, 2u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_dismissCompletions;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v15 + 1) + 8 * v8) + 16))(*(*(&v15 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v6);
    }

    dismissCompletions = self->_dismissCompletions;
    self->_dismissCompletions = 0;

    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentAuthorizationInterface *)self->_paymentInterface invalidate];
    }

    paymentInterface = self->_paymentInterface;
    self->_paymentInterface = 0;

    [(NSXPCConnection *)self->_hostConnection invalidate];
    hostConnection = self->_hostConnection;
    self->_hostConnection = 0;

    v12 = [MEMORY[0x1E69DC668] sharedApplication];
    [v12 pkui_resetSharedRootAuthenticationContext];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 removeObserver:self];

    [(PKPaymentAuthorizationPresentationCoordinator *)self _endAnalyticsReporting];
    [(PKInAppPaymentService *)self->_inAppPaymentService unregisterInterfaceAvailableForAdditionalPaymentRequestWithCompletion:0];
    [(PKPaymentAuthorizationPresentationCoordinator *)self _stopSuppressingNotifications];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained presentationCoordinatorDidInvalidate:self];
  }
}

- (void)startAllowingAdditionalPaymentPresentation
{
  if (self->_isPrimaryInitialViewController && (-[PKInAppPaymentPresentationHostContext request](self->_context, "request"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 requestType], v3, !v4))
  {
    inAppPaymentService = self->_inAppPaymentService;

    [(PKInAppPaymentService *)inAppPaymentService registerInterfaceAvailableForAdditionalPaymentRequestWithCompletion:&__block_literal_global_191];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Not allowing additional presentation", v7, 2u);
    }
  }
}

void __91__PKPaymentAuthorizationPresentationCoordinator_startAllowingAdditionalPaymentPresentation__block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Registered for additional payment presentations with success: %d", v4, 8u);
  }
}

void __90__PKPaymentAuthorizationPresentationCoordinator_stopAllowingAdditionalPaymentPresentation__block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Unregistered for additional payment presentations with success: %d", v4, 8u);
  }
}

- (id)createConnectionToEndpoint:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v4];
  v6 = PKPaymentAuthorizationHostInterface();
  [v5 setRemoteObjectInterface:v6];

  v7 = PKPaymentAuthorizationServiceInterface();
  [v5 setExportedInterface:v7];

  v8 = [PKPaymentAuthorizationServiceProxy alloc];
  v9 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v10 = [(PKPaymentAuthorizationServiceProxy *)v8 initWithConnection:v5 paymentRequest:v9];

  [(PKPaymentAuthorizationServiceProxy *)v10 setDelegate:self->_defaultService];
  [v5 setExportedObject:v10];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke;
  v14[3] = &unk_1E8010998;
  objc_copyWeak(&v15, &location);
  [v5 setInterruptionHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke_2;
  v12[3] = &unk_1E8010998;
  objc_copyWeak(&v13, &location);
  [v5 setInvalidationHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v5;
}

void __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator connection interrupted", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke_84;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke_84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator connection invalidated", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke_85;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __76__PKPaymentAuthorizationPresentationCoordinator_createConnectionToEndpoint___block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

- (void)openConnection:(id)a3
{
  v4 = a3;
  [v4 resume];
  objc_initWeak(&location, self);
  v5 = [v4 remoteObjectProxy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PKPaymentAuthorizationPresentationCoordinator_openConnection___block_invoke;
  v7[3] = &unk_1E80110E0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 handleConnectionDidOpenWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__PKPaymentAuthorizationPresentationCoordinator_openConnection___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__PKPaymentAuthorizationPresentationCoordinator_openConnection___block_invoke_2;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __64__PKPaymentAuthorizationPresentationCoordinator_openConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained context];
    v4 = [v3 awaitingRemoteNetworkPaymentRequest];

    WeakRetained = v5;
    if ((v4 & 1) == 0)
    {
      [v5 _reportConnectionEstablishedAnalyticsForConnection:*(a1 + 32)];
      WeakRetained = v5;
    }
  }
}

- (void)_beginSubjectReporting:(id)a3
{
  v8 = a3;
  v4 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v5 = [v4 clientAnalyticsParameters];
  v6 = [v5 objectForKey:*MEMORY[0x1E69BC170]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [MEMORY[0x1E69B8540] beginSubjectReporting:v8 withArchivedParent:v7];
  }

  else
  {
    [MEMORY[0x1E69B8540] beginSubjectReporting:v8];
  }
}

- (void)_startAnalyticsReporting
{
  v3 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v4 = [v3 clientAnalyticsParameters];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BC180]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *MEMORY[0x1E69BB6E0];
  if (isKindOfClass)
  {
    v7 = v5;
  }

  v8 = v7;

  [(PKPaymentAuthorizationPresentationCoordinator *)self _beginSubjectReporting:v8];
  if (([(PKInAppPaymentPresentationHostContext *)self->_context awaitingRemoteNetworkPaymentRequest]& 1) == 0)
  {
    [(PKPaymentAuthorizationPresentationCoordinator *)self _reportPaymentRequestDetails];
  }
}

- (void)_reportPaymentRequestDetails
{
  v163 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v4 = [v3 clientAnalyticsParameters];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69BC180]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *MEMORY[0x1E69BB6E0];
  if (isKindOfClass)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [MEMORY[0x1E69B8540] reporterForSubject:v8];

  if (!v9)
  {
    [(PKPaymentAuthorizationPresentationCoordinator *)self _beginSubjectReporting:v8];
  }

  v149 = v8;
  v10 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:12];
  v12 = [v10 supportedNetworks];
  v13 = [v12 componentsJoinedByString:{@", "}];

  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BADF8]];
  v14 = [v10 requestType];
  v150 = self;
  if (v14 > 0xF)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E801FB10[v14];
  }

  [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69BAE00]];
  v16 = [v10 merchantSession];
  v17 = [v16 merchantIdentifier];

  v18 = MEMORY[0x1E69BADE0];
  if (v17)
  {
    [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69BADE0]];
  }

  else
  {
    v19 = [v10 merchantIdentifier];
    [v11 setObject:v19 forKeyedSubscript:*v18];
  }

  v20 = [v10 originatingURL];

  if (v20)
  {
    v21 = [v10 originatingURL];
    v22 = [v21 host];
    [v11 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69BADD8]];
  }

  v23 = [v10 countryCode];
  if (v23)
  {
    [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69BADD0]];
  }

  v147 = v23;
  v148 = v17;
  v24 = [v10 merchantSession];
  v25 = [v24 operationalAnalyticsIdentifier];

  if (v25)
  {
    [v11 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BAD98]];
  }

  v146 = v25;
  v26 = [v10 requiredBillingContactFields];
  v27 = [v26 allObjects];
  v28 = [v27 componentsJoinedByString:{@", "}];
  [v11 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69BAE48]];

  v29 = [v10 requiredShippingContactFields];
  v30 = [v29 allObjects];
  v31 = [v30 componentsJoinedByString:{@", "}];
  [v11 setObject:v31 forKeyedSubscript:*MEMORY[0x1E69BAE50]];

  v32 = [v10 billingContact];
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  if (v32)
  {
    v34 = [v32 postalAddress];

    if (v34)
    {
      [v33 addObject:@"post"];
    }

    v35 = [v32 phoneNumber];

    if (v35)
    {
      [v33 addObject:@"phone"];
    }

    v36 = [v32 emailAddress];

    if (v36)
    {
      [v33 addObject:@"email"];
    }

    v37 = [v32 name];

    if (v37)
    {
      [v33 addObject:@"name"];
    }
  }

  v38 = [v33 componentsJoinedByString:{@", "}];
  [v11 setObject:v38 forKeyedSubscript:*MEMORY[0x1E69BADB0]];

  v39 = [v10 shippingContact];

  [v33 removeAllObjects];
  if (v39)
  {
    v40 = [v39 postalAddress];

    if (v40)
    {
      [v33 addObject:@"post"];
    }

    v41 = [v39 phoneNumber];

    if (v41)
    {
      [v33 addObject:@"phone"];
    }

    v42 = [v39 emailAddress];

    if (v42)
    {
      [v33 addObject:@"email"];
    }

    v43 = [v39 name];

    if (v43)
    {
      [v33 addObject:@"name"];
    }
  }

  v44 = [v33 componentsJoinedByString:{@", "}];
  [v11 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69BAE58]];

  v45 = [v10 availableShippingMethods];
  v46 = [v45 methods];
  v47 = [v46 count];

  if (v47 <= 4)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v47];
  }

  else
  {
    v48 = @"5+";
  }

  [v11 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69BAE68]];
  v49 = [v10 shippingType];
  v50 = v49;
  if (v49 > 3)
  {
    v51 = @"unknown";
  }

  else
  {
    v51 = off_1E801FB90[v49];
  }

  [v11 setObject:v51 forKeyedSubscript:*MEMORY[0x1E69BAE78]];
  if ((v50 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v52 = [v39 postalAddress];
    v53 = PKAnalyticsReportSwitchToggleResultValue();
    [v11 setObject:v53 forKeyedSubscript:*MEMORY[0x1E69BAE10]];

    [v10 isShippingEditable];
    v54 = PKAnalyticsReportSwitchToggleResultValue();
    [v11 setObject:v54 forKeyedSubscript:*MEMORY[0x1E69BAE08]];
  }

  v55 = [v45 methods];
  v56 = [v55 count];

  v145 = v45;
  v151 = v39;
  v152 = v33;
  if (v56)
  {
    v143 = v48;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v57 = [v45 methods];
    v58 = [v57 countByEnumeratingWithState:&v158 objects:v162 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = 0;
      v61 = 0;
      v62 = *v159;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v159 != v62)
          {
            objc_enumerationMutation(v57);
          }

          v64 = [*(*(&v158 + 1) + 8 * i) dateComponentsRange];
          v65 = [v64 startDateComponents];

          v61 |= v65 != 0;
          v66 = [v64 endDateComponents];

          v60 |= v66 != 0;
        }

        v59 = [v57 countByEnumeratingWithState:&v158 objects:v162 count:16];
      }

      while (v59);
    }

    v67 = PKAnalyticsReportSwitchToggleResultValue();
    [v11 setObject:v67 forKeyedSubscript:*MEMORY[0x1E69BAE70]];

    v68 = PKAnalyticsReportSwitchToggleResultValue();
    [v11 setObject:v68 forKeyedSubscript:*MEMORY[0x1E69BAE60]];

    v39 = v151;
    v33 = v152;
    v48 = v143;
  }

  v69 = [v10 currencyCode];
  [v11 setObject:v69 forKeyedSubscript:*MEMORY[0x1E69BB350]];

  v70 = [v10 paymentSummaryItems];
  v71 = [v70 count];

  if (v71 <= 4)
  {
    v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v71];
  }

  else
  {
    v72 = @"5+";
  }

  v144 = v72;
  [v11 setObject:v72 forKeyedSubscript:*MEMORY[0x1E69BADE8]];
  [v10 supportsCouponCode];
  v73 = PKAnalyticsReportSwitchToggleResultValue();
  [v11 setObject:v73 forKeyedSubscript:*MEMORY[0x1E69BADC0]];

  v74 = [v10 couponCode];
  [v74 length];

  v75 = PKAnalyticsReportSwitchToggleResultValue();
  [v11 setObject:v75 forKeyedSubscript:*MEMORY[0x1E69BADB8]];

  [v10 isMultiTokenRequest];
  v76 = PKAnalyticsReportSwitchToggleResultValue();
  [v11 setObject:v76 forKeyedSubscript:*MEMORY[0x1E69BADF0]];

  if ([v10 APIType] == 1)
  {
    v77 = MEMORY[0x1E69BB678];
  }

  else
  {
    if ([v10 APIType] != 2)
    {
      goto LABEL_60;
    }

    v77 = MEMORY[0x1E69BB688];
  }

  [v11 setObject:*v77 forKeyedSubscript:*MEMORY[0x1E69BB680]];
LABEL_60:
  v78 = [v10 userAgent];
  if ([v78 length])
  {
    [v11 setObject:v78 forKeyedSubscript:*MEMORY[0x1E69BB3B8]];
  }

  v142 = v78;
  v79 = [v10 paymentSummaryItems];
  v80 = [v79 lastObject];

  objc_opt_class();
  v81 = objc_opt_isKindOfClass();
  v82 = MEMORY[0x1E69BAE30];
  v83 = MEMORY[0x1E69BAE28];
  v84 = MEMORY[0x1E69BAE20];
  v141 = v80;
  if (v81)
  {
    v85 = v80;
    v86 = v82;
    v87 = v11;
    v88 = v85;
    v89 = PKAnalyticsReportSwitchToggleResultValue();
    v140 = *MEMORY[0x1E69BAE40];
    [v87 setObject:v89 forKeyedSubscript:?];

    [v88 intervalUnitSpecified];
    v90 = PKAnalyticsReportSwitchToggleResultValue();
    [v87 setObject:v90 forKeyedSubscript:*v86];

    [v88 intervalCountSpecified];
    v91 = PKAnalyticsReportSwitchToggleResultValue();
    [v87 setObject:v91 forKeyedSubscript:*v83];

    v92 = [v88 startDate];
    v93 = PKAnalyticsReportSwitchToggleResultValue();
    [v87 setObject:v93 forKeyedSubscript:*MEMORY[0x1E69BAE38]];

    v94 = [v88 endDate];
    v95 = PKAnalyticsReportSwitchToggleResultValue();
    [v87 setObject:v95 forKeyedSubscript:*v84];

    v96 = *MEMORY[0x1E69BB2F8];
    v97 = *MEMORY[0x1E69BAE18];
    [v87 setObject:*MEMORY[0x1E69BB2F8] forKeyedSubscript:*MEMORY[0x1E69BAE18]];
  }

  else
  {
    objc_opt_class();
    v98 = objc_opt_isKindOfClass();
    v96 = *MEMORY[0x1E69BB2F8];
    v140 = *MEMORY[0x1E69BAE40];
    [v11 setObject:*MEMORY[0x1E69BB2F8] forKeyedSubscript:?];
    if (v98)
    {
      v99 = *MEMORY[0x1E69BB300];
      v97 = *MEMORY[0x1E69BAE18];
      v100 = v11;
    }

    else
    {
      v97 = *MEMORY[0x1E69BAE18];
      v100 = v11;
      v99 = v96;
    }

    [v100 setObject:v99 forKeyedSubscript:v97];
  }

  v101 = [v10 recurringPaymentRequest];
  if (v101)
  {
    v102 = @"MPAN";
  }

  else
  {
    v102 = @"DPAN";
  }

  [v11 setObject:v102 forKeyedSubscript:*MEMORY[0x1E69BAE80]];
  if (v101)
  {
    v103 = [v101 billingAgreement];
    v104 = v11;
    v105 = v103;
    v106 = [v105 length];
    v107 = PKAnalyticsReportSwitchToggleResultValue();
    [v104 setObject:v107 forKeyedSubscript:*MEMORY[0x1E69BADA8]];

    if (v106)
    {
      v108 = v105;
      v109 = [v108 length];
      v110 = @"100 - 200";
      v111 = @"200 - 300";
      v112 = @"300 - 400";
      v113 = @"more";
      if (v109 < 0x1F4)
      {
        v113 = @"400 - 500";
      }

      if (v109 >= 0x190)
      {
        v112 = v113;
      }

      if (v109 >= 0x12C)
      {
        v111 = v112;
      }

      if (v109 >= 0xC8)
      {
        v110 = v111;
      }

      if (v109 >= 100)
      {
        v114 = v110;
      }

      else
      {
        v114 = @"0 - 100";
      }

      [v104 setObject:v114 forKeyedSubscript:*MEMORY[0x1E69BADA0]];
    }

    v115 = [v101 regularBilling];
    v116 = v104;
    v117 = v115;
    v118 = PKAnalyticsReportSwitchToggleResultValue();
    [v116 setObject:v118 forKeyedSubscript:v140];

    [v117 intervalUnitSpecified];
    v119 = PKAnalyticsReportSwitchToggleResultValue();
    [v116 setObject:v119 forKeyedSubscript:*MEMORY[0x1E69BAE30]];

    [v117 intervalCountSpecified];
    v120 = PKAnalyticsReportSwitchToggleResultValue();
    [v116 setObject:v120 forKeyedSubscript:*MEMORY[0x1E69BAE28]];

    v121 = [v117 startDate];
    v122 = PKAnalyticsReportSwitchToggleResultValue();
    [v116 setObject:v122 forKeyedSubscript:*MEMORY[0x1E69BAE38]];

    v123 = [v117 endDate];
    v124 = PKAnalyticsReportSwitchToggleResultValue();
    [v116 setObject:v124 forKeyedSubscript:*MEMORY[0x1E69BAE20]];

    v125 = [v101 trialBilling];
    v126 = PKAnalyticsReportSwitchToggleResultValue();
    [v116 setObject:v126 forKeyedSubscript:v97];

    v39 = v151;
    v33 = v152;
  }

  v127 = [v10 remoteNetworkRequestInitiationType];
  v128 = [v127 length];

  v129 = *MEMORY[0x1E69BB0E0];
  if (v128)
  {
    [v11 setObject:*MEMORY[0x1E69BB0F0] forKeyedSubscript:v129];
    v96 = *MEMORY[0x1E69BB300];
  }

  else
  {
    [v11 setObject:*MEMORY[0x1E69BB0D0] forKeyedSubscript:v129];
  }

  [v11 setObject:v96 forKeyedSubscript:*MEMORY[0x1E69BAA00]];
  v130 = [v10 merchantCategoryCode];
  if (v130 >= 1)
  {
    v131 = [MEMORY[0x1E696AD98] numberWithShort:v130];
    v132 = [v131 stringValue];
    [v11 setObject:v132 forKeyedSubscript:*MEMORY[0x1E69BADC8]];
  }

  v133 = [v10 clientAnalyticsParameters];
  v134 = [v133 PKDictionaryForKey:*MEMORY[0x1E69BC178]];

  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __PKPaymentRequestAnalyticsDescription_block_invoke;
  v156[3] = &unk_1E801FAF0;
  v135 = v11;
  v157 = v135;
  [v134 enumerateKeysAndObjectsUsingBlock:v156];
  v136 = [v10 analyticsProductType];
  [v135 setObject:v136 forKeyedSubscript:*MEMORY[0x1E69BAC90]];

  v137 = v135;
  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = __77__PKPaymentAuthorizationPresentationCoordinator__reportPaymentRequestDetails__block_invoke;
  v153[3] = &unk_1E8012FD0;
  v138 = v137;
  v154 = v138;
  v139 = v149;
  v155 = v139;
  [(PKPaymentAuthorizationPresentationCoordinator *)v150 _checkEligibilityForDynamicButtonWithCompletion:v153];
}

void __77__PKPaymentAuthorizationPresentationCoordinator__reportPaymentRequestDetails__block_invoke(uint64_t a1)
{
  v2 = PKAnalyticsReportSwitchToggleResultValue();
  [*(a1 + 32) setObject:v2 forKeyedSubscript:*MEMORY[0x1E69BA658]];

  [*(a1 + 32) setObject:*MEMORY[0x1E69BA7C0] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [*(a1 + 32) setObject:*MEMORY[0x1E69BB128] forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v3 = MEMORY[0x1E69B8540];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) copy];
  [v3 subject:v4 sendEvent:v5];
}

- (void)_endAnalyticsReporting
{
  v2 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v3 = [v2 clientAnalyticsParameters];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69BC180]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *MEMORY[0x1E69BB6E0];
  if (isKindOfClass)
  {
    v6 = v4;
  }

  v7 = v6;

  [MEMORY[0x1E69B8540] endSubjectReporting:v7];
}

- (void)_reportConnectionEstablishedAnalyticsForConnection:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BB6E0];
  v7 = *MEMORY[0x1E69BB128];
  v8 = *MEMORY[0x1E69BA680];
  v19[0] = *MEMORY[0x1E69BABE8];
  v19[1] = v8;
  v9 = *MEMORY[0x1E69BA7B8];
  v20[0] = v7;
  v20[1] = v9;
  v19[2] = *MEMORY[0x1E69BA248];
  v10 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v11 = v4;
  v12 = [v10 originatingURL];
  v13 = [v12 host];

  if (v13)
  {
    v14 = MEMORY[0x1E69BA8C8];
  }

  else
  {
    v15 = [v11 valueForEntitlement:@"com.apple.developer.on-demand-install-capable"];
    v16 = [v15 BOOLValue];

    v14 = MEMORY[0x1E69BA8C0];
    if (v16)
    {
      v14 = MEMORY[0x1E69BA8B8];
    }
  }

  v17 = *v14;

  v20[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  [v5 subject:v6 sendEvent:v18];
}

- (void)_reportPaymentPassMissingAnalytics
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BA738];
  v5 = *MEMORY[0x1E69BA678];
  v8[0] = *MEMORY[0x1E69BA680];
  v8[1] = v5;
  v6 = *MEMORY[0x1E69BA670];
  v9[0] = v4;
  v9[1] = v6;
  v8[2] = *MEMORY[0x1E69BB2D0];
  v9[2] = *MEMORY[0x1E69BB2D8];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 subject:v3 sendEvent:v7];
}

- (void)_reportUnsupportedPaymentPassAnalytics
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BA738];
  v5 = *MEMORY[0x1E69BA678];
  v8[0] = *MEMORY[0x1E69BA680];
  v8[1] = v5;
  v6 = *MEMORY[0x1E69BA670];
  v9[0] = v4;
  v9[1] = v6;
  v8[2] = *MEMORY[0x1E69BB2D0];
  v9[2] = *MEMORY[0x1E69BB2E0];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 subject:v3 sendEvent:v7];
}

- (void)_reportVerificationRequiredAnalytics
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB6E8];
  v8[0] = *MEMORY[0x1E69BB6E0];
  v8[1] = v3;
  v8[2] = *MEMORY[0x1E69BB718];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v6 = *MEMORY[0x1E69BA680];
  v7 = *MEMORY[0x1E69BA810];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 subjects:v4 sendEvent:v5];
}

- (void)_reportAddCardAlertPresentedAnalytics
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB6E0];
  v4 = *MEMORY[0x1E69BABE8];
  v7[0] = *MEMORY[0x1E69BA680];
  v7[1] = v4;
  v5 = *MEMORY[0x1E69BA2B0];
  v8[0] = *MEMORY[0x1E69BA818];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 subject:v3 sendEvent:v6];
}

- (void)_reportEncounteredAuthorizationEvent:(unint64_t)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentAuthorizationPresentationCoordinator *)self _springboardButtonTagForEvent:a3];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69B8540];
    v6 = *MEMORY[0x1E69BA440];
    v9[0] = *MEMORY[0x1E69BA680];
    v9[1] = v6;
    v7 = *MEMORY[0x1E69BB6E0];
    v10[0] = *MEMORY[0x1E69BA7D0];
    v10[1] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [v5 subject:v7 sendEvent:v8];
  }
}

- (id)_springboardButtonTagForEvent:(unint64_t)a3
{
  v4 = a3 - 6;
  if (a3 - 6 <= 5 && ((0x39u >> v4) & 1) != 0)
  {
    v5 = **(&unk_1E801FBB0 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_checkEligibilityForDynamicButtonWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69B8EC8]);
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v6 dateByAddingTimeInterval:-2592000.0];

  [v5 setTransactionTypes:&unk_1F3CC85E8];
  [v5 setStartDate:v7];
  [v5 setTransactionSources:&unk_1F3CC8600];
  [v5 setHasBackingData:0];
  [v5 setOriginatedByDevice:1];
  [v5 setLimit:1];
  v8 = [MEMORY[0x1E69B8DB8] paymentService];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__PKPaymentAuthorizationPresentationCoordinator__checkEligibilityForDynamicButtonWithCompletion___block_invoke;
  v10[3] = &unk_1E801FA00;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 transactionCountForRequest:v5 completion:v10];
}

void __97__PKPaymentAuthorizationPresentationCoordinator__checkEligibilityForDynamicButtonWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue] == 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKPaymentAuthorizationPresentationCoordinator__checkEligibilityForDynamicButtonWithCompletion___block_invoke_2;
  block[3] = &unk_1E8015148;
  v4 = *(a1 + 40);
  v7 = v3;
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __97__PKPaymentAuthorizationPresentationCoordinator__checkEligibilityForDynamicButtonWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

- (void)_startSuppressingNotificationsIfNecessary
{
  if (!self->_notificationSuppressionAssertion)
  {
    objc_initWeak(&location, self);
    v2 = MEMORY[0x1E69B8650];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __90__PKPaymentAuthorizationPresentationCoordinator__startSuppressingNotificationsIfNecessary__block_invoke;
    v3[3] = &unk_1E801B258;
    objc_copyWeak(&v4, &location);
    [v2 acquireAssertionOfType:4 withReason:@"In-App Payment Interface" completion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __90__PKPaymentAuthorizationPresentationCoordinator__startSuppressingNotificationsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKPaymentAuthorizationPresentationCoordinator__startSuppressingNotificationsIfNecessary__block_invoke_2;
  block[3] = &unk_1E8019628;
  v10 = v6;
  v7 = v6;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __90__PKPaymentAuthorizationPresentationCoordinator__startSuppressingNotificationsIfNecessary__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Error acquiring notification suppression assertion: %@", buf, 0xCu);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v2 = WeakRetained;
    if (WeakRetained)
    {
      objc_storeStrong(&WeakRetained[2].isa, *(a1 + 40));
      v5 = *(a1 + 40);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __90__PKPaymentAuthorizationPresentationCoordinator__startSuppressingNotificationsIfNecessary__block_invoke_106;
      v6[3] = &unk_1E8010998;
      objc_copyWeak(&v7, (a1 + 48));
      [v5 setInvalidationHandler:v6];
      objc_destroyWeak(&v7);
    }
  }
}

void __90__PKPaymentAuthorizationPresentationCoordinator__startSuppressingNotificationsIfNecessary__block_invoke_106(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    WeakRetained[2] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)_stopSuppressingNotifications
{
  [(PKAssertion *)self->_notificationSuppressionAssertion invalidate];
  notificationSuppressionAssertion = self->_notificationSuppressionAssertion;
  self->_notificationSuppressionAssertion = 0;
}

- (void)_presentNextStepDismissingCurrentInterface:(BOOL)a3 withDefaultPassID:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __110__PKPaymentAuthorizationPresentationCoordinator__presentNextStepDismissingCurrentInterface_withDefaultPassID___block_invoke;
  v9[3] = &unk_1E801FA28;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  v12 = a3;
  [(PKPaymentAuthorizationPresentationCoordinator *)self _canPresentPaymentRequest:v7 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __110__PKPaymentAuthorizationPresentationCoordinator__presentNextStepDismissingCurrentInterface_withDefaultPassID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __110__PKPaymentAuthorizationPresentationCoordinator__presentNextStepDismissingCurrentInterface_withDefaultPassID___block_invoke_2;
  v9[3] = &unk_1E8011B58;
  objc_copyWeak(v12, (a1 + 40));
  v10 = v5;
  v6 = *(a1 + 32);
  v13 = *(a1 + 48);
  v11 = v6;
  v12[1] = a2;
  v7 = v9;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_1;
  block[3] = &unk_1E8010B50;
  v15 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v12);
}

void __110__PKPaymentAuthorizationPresentationCoordinator__presentNextStepDismissingCurrentInterface_withDefaultPassID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = *(a1 + 40);
    }

    v4 = v3;
    v5 = v4;
    if (*(a1 + 64) == 1)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __110__PKPaymentAuthorizationPresentationCoordinator__presentNextStepDismissingCurrentInterface_withDefaultPassID___block_invoke_3;
      v7[3] = &unk_1E8012C50;
      v6 = *(a1 + 56);
      v7[4] = WeakRetained;
      v9 = v6;
      v8 = v4;
      [WeakRetained dismissBothPresentationsAnimated:1 completion:v7];
    }

    else
    {
      [WeakRetained _handlePaymentRequestPresentationResultType:*(a1 + 56) relevantUniqueID:v4];
    }
  }
}

- (void)_canPresentPaymentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if ([(PKInAppPaymentPresentationHostContext *)self->_context awaitingRemoteNetworkPaymentRequest])
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Bypassing PKPassLibrary canPresentPaymentRequest check as remote payment request has been promised", buf, 2u);
      }

      if (PKPassbookIsCurrentlyDeletedByUser())
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Bypassing PKPassLibrary: Wallet must not be deleted", v17, 2u);
        }

        (*(v7 + 2))(v7, 9, 0, 0);
      }

      (*(v7 + 2))(v7, 10, 0, 0);
    }

    else
    {
      v9 = [v6 requestType];
      v10 = [v6 isPeerPaymentRequest];
      if (v9 <= 0xF && ((1 << v9) & 0xA0C6) != 0 || v10)
      {
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Bypassing PKPassLibrary canPresentPaymentRequest check due to request type", v16, 2u);
        }

        (*(v7 + 2))(v7, 1, 0, 0);
      }

      else
      {
        v12 = [MEMORY[0x1E69B8A58] sharedInstance];
        v13 = v12;
        if (v12)
        {
          [v12 canPresentPaymentRequest:v6 completion:v7];
        }

        else
        {
          v14 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Error: No pass library to validate payment request. Bailing out", v15, 2u);
          }

          (*(v7 + 2))(v7, 0, 0, 0);
        }
      }
    }
  }
}

- (void)_handlePaymentRequestPresentationResultType:(int64_t)a3 relevantUniqueID:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a4;
  paymentSetupState = self->_paymentSetupState;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = @"subsequent attempt";
    *v31 = 138412802;
    *&v31[4] = v10;
    if (!paymentSetupState)
    {
      v11 = @"first attempt";
    }

    *&v31[12] = 2112;
    *&v31[14] = v11;
    v32 = 2048;
    v33 = a3;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "%@ => %@,  %ld", v31, 0x20u);
  }

  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_71;
        }

        v18 = MEMORY[0x1E69B9F98];
        if (paymentSetupState)
        {
          v18 = MEMORY[0x1E69BA008];
        }

        v13 = *v18;
        goto LABEL_28;
      }

      v19 = MEMORY[0x1E69B9FB8];
      if (paymentSetupState)
      {
        v19 = MEMORY[0x1E69B9FF0];
      }

      v13 = *v19;
      [(PKPaymentAuthorizationPresentationCoordinator *)self _presentInvalidAlert];
      if (!v13)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (a3 == 2)
      {
        [(PKPaymentAuthorizationPresentationCoordinator *)self _reportPaymentPassMissingAnalytics];
        v13 = *MEMORY[0x1E69B9FC0];
        v22 = *MEMORY[0x1E69B9FF8];
        if (paymentSetupState)
        {
          v23 = *MEMORY[0x1E69B9FF8];
        }

        else
        {
          v23 = *MEMORY[0x1E69B9FC0];
        }

        v24 = v23;
        if (paymentSetupState)
        {
          [(PKPaymentAuthorizationPresentationCoordinator *)self authorizationDidFinishWithError:0];
          goto LABEL_53;
        }

        v29 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
        v30 = [v29 requestType];

        if (v30 == 5)
        {
          [(PKPaymentAuthorizationPresentationCoordinator *)self _presentOnboardingForContext:1];
          if (!v13)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        if (![(PKPaymentAuthorizationPresentationCoordinator *)self _canPresentPaymentSheetWithEmptyPass])
        {
          [(PKPaymentAuthorizationPresentationCoordinator *)self presentPaymentProvisioningDismissingAfterwards:0];
          if (!v13)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

LABEL_28:
        [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentAuthorizationWithRelevantUniqueID:v7, *v31];
        if (!v13)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      if (a3 == 3)
      {
        v20 = MEMORY[0x1E69B9FA8];
        if (paymentSetupState)
        {
          v20 = MEMORY[0x1E69B9FD8];
        }

        v13 = *v20;
        [(PKPaymentAuthorizationPresentationCoordinator *)self _presentActivatingPassAlertWithRelevantUniqueID:v7];
        if (!v13)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69B9FD0];
        if (paymentSetupState)
        {
          v12 = MEMORY[0x1E69BA010];
        }

        v13 = *v12;
        v14 = [(PKInAppPaymentPresentationHostContext *)self->_context request];
        v15 = [v14 originatingURL];
        v16 = PKPaymentSheetShowExpressProvisioning();

        if (v16)
        {
          v17 = objc_alloc_init(MEMORY[0x1E69B8D48]);
          if ([v17 countSupportedProvisioningExtensions])
          {
            [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentAuthorizationWithRelevantUniqueID:v7];
          }

          else
          {
            [(PKPaymentAuthorizationPresentationCoordinator *)self _presentVerifyPassAlertWithRelevantUniqueID:v7];
          }

          if (!v13)
          {
            goto LABEL_71;
          }
        }

        else
        {
          [(PKPaymentAuthorizationPresentationCoordinator *)self _presentVerifyPassAlertWithRelevantUniqueID:v7];
          if (!v13)
          {
            goto LABEL_71;
          }
        }
      }
    }

LABEL_70:
    MEMORY[0x1BFB41980](v13, 0);

    goto LABEL_71;
  }

  if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        v27 = [(PKInAppPaymentPresentationHostContext *)self->_context request];
        v28 = [v27 installmentConfiguration];
        [v28 feature];
        PKFeatureIdentifierFromPaymentSetupFeatureType();

        if (paymentSetupState || !PKDeviceSupportsApplicationForFeatureIdentifier())
        {
          [(PKPaymentAuthorizationPresentationCoordinator *)self authorizationDidFinishWithError:0, *v31, *&v31[8]];
        }

        else
        {
          [(PKPaymentAuthorizationPresentationCoordinator *)self _presentOnboardingForContext:0];
        }

        break;
      case 9:
        [(PKPaymentAuthorizationPresentationCoordinator *)self _presentWalletUninstalledAlert];
        break;
      case 10:
        [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAwaitingRemoteNetworkPaymentRequestWithRelevantUniqueID:v7];
        break;
    }

    goto LABEL_71;
  }

  if (a3 == 5)
  {
    [(PKPaymentAuthorizationPresentationCoordinator *)self _reportUnsupportedPaymentPassAnalytics];
    v13 = *MEMORY[0x1E69B9FB0];
    v22 = *MEMORY[0x1E69B9FE8];
    if (paymentSetupState)
    {
      v25 = *MEMORY[0x1E69B9FE8];
    }

    else
    {
      v25 = *MEMORY[0x1E69B9FB0];
    }

    v26 = v25;
    if (paymentSetupState)
    {
      [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPassNotSupportedAlertWithRelevantUniqueID:v7];
LABEL_53:
      v13 = v22;
      if (!v22)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    if (![(PKPaymentAuthorizationPresentationCoordinator *)self _canPresentPaymentSheetWithEmptyPass])
    {
      [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAddCardAlert];
      if (!v13)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    goto LABEL_28;
  }

  if (a3 != 6)
  {
    if (self->_peerPaymentIdentityVerificationCompleted)
    {
      [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPeerPaymentIdentityVerificationAlert];
    }

    else
    {
      [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPeerPaymentIdentityVerification];
    }

    goto LABEL_71;
  }

  v21 = MEMORY[0x1E69B9FC8];
  if (paymentSetupState)
  {
    v21 = MEMORY[0x1E69BA000];
  }

  v13 = *v21;
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentLostModeAlertWithRelevantUniqueID:v7];
  if (v13)
  {
    goto LABEL_70;
  }

LABEL_71:
}

- (id)_createPaymentInterfaceConfigurationWithRelevantPassID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PKPaymentRequestViewInterfaceConfiguration);
  v6 = [(PKInAppPaymentPresentationHostContext *)self->_context request];
  [(PKPaymentRequestViewInterfaceConfiguration *)v5 setRequest:v6];

  [(PKPaymentRequestViewInterfaceConfiguration *)v5 setRelevantPassUniqueID:v4];
  [(PKPaymentRequestViewInterfaceConfiguration *)v5 setPresenter:self];
  v7 = [(PKInAppPaymentPresentationHostContext *)self->_context applicationName];
  [(PKPaymentRequestViewInterfaceConfiguration *)v5 setLocalizedApplicationName:v7];

  v8 = [(PKInAppPaymentPresentationHostContext *)self->_context bundleIdentifier];
  [(PKPaymentRequestViewInterfaceConfiguration *)v5 setBundleIdentifier:v8];

  v9 = [(PKInAppPaymentPresentationHostContext *)self->_context applicationIdentifier];
  [(PKPaymentRequestViewInterfaceConfiguration *)v5 setApplicationIdentifier:v9];

  return v5;
}

- (void)_presentPaymentInterface:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  p_paymentInterface = &self->_paymentInterface;
  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentAuthorizationInterface *)*p_paymentInterface invalidate];
  }

  objc_storeStrong(&self->_paymentInterface, a3);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(PKPaymentAuthorizationInterface *)*p_paymentInterface serviceDelegate], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [(PKPaymentAuthorizationPresentationCoordinator *)self exportedObject];
    [v12 setDelegate:v11];
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      paymentInterface = self->_paymentInterface;
      *buf = 134349312;
      v21 = self;
      v22 = 2050;
      v23 = paymentInterface;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): displayed interface (%{public}p) didn't provide a service delegate - using default one.", buf, 0x16u);
    }

    v11 = [(PKPaymentAuthorizationPresentationCoordinator *)self exportedObject];
    [v11 setDelegate:self->_defaultService];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentAuthorizationInterface *)*p_paymentInterface willAppear];
  }

  WeakRetained = objc_loadWeakRetained(&self->_primaryPresentingViewController);
  v16 = [(PKPaymentAuthorizationInterface *)self->_paymentInterface primaryViewController];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PKPaymentAuthorizationPresentationCoordinator__presentPaymentInterface_completion___block_invoke;
  v18[3] = &unk_1E8010DD0;
  v18[4] = self;
  v19 = v8;
  v17 = v8;
  [WeakRetained presentViewController:v16 animated:1 completion:v18];
}

uint64_t __85__PKPaymentAuthorizationPresentationCoordinator__presentPaymentInterface_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) authorizationDidPresent];
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 24) didAppear];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_openApplication:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349314;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): asked to open application for notification %{public}@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKPaymentAuthorizationPresentationCoordinator__openApplication___block_invoke;
  v7[3] = &unk_1E8010970;
  v8 = v4;
  v6 = v4;
  [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:3 completion:v7];
}

- (void)_presentOnboardingForContext:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_paymentSetupState)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134349056;
      v9 = self;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): asked to show onboarding flow but payment setup was already initiated. Ignoring request.", &v8, 0xCu);
    }
  }

  else
  {
    self->_paymentSetupState = 1;
    v4 = [(PKPaymentAuthorizationPresentationCoordinator *)self _createPaymentInterfaceConfigurationWithRelevantPassID:0];
    v6 = [[PKPaymentAuthorizationOnboardingInterface alloc] initWithOnboardingContext:a3 supportedInterfaceOrientations:[(PKPaymentAuthorizationPresentationCoordinator *)self supportedInterfaceOrientations] configuration:v4 delegate:self];
    if (v6)
    {
      [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentInterface:v6 completion:0];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134349056;
        v9 = self;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): cannot create onboarding interface - dismissing.", &v8, 0xCu);
      }

      [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:1 completion:0];
    }
  }
}

- (void)paymentAuthorizationOnboardingDidFinishWithError:(id)a3
{
  self->_paymentSetupState = 2;
  if (a3)
  {
    [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:1 completion:0];
  }

  else
  {
    [(PKPaymentAuthorizationPresentationCoordinator *)self _presentNextStepDismissingCurrentInterface:1 withDefaultPassID:0];
  }
}

- (void)_presentPeerPaymentIdentityVerification
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Presenting peer payment identity verification.", buf, 2u);
  }

  v4 = [(PKPaymentAuthorizationPresentationCoordinator *)self _createPaymentInterfaceConfigurationWithRelevantPassID:0];
  v5 = [[PKPeerPaymentIdentityVerificationInterface alloc] initWithConfiguration:v4 delegate:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentAuthorizationPresentationCoordinator__presentPeerPaymentIdentityVerification__block_invoke;
  v7[3] = &unk_1E8012FD0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKPeerPaymentIdentityVerificationInterface *)v6 preflightWithCompletion:v7];
}

void __88__PKPaymentAuthorizationPresentationCoordinator__presentPeerPaymentIdentityVerification__block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 _presentPaymentInterface:v4 completion:0];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 134349056;
      v10 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): failed to create peer identity verification interface.", buf, 0xCu);
    }

    if (PKDeviceSupportsPeerPaymentIdentityVerification())
    {
      [*(a1 + 32) _presentPeerPaymentIdentityVerificationAlert];
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __88__PKPaymentAuthorizationPresentationCoordinator__presentPeerPaymentIdentityVerification__block_invoke_126;
      v8[3] = &unk_1E8010970;
      v8[4] = *(a1 + 32);
      v7 = PKCreateAlertControllerForPeerPaymentIdentityVerificationNotSupported(v8);
      [*(a1 + 32) _presentAlertController:v7];
    }
  }
}

- (void)_presentAwaitingRemoteNetworkPaymentRequestWithRelevantUniqueID:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "FlowCoordinator: Displaying awaiting remote request view", v8, 2u);
  }

  v6 = [(PKPaymentAuthorizationPresentationCoordinator *)self _createPaymentInterfaceConfigurationWithRelevantPassID:v4];
  v7 = [[PKRemoteNetworkPaymentLoadingViewInterface alloc] initWithConfiguration:v6 host:self];
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentInterface:v7 completion:0];
}

- (void)_presentPaymentAuthorizationWithRelevantUniqueID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  v6 = a3;
  v7 = os_signpost_id_make_with_pointer(v5, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v8, "present:paymentSheet", "", buf, 2u);
    }
  }

  v9 = [(PKPaymentAuthorizationPresentationCoordinator *)self _createPaymentInterfaceConfigurationWithRelevantPassID:v6];

  v10 = [[PKPaymentAuthorizationPaymentUIInterface alloc] initWithConfiguration:v9 host:self];
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__PKPaymentAuthorizationPresentationCoordinator__presentPaymentAuthorizationWithRelevantUniqueID___block_invoke;
    v12[3] = &unk_1E8010970;
    v12[4] = self;
    [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentInterface:v10 completion:v12];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v14 = self;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): cannot create authorization interface - dismissing.", buf, 0xCu);
    }

    [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:1 completion:0];
  }
}

void __98__PKPaymentAuthorizationPresentationCoordinator__presentPaymentAuthorizationWithRelevantUniqueID___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, OS_SIGNPOST_INTERVAL_END, v4, "present:paymentSheet", "", v5, 2u);
    }
  }
}

- (void)_presentActivatingPassAlertWithRelevantUniqueID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
    v6 = [v5 originatingURL];
    v7 = [v6 host];
    v8 = @"Web payment";
    if (!v7)
    {
      v8 = @"In app payment";
    }

    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@: displaying card activating alert", &v12, 0xCu);
  }

  v9 = PKLocalizedPaymentString(&cfstr_LocalSetupActi.isa);
  v10 = PKLocalizedPaymentString(&cfstr_LocalSetupActi_0.isa);
  v11 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v9 message:v10 cancelTitle:v11 actionTitle:0 actionHandler:0];
}

- (void)_presentVerifyPassAlertWithRelevantUniqueID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
    v7 = [v6 originatingURL];
    v8 = [v7 host];
    v9 = @"Web payment";
    if (!v8)
    {
      v9 = @"In app payment";
    }

    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%@: displaying card verification required alert", buf, 0xCu);
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self _reportVerificationRequiredAnalytics];
  v10 = PKLocalizedPaymentString(&cfstr_LocalSetupVeri.isa);
  v11 = PKLocalizedPaymentString(&cfstr_LocalSetupVeri_0.isa);
  v12 = PKLocalizedPaymentString(&cfstr_LocalSetupVeri_1.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__PKPaymentAuthorizationPresentationCoordinator__presentVerifyPassAlertWithRelevantUniqueID___block_invoke;
  v14[3] = &unk_1E8010A10;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v10 message:v11 actionTitle:v12 actionHandler:v14];
}

void __93__PKPaymentAuthorizationPresentationCoordinator__presentVerifyPassAlertWithRelevantUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) authorizationDidFinishWithError:0];
  v2 = [MEMORY[0x1E69B8A58] sharedInstance];
  [v2 presentWalletWithRelevantPassUniqueID:*(a1 + 40)];
}

- (void)_presentLostModeAlertWithRelevantUniqueID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
    v7 = [v6 originatingURL];
    v8 = [v7 host];
    v9 = @"Web payment";
    if (!v8)
    {
      v9 = @"In app payment";
    }

    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%@: displaying card in lost mode alert", buf, 0xCu);
  }

  v10 = PKLocalizedPaymentString(&cfstr_LocalSetupLost.isa);
  v11 = PKLocalizedPaymentString(&cfstr_LocalSetupLost_0.isa);
  v12 = PKLocalizedString(&cfstr_Wallet_1.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__PKPaymentAuthorizationPresentationCoordinator__presentLostModeAlertWithRelevantUniqueID___block_invoke;
  v14[3] = &unk_1E8010A10;
  v14[4] = self;
  v15 = v4;
  v13 = v4;
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v10 message:v11 actionTitle:v12 actionHandler:v14];
}

void __91__PKPaymentAuthorizationPresentationCoordinator__presentLostModeAlertWithRelevantUniqueID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) authorizationDidFinishWithError:0];
  v2 = [MEMORY[0x1E69B8A58] sharedInstance];
  [v2 presentWalletWithRelevantPassUniqueID:*(a1 + 40)];
}

- (void)_presentPeerPaymentIdentityVerificationAlert
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
    v5 = [v4 originatingURL];
    v6 = [v5 host];
    v7 = @"Web payment";
    if (!v6)
    {
      v7 = @"In app payment";
    }

    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "%@: displaying peer payment identity verification alert", buf, 0xCu);
  }

  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIde.isa);
  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIde_0.isa);
  v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentIde_1.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__PKPaymentAuthorizationPresentationCoordinator__presentPeerPaymentIdentityVerificationAlert__block_invoke;
  v11[3] = &unk_1E8010970;
  v11[4] = self;
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v8 message:v9 actionTitle:v10 actionHandler:v11];
}

- (void)_presentAddCardAlert
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
    v6 = [v5 originatingURL];
    v2 = [v6 host];
    v7 = @"Web payment";
    if (!v2)
    {
      v7 = @"In app payment";
    }

    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@: displaying add card alert", buf, 0xCu);
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self _reportAddCardAlertPresentedAnalytics];
  v8 = PKLocalizedPaymentString(&cfstr_LocalSetupUnsu.isa);
  v9 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v10 = [v9 originatingURL];
  if (v10)
  {
    PKLocalizedPaymentString(&cfstr_LocalSetupUnsu_0.isa);
  }

  else
  {
    v2 = [(PKInAppPaymentPresentationHostContext *)self->_context applicationName];
    PKLocalizedPaymentString(&cfstr_LocalSetupUnsu_1.isa, &stru_1F3BD5BF0.isa, v2);
  }
  v11 = ;
  v12 = PKLocalizedPaymentString(&cfstr_LocalSetupUnsu_2.isa);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PKPaymentAuthorizationPresentationCoordinator__presentAddCardAlert__block_invoke;
  v13[3] = &unk_1E8010970;
  v13[4] = self;
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v8 message:v11 actionTitle:v12 actionHandler:v13];

  if (!v10)
  {

    v11 = v2;
  }
}

void __69__PKPaymentAuthorizationPresentationCoordinator__presentAddCardAlert__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __69__PKPaymentAuthorizationPresentationCoordinator__presentAddCardAlert__block_invoke_2;
  v2[3] = &unk_1E8010970;
  v2[4] = *(a1 + 32);
  v1 = v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_1;
  block[3] = &unk_1E8010B50;
  v4 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentPassNotSupportedAlertWithRelevantUniqueID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v6 = [v5 originatingURL];
  v7 = [v6 host];

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"Web payment";
    if (!v7)
    {
      v9 = @"In app payment";
    }

    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "%@: displaying pass not supported alert", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E69B8A58] sharedInstance];
  v11 = [v10 passWithUniqueID:v4];

  v12 = [v11 devicePrimaryPaymentApplication];
  [v12 paymentNetworkIdentifier];
  v13 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();

  if (!v13)
  {
    v13 = [v11 organizationName];
  }

  v14 = [(PKInAppPaymentPresentationHostContext *)self->_context applicationName];
  v15 = PKLocalizedPaymentString(&cfstr_LocalSetupCard.isa, &cfstr_12.isa, v14, v13);

  v16 = [(PKInAppPaymentPresentationHostContext *)self->_context applicationName];
  v17 = PKLocalizedPaymentString(&cfstr_LocalSetupCard_0.isa, &stru_1F3BD5BF0.isa, v16);

  v18 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v19 = PKLocalizedPaymentString(&cfstr_LocalSetupUnsu_2.isa);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PKPaymentAuthorizationPresentationCoordinator__presentPassNotSupportedAlertWithRelevantUniqueID___block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  if (v7)
  {
    v21 = PKLocalizedPaymentString(&cfstr_LocalSetupCard_1.isa, &stru_1F3BD5BF0.isa, v13);

    v22 = PKLocalizedPaymentString(&cfstr_LocalSetupCard_2.isa);

    v17 = v22;
    v15 = v21;
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v15 message:v17 cancelTitle:v18 actionTitle:v19 actionHandler:v20];
}

void __99__PKPaymentAuthorizationPresentationCoordinator__presentPassNotSupportedAlertWithRelevantUniqueID___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __99__PKPaymentAuthorizationPresentationCoordinator__presentPassNotSupportedAlertWithRelevantUniqueID___block_invoke_2;
  v2[3] = &unk_1E8010970;
  v2[4] = *(a1 + 32);
  v1 = v2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_1;
  block[3] = &unk_1E8010B50;
  v4 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_presentInvalidAlert
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v4 = [v3 requestType];

  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v6 = v5;
  if (v4 == 5)
  {
    v7 = [v5 installmentConfiguration];
    [v7 feature];
    v8 = PKFeatureIdentifierFromPaymentSetupFeatureType();

    v9 = [MEMORY[0x1E69B8400] sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __69__PKPaymentAuthorizationPresentationCoordinator__presentInvalidAlert__block_invoke;
    v17[3] = &unk_1E801FA50;
    v17[4] = self;
    v17[5] = v8;
    [v9 defaultAccountForFeature:v8 completion:v17];
  }

  else
  {
    v10 = [v5 originatingURL];
    v11 = [v10 host];

    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"Web payment";
      if (!v11)
      {
        v13 = @"In app payment";
      }

      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "%@: displaying invalid alert", buf, 0xCu);
    }

    if (v11)
    {
      v9 = PKLocalizedPaymentString(&cfstr_WebPaymentErro.isa);
      v14 = 0;
    }

    else
    {
      v15 = [(PKInAppPaymentPresentationHostContext *)self->_context applicationName];
      v9 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_1.isa, &stru_1F3BD5BF0.isa, v15);

      v14 = PKLocalizedPaymentString(&cfstr_InAppPaymentEr_2.isa);
    }

    v16 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v9 message:v14 cancelTitle:v16 actionTitle:0 actionHandler:0];
  }
}

void __69__PKPaymentAuthorizationPresentationCoordinator__presentInvalidAlert__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPaymentAuthorizationPresentationCoordinator__presentInvalidAlert__block_invoke_2;
  block[3] = &unk_1E8012C50;
  v4 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = v4;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__PKPaymentAuthorizationPresentationCoordinator__presentInvalidAlert__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([v2 state] - 2) <= 2)
  {
    v7 = PKLocalizedFeatureString();
    v3 = PKLocalizedFeatureString();
  }

  else
  {
    v3 = 0;
    v7 = 0;
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-2016 userInfo:0];
  v5 = *(a1 + 40);
  if (v7 && v3)
  {
    v6 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    [v5 _presentAlertWithTitle:v7 message:v3 cancelTitle:v6 actionTitle:0 actionHandler:0 finalError:v4];
  }

  else
  {
    [v5 authorizationDidFinishWithError:v4];
  }
}

- (void)_presentAlertController:(id)a3
{
  v4 = a3;
  v5 = [[PKPaymentAuthorizationMinimalInterface alloc] initWithPrimaryViewController:v4];

  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentInterface:v5 completion:0];
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 cancelTitle:(id)a5 actionTitle:(id)a6 actionHandler:(id)a7 finalError:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v16)
  {
    v16 = PKLocalizedString(&cfstr_Cancel.isa);
  }

  v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:v15 preferredStyle:1];
  v21 = MEMORY[0x1E69DC648];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __129__PKPaymentAuthorizationPresentationCoordinator__presentAlertWithTitle_message_cancelTitle_actionTitle_actionHandler_finalError___block_invoke;
  v28[3] = &unk_1E8011310;
  v28[4] = self;
  v22 = v19;
  v29 = v22;
  v23 = [v21 actionWithTitle:v16 style:1 handler:v28];
  [v20 addAction:v23];

  if (v17)
  {
    v24 = MEMORY[0x1E69DC648];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __129__PKPaymentAuthorizationPresentationCoordinator__presentAlertWithTitle_message_cancelTitle_actionTitle_actionHandler_finalError___block_invoke_2;
    v26[3] = &unk_1E8011248;
    v27 = v18;
    v25 = [v24 actionWithTitle:v17 style:0 handler:v26];
    [v20 addAction:v25];
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertController:v20];
}

uint64_t __129__PKPaymentAuthorizationPresentationCoordinator__presentAlertWithTitle_message_cancelTitle_actionTitle_actionHandler_finalError___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 actionTitle:(id)a5 actionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = PKLocalizedString(&cfstr_Cancel.isa);
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentAlertWithTitle:v13 message:v12 cancelTitle:v14 actionTitle:v11 actionHandler:v10];
}

- (void)_presentEnrollAccessibilityIntentAlert
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__PKPaymentAuthorizationPresentationCoordinator__presentEnrollAccessibilityIntentAlert__block_invoke;
  aBlock[3] = &unk_1E8010998;
  objc_copyWeak(&v10, &location);
  v3 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PKPaymentAuthorizationPresentationCoordinator__presentEnrollAccessibilityIntentAlert__block_invoke_2;
  v7[3] = &unk_1E80122D8;
  objc_copyWeak(&v8, &location);
  v4 = _Block_copy(v7);
  AccesibilityIntentUnavailable = PKAlertCreateAccesibilityIntentUnavailable(v3, v4);
  v6 = [[PKPaymentAuthorizationMinimalInterface alloc] initWithPrimaryViewController:AccesibilityIntentUnavailable];
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentInterface:v6 completion:0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __87__PKPaymentAuthorizationPresentationCoordinator__presentEnrollAccessibilityIntentAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissWithReason:3 completion:0];
    WeakRetained = v2;
  }
}

void __87__PKPaymentAuthorizationPresentationCoordinator__presentEnrollAccessibilityIntentAlert__block_invoke_2(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissWithReason:3 completion:0];
    v6 = objc_alloc_init(MEMORY[0x1E69636B8]);
    [v6 setSensitive:1];
    v8 = *MEMORY[0x1E699F970];
    v9[0] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v6 setFrontBoardOptions:v7];

    PKOpenApplication(v3, v6);
  }
}

- (void)_presentWalletUninstalledAlert
{
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __79__PKPaymentAuthorizationPresentationCoordinator__presentWalletUninstalledAlert__block_invoke;
  v9 = &unk_1E8010998;
  objc_copyWeak(&v10, &location);
  v3 = PKCreateAlertControllerForWalletUninstalled(&v6);
  v4 = [PKPaymentAuthorizationMinimalInterface alloc];
  v5 = [(PKPaymentAuthorizationMinimalInterface *)v4 initWithPrimaryViewController:v3, v6, v7, v8, v9];
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentPaymentInterface:v5 completion:0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __79__PKPaymentAuthorizationPresentationCoordinator__presentWalletUninstalledAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained authorizationDidFinishWithError:0];
    WeakRetained = v2;
  }
}

- (void)presentAdditionalInAppPaymentWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Received request to present nested payment.", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentAuthorizationPresentationCoordinator_presentAdditionalInAppPaymentWithContext_completion___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __101__PKPaymentAuthorizationPresentationCoordinator_presentAdditionalInAppPaymentWithContext_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 88));
  v3 = [WeakRetained presentCoordinatorForContext:a1[5]];

  v4 = a1[6];
  if (v3)
  {
    v5 = *(v4 + 16);

    v5(v4, 1, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-2012 userInfo:0];
    (*(v4 + 16))(v4, 0, v6);
  }
}

- (void)authorizationWillStart
{
  v2 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v2 authorizationWillStart];
}

- (void)authorizationDidRequestMerchantSession
{
  v2 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v2 authorizationDidRequestMerchantSession];
}

- (void)authorizationDidFinishWithError:(id)a3
{
  if (!self->_didSendAuthorizationDidFinish)
  {
    self->_didSendAuthorizationDidFinish = 1;
    v5 = a3;
    v6 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
    [v6 authorizationDidFinishWithError:v5];
  }
}

- (void)authorizationDidAuthorizeContext
{
  v2 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v2 authorizationDidAuthorizeContext];
}

- (void)authorizationDidAuthorizePayment:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidAuthorizePayment:v4];

  if (self->_paymentSetupState == 2)
  {

    JUMPOUT(0x1BFB41980);
  }
}

- (void)authorizationDidAuthorizePurchase:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidAuthorizePurchase:v4];
}

- (void)authorizationDidAuthorizePeerPaymentQuote:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidAuthorizePeerPaymentQuote:v4];
}

- (void)authorizationDidAuthorizeApplePayTrustSignature:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidAuthorizeApplePayTrustSignature:v4];
}

- (void)authorizationDidUpdateAccountServicePaymentMethod:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidUpdateAccountServicePaymentMethod:v4];
}

- (void)authorizationDidSelectShippingMethod:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidSelectShippingMethod:v4];
}

- (void)authorizationDidSelectShippingAddress:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidSelectShippingAddress:v4];
}

- (void)authorizationDidSelectPaymentMethod:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidSelectPaymentMethod:v4];
}

- (void)authorizationDidChangeCouponCode:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 authorizationDidChangeCouponCode:v4];
}

- (void)didEncounterAuthorizationEvent:(unint64_t)a3
{
  [(PKPaymentAuthorizationPresentationCoordinator *)self _reportEncounteredAuthorizationEvent:?];
  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
  [v5 didEncounterAuthorizationEvent:a3];
}

- (void)authorizationDidPresent
{
  if (!self->_didSendAuthorizationDidPresent)
  {
    self->_didSendAuthorizationDidPresent = 1;
    v3 = [(PKPaymentAuthorizationPresentationCoordinator *)self remoteObjectProxy];
    [v3 authorizationDidPresent];
  }
}

- (void)authorizationDidFulfillPaymentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PKInAppPaymentPresentationHostContext *)self->_context fulfillPromisedRemoteNetworkPaymentRequest:v6];
  [(PKPaymentAuthorizationPresentationCoordinator *)self _reportPaymentRequestDetails];
  [(PKPaymentAuthorizationPresentationCoordinator *)self _reportConnectionEstablishedAnalyticsForConnection:self->_hostConnection];
  objc_initWeak(&location, self);
  v8 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__PKPaymentAuthorizationPresentationCoordinator_authorizationDidFulfillPaymentRequest_completion___block_invoke;
  v10[3] = &unk_1E801FAA0;
  objc_copyWeak(&v12, &location);
  v10[4] = self;
  v9 = v7;
  v11 = v9;
  [(PKPaymentAuthorizationPresentationCoordinator *)self _canPresentPaymentRequest:v8 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __98__PKPaymentAuthorizationPresentationCoordinator_authorizationDidFulfillPaymentRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__PKPaymentAuthorizationPresentationCoordinator_authorizationDidFulfillPaymentRequest_completion___block_invoke_2;
  v10[3] = &unk_1E80177C0;
  objc_copyWeak(v13, (a1 + 48));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v13[1] = a2;
  v10[4] = v6;
  v11 = v5;
  v12 = v7;
  v8 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __dispatch_async_ar_block_invoke_1;
  block[3] = &unk_1E8010B50;
  v15 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v13);
}

void __98__PKPaymentAuthorizationPresentationCoordinator_authorizationDidFulfillPaymentRequest_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 64);
    if (v3 == 5 || v3 == 2)
    {
      v5 = [*(a1 + 32) _canPresentPaymentSheetWithEmptyPass];
      v3 = *(a1 + 64);
    }

    else
    {
      v5 = 0;
    }

    v6 = (v3 == 1) | v5;
    v7 = (v3 == 1) | v5 & 1;
    v8 = *(a1 + 48);
    if (v8 && (v6 & 1) == 0)
    {
      (*(v8 + 16))(v8, 0);
      v3 = *(a1 + 64);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__PKPaymentAuthorizationPresentationCoordinator_authorizationDidFulfillPaymentRequest_completion___block_invoke_3;
    v9[3] = &unk_1E801FA78;
    v9[4] = WeakRetained;
    v12 = v3;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v7;
    [WeakRetained dismissBothPresentationsAnimated:1 completion:v9];
  }
}

uint64_t __98__PKPaymentAuthorizationPresentationCoordinator_authorizationDidFulfillPaymentRequest_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _handlePaymentRequestPresentationResultType:*(a1 + 56) relevantUniqueID:*(a1 + 40)];
  result = *(a1 + 48);
  if (result && *(a1 + 64) == 1)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)authorizationDidRejectPaymentRequestPromise
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "FlowCoordinator: Dismissing prayment request promise with failure", v4, 2u);
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:3 completion:&__block_literal_global_241_1];
}

- (BOOL)supportsSecondaryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained supportsSecondaryViewController];

  return v3;
}

- (BOOL)isIssuerInstallmentsRepayment
{
  if (self->_isPrimaryInitialViewController)
  {
    return [(PKInAppPaymentPresentationHostContext *)self->_context hasIssuerInstallmentsHandoffViewOpenAssertion];
  }

  else
  {
    return 1;
  }
}

- (void)presentSecondaryViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_secondaryPresentingViewController);

  if (WeakRetained)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator already has secondary alert presented, invalidating", v11, 2u);
    }

    [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:2 completion:&__block_literal_global_243_0];
  }

  else
  {
    objc_storeStrong(&self->_pendingSecondaryViewController, a3);
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 requestSecondaryViewController];
  }
}

- (void)dismissPrimaryViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_primaryPresentingViewController);
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__PKPaymentAuthorizationPresentationCoordinator_dismissPrimaryViewControllerAnimated_completion___block_invoke;
    v8[3] = &unk_1E8010B50;
    v9 = v6;
    [WeakRetained dismissViewControllerAnimated:v4 completion:v8];
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

uint64_t __97__PKPaymentAuthorizationPresentationCoordinator_dismissPrimaryViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissSecondaryViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  pendingSecondaryViewController = self->_pendingSecondaryViewController;
  if (pendingSecondaryViewController)
  {
    self->_pendingSecondaryViewController = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_secondaryPresentingViewController);
  if (WeakRetained)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__PKPaymentAuthorizationPresentationCoordinator_dismissSecondaryViewControllerAnimated_completion___block_invoke;
    v9[3] = &unk_1E801FAC8;
    v10 = v6;
    objc_copyWeak(&v11, &location);
    [WeakRetained dismissViewControllerAnimated:v4 completion:v9];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

void __99__PKPaymentAuthorizationPresentationCoordinator_dismissSecondaryViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 11);
    [v4 invalidateSecondaryAlert];

    WeakRetained = v5;
  }
}

- (void)dismissBothPresentationsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__PKPaymentAuthorizationPresentationCoordinator_dismissBothPresentationsAnimated_completion___block_invoke;
  v12[3] = &unk_1E8010970;
  v8 = v7;
  v13 = v8;
  [(PKPaymentAuthorizationPresentationCoordinator *)self dismissPrimaryViewControllerAnimated:v4 completion:v12];
  dispatch_group_enter(v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__PKPaymentAuthorizationPresentationCoordinator_dismissBothPresentationsAnimated_completion___block_invoke_2;
  v10[3] = &unk_1E8010970;
  v9 = v8;
  v11 = v9;
  [(PKPaymentAuthorizationPresentationCoordinator *)self dismissSecondaryViewControllerAnimated:v4 completion:v10];
  if (v6)
  {
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v6);
  }
}

- (void)presentPaymentProvisioningDismissingAfterwards:(BOOL)a3
{
  self->_dismissAfterPaymentSetup = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__PKPaymentAuthorizationPresentationCoordinator_presentPaymentProvisioningDismissingAfterwards___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [(PKPaymentAuthorizationPresentationCoordinator *)self dismissBothPresentationsAnimated:1 completion:v3];
}

void __96__PKPaymentAuthorizationPresentationCoordinator_presentPaymentProvisioningDismissingAfterwards___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 40) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134349056;
      v10 = v1;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): Asked to show provisioning flow but payment setup already in progress. Ignoring request", &v9, 0xCu);
    }
  }

  else
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA018], 0);
    *(*(a1 + 32) + 40) = 1;
    v2 = [*(a1 + 32) _createPaymentInterfaceConfigurationWithRelevantPassID:0];
    v4 = [[PKPaymentAuthorizationProvisioningInterface alloc] initWithConfiguration:v2 delegate:*(a1 + 32)];
    v5 = v4;
    if (v4)
    {
      v6 = [(PKPaymentAuthorizationProvisioningInterface *)v4 primaryViewController];
      [v6 setModalPresentationStyle:2];

      [*(a1 + 32) _presentPaymentInterface:v5 completion:0];
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = 134349056;
        v10 = v8;
        _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%{public}p): cannot create provisioning interface - dismissing", &v9, 0xCu);
      }

      [*(a1 + 32) dismissWithReason:1 completion:0];
    }
  }
}

- (void)paymentAuthorizationProvisioningDidFinishWithPass:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  self->_paymentSetupState = 2;
  if (self->_dismissAfterPaymentSetup)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134349056;
      v9 = self;
      v6 = "PKPaymentAuthorizationPresentationCoordinator (%{public}p): Dismissing following completed payment setup";
LABEL_8:
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134349056;
      v9 = self;
      v6 = "PKPaymentAuthorizationPresentationCoordinator (%{public}p): Provisioning didn't produce any pass. Dismissing";
      goto LABEL_8;
    }

LABEL_9:

    [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:1 completion:0];
    goto LABEL_10;
  }

  v7 = [v4 uniqueID];
  [(PKPaymentAuthorizationPresentationCoordinator *)self _presentNextStepDismissingCurrentInterface:1 withDefaultPassID:v7];

LABEL_10:
}

- (void)dismissWithReason:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    dismissCompletions = self->_dismissCompletions;
    if (!dismissCompletions)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v9 = self->_dismissCompletions;
      self->_dismissCompletions = v8;

      dismissCompletions = self->_dismissCompletions;
    }

    v10 = _Block_copy(v6);
    [(NSMutableSet *)dismissCompletions addObject:v10];
  }

  if (!self->_dismissing)
  {
    self->_dismissing = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__PKPaymentAuthorizationPresentationCoordinator_dismissWithReason_completion___block_invoke;
    v12[3] = &unk_1E80119C8;
    v12[4] = self;
    v12[5] = a3;
    v11 = _Block_copy(v12);
    [MEMORY[0x1E69BC740] performWhenSecureIndicatorRemoved:v11];
  }
}

void __78__PKPaymentAuthorizationPresentationCoordinator_dismissWithReason_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 2 && (*(v2 + 49) & 1) == 0)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9FE0], 0);
    v2 = *(a1 + 32);
  }

  v3 = [v2 exportedObject];
  v4 = [v3 delegate];

  if (objc_opt_respondsToSelector())
  {
    [v4 handleHostApplicationDidCancel];
  }

  if (*(a1 + 40) != 2)
  {
    [*(a1 + 32) authorizationDidFinishWithError:0];
  }

  v5 = *(a1 + 32);
  if (v5[32] == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__PKPaymentAuthorizationPresentationCoordinator_dismissWithReason_completion___block_invoke_2;
    v8[3] = &unk_1E8010970;
    v8[4] = v5;
    v7 = v8;
    v6 = 1;
  }

  [v5 dismissBothPresentationsAnimated:v6 completion:v7];
}

- (BOOL)_shouldBlockHardwareCancels
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  paymentInterface = self->_paymentInterface;

  return [(PKPaymentAuthorizationInterface *)paymentInterface shouldBlockHardwareCancels];
}

- (BOOL)handleHomeButtonPressed
{
  v15 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69BC740] secureIndicatorVisible])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = self;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPresentationCoordinator (%p): preventing home action due to secure indicator.", &v13, 0xCu);
    }

    return 0;
  }

  if ([(PKPaymentAuthorizationPresentationCoordinator *)self _shouldBlockHardwareCancels])
  {
    return 0;
  }

  v5 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  if ([v5 requestType] == 1)
  {
  }

  else
  {
    v6 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
    v7 = [v6 requestType];

    if (v7)
    {
      goto LABEL_14;
    }
  }

  if (PKHomeButtonIsAvailable())
  {
    v8 = 6;
  }

  else
  {
    v8 = 10;
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self didEncounterAuthorizationEvent:v8];
LABEL_14:
  IsAvailable = PKHomeButtonIsAvailable();
  v10 = PKLogFacilityTypeGetObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (IsAvailable)
  {
    if (v11)
    {
      v13 = 134349056;
      v14 = self;
      v12 = "PKPaymentAuthorizationPresentationCoordinator (%{public}p): Dismissing because the home button was pressed";
LABEL_19:
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
    }
  }

  else if (v11)
  {
    v13 = 134349056;
    v14 = self;
    v12 = "PKPaymentAuthorizationPresentationCoordinator (%{public}p): Dismissing because the home indicator was swiped";
    goto LABEL_19;
  }

  [(PKPaymentAuthorizationPresentationCoordinator *)self dismissWithReason:3 completion:0];
  return 1;
}

- (BOOL)_canPresentPaymentSheetWithEmptyPass
{
  v2 = [(PKPaymentAuthorizationPresentationCoordinator *)self paymentRequest];
  if ([v2 requestType])
  {
    v3 = [v2 requestType] == 10;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (UIViewController)primaryPresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryPresentingViewController);

  return WeakRetained;
}

- (UIViewController)secondaryPresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryPresentingViewController);

  return WeakRetained;
}

@end