@interface PKPassbookSettingsDefaultBehavior
- (BOOL)canRegisterForPeerPayment;
- (PKPassbookSettingsDefaultBehavior)init;
- (id)setupDelegate;
- (void)dealloc;
@end

@implementation PKPassbookSettingsDefaultBehavior

- (PKPassbookSettingsDefaultBehavior)init
{
  v12.receiver = self;
  v12.super_class = PKPassbookSettingsDefaultBehavior;
  v2 = [(PKPassbookSettingsDefaultBehavior *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    passLibraryDataProvider = v2->_passLibraryDataProvider;
    v2->_passLibraryDataProvider = v3;

    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = v2->_paymentDataProvider;
    v2->_paymentDataProvider = defaultDataProvider;

    defaults = [MEMORY[0x1E69B8CF8] defaults];
    options = v2->_options;
    v2->_options = defaults;

    v9 = objc_alloc_init(PKPassbookPeerPaymentSettingsDefaultBehavior);
    peerPaymentDefaultBehavior = v2->_peerPaymentDefaultBehavior;
    v2->_peerPaymentDefaultBehavior = v9;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPassbookSettingsDefaultBehavior;
  [(PKPassbookSettingsDefaultBehavior *)&v2 dealloc];
}

- (id)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

- (BOOL)canRegisterForPeerPayment
{
  if (PKIsManagedAppleID())
  {
    return 0;
  }

  if (PKUseMockSURFServer())
  {
    return 1;
  }

  if (!PKStoreDemoModeEnabled())
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    v5 = PKPeerPaymentServiceOverrideURL();

    if (v5)
    {
      goto LABEL_10;
    }

    context = [mEMORY[0x1E69B8EF8] context];
    isRegistered = [context isRegistered];

    if ((isRegistered & 1) == 0)
    {
      context2 = [mEMORY[0x1E69B8EF8] context];
      configuration = [context2 configuration];
      targetDevice = [mEMORY[0x1E69B8EF8] targetDevice];
      deviceRegion = [targetDevice deviceRegion];
      _canRegisterForPeerPayment = [configuration peerPaymentEnabledForRegion:deviceRegion];

      goto LABEL_16;
    }

    if (mEMORY[0x1E69B9020] && ![mEMORY[0x1E69B9020] needsRegistration])
    {
LABEL_10:
      _canRegisterForPeerPayment = 1;
    }

    else
    {
      _canRegisterForPeerPayment = [mEMORY[0x1E69B8EF8] _canRegisterForPeerPayment];
    }

LABEL_16:

    return _canRegisterForPeerPayment;
  }

  return MEMORY[0x1EEE24778]();
}

@end