@interface PKPaymentSetupMoreInfoViewController
- (BOOL)_isExpressEducation;
- (CGSize)_snapshotSize;
- (PKPaymentSetupMoreInfoViewController)initWithMoreInfoItems:(id)a3 paymentPass:(id)a4 targetDevice:(id)a5 context:(int64_t)a6 dismissalHandler:(id)a7 reportingSource:(int64_t)a8;
- (id)_nextItems;
- (id)_paymentNetworkNamesForExpressReporting;
- (id)_reportingSubject;
- (void)_alternateActionWithCompletion:(id)a3;
- (void)_beginReportingIfNecessary;
- (void)_endReportingIfNecessary;
- (void)_handleDismissal;
- (void)_handlePush;
- (void)_linkTapped;
- (void)_next;
- (void)_reportDoneButtonTapped;
- (void)_reportExpressEventIfNeeded:(id)a3;
- (void)_reportExpressModeDisable;
- (void)_reportExpressModeEnable;
- (void)_reportTurnOffExpressButtonTapped;
- (void)_reportViewDidAppear;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PKPaymentSetupMoreInfoViewController

- (PKPaymentSetupMoreInfoViewController)initWithMoreInfoItems:(id)a3 paymentPass:(id)a4 targetDevice:(id)a5 context:(int64_t)a6 dismissalHandler:(id)a7 reportingSource:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = PKPaymentSetupMoreInfoViewController;
  v18 = [(PKExplanationViewController *)&v25 initWithContext:a6];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_pass, a4);
    v20 = [v14 copy];
    moreInfoItems = v19->_moreInfoItems;
    v19->_moreInfoItems = v20;

    objc_storeStrong(&v19->_targetDevice, a5);
    v22 = [v17 copy];
    dismissalHandler = v19->_dismissalHandler;
    v19->_dismissalHandler = v22;

    v19->_isFinalViewController = 1;
    v19->_reportingSource = a8;
    [(PKSecureElementPass *)v19->_pass loadImageSetSync:0 preheat:1];
  }

  return v19;
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = PKPaymentSetupMoreInfoViewController;
  [(PKExplanationViewController *)&v21 loadView];
  v3 = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  v4 = [(PKExplanationViewController *)self explanationView];
  v5 = [v4 dockView];
  v6 = [v5 footerView];
  v7 = [v3 title];
  [v4 setTitleText:v7];

  v8 = [v3 body];
  [v4 setBodyText:v8];

  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsSetupAssistant() & 1) != 0 || !self->_isFinalViewController)
  {
    v10 = [v3 nextAction];
  }

  else
  {
    v9 = [(PKPaymentSetupMoreInfoViewController *)self _nextItems];
    if ([v9 count])
    {
      [v3 nextAction];
    }

    else
    {
      [v3 doneAction];
    }
    v10 = ;
  }

  v11 = [v5 primaryButton];
  [v11 setTitle:v10 forState:0];

  if ([v3 hasAlternativeAction])
  {
    [v4 setForceShowSetupLaterButton:1];
    v12 = [v6 setUpLaterButton];
    v13 = [v3 alternativeAction];
    [v12 setTitle:v13 forState:0];
  }

  else
  {
    [v4 setForceShowSetupLaterButton:0];
  }

  [v5 setRequiresAdditionalPrimaryButtonPadding:1];
  [(PKExplanationViewController *)self context];
  if ((PKPaymentSetupContextIsiOSSetupAssistant() & 1) == 0)
  {
    v14 = [v3 linkText];
    [v4 setBodyButtonText:v14];

    [v4 setBodyButtonNumberOfLines:0];
  }

  v15 = [v3 imageData];

  if (!v15 || (v16 = MEMORY[0x1E69DCAB8], [v3 imageData], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "imageWithData:scale:", v17, PKUIScreenScale()), v18 = objc_claimAutoreleasedReturnValue(), v17, !v18))
  {
    v19 = [[PKPassView alloc] initWithPass:self->_pass content:5 suppressedContent:1911];
    [(PKPaymentSetupMoreInfoViewController *)self _snapshotSize];
    v18 = [(PKPassView *)v19 snapshotOfFrontFaceWithRequestedSize:?];
  }

  [v4 setImage:v18];
  [v4 setShowPrivacyView:0];
  [v4 setDelegate:self];
  [v4 setNeedsLayout];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  v20 = [(PKPaymentSetupMoreInfoViewController *)self navigationItem];
  [v20 setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupMoreInfoViewController;
  [(PKPaymentSetupMoreInfoViewController *)&v4 viewDidAppear:a3];
  [(PKPaymentSetupMoreInfoViewController *)self _beginReportingIfNecessary];
  [(PKPaymentSetupMoreInfoViewController *)self _reportExpressModeEnable];
  [(PKPaymentSetupMoreInfoViewController *)self _reportViewDidAppear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupMoreInfoViewController;
  [(PKPaymentSetupMoreInfoViewController *)&v4 viewDidDisappear:a3];
  [(PKPaymentSetupMoreInfoViewController *)self _endReportingIfNecessary];
}

- (id)_nextItems
{
  moreInfoItems = self->_moreInfoItems;
  v3 = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  v4 = [(NSArray *)moreInfoItems pk_arrayByRemovingObject:v3];

  return v4;
}

- (void)_next
{
  v3 = [(PKPaymentSetupMoreInfoViewController *)self _nextItems];
  v4 = [v3 count];

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
  v4 = [(PKPaymentSetupMoreInfoViewController *)self _nextItems];
  v6 = [v3 initWithMoreInfoItems:v4 paymentPass:self->_pass targetDevice:self->_targetDevice context:-[PKExplanationViewController context](self dismissalHandler:{"context"), self->_dismissalHandler}];

  v6[1096] = self->_isFinalViewController;
  v5 = [(PKPaymentSetupMoreInfoViewController *)self navigationController];
  [v5 pushViewController:v6 animated:1];
}

- (void)_handleDismissal
{
  v3 = [(PKPaymentSetupMoreInfoViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItem];
  [v4 setEnabled:0];

  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    v6 = *(dismissalHandler + 2);

    v6();
  }

  else
  {
    v7 = [(PKPaymentSetupMoreInfoViewController *)self presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v4 = [a3 dockView];
  [v4 setButtonsEnabled:0];

  [(PKPaymentSetupMoreInfoViewController *)self _reportDoneButtonTapped];

  [(PKPaymentSetupMoreInfoViewController *)self _next];
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v4 = a3;
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

- (void)_alternateActionWithCompletion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke;
  aBlock[3] = &unk_1E8010AD8;
  v5 = v4;
  v22 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  v8 = [v7 type];

  if ((v8 - 1) >= 2)
  {
    if (!v8)
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
      v12 = [(PKSecureElementPass *)self->_pass uniqueID];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke_42;
      v19[3] = &unk_1E8015A18;
      v19[4] = self;
      v20 = v6;
      [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice removeExpressPassWithUniqueIdentifierV2:v12 completion:v19];

      v13 = v20;
LABEL_10:

      goto LABEL_14;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = self->_targetDevice;
      v15 = [(PKSecureElementPass *)self->_pass uniqueID];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__PKPaymentSetupMoreInfoViewController__alternateActionWithCompletion___block_invoke_46;
      v17[3] = &unk_1E8015A18;
      v17[4] = self;
      v18 = v6;
      [(PKPaymentWebServiceTargetDeviceProtocol *)v14 removeExpressPassWithUniqueIdentifier:v15 completion:v17];

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
  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  v4 = [v3 linkURL];
  [v5 openURL:v4 configuration:0 completionHandler:0];
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
    v4 = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
    v3 = [MEMORY[0x1E69B8540] reporterForSubject:?];

    if (!v3)
    {
      self->_didBeginReportingSubject = 1;
      [MEMORY[0x1E69B8540] beginSubjectReporting:v4];
    }
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginReportingSubject)
  {
    v3 = MEMORY[0x1E69B8540];
    v4 = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
    [v3 endSubjectReporting:v4];
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
    v7 = 0;
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
        if (v7 && v7 != [*(*(&v59 + 1) + 8 * i) paymentType])
        {

          v11 = @"multiple";
          goto LABEL_13;
        }

        v7 = [v10 paymentType];
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
    v17 = [(PKSecureElementPass *)v15 passType];
    v18 = MEMORY[0x1E69BB3A8];
    if ((v17 + 1) >= 3)
    {
      v19 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v19 = off_1E8015A88[v17 + 1];
    }

    [v14 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v20 = [(PKSecureElementPass *)v16 style];
    v21 = [(PKSecureElementPass *)v16 secureElementPass];
    v22 = [v21 isIdentityPass];

    if (v22)
    {
      v23 = @"identity";
    }

    else if (v20 < 0xE && ((0x27FFu >> v20) & 1) != 0)
    {
      v23 = off_1E8015AA0[v20];
    }

    else
    {
      v23 = *v18;
    }

    [v14 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v24 = [(PKSecureElementPass *)v16 nfcPayload];
    v25 = PKAnalyticsReportSwitchToggleResultValue();
    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v26 = v16;
    if ([(PKSecureElementPass *)v26 passType]== 1)
    {
      v27 = [(PKSecureElementPass *)v26 secureElementPass];
      v28 = [v27 cardType];
      if (v28 <= 4)
      {
        v25 = **(&unk_1E8015B10 + v28);
      }
    }

    else
    {
      v25 = @"other";
    }

    [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v29 = [(PKSecureElementPass *)v26 secureElementPass];
    if ([v29 isIdentityPass])
    {
      v30 = [v29 identityType];
      if (v30 <= 2)
      {
        if (v30 == 1)
        {
          v31 = MEMORY[0x1E69BA648];
          goto LABEL_50;
        }

        if (v30 == 2)
        {
          v31 = MEMORY[0x1E69BB2C8];
          goto LABEL_50;
        }
      }

      else
      {
        switch(v30)
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

    if (![v29 isAccessPass])
    {
      goto LABEL_43;
    }

    v32 = [v29 accessType];
    v33 = [v29 accessReportingType];
    v34 = v33;
    if (v32 <= 2)
    {
      switch(v32)
      {
        case 0:
          v37 = @"general";
          if (v33)
          {
            v37 = v33;
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

          v38 = [(PKSecureElementPass *)v26 secureElementPass];
          v39 = [v38 devicePaymentApplications];
          [v39 count];

          v40 = PKAnalyticsReportSwitchToggleResultValue();

          [v14 setObject:v40 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v41 = [(PKSecureElementPass *)v26 secureElementPass];
          v42 = *v18;
          v43 = [v41 organizationName];
          if ([v43 length])
          {
            v44 = [v41 cardType];
            if (v44 <= 4 && ((1 << v44) & 0x16) != 0)
            {
              v45 = v43;

              v42 = v45;
            }
          }

          [v14 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v46 = [(PKSecureElementPass *)v26 secureElementPass];
          v47 = v46;
          if (v46)
          {
            v58 = v12;
            v48 = [v46 devicePaymentApplications];
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v49 = v48;
            v50 = [v49 countByEnumeratingWithState:&v59 objects:v63 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = 0;
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
                  if (v52 && v52 != [*(*(&v59 + 1) + 8 * j) paymentType])
                  {

                    v56 = @"multiple";
                    goto LABEL_81;
                  }

                  v52 = [v55 paymentType];
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
            v57 = [v47 issuerCountryCode];
            [v14 setObject:v57 forKeyedSubscript:*MEMORY[0x1E69BAC78]];
          }

          goto LABEL_83;
      }
    }

    else
    {
      if (v32 <= 4)
      {
        if (v32 == 3)
        {
          v35 = @"singlefamily";
        }

        else
        {
          v35 = @"cars";
        }

        goto LABEL_63;
      }

      if (v32 == 5)
      {
        v35 = @"multifamily";
        goto LABEL_63;
      }

      if (v32 == 6)
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
  v3 = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69BB728]];

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

- (void)_reportExpressEventIfNeeded:(id)a3
{
  v12 = a3;
  v4 = [(PKPaymentSetupMoreInfoViewController *)self _reportingSubject];
  if ([(PKPaymentSetupMoreInfoViewController *)self _isExpressEducation]&& v4)
  {
    [(PKExplanationViewController *)self context];
    IsBridge = PKPaymentSetupContextIsBridge();
    v6 = MEMORY[0x1E69BB0C8];
    if (!IsBridge)
    {
      v6 = MEMORY[0x1E69BB118];
    }

    [v12 setObject:*v6 forKey:*MEMORY[0x1E69BB0E0]];
    v7 = [(PKPaymentSetupMoreInfoViewController *)self _paymentNetworkNamesForExpressReporting];
    v8 = [v7 componentsJoinedByString:*MEMORY[0x1E69BA368]];
    [v12 setObject:v8 forKey:*MEMORY[0x1E69BAD48]];

    v9 = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
    v10 = [v9 reportingMetadata];
    if (v10)
    {
      [v12 addEntriesFromDictionary:v10];
    }

    if ([v4 isEqualToString:*MEMORY[0x1E69BB728]] && (reporter = self->_reporter) != 0)
    {
      [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportEvent:v12];
    }

    else
    {
      [MEMORY[0x1E69B8540] subject:v4 sendEvent:v12];
    }
  }
}

- (id)_paymentNetworkNamesForExpressReporting
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKSecureElementPass *)self->_pass paymentPass];
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
  v5 = [objc_alloc(MEMORY[0x1E69B8858]) initForPaymentPass:v4 withTechologyTest:v19];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__PKPaymentSetupMoreInfoViewController__paymentNetworkNamesForExpressReporting__block_invoke_2;
  v24[3] = &unk_1E8015A68;
  v24[4] = &v26;
  [v5 enumerateCredentialsUsingBlock:v24];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice upgradeRequestForPass:v4];
    v7 = [v6 paymentApplicationIdentifiers];

    if (v7)
    {
      [v27[5] addObjectsFromArray:v7];
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

        v13 = [v4 devicePaymentApplicationForAID:*(*(&v20 + 1) + 8 * i)];
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
  v2 = [(PKPaymentSetupMoreInfoViewController *)self _currentItem];
  v3 = [v2 type];

  return (v3 - 1) < 2;
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKPaymentSetupMoreInfoViewController *)self view:a3];
  [v6 setUserInteractionEnabled:v4 ^ 1];

  [(PKExplanationViewController *)self showSpinner:v4];
}

@end