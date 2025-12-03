@interface PKPaymentSetupMoreInfoViewController
- (BOOL)_isExpressEducation;
- (CGSize)_snapshotSize;
- (PKPaymentSetupMoreInfoViewController)initWithMoreInfoItems:(id)items paymentPass:(id)pass targetDevice:(id)device context:(int64_t)context dismissalHandler:(id)handler reportingSource:(int64_t)source;
- (id)_nextItems;
- (id)_paymentNetworkNamesForExpressReporting;
- (id)_reportingSubject;
- (void)_alternateActionWithCompletion:(id)completion;
- (void)_beginReportingIfNecessary;
- (void)_endReportingIfNecessary;
- (void)_handleDismissal;
- (void)_handlePush;
- (void)_linkTapped;
- (void)_next;
- (void)_reportDoneButtonTapped;
- (void)_reportExpressEventIfNeeded:(id)needed;
- (void)_reportExpressModeDisable;
- (void)_reportExpressModeEnable;
- (void)_reportTurnOffExpressButtonTapped;
- (void)_reportViewDidAppear;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PKPaymentSetupMoreInfoViewController

- (PKPaymentSetupMoreInfoViewController)initWithMoreInfoItems:(id)items paymentPass:(id)pass targetDevice:(id)device context:(int64_t)context dismissalHandler:(id)handler reportingSource:(int64_t)source
{
  itemsCopy = items;
  passCopy = pass;
  deviceCopy = device;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = PKPaymentSetupMoreInfoViewController;
  v18 = [(PKExplanationViewController *)&v25 initWithContext:context];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, pass);
    v20 = [itemsCopy copy];
    moreInfoItems = v19->_moreInfoItems;
    v19->_moreInfoItems = v20;

    objc_storeStrong(&v19->_targetDevice, device);
    v22 = [handlerCopy copy];
    dismissalHandler = v19->_dismissalHandler;
    v19->_dismissalHandler = v22;

    v19->_isFinalViewController = 1;
    v19->_reportingSource = source;
    [(PKSecureElementPass *)v19->_pass loadImageSetSync:0 preheat:1];
  }

  return v19;
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = PKPaymentSetupMoreInfoViewController;
  [(PKExplanationViewController *)&v21 loadView];
  _currentItem = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  title = [_currentItem title];
  [explanationView setTitleText:title];

  body = [_currentItem body];
  [explanationView setBodyText:body];

  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsSetupAssistant() & 1) != 0 || !self->_isFinalViewController)
  {
    nextAction = [_currentItem nextAction];
  }

  else
  {
    _nextItems = [(PKPaymentSetupMoreInfoViewController *)self _nextItems];
    if ([_nextItems count])
    {
      [_currentItem nextAction];
    }

    else
    {
      [_currentItem doneAction];
    }
    nextAction = ;
  }

  primaryButton = [dockView primaryButton];
  [primaryButton setTitle:nextAction forState:0];

  if ([_currentItem hasAlternativeAction])
  {
    [explanationView setForceShowSetupLaterButton:1];
    setUpLaterButton = [footerView setUpLaterButton];
    alternativeAction = [_currentItem alternativeAction];
    [setUpLaterButton setTitle:alternativeAction forState:0];
  }

  else
  {
    [explanationView setForceShowSetupLaterButton:0];
  }

  [dockView setRequiresAdditionalPrimaryButtonPadding:1];
  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsiOSSetupAssistant() & 1) == 0)
  {
    linkText = [_currentItem linkText];
    [explanationView setBodyButtonText:linkText];

    [explanationView setBodyButtonNumberOfLines:0];
  }

  imageData = [_currentItem imageData];

  if (!imageData || (v16 = MEMORY[0x1E69DCAB8], [_currentItem imageData], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "imageWithData:scale:", v17, PKUIScreenScale()), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v19 = [[PKPassView alloc] initWithPass:self->_pass content:5 suppressedContent:1911];
    [(PKPaymentSetupMoreInfoViewController *)self _snapshotSize];
    v18 = [(PKPassView *)v19 snapshotOfFrontFaceWithRequestedSize:?];
  }

  [explanationView setImage:v18];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  [explanationView setNeedsLayout];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  navigationItem = [(PKPaymentSetupMoreInfoViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupMoreInfoViewController;
  [(PKPaymentSetupMoreInfoViewController *)&v4 viewDidAppear:appear];
  [(PKPaymentSetupMoreInfoViewController *)self _beginReportingIfNecessary];
  [(PKPaymentSetupMoreInfoViewController *)self _reportExpressModeEnable];
  [(PKPaymentSetupMoreInfoViewController *)self _reportViewDidAppear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupMoreInfoViewController;
  [(PKPaymentSetupMoreInfoViewController *)&v4 viewDidDisappear:disappear];
  [(PKPaymentSetupMoreInfoViewController *)self _endReportingIfNecessary];
}

- (id)_nextItems
{
  moreInfoItems = self->_moreInfoItems;
  _currentItem = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  v4 = [(NSArray *)moreInfoItems pk_arrayByRemovingObject:_currentItem];

  return v4;
}

- (void)_next
{
  _nextItems = [(PKPaymentSetupMoreInfoViewController *)self _nextItems];
  v4 = [_nextItems count];

  if (v4)
  {

    [(PKPaymentSetupMoreInfoViewController *)self _handlePush];
  }

  else
  {

    [(PKPaymentSetupMoreInfoViewController *)self _handleDismissal];
  }
}

- (void)_handlePush
{
  v3 = objc_alloc(objc_opt_class());
  _nextItems = [(PKPaymentSetupMoreInfoViewController *)self _nextItems];
  v6 = [v3 initWithMoreInfoItems:_nextItems paymentPass:self->_pass targetDevice:self->_targetDevice context:-[PKExplanationViewController context](self dismissalHandler:{"context"), self->_dismissalHandler}];

  v6[1096] = self->_isFinalViewController;
  navigationController = [(PKPaymentSetupMoreInfoViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (void)_handleDismissal
{
  navigationItem = [(PKPaymentSetupMoreInfoViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    v6 = *(dismissalHandler + 2);

    v6();
  }

  else
  {
    presentingViewController = [(PKPaymentSetupMoreInfoViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  dockView = [continue dockView];
  [dockView setButtonsEnabled:0];

  [(PKPaymentSetupMoreInfoViewController *)self _reportDoneButtonTapped];

  [(PKPaymentSetupMoreInfoViewController *)self _next];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  laterCopy = later;
  [(PKExplanationViewController *)self showSpinner:1];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PKPaymentSetupMoreInfoViewController_explanationViewDidSelectSetupLater___block_invoke;
  v5[3] = &unk_1E8011180;
  objc_copyWeak(&v6, &location);
  [(PKPaymentSetupMoreInfoViewController *)self _alternateActionWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __75__PKPaymentSetupMoreInfoViewController_explanationViewDidSelectSetupLater___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__PKPaymentSetupMoreInfoViewController_explanationViewDidSelectSetupLater___block_invoke_2;
  v3[3] = &unk_1E80111A8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __75__PKPaymentSetupMoreInfoViewController_explanationViewDidSelectSetupLater___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained showSpinner:0];
    WeakRetained = v3;
    if (*(a1 + 40) == 1)
    {
      [v3 _next];
      WeakRetained = v3;
    }
  }
}

- (void)_alternateActionWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8010AD8;
  v5 = completionCopy;
  v22 = v5;
  v6 = _Block_copy(aBlock);
  _currentItem = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  type = [_currentItem type];

  if ((type - 1) >= 2)
  {
    if (!type)
    {
      v6[2](v6, 1);
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupMoreInfoViewController: User requested to disable Express mode from Express Education", buf, 2u);
    }

    [(PKPaymentSetupMoreInfoViewController *)self _reportTurnOffExpressButtonTapped];
    v10 = objc_opt_respondsToSelector();
    targetDevice = self->_targetDevice;
    if (v10)
    {
      uniqueID = [(PKSecureElementPass *)self->_pass uniqueID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke_42;
      v19[3] = &unk_1E8015A18;
      v19[4] = self;
      v20 = v6;
      [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice removeExpressPassWithUniqueIdentifierV2:uniqueID completion:v19];

      v13 = v20;
LABEL_10:

      goto LABEL_14;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = self->_targetDevice;
      uniqueID2 = [(PKSecureElementPass *)self->_pass uniqueID];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke_46;
      v17[3] = &unk_1E8015A18;
      v17[4] = self;
      v18 = v6;
      [(PKPaymentWebServiceTargetDeviceProtocol *)v14 removeExpressPassWithUniqueIdentifier:uniqueID2 completion:v17];

      v13 = v18;
      goto LABEL_10;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_targetDevice;
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupMoreInfoViewController: Failed to disable express mode due to respondsToSelector of TargetDevice:%@", buf, 0xCu);
    }

    v6[2](v6, 0);
  }

LABEL_14:
}

uint64_t __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke_42(uint64_t a1, int a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupMoreInfoViewController: Disabled express mode with success:%d from Express Education", v7, 8u);
  }

  if (a2)
  {
    [*(a1 + 32) _reportExpressModeDisable];
  }

  (*(*(a1 + 40) + 16))();
}

void __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke_46(uint64_t a1, int a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupMoreInfoViewController: Disabled express mode with success:%d from Express Education", v7, 8u);
  }

  if (a2)
  {
    [*(a1 + 32) _reportExpressModeDisable];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_linkTapped
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  _currentItem = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  linkURL = [_currentItem linkURL];
  [defaultWorkspace openURL:linkURL configuration:0 completionHandler:0];
}

- (CGSize)_snapshotSize
{
  v2 = 220.0;
  v3 = 134.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_beginReportingIfNecessary
{
  if ([(PKPaymentSetupMoreInfoViewController *)self _isExpressEducation])
  {
    _reportingSubject = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
    v3 = [MEMORY[0x1E69B8540] reporterForSubject:?];

    if (!v3)
    {
      self->_didBeginReportingSubject = 1;
      [MEMORY[0x1E69B8540] beginSubjectReporting:_reportingSubject];
    }
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginReportingSubject)
  {
    v3 = MEMORY[0x1E69B8540];
    _reportingSubject = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
    [v3 endSubjectReporting:_reportingSubject];
  }
}

- (void)_reportViewDidAppear
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:*MEMORY[0x1E69BA818] forKey:*MEMORY[0x1E69BA680]];
  [v3 setObject:*MEMORY[0x1E69BB528] forKey:*MEMORY[0x1E69BABE8]];
  [(PKSecureElementPass *)self->_pass devicePaymentApplications];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v4 = v62 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v5)
  {
    v6 = v5;
    paymentType = 0;
    v8 = *v60;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        if (paymentType && paymentType != [*(*(&v59 + 1) + 8 * i) paymentType])
        {

          v11 = @"multiple";
          goto LABEL_13;
        }

        paymentType = [v10 paymentType];
      }

      v6 = [v4 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = PKPaymentMethodTypeToString();
LABEL_13:

  v12 = *MEMORY[0x1E69BAD40];
  [v3 safelySetObject:v11 forKey:*MEMORY[0x1E69BAD40]];

  pass = self->_pass;
  v14 = v3;
  v15 = pass;
  v16 = v15;
  if (v14 && v15)
  {
    passType = [(PKSecureElementPass *)v15 passType];
    v18 = MEMORY[0x1E69BB3A8];
    if ((passType + 1) >= 3)
    {
      v19 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v19 = off_1E8015A88[passType + 1];
    }

    [v14 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    style = [(PKSecureElementPass *)v16 style];
    secureElementPass = [(PKSecureElementPass *)v16 secureElementPass];
    isIdentityPass = [secureElementPass isIdentityPass];

    if (isIdentityPass)
    {
      v23 = @"identity";
    }

    else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
    {
      v23 = off_1E8015AA0[style];
    }

    else
    {
      v23 = *v18;
    }

    [v14 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    nfcPayload = [(PKSecureElementPass *)v16 nfcPayload];
    v25 = PKAnalyticsReportSwitchToggleResultValue();
    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v26 = v16;
    if ([(PKSecureElementPass *)v26 passType]== 1)
    {
      secureElementPass2 = [(PKSecureElementPass *)v26 secureElementPass];
      cardType = [secureElementPass2 cardType];
      if (cardType <= 4)
      {
        v25 = **(&unk_1E8015B10 + cardType);
      }
    }

    else
    {
      v25 = @"other";
    }

    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    secureElementPass3 = [(PKSecureElementPass *)v26 secureElementPass];
    if ([secureElementPass3 isIdentityPass])
    {
      identityType = [secureElementPass3 identityType];
      if (identityType <= 2)
      {
        if (identityType == 1)
        {
          v31 = MEMORY[0x1E69BA648];
          goto LABEL_50;
        }

        if (identityType == 2)
        {
          v31 = MEMORY[0x1E69BB2C8];
          goto LABEL_50;
        }
      }

      else
      {
        switch(identityType)
        {
          case 3:
            goto LABEL_34;
          case 4:
            v31 = MEMORY[0x1E69BA8E0];
            goto LABEL_50;
          case 5:
LABEL_34:
            v31 = MEMORY[0x1E69BACB0];
LABEL_50:
            v36 = *v31;
            goto LABEL_51;
        }
      }

LABEL_43:
      v36 = *v18;
LABEL_51:
      v35 = v36;
      goto LABEL_64;
    }

    if (![secureElementPass3 isAccessPass])
    {
      goto LABEL_43;
    }

    accessType = [secureElementPass3 accessType];
    accessReportingType = [secureElementPass3 accessReportingType];
    v34 = accessReportingType;
    if (accessType <= 2)
    {
      switch(accessType)
      {
        case 0:
          v37 = @"general";
          if (accessReportingType)
          {
            v37 = accessReportingType;
          }

          goto LABEL_59;
        case 1:
          v35 = @"hospitality";
          goto LABEL_63;
        case 2:
          v35 = @"corporate";
LABEL_63:

LABEL_64:
          [v14 setObject:v35 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          secureElementPass4 = [(PKSecureElementPass *)v26 secureElementPass];
          devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
          [devicePaymentApplications count];

          v40 = PKAnalyticsReportSwitchToggleResultValue();

          [v14 setObject:v40 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          secureElementPass5 = [(PKSecureElementPass *)v26 secureElementPass];
          v42 = *v18;
          organizationName = [secureElementPass5 organizationName];
          if ([organizationName length])
          {
            cardType2 = [secureElementPass5 cardType];
            if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
            {
              v45 = organizationName;

              v42 = v45;
            }
          }

          [v14 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          secureElementPass6 = [(PKSecureElementPass *)v26 secureElementPass];
          v47 = secureElementPass6;
          if (secureElementPass6)
          {
            v58 = v12;
            devicePaymentApplications2 = [secureElementPass6 devicePaymentApplications];
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v49 = devicePaymentApplications2;
            v50 = [v49 countByEnumeratingWithState:&v59 objects:v63 count:16];
            if (v50)
            {
              v51 = v50;
              paymentType2 = 0;
              v53 = *v60;
              while (2)
              {
                for (j = 0; j != v51; ++j)
                {
                  if (*v60 != v53)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v55 = *(*(&v59 + 1) + 8 * j);
                  if (paymentType2 && paymentType2 != [*(*(&v59 + 1) + 8 * j) paymentType])
                  {

                    v56 = @"multiple";
                    goto LABEL_81;
                  }

                  paymentType2 = [v55 paymentType];
                }

                v51 = [v49 countByEnumeratingWithState:&v59 objects:v63 count:16];
                if (v51)
                {
                  continue;
                }

                break;
              }
            }

            v56 = PKPaymentMethodTypeToString();
LABEL_81:

            [v14 setObject:v56 forKeyedSubscript:v58];
            issuerCountryCode = [v47 issuerCountryCode];
            [v14 setObject:issuerCountryCode forKeyedSubscript:*MEMORY[0x1E69BAC78]];
          }

          goto LABEL_83;
      }
    }

    else
    {
      if (accessType <= 4)
      {
        if (accessType == 3)
        {
          v35 = @"singlefamily";
        }

        else
        {
          v35 = @"cars";
        }

        goto LABEL_63;
      }

      if (accessType == 5)
      {
        v35 = @"multifamily";
        goto LABEL_63;
      }

      if (accessType == 6)
      {
        v35 = @"urbanmobility";
        goto LABEL_63;
      }
    }

    v37 = *v18;
LABEL_59:
    v35 = v37;
    goto LABEL_63;
  }

LABEL_83:

  [(PKPaymentSetupMoreInfoViewController *)self _reportExpressEventIfNeeded:v14];
}

- (void)_reportExpressModeEnable
{
  _reportingSubject = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
  v4 = [_reportingSubject isEqualToString:*MEMORY[0x1E69BB728]];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:*MEMORY[0x1E69BA720] forKey:*MEMORY[0x1E69BA680]];
    [v5 setObject:*MEMORY[0x1E69BA838] forKey:*MEMORY[0x1E69BABE8]];
    [(PKPaymentSetupMoreInfoViewController *)self _reportExpressEventIfNeeded:v5];
  }
}

- (void)_reportExpressModeDisable
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:*MEMORY[0x1E69BA718] forKey:*MEMORY[0x1E69BA680]];
  [v3 setObject:*MEMORY[0x1E69BA838] forKey:*MEMORY[0x1E69BABE8]];
  [(PKPaymentSetupMoreInfoViewController *)self _reportExpressEventIfNeeded:v3];
}

- (void)_reportDoneButtonTapped
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:*MEMORY[0x1E69BA6F0] forKey:*MEMORY[0x1E69BA680]];
  [v3 setObject:*MEMORY[0x1E69BB528] forKey:*MEMORY[0x1E69BABE8]];
  [v3 setObject:*MEMORY[0x1E69BA640] forKey:*MEMORY[0x1E69BA440]];
  [(PKPaymentSetupMoreInfoViewController *)self _reportExpressEventIfNeeded:v3];
}

- (void)_reportTurnOffExpressButtonTapped
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:*MEMORY[0x1E69BA6F0] forKey:*MEMORY[0x1E69BA680]];
  [v3 setObject:*MEMORY[0x1E69BB528] forKey:*MEMORY[0x1E69BABE8]];
  [v3 setObject:*MEMORY[0x1E69BA450] forKey:*MEMORY[0x1E69BA440]];
  [(PKPaymentSetupMoreInfoViewController *)self _reportExpressEventIfNeeded:v3];
}

- (void)_reportExpressEventIfNeeded:(id)needed
{
  neededCopy = needed;
  _reportingSubject = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
  if ([(PKPaymentSetupMoreInfoViewController *)self _isExpressEducation]&& _reportingSubject)
  {
    [(PKExplanationViewController *)self context];
    IsBridge = PKPaymentSetupContextIsBridge();
    v6 = MEMORY[0x1E69BB0C8];
    if (!IsBridge)
    {
      v6 = MEMORY[0x1E69BB118];
    }

    [neededCopy setObject:*v6 forKey:*MEMORY[0x1E69BB0E0]];
    _paymentNetworkNamesForExpressReporting = [(PKPaymentSetupMoreInfoViewController *)self _paymentNetworkNamesForExpressReporting];
    v8 = [_paymentNetworkNamesForExpressReporting componentsJoinedByString:*MEMORY[0x1E69BA368]];
    [neededCopy setObject:v8 forKey:*MEMORY[0x1E69BAD48]];

    _currentItem = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
    reportingMetadata = [_currentItem reportingMetadata];
    if (reportingMetadata)
    {
      [neededCopy addEntriesFromDictionary:reportingMetadata];
    }

    if ([_reportingSubject isEqualToString:*MEMORY[0x1E69BB728]] && (reporter = self->_reporter) != 0)
    {
      [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportEvent:neededCopy];
    }

    else
    {
      [MEMORY[0x1E69B8540] subject:_reportingSubject sendEvent:neededCopy];
    }
  }
}

- (id)_paymentNetworkNamesForExpressReporting
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  paymentPass = [(PKSecureElementPass *)self->_pass paymentPass];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__9;
  v30 = __Block_byref_object_dispose__9;
  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKPaymentSetupMoreInfoViewController__paymentNetworkNamesForExpressReporting__block_invoke;
  aBlock[3] = &unk_1E8015A40;
  aBlock[4] = self;
  v19 = _Block_copy(aBlock);
  v5 = [objc_alloc(MEMORY[0x1E69B8858]) initForPaymentPass:paymentPass withTechologyTest:v19];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__PKPaymentSetupMoreInfoViewController__paymentNetworkNamesForExpressReporting__block_invoke_2;
  v24[3] = &unk_1E8015A68;
  v24[4] = &v26;
  [v5 enumerateCredentialsUsingBlock:v24];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice upgradeRequestForPass:paymentPass];
    paymentApplicationIdentifiers = [v6 paymentApplicationIdentifiers];

    if (paymentApplicationIdentifiers)
    {
      [v27[5] addObjectsFromArray:paymentApplicationIdentifiers];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v27[5];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v9)
  {
    v10 = *v21;
    v11 = *MEMORY[0x1E69BB3A8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [paymentPass devicePaymentApplicationForAID:*(*(&v20 + 1) + 8 * i)];
        v14 = v13;
        if (v13)
        {
          [v13 paymentNetworkIdentifier];
          v15 = PKPaymentNetworkNameForPaymentCredentialType();
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v11;
          }

          [v3 addObject:v17];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v9);
  }

  if (![v3 count])
  {
    [v3 addObject:*MEMORY[0x1E69BB3A8]];
  }

  _Block_object_dispose(&v26, 8);

  return v3;
}

uint64_t __79__PKPaymentSetupMoreInfoViewController__paymentNetworkNamesForExpressReporting__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 32) + 1120);

  return [v4 supportsExpressForAutomaticSelectionTechnologyType:a2];
}

void __79__PKPaymentSetupMoreInfoViewController__paymentNetworkNamesForExpressReporting__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  [MEMORY[0x1E69B8858] extractApplicationIdentifier:&v3 subcredentialIdentifier:0 fromIdentifiers:a2];
  [*(*(*(a1 + 32) + 8) + 40) pk_safelyAddObject:v3];
}

- (id)_reportingSubject
{
  reportingSource = self->_reportingSource;
  if (!reportingSource)
  {
    v4 = MEMORY[0x1E69BB728];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (reportingSource == 1)
  {
    v4 = MEMORY[0x1E69BB720];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (BOOL)_isExpressEducation
{
  _currentItem = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  type = [_currentItem type];

  return (type - 1) < 2;
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKPaymentSetupMoreInfoViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKExplanationViewController *)self showSpinner:iCopy];
}

@end