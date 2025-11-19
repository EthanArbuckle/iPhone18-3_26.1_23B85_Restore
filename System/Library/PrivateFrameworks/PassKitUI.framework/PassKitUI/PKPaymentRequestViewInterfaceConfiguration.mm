@interface PKPaymentRequestViewInterfaceConfiguration
- (PKPaymentAuthorizationPresenter)presenter;
- (PKPaymentRequestViewInterfaceConfiguration)init;
- (PKPaymentSheetExperiment)paymentSheetExperiment;
@end

@implementation PKPaymentRequestViewInterfaceConfiguration

- (PKPaymentRequestViewInterfaceConfiguration)init
{
  v12.receiver = self;
  v12.super_class = PKPaymentRequestViewInterfaceConfiguration;
  v2 = [(PKPaymentRequestViewInterfaceConfiguration *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B8D70]);
    request = v2->_request;
    v2->_request = v3;

    applicationIdentifier = v2->_applicationIdentifier;
    v2->_applicationIdentifier = &stru_1F3BD7330;

    localizedApplicationName = v2->_localizedApplicationName;
    v2->_localizedApplicationName = &stru_1F3BD7330;

    bundleIdentifier = v2->_bundleIdentifier;
    v2->_bundleIdentifier = &stru_1F3BD7330;

    relevantPassUniqueID = v2->_relevantPassUniqueID;
    v2->_relevantPassUniqueID = &stru_1F3BD7330;

    v9 = objc_alloc_init(MEMORY[0x1E69B8C00]);
    paymentHardwareStatus = v2->_paymentHardwareStatus;
    v2->_paymentHardwareStatus = v9;
  }

  return v2;
}

- (PKPaymentSheetExperiment)paymentSheetExperiment
{
  paymentSheetExperiment = self->_paymentSheetExperiment;
  if (!paymentSheetExperiment)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B8E80]);
    v5 = self->_paymentSheetExperiment;
    self->_paymentSheetExperiment = v4;

    paymentSheetExperiment = self->_paymentSheetExperiment;
  }

  return paymentSheetExperiment;
}

- (PKPaymentAuthorizationPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end