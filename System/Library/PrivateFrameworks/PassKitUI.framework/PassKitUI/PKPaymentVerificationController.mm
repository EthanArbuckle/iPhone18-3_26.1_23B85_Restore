@interface PKPaymentVerificationController
- (BOOL)isBankAppInstalled;
- (NSString)alternateMethodButtonTitle;
- (NSString)continueVerificationButtonTitle;
- (NSString)verificationBodyString;
- (NSString)verificationTitleString;
- (PKPaymentVerificationController)initWithPass:(id)pass passView:(id)view webService:(id)service context:(int64_t)context delegate:(id)delegate verificationContext:(int64_t)verificationContext;
- (PKPaymentVerificationController)initWithPass:(id)pass webService:(id)service context:(int64_t)context verificationContext:(int64_t)verificationContext;
- (PKPaymentVerificationControllerDelegate)delegate;
- (id)_bankAppName;
- (id)_bankAppStoreIDs;
- (id)_continueVerificationButtonTitleForBankAppMethod:(id)method;
- (id)_formattedPhoneNumber:(id)number forTextMessage:(BOOL)message;
- (id)_outboundCallPhoneNumber;
- (id)passSnapshot;
- (void)_didChangePresentation;
- (void)_downloadAndAddPass:(id)pass completion:(id)completion;
- (void)_lookForBankAppIfNecessary;
- (void)_queue_sharedPaymentWebServiceChanged;
- (void)_resetState;
- (void)_updateVerificationStatusToComplete;
- (void)canPerformAnyVerificationInline:(id)inline;
- (void)canPerformVerificationInline:(id)inline;
- (void)canPerformVerificationInlineForMethodGroup:(id)group completion:(id)completion;
- (void)clearSelectedChannel;
- (void)completeVerificationUsingOutboundCall;
- (void)dealloc;
- (void)launchBankApp;
- (void)performStoreLookupForBankAppWithCompletion:(id)completion;
- (void)performVerificationOptionsRequest:(id)request completion:(id)completion;
- (void)performVerificationUpdateRequest:(id)request completion:(id)completion;
- (void)setActiveVerificationMethodGroup:(id)group;
- (void)setPassView:(id)view;
- (void)setVerificationRecord:(id)record;
- (void)sharedPaymentServiceChanged;
- (void)submitVerificationCode:(id)code completion:(id)completion;
- (void)submitVerificationEntries:(id)entries completion:(id)completion;
@end

@implementation PKPaymentVerificationController

- (PKPaymentVerificationController)initWithPass:(id)pass passView:(id)view webService:(id)service context:(int64_t)context delegate:(id)delegate verificationContext:(int64_t)verificationContext
{
  viewCopy = view;
  delegateCopy = delegate;
  v17 = [(PKPaymentVerificationController *)self initWithPass:pass webService:service context:context verificationContext:verificationContext];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_passView, view);
    objc_storeWeak(&v18->_delegate, delegateCopy);
    passSnapshot = [(PKPaymentVerificationController *)v18 passSnapshot];
  }

  return v18;
}

- (PKPaymentVerificationController)initWithPass:(id)pass webService:(id)service context:(int64_t)context verificationContext:(int64_t)verificationContext
{
  passCopy = pass;
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = PKPaymentVerificationController;
  v13 = [(PKPaymentVerificationController *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pass, pass);
    objc_storeStrong(&v14->_webService, service);
    v14->_context = context;
    v14->_verificationContext = verificationContext;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel_sharedPaymentServiceChanged name:*MEMORY[0x1E69BC4F0] object:0];

    [(PKPaymentVerificationController *)v14 _queue_sharedPaymentWebServiceChanged];
  }

  return v14;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69BC4F0] object:0];

  v4.receiver = self;
  v4.super_class = PKPaymentVerificationController;
  [(PKPaymentVerificationController *)&v4 dealloc];
}

- (void)setPassView:(id)view
{
  viewCopy = view;
  if (self->_passView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_passView, view);
    passSnapshot = self->_passSnapshot;
    self->_passSnapshot = 0;

    viewCopy = v7;
  }
}

- (id)passSnapshot
{
  passSnapshot = self->_passSnapshot;
  if (!passSnapshot)
  {
    passSnapshot = self->_passView;
    if (passSnapshot)
    {
      pass = [passSnapshot pass];
      [pass loadImageSetSync:0 preheat:1];

      snapshotOfFrontFace = [(PKPassView *)self->_passView snapshotOfFrontFace];
      v6 = self->_passSnapshot;
      self->_passSnapshot = snapshotOfFrontFace;

      passSnapshot = self->_passSnapshot;
    }
  }

  return passSnapshot;
}

- (void)sharedPaymentServiceChanged
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPaymentVerificationController_sharedPaymentServiceChanged__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_queue_sharedPaymentWebServiceChanged
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentWebService *)self->_webService verificationRecordForPass:self->_pass];
  if (!v3)
  {
    if (PKShowFakeVerificationChannels())
    {
      v3 = [MEMORY[0x1E69B9330] verificationRequestRecordForPass:self->_pass];
    }

    else
    {
      v3 = 0;
    }
  }

  [(PKPaymentVerificationController *)self setVerificationRecord:v3];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Received updated record: %@", &v5, 0xCu);
  }
}

