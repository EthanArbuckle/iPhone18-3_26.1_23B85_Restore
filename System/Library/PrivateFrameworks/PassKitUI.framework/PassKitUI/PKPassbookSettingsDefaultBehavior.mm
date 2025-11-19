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

    v5 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = v2->_paymentDataProvider;
    v2->_paymentDataProvider = v5;

    v7 = [MEMORY[0x1E69B8CF8] defaults];
    options = v2->_options;
    v2->_options = v7;

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
    v3 = [MEMORY[0x1E69B8EF8] sharedService];
    v4 = [MEMORY[0x1E69B9020] sharedService];
    v5 = PKPeerPaymentServiceOverrideURL();

    if (v5)
    {
      goto LABEL_10;
    }

    v6 = [v3 context];
    v7 = [v6 isRegistered];

    if ((v7 & 1) == 0)
    {
      v8 = [v3 context];
      v9 = [v8 configuration];
      v10 = [v3 targetDevice];
      v11 = [v10 deviceRegion];
      v2 = [v9 peerPaymentEnabledForRegion:v11];

      goto LABEL_16;
    }

    if (v4 && ![v4 needsRegistration])
    {
LABEL_10:
      v2 = 1;
    }

    else
    {
      v2 = [v3 _canRegisterForPeerPayment];
    }

LABEL_16:

    return v2;
  }

  return MEMORY[0x1EEE24778]();
}

@end