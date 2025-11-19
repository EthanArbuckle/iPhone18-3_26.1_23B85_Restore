@interface PKPaymentAuthorizationPaymentUIInterface
- (PKPaymentAuthorizationPaymentUIInterface)initWithConfiguration:(id)a3 host:(id)a4;
- (void)_startObservingLockButtonPresses;
- (void)_stopObservingLockButtonPresses;
- (void)consumeSinglePressUpForButtonKind:(int64_t)a3;
- (void)dealloc;
- (void)didAppear;
- (void)initializePrimaryViewController;
- (void)invalidate;
- (void)willAppear;
@end

@implementation PKPaymentAuthorizationPaymentUIInterface

- (PKPaymentAuthorizationPaymentUIInterface)initWithConfiguration:(id)a3 host:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PKPaymentAuthorizationPaymentUIInterface;
  v9 = [(PKPaymentAuthorizationPaymentUIInterface *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_host, a4);
    v11 = objc_alloc_init(MEMORY[0x1E69B8E80]);
    experiment = v10->_experiment;
    v10->_experiment = v11;

    v13 = [[PKPaymentRequestViewInterface alloc] initWithConfiguration:v7 delegate:v8];
    paymentUIInterface = v10->_paymentUIInterface;
    v10->_paymentUIInterface = v13;

    v15 = v10->_paymentUIInterface;
    if (!v15)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v16 = [(PKPaymentRequestViewInterface *)v15 serviceDelegate];
    serviceDelegate = v10->_serviceDelegate;
    v10->_serviceDelegate = v16;

    v18 = [(PKPaymentRequestViewInterface *)v10->_paymentUIInterface viewController];
    primaryViewController = v10->_primaryViewController;
    v10->_primaryViewController = v18;

    [(PKPaymentAuthorizationPaymentUIInterface *)v10 initializePrimaryViewController];
  }

  v20 = v10;
LABEL_6:

  return v20;
}

- (void)initializePrimaryViewController
{
  [(UIViewController *)self->_primaryViewController setModalPresentationStyle:5];
  v4 = [(UIViewController *)self->_primaryViewController view];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v3];
}

- (void)willAppear
{
  [(PKPaymentAuthorizationPaymentUIInterface *)self _startObservingLockButtonPresses];
  paymentUIInterface = self->_paymentUIInterface;

  [(PKPaymentRequestViewInterface *)paymentUIInterface start];
}

- (void)didAppear
{
  if ([(PKPaymentSheetExperiment *)self->_experiment isAA])
  {
    experiment = self->_experiment;

    [(PKPaymentSheetExperiment *)experiment trackExperimentExposure];
  }
}

- (void)invalidate
{
  [(PKPaymentAuthorizationPaymentUIInterface *)self _stopObservingLockButtonPresses];
  paymentUIInterface = self->_paymentUIInterface;

  [(PKPaymentRequestViewInterface *)paymentUIInterface invalidate];
}

- (void)dealloc
{
  [(PKPaymentAuthorizationPaymentUIInterface *)self _stopObservingLockButtonPresses];
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationPaymentUIInterface;
  [(PKPaymentAuthorizationPaymentUIInterface *)&v3 dealloc];
}

- (void)_startObservingLockButtonPresses
{
  if (!self->_lockButtonObserver)
  {
    v6 = [MEMORY[0x1E69D4220] sharedInstance];
    v4 = [v6 beginConsumingPressesForButtonKind:2 eventConsumer:self priority:0];
    lockButtonObserver = self->_lockButtonObserver;
    self->_lockButtonObserver = v4;
  }
}

- (void)_stopObservingLockButtonPresses
{
  [(BSInvalidatable *)self->_lockButtonObserver invalidate];
  lockButtonObserver = self->_lockButtonObserver;
  self->_lockButtonObserver = 0;
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKPaymentAuthorizationPaymentUIInterface_consumeSinglePressUpForButtonKind___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__PKPaymentAuthorizationPaymentUIInterface_consumeSinglePressUpForButtonKind___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 134349056;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKPaymentAuthorizationPaymentUIInterface (%{public}p): Dismissing due to a lock button press", &v8, 0xCu);
  }

  v4 = [*(*(a1 + 32) + 8) request];
  if ([v4 requestType] == 1)
  {

LABEL_6:
    [*(*(a1 + 32) + 16) didEncounterAuthorizationEvent:11];
    goto LABEL_7;
  }

  v5 = [*(*(a1 + 32) + 8) request];
  v6 = [v5 requestType];

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = [*(*(a1 + 32) + 8) presenter];
  [v7 dismissWithReason:3 completion:0];
}

@end