- (void)setVerificationRecord:(id)record
{
  objc_storeStrong(&self->_verificationRecord, record);
  [(PKPaymentVerificationController *)self _resetState];
  [(PKPaymentVerificationController *)self _didChangePresentation];

  [(PKPaymentVerificationController *)self _lookForBankAppIfNecessary];
}

- (void)_resetState
{
  installedBankAppBundleID = self->_installedBankAppBundleID;
  self->_installedBankAppBundleID = 0;

  installedBankAppTitle = self->_installedBankAppTitle;
  self->_installedBankAppTitle = 0;

  inStoreBankAppTitle = self->_inStoreBankAppTitle;
  self->_inStoreBankAppTitle = 0;

  inStoreBankAppStoreID = self->_inStoreBankAppStoreID;
  self->_inStoreBankAppStoreID = 0;

  self->_bankAppNotFound = 0;
}

- (void)_lookForBankAppIfNecessary
{
  verificationRecord = self->_verificationRecord;
  verificationStatus = [(PKVerificationRequestRecord *)verificationRecord verificationStatus];
  if (verificationRecord && ((verificationStatus - 2) < 2 || verificationStatus == 4000))
  {
    channel = [(PKVerificationRequestRecord *)self->_verificationRecord channel];
    if (channel)
    {
      v6 = channel;
      channel2 = [(PKVerificationRequestRecord *)self->_verificationRecord channel];
      type = [channel2 type];

      if (type == 5 && ![(PKPaymentVerificationController *)self isBankAppInstalled])
      {

        [(PKPaymentVerificationController *)self performStoreLookupForBankAppWithCompletion:0];
      }
    }
  }
}

- (void)_didChangePresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 didChangeVerificationPresentation];
  }
}

- (NSString)verificationTitleString
{
  activeMethodGroup = [(PKVerificationRequestRecord *)self->_verificationRecord activeMethodGroup];
  v3 = activeMethodGroup;
  if (activeMethodGroup)
  {
    type = [activeMethodGroup type];
    if ((type - 1) >= 2 && !type)
    {
      methods = [v3 methods];
      v6 = [methods objectAtIndexedSubscript:0];

      v7 = [v6 type] - 1;
      if (v7 <= 6)
      {
        v8 = PKLocalizedPaymentString(&off_1E8017880[v7]->isa);

        goto LABEL_8;
      }
    }
  }

  v8 = PKLocalizedPaymentString(&cfstr_VerificationRe_3.isa);
LABEL_8:

  return v8;
}

- (NSString)verificationBodyString
{
  activeMethodGroup = [(PKVerificationRequestRecord *)self->_verificationRecord activeMethodGroup];
  v4 = activeMethodGroup;
  if (!activeMethodGroup)
  {
    goto LABEL_35;
  }

  type = [activeMethodGroup type];
  if (type == 2)
  {
    defaultVerificationBodyString = PKLocalizedPaymentString(&cfstr_VerificationCh_0.isa);
LABEL_36:
    v10 = defaultVerificationBodyString;
    goto LABEL_37;
  }

  if (type)
  {
LABEL_35:
    defaultVerificationBodyString = [(PKPaymentVerificationController *)self defaultVerificationBodyString];
    goto LABEL_36;
  }

  methods = [v4 methods];
  v7 = [methods objectAtIndexedSubscript:0];

  type2 = [v7 type];
  if (type2 <= 3)
  {
    switch(type2)
    {
      case 1:
        v12 = v7;
        channel = [v12 channel];
        if (channel < 2)
        {
          isMethodInProgressMethodExpired = [(PKVerificationRequestRecord *)self->_verificationRecord isMethodInProgressMethodExpired];
          destinationAddress = [v12 destinationAddress];
          v17 = [(PKPaymentVerificationController *)self _formattedPhoneNumber:destinationAddress forTextMessage:1];
          v18 = v17;
          if (isMethodInProgressMethodExpired)
          {
            PKLocalizedPaymentString(&cfstr_VerificationSe.isa, &stru_1F3BD5BF0.isa, v17);
          }

          else
          {
            PKLocalizedPaymentString(&cfstr_VerificationSe_0.isa, &stru_1F3BD5BF0.isa, v17);
          }

          goto LABEL_44;
        }

        if (channel == 2)
        {
          destinationAddress = [v12 destinationAddress];
          v10 = PKLocalizedPaymentString(&cfstr_VerificationSe_1.isa, &stru_1F3BD5BF0.isa, destinationAddress);
LABEL_45:

          goto LABEL_46;
        }

        break;
      case 2:
        v12 = v7;
        direction = [v12 direction];
        if (direction < 2)
        {
          destinationAddress = [v12 phoneNumber];
          if (![destinationAddress length] || self->_bankAppNotFound)
          {
            v20 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];

            destinationAddress = v20;
          }

          v18 = [(PKPaymentVerificationController *)self _formattedPhoneNumber:destinationAddress forTextMessage:0];
          PKLocalizedPaymentString(&cfstr_VerificationSe_2.isa, &stru_1F3BD5BF0.isa, v18);
          goto LABEL_44;
        }

        if (direction == 2)
        {
          v22 = [(PKVerificationRequestRecord *)self->_verificationRecord isMethodInProgress:v12];
          destinationAddress = [v12 phoneNumber];
          v23 = [(PKPaymentVerificationController *)self _formattedPhoneNumber:destinationAddress forTextMessage:0];
          v18 = v23;
          if (v22)
          {
            PKLocalizedPaymentString(&cfstr_VerificationSe_3.isa, &stru_1F3BD5BF0.isa, v23);
          }

          else
          {
            PKLocalizedPaymentString(&cfstr_VerificationSt.isa, &stru_1F3BD5BF0.isa, v23);
          }

          v10 = LABEL_44:;

          goto LABEL_45;
        }

        break;
      case 3:
        goto LABEL_14;
      default:
        goto LABEL_34;
    }

LABEL_34:
    goto LABEL_35;
  }

  if (type2 == 4)
  {
LABEL_14:
    appName = [v7 appName];
    v12 = PKLocalizedPaymentString(&cfstr_VerificationSe_4.isa, &stru_1F3BD5BF0.isa, appName);

    if (v12)
    {
      defaultVerificationBodyString2 = v12;
    }

    else
    {
      defaultVerificationBodyString2 = [(PKPaymentVerificationController *)self defaultVerificationBodyString];
    }

LABEL_41:
    v10 = defaultVerificationBodyString2;
LABEL_46:

    goto LABEL_47;
  }

  if (type2 == 5)
  {
    websiteName = [v7 websiteName];
    v12 = websiteName;
    if (websiteName)
    {
      PKLocalizedPaymentString(&cfstr_VerificationUr.isa, &stru_1F3BD5BF0.isa, websiteName);
    }

    else
    {
      PKLocalizedPaymentString(&cfstr_VerificationUr_0.isa);
    }
    defaultVerificationBodyString2 = ;
    goto LABEL_41;
  }

  if (type2 != 6)
  {
    goto LABEL_34;
  }

  v10 = PKLocalizedPaymentString(&cfstr_VerificationCh.isa);
LABEL_47:

LABEL_37:

  return v10;
}

- (id)_formattedPhoneNumber:(id)number forTextMessage:(BOOL)message
{
  messageCopy = message;
  numberCopy = number;
  if ([numberCopy containsString:@"•"])
  {
    v6 = numberCopy;
  }

  else if (messageCopy)
  {
    v6 = CPPhoneNumberCopyFormattedStringForTextMessage();
  }

  else
  {
    v6 = CPPhoneNumberCopyFormattedStringForVoiceCall();
  }

  v7 = v6;

  return v7;
}

- (NSString)continueVerificationButtonTitle
{
  activeMethodGroup = [(PKVerificationRequestRecord *)self->_verificationRecord activeMethodGroup];
  v4 = activeMethodGroup;
  if (!activeMethodGroup || [activeMethodGroup type] >= 2)
  {
    goto LABEL_18;
  }

  methods = [v4 methods];
  v6 = [methods objectAtIndexedSubscript:0];

  type = [v6 type];
  if (type > 3)
  {
    if ((type - 6) < 2)
    {
      v9 = @"COMPLETE_VERIFICATION_TITLE";
    }

    else
    {
      if (type == 4)
      {
        appName = [v6 appName];
        v14 = PKLocalizedPaymentString(&cfstr_OpenBankUrlBut.isa, &stru_1F3BD5BF0.isa, appName);
        goto LABEL_29;
      }

      if (type != 5)
      {
        goto LABEL_17;
      }

      v9 = @"OPEN_BANK_URL_BUTTON_GENERIC";
    }

LABEL_21:
    v8 = PKLocalizedPaymentString(&v9->isa);
    goto LABEL_22;
  }

  if (type == 1)
  {
    if ([(PKVerificationRequestRecord *)self->_verificationRecord isMethodInProgressMethodExpired])
    {
      v9 = @"ENTER_CODE_BUTTON_EXPIRED";
    }

    else
    {
      v9 = @"ENTER_CODE_BUTTON";
    }

    goto LABEL_21;
  }

  if (type == 2)
  {
    appName = v6;
    direction = [appName direction];
    if (direction < 2)
    {
      organizationName = [(PKSecureElementPass *)self->_pass organizationName];
      v13 = PKLocalizedPaymentString(&cfstr_CallIssuerButt.isa, &stru_1F3BD5BF0.isa, organizationName);

LABEL_30:
      goto LABEL_31;
    }

    if (direction != 2)
    {

      goto LABEL_7;
    }

    if ([(PKVerificationRequestRecord *)self->_verificationRecord isMethodInProgress:appName])
    {
      v15 = @"ENTER_CODE_BUTTON";
    }

    else
    {
      v15 = @"COMPLETE_VERIFICATION_TITLE";
    }

    v14 = PKLocalizedPaymentString(&v15->isa);
LABEL_29:
    v13 = v14;
    goto LABEL_30;
  }

  if (type != 3)
  {
LABEL_17:

LABEL_18:
    v13 = PKLocalizedPaymentString(&cfstr_CompleteVerifi.isa);
    goto LABEL_32;
  }

LABEL_7:
  v8 = [(PKPaymentVerificationController *)self _continueVerificationButtonTitleForBankAppMethod:v6];
LABEL_22:
  v13 = v8;
LABEL_31:

LABEL_32:

  return v13;
}

- (id)_continueVerificationButtonTitleForBankAppMethod:(id)method
{
  _bankAppName = [(PKPaymentVerificationController *)self _bankAppName];
  if ([(PKPaymentVerificationController *)self isBankAppInstalled])
  {
    v5 = PKLocalizedPaymentString(&cfstr_OpenBankAppBut.isa, &stru_1F3BD5BF0.isa, _bankAppName);
LABEL_8:
    v7 = v5;
    goto LABEL_9;
  }

  if (self->_inStoreBankAppTitle)
  {
    v6 = @"VERIFY_IN_APP_BUTTON";
LABEL_7:
    v5 = PKLocalizedPaymentString(&v6->isa);
    goto LABEL_8;
  }

  if (self->_bankAppNotFound)
  {
    v6 = @"NOT_AVAILABLE";
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (NSString)alternateMethodButtonTitle
{
  activeMethodGroup = [(PKVerificationRequestRecord *)self->_verificationRecord activeMethodGroup];

  if (activeMethodGroup)
  {
    v3 = PKLocalizedPaymentString(&cfstr_TryAgainButton_0.isa);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_bankAppName
{
  channel = [(PKVerificationRequestRecord *)self->_verificationRecord channel];
  contactPoint = [channel contactPoint];
  v5 = [contactPoint length];

  if (v5)
  {
    channel2 = [(PKVerificationRequestRecord *)self->_verificationRecord channel];
    contactPoint2 = [channel2 contactPoint];
  }

  else if ([(PKPaymentVerificationController *)self isBankAppInstalled]&& (installedBankAppTitle = self->_installedBankAppTitle) != 0 || (installedBankAppTitle = self->_inStoreBankAppTitle) != 0)
  {
    contactPoint2 = installedBankAppTitle;
  }

  else
  {
    contactPoint2 = 0;
  }

  return contactPoint2;
}

- (BOOL)isBankAppInstalled
{
  if (self->_installedBankAppBundleID)
  {
    return 1;
  }

  _bankAppStoreIDs = [(PKPaymentVerificationController *)self _bankAppStoreIDs];
  if ([_bankAppStoreIDs count])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__15;
    v27 = __Block_byref_object_dispose__15;
    v28 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = objc_alloc_init(MEMORY[0x1E69D49D8]);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __53__PKPaymentVerificationController_isBankAppInstalled__block_invoke;
    v19 = &unk_1E80175E0;
    v20 = _bankAppStoreIDs;
    v22 = &v23;
    v7 = v5;
    v21 = v7;
    [v6 getLibraryItemsForITunesStoreItemIdentifiers:v20 completionBlock:&v16];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if (v24[5])
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v24[5] valueForProperty:*MEMORY[0x1E69D4D48]];
      v10 = [v8 initWithFormat:@"%@", v9, v16, v17, v18, v19, v20];
      installedBankAppStoreID = self->_installedBankAppStoreID;
      self->_installedBankAppStoreID = v10;

      v12 = [v24[5] valueForProperty:*MEMORY[0x1E69D4D40]];
      installedBankAppBundleID = self->_installedBankAppBundleID;
      self->_installedBankAppBundleID = v12;

      v14 = [v24[5] valueForProperty:*MEMORY[0x1E69D4D50]];
      installedBankAppTitle = self->_installedBankAppTitle;
      self->_installedBankAppTitle = v14;
    }

    _Block_object_dispose(&v23, 8);
  }

  return self->_installedBankAppBundleID != 0;
}

void __53__PKPaymentVerificationController_isBankAppInstalled__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v15 = *v24;
    v3 = *MEMORY[0x1E69D4D48];
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v23 + 1) + 8 * v4);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v17;
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v19 + 1) + 8 * i);
            v12 = [v11 valueForProperty:v3];
            v13 = [v12 isEqual:v5];

            if (v13)
            {
              objc_storeStrong((*(*(v18 + 48) + 8) + 40), v11);
              goto LABEL_16;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:

      if (*(*(*(v18 + 48) + 8) + 40))
      {
        break;
      }

      if (++v4 == v16)
      {
        v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_semaphore_signal(*(v18 + 40));
}

- (id)_bankAppStoreIDs
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  activeMethodGroup = [(PKVerificationRequestRecord *)self->_verificationRecord activeMethodGroup];
  onlyMethod = [activeMethodGroup onlyMethod];

  if ([onlyMethod type] == 3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    appIdentifiers = [onlyMethod appIdentifiers];
    v7 = [appIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(appIdentifiers);
          }

          integerValue = [*(*(&v18 + 1) + 8 * i) integerValue];
          if (integerValue)
          {
            v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:integerValue];
            [v3 addObject:v12];
          }
        }

        v8 = [appIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  storeIdentifiers = [(PKSecureElementPass *)self->_pass storeIdentifiers];
  v14 = [storeIdentifiers count];

  if (v14)
  {
    storeIdentifiers2 = [(PKSecureElementPass *)self->_pass storeIdentifiers];
    [v3 addObjectsFromArray:storeIdentifiers2];
  }

  v16 = [v3 copy];

  return v16;
}

- (void)performStoreLookupForBankAppWithCompletion:(id)completion
{
  completionCopy = completion;
  _bankAppStoreIDs = [(PKPaymentVerificationController *)self _bankAppStoreIDs];
  if ([_bankAppStoreIDs count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__PKPaymentVerificationController_performStoreLookupForBankAppWithCompletion___block_invoke;
    v7[3] = &unk_1E8017608;
    v7[4] = self;
    v8 = _bankAppStoreIDs;
    v9 = completionCopy;
    v6 = PKLookupAppStoreApplications(v8, v7);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __78__PKPaymentVerificationController_performStoreLookupForBankAppWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKPaymentVerificationController_performStoreLookupForBankAppWithCompletion___block_invoke_2;
  v7[3] = &unk_1E8011D78;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __78__PKPaymentVerificationController_performStoreLookupForBankAppWithCompletion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) firstObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 displayName];
    v5 = *(a1 + 40);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v7 = [v3 appStoreIdentifier];
    v8 = *(a1 + 40);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(a1 + 40);
  if (!*(v10 + 40) && !*(v10 + 8))
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "None of the specified bank apps (%@) were found installed or on the store, will fall back to Outbound Call (Customer Service) verification", &v14, 0xCu);
    }

    *(*(a1 + 40) + 56) = 1;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))();
  }

  [*(a1 + 40) _didChangePresentation];
}

- (id)_outboundCallPhoneNumber
{
  channel = [(PKVerificationRequestRecord *)self->_verificationRecord channel];
  contactPoint = [channel contactPoint];

  if (!contactPoint)
  {
LABEL_4:
    [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
    contactPoint = channel2 = contactPoint;
    goto LABEL_5;
  }

  channel2 = [(PKVerificationRequestRecord *)self->_verificationRecord channel];
  if ([channel2 type] == 5)
  {
    bankAppNotFound = self->_bankAppNotFound;

    if (!bankAppNotFound)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_5:

LABEL_6:

  return contactPoint;
}

- (void)canPerformVerificationInline:(id)inline
{
  verificationRecord = self->_verificationRecord;
  inlineCopy = inline;
  activeMethodGroup = [(PKVerificationRequestRecord *)verificationRecord activeMethodGroup];
  v7 = activeMethodGroup;
  if (activeMethodGroup)
  {
    [(PKPaymentVerificationController *)self canPerformVerificationInlineForMethodGroup:activeMethodGroup completion:inlineCopy];
  }

  else
  {
    inlineCopy[2](inlineCopy, 0);
  }
}

- (void)canPerformAnyVerificationInline:(id)inline
{
  v25 = *MEMORY[0x1E69E9840];
  inlineCopy = inline;
  v5 = inlineCopy;
  if (inlineCopy)
  {
    v14 = inlineCopy;
    v6 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    methodGroups = [(PKVerificationRequestRecord *)self->_verificationRecord methodGroups];
    v8 = [methodGroups countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(methodGroups);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __67__PKPaymentVerificationController_canPerformAnyVerificationInline___block_invoke;
          v18[3] = &unk_1E8012D58;
          v18[4] = self;
          v18[5] = v11;
          v18[6] = v23;
          [v6 addOperation:{v18, v14}];
          ++v10;
        }

        while (v8 != v10);
        v8 = [methodGroups countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v8);
    }

    v5 = v14;
    null = [MEMORY[0x1E695DFB0] null];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__PKPaymentVerificationController_canPerformAnyVerificationInline___block_invoke_3;
    v15[3] = &unk_1E8017630;
    v16 = v14;
    v17 = v23;
    v13 = [v6 evaluateWithInput:null completion:v15];

    _Block_object_dispose(v23, 8);
  }
}

void __67__PKPaymentVerificationController_canPerformAnyVerificationInline___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKPaymentVerificationController_canPerformAnyVerificationInline___block_invoke_2;
  v13[3] = &unk_1E8017308;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 canPerformVerificationInlineForMethodGroup:v9 completion:v13];
}

uint64_t __67__PKPaymentVerificationController_canPerformAnyVerificationInline___block_invoke_2(void *a1, int a2)
{
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 24);
  if (v3 == 2)
  {
    if (!a2)
    {
      v3 = 2;
      return (*(a1[5] + 16))(a1[5], a1[4], v3 == 1);
    }

    v4 = 1;
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = 1;
    if (!a2)
    {
      v4 = 2;
    }

LABEL_8:
    *(v2 + 24) = v4;
    v3 = *(*(a1[6] + 8) + 24);
  }

  return (*(a1[5] + 16))(a1[5], a1[4], v3 == 1);
}

- (void)canPerformVerificationInlineForMethodGroup:(id)group completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    v17 = completionCopy;
    v9 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    methods = [groupCopy methods];
    v11 = [methods countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(methods);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __89__PKPaymentVerificationController_canPerformVerificationInlineForMethodGroup_completion___block_invoke;
          v22[3] = &unk_1E8017658;
          v22[5] = self;
          v22[6] = v27;
          v22[4] = v14;
          [v9 addOperation:{v22, v17}];
        }

        v11 = [methods countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v11);
    }

    v8 = v17;
    null = [MEMORY[0x1E695DFB0] null];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __89__PKPaymentVerificationController_canPerformVerificationInlineForMethodGroup_completion___block_invoke_2;
    v18[3] = &unk_1E8017680;
    v21 = v27;
    v19 = groupCopy;
    v20 = v17;
    v16 = [v9 evaluateWithInput:null completion:v18];

    _Block_object_dispose(v27, 8);
  }
}

void __89__PKPaymentVerificationController_canPerformVerificationInlineForMethodGroup_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a3;
  v6 = a4;
  v7 = [*(a1 + 32) type];
  if (v7 <= 4)
  {
    if ((v7 - 2) < 3 || !v7)
    {
      goto LABEL_8;
    }

    if (v7 != 1)
    {
      goto LABEL_20;
    }

    v8 = [*(a1 + 32) channel];
    switch(v8)
    {
      case 2:
        *(*(*(a1 + 48) + 8) + 24) = PKPaymentSetupContextIsSetupAssistant() ^ 1;
        break;
      case 1:
        if (PKPaymentSetupContextIsSetupAssistant())
        {
          v15 = PKDevicePhoneNumber();
          if (v15 || (PKIsMac() & 1) != 0)
          {
            v16 = 1;
          }

          else
          {
            v16 = PKIsPad();
          }

          *(*(*(a1 + 48) + 8) + 24) = v16;
        }

        else
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        break;
      case 0:
LABEL_8:
        *(*(*(a1 + 48) + 8) + 24) = 0;
        break;
    }

    v6[2](v6, v17, (*(*(*(a1 + 48) + 8) + 24) & 1) == 0);
    goto LABEL_20;
  }

  if ((v7 - 6) < 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6[2](v6, v17, (*(*(*(a1 + 48) + 8) + 24) & 1) == 0);
    goto LABEL_20;
  }

  if (v7 == 5)
  {
    v9 = *(a1 + 32);
    v10 = [v9 strategy];
    if (v10 - 2 < 2)
    {
      goto LABEL_17;
    }

    if (v10 > 1)
    {
LABEL_19:

      goto LABEL_20;
    }

    if ([*(a1 + 40) isBankAppInstalled])
    {
      v12 = *(a1 + 48);
      v11 = a1 + 48;
      *(*(v12 + 8) + 24) = 0;
    }

    else
    {
LABEL_17:
      IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
      v14 = *(a1 + 48);
      v11 = a1 + 48;
      *(*(v14 + 8) + 24) = IsSetupAssistant ^ 1;
    }

    v6[2](v6, v17, (*(*(*v11 + 8) + 24) & 1) == 0);
    goto LABEL_19;
  }

LABEL_20:
}

uint64_t __89__PKPaymentVerificationController_canPerformVerificationInlineForMethodGroup_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v3 = @"Yes";
    }

    else
    {
      v3 = @"No";
    }

    v4 = [*(a1 + 32) identifier];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Can perform verification inline: '%@' for '%@'", &v6, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)setActiveVerificationMethodGroup:(id)group
{
  v15 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  methodGroups = [(PKVerificationRequestRecord *)self->_verificationRecord methodGroups];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PKPaymentVerificationController_setActiveVerificationMethodGroup___block_invoke;
  v11[3] = &unk_1E80176A8;
  v6 = groupCopy;
  v12 = v6;
  v7 = [methodGroups pk_containsObjectPassingTest:v11];

  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Updating active method group: %@", buf, 0xCu);
    }

    v8 = self->_verificationRecord;
    [v8 setActiveMethodGroup:v6];
    if ([v6 needsServerRequest])
    {
      v10 = 3;
    }

    else
    {
      v10 = 4000;
    }

    [v8 setVerificationStatus:v10];
    [(PKPaymentWebService *)self->_webService updateVerificationRecord:v8];
  }

  else if (v9)
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Tried to activate method group that is not an available option. Method Group: %@", buf, 0xCu);
  }
}

uint64_t __68__PKPaymentVerificationController_setActiveVerificationMethodGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
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
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (void)launchBankApp
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (self->_installedBankAppBundleID)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Starting bank app verification", v17, 2u);
    }

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeMethodGroup = [(PKVerificationRequestRecord *)self->_verificationRecord activeMethodGroup];
    onlyMethod = [activeMethodGroup onlyMethod];

    if ([onlyMethod type] == 3)
    {
      v7 = onlyMethod;
      appIdentifiers = [v7 appIdentifiers];
      v9 = [appIdentifiers containsObject:self->_installedBankAppStoreID];

      if (v9)
      {
        appLaunchURL = [v7 appLaunchURL];

        if (appLaunchURL)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    appLaunchURL2 = [(PKSecureElementPass *)self->_pass appLaunchURL];
    if (!appLaunchURL2)
    {
LABEL_12:
      v16 = [MEMORY[0x1E699FB70] optionsWithDictionary:v4];
      PKOpenApplication(self->_installedBankAppBundleID, v16);

      return;
    }

    appLaunchURL = appLaunchURL2;
LABEL_11:
    v19[0] = @"verify";
    v18[0] = @"action";
    v18[1] = @"passTypeIdentifier";
    passTypeIdentifier = [(PKSecureElementPass *)self->_pass passTypeIdentifier];
    v19[1] = passTypeIdentifier;
    v18[2] = @"serialNumber";
    serialNumber = [(PKSecureElementPass *)self->_pass serialNumber];
    v19[2] = serialNumber;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
    v15 = PKURLByAppendingQueryParams();

    [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x1E699F960]];
    goto LABEL_12;
  }
}

- (void)completeVerificationUsingOutboundCall
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Starting outbound call verification", buf, 2u);
  }

  _outboundCallPhoneNumber = [(PKPaymentVerificationController *)self _outboundCallPhoneNumber];
  v5 = PKTelephoneURLFromPhoneNumber();
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [mEMORY[0x1E69DC668] canOpenURL:v5];

  if (v7)
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__PKPaymentVerificationController_completeVerificationUsingOutboundCall__block_invoke;
    v9[3] = &unk_1E8011D28;
    v9[4] = self;
    [mEMORY[0x1E69DC668]2 openURL:v5 options:MEMORY[0x1E695E0F8] completionHandler:v9];
  }
}

uint64_t __72__PKPaymentVerificationController_completeVerificationUsingOutboundCall__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) clearSelectedChannel];
  }

  return result;
}

- (void)clearSelectedChannel
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Clearing selected verification channel", v5, 2u);
  }

  v4 = self->_verificationRecord;
  [(PKVerificationRequestRecord *)v4 setChannel:0];
  [(PKVerificationRequestRecord *)v4 setVerificationStatus:2];
  [(PKVerificationRequestRecord *)v4 setActiveMethodGroup:0];
  [(PKPaymentVerificationController *)self setVerificationRecord:v4];
  [(PKPaymentWebService *)self->_webService updateVerificationRecord:v4];
}

- (void)_updateVerificationStatusToComplete
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Marking verification as complete", v5, 2u);
  }

  v4 = self->_verificationRecord;
  [(PKVerificationRequestRecord *)v4 setVerificationStatus:3];
  [(PKPaymentVerificationController *)self setVerificationRecord:v4];
  [(PKPaymentWebService *)self->_webService updateVerificationRecord:v4];
}

- (void)performVerificationOptionsRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Fetching verification options", buf, 2u);
  }

  currentStepIdentifier = [(PKVerificationRequestRecord *)self->_verificationRecord currentStepIdentifier];
  stepIdentifier = [requestCopy stepIdentifier];

  if (!stepIdentifier && currentStepIdentifier)
  {
    [requestCopy setStepIdentifier:currentStepIdentifier];
  }

  webService = self->_webService;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PKPaymentVerificationController_performVerificationOptionsRequest_completion___block_invoke;
  v13[3] = &unk_1E80176F8;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [(PKPaymentWebService *)webService verificationOptionsForRequest:requestCopy completion:v13];
}

void __80__PKPaymentVerificationController_performVerificationOptionsRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPaymentVerificationController_performVerificationOptionsRequest_completion___block_invoke_2;
  block[3] = &unk_1E80176D0;
  v16 = a2;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __80__PKPaymentVerificationController_performVerificationOptionsRequest_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) setVerificationRecord:*(a1 + 40)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)performVerificationUpdateRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  methodGroup = [requestCopy methodGroup];
  v9 = methodGroup != 0;

  currentStepIdentifier = [(PKVerificationRequestRecord *)self->_verificationRecord currentStepIdentifier];
  stepIdentifier = [requestCopy stepIdentifier];

  if (!stepIdentifier && currentStepIdentifier)
  {
    [requestCopy setStepIdentifier:currentStepIdentifier];
  }

  objc_initWeak(&location, self);
  webService = self->_webService;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__PKPaymentVerificationController_performVerificationUpdateRequest_completion___block_invoke;
  v14[3] = &unk_1E8017770;
  objc_copyWeak(&v16, &location);
  v17 = v9;
  v14[4] = self;
  v13 = completionCopy;
  v15 = v13;
  [(PKPaymentWebService *)webService updateVerification:requestCopy completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __79__PKPaymentVerificationController_performVerificationUpdateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentVerificationController_performVerificationUpdateRequest_completion___block_invoke_2;
  block[3] = &unk_1E8017748;
  objc_copyWeak(v18, (a1 + 48));
  v18[1] = a2;
  v19 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v18);
}

void __79__PKPaymentVerificationController_performVerificationUpdateRequest_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = *(a1 + 72);
    if (v3 == 1)
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Updated verification record: %@", buf, 0xCu);
      }

      [WeakRetained setVerificationRecord:*(a1 + 32)];
      if ([*(a1 + 32) verificationStatus] == 3 && (*(a1 + 80) & 1) == 0)
      {
        v7 = *(*(a1 + 40) + 64);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __79__PKPaymentVerificationController_performVerificationUpdateRequest_completion___block_invoke_155;
        v10[3] = &unk_1E8017720;
        v8 = *(a1 + 56);
        v9 = *(a1 + 72);
        v11 = v8;
        v12 = v9;
        [WeakRetained _downloadAndAddPass:v7 completion:v10];

        goto LABEL_11;
      }

      v6 = *(a1 + 56);
      if (v6)
      {
        v3 = *(a1 + 72);
LABEL_10:
        (*(v6 + 16))(v6, v3, *(a1 + 48));
      }
    }

    else
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
}

uint64_t __79__PKPaymentVerificationController_performVerificationUpdateRequest_completion___block_invoke_155(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), a2);
  }

  return result;
}

- (void)submitVerificationCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Submitting verification code", buf, 2u);
  }

  objc_initWeak(buf, self);
  webService = self->_webService;
  paymentPass = [(PKSecureElementPass *)self->_pass paymentPass];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKPaymentVerificationController_submitVerificationCode_completion___block_invoke;
  v12[3] = &unk_1E8017810;
  objc_copyWeak(&v14, buf);
  v11 = completionCopy;
  v13 = v11;
  [(PKPaymentWebService *)webService submitVerificationCode:codeCopy verificationData:0 forPass:paymentPass completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __69__PKPaymentVerificationController_submitVerificationCode_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKPaymentVerificationController_submitVerificationCode_completion___block_invoke_2;
  block[3] = &unk_1E80177C0;
  objc_copyWeak(v16, (a1 + 40));
  v16[1] = a2;
  v13 = v8;
  v9 = *(a1 + 32);
  v14 = v7;
  v15 = v9;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v16);
}

void __69__PKPaymentVerificationController_submitVerificationCode_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 64);
    v4 = PKLogFacilityTypeGetObject();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Successfully submitted verification code. Downloading pass.", buf, 2u);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__PKPaymentVerificationController_submitVerificationCode_completion___block_invoke_157;
      v11[3] = &unk_1E8017798;
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 64);
      v13 = v7;
      v14 = v8;
      v12 = *(a1 + 40);
      [WeakRetained _downloadAndAddPass:v6 completion:v11];
    }

    else
    {
      if (v5)
      {
        v9 = *(a1 + 32);
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Failed to submit verification code with error: %@", buf, 0xCu);
      }

      v10 = *(a1 + 48);
      if (v10)
      {
        (*(v10 + 16))(v10, *(a1 + 64), *(a1 + 40), *(a1 + 32));
      }
    }
  }
}

uint64_t __69__PKPaymentVerificationController_submitVerificationCode_completion___block_invoke_157(void *a1, uint64_t a2)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4], a2);
  }

  return result;
}

- (void)submitVerificationEntries:(id)entries completion:(id)completion
{
  entriesCopy = entries;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Submitting verification code", buf, 2u);
  }

  objc_initWeak(buf, self);
  webService = self->_webService;
  paymentPass = [(PKSecureElementPass *)self->_pass paymentPass];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PKPaymentVerificationController_submitVerificationEntries_completion___block_invoke;
  v12[3] = &unk_1E8017810;
  v11 = completionCopy;
  v13 = v11;
  objc_copyWeak(&v14, buf);
  [(PKPaymentWebService *)webService submitVerificationEntries:entriesCopy forPass:paymentPass completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __72__PKPaymentVerificationController_submitVerificationEntries_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKPaymentVerificationController_submitVerificationEntries_completion___block_invoke_2;
  block[3] = &unk_1E80177E8;
  v16[1] = a2;
  v13 = v8;
  v9 = *(a1 + 32);
  v14 = v7;
  v15 = v9;
  v10 = v7;
  v11 = v8;
  objc_copyWeak(v16, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v16);
}

void __72__PKPaymentVerificationController_submitVerificationEntries_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Successfully submitted verification code. Downloading pass.", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PKPaymentVerificationController_submitVerificationEntries_completion___block_invoke_159;
    v11[3] = &unk_1E8017798;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v13 = v7;
    v14 = v8;
    v12 = *(a1 + 40);
    [WeakRetained _downloadAndAddPass:v6 completion:v11];
  }

  else
  {
    if (v4)
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Failed to submit verification code with error: %@", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, *(a1 + 64), *(a1 + 40), *(a1 + 32));
    }
  }
}

uint64_t __72__PKPaymentVerificationController_submitVerificationEntries_completion___block_invoke_159(void *a1, uint64_t a2)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4], a2);
  }

  return result;
}

- (void)_downloadAndAddPass:(id)pass completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Downloading verified pass", buf, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x1E69B8D50]) initWithSecureElementPass:passCopy];
  v10 = [objc_alloc(MEMORY[0x1E69B90F8]) initWithDestinationWebService:self->_webService managingWebService:self->_webService];
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__PKPaymentVerificationController__downloadAndAddPass_completion___block_invoke;
  v14[3] = &unk_1E8017860;
  objc_copyWeak(&v18, buf);
  v11 = passCopy;
  v15 = v11;
  v12 = completionCopy;
  v17 = v12;
  v13 = v10;
  v16 = v13;
  [v13 ingestProvisioningPassData:v9 cloudStoreCoordinatorDelegate:0 moreInfoURLs:0 ingestionProperties:0 sid:&stru_1F3BD7330 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __66__PKPaymentVerificationController__downloadAndAddPass_completion___block_invoke(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKPaymentVerificationController__downloadAndAddPass_completion___block_invoke_2;
  block[3] = &unk_1E8017838;
  objc_copyWeak(&v14, a1 + 7);
  v10 = v7;
  v11 = a1[4];
  v13 = a1[6];
  v12 = a1[5];
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __66__PKPaymentVerificationController__downloadAndAddPass_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (!*(a1 + 32))
    {
      v4 = [*(a1 + 40) paymentPass];
      v5 = v7[8];
      v7[8] = v4;

      v3 = v7;
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, *(a1 + 32));
      v3 = v7;
    }
  }
}

- (PKPaymentVerificationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end