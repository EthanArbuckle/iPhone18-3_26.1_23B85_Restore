@interface PKPaymentDocumentSubmissionController
- (PKPaymentDocumentSubmissionController)initWithSetupDelegate:(id)delegate context:(int64_t)context acceptableDocuments:(id)documents featureIdentifier:(unint64_t)identifier localizationBundle:(id)bundle preferredLanguage:(id)language;
- (PKPaymentDocumentSubmissionControllerDelegate)delegate;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (id)nextViewController;
- (void)captureFailedWithError:(id)error;
- (void)capturedImage:(id)image;
- (void)scanAgain;
- (void)setState:(int64_t)state;
- (void)stateChanged;
- (void)terminateSetupFlow;
- (void)tryUploadAgain;
- (void)userApprovedCapturedID;
- (void)userRejectedCapturedID;
- (void)userWantsToCancel;
- (void)userWantsToContinue;
@end

@implementation PKPaymentDocumentSubmissionController

- (PKPaymentDocumentSubmissionController)initWithSetupDelegate:(id)delegate context:(int64_t)context acceptableDocuments:(id)documents featureIdentifier:(unint64_t)identifier localizationBundle:(id)bundle preferredLanguage:(id)language
{
  v45 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  documentsCopy = documents;
  bundleCopy = bundle;
  languageCopy = language;
  v18 = [(PKPaymentDocumentSubmissionController *)self init];
  v19 = v18;
  if (v18)
  {
    v18->_context = context;
    v18->_featureIdentifier = identifier;
    objc_storeWeak(&v18->_setupDelegate, delegateCopy);
    v39 = delegateCopy;
    v36 = languageCopy;
    v37 = bundleCopy;
    if (bundleCopy)
    {
      v20 = bundleCopy;
    }

    else
    {
      v20 = PKPassKitBundle();
    }

    localizationBundle = v19->_localizationBundle;
    v19->_localizationBundle = v20;

    objc_storeStrong(&v19->_preferredLanguage, language);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = documentsCopy;
    v22 = documentsCopy;
    v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v41;
LABEL_7:
      v26 = 0;
      while (1)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * v26);
        countryCode = [v27 countryCode];
        v29 = countryCode;
        if (countryCode == @"USA" || countryCode && ((v30 = [@"USA" isEqualToString:countryCode], v29, (v30 & 1) != 0) || (v31 = v29, v31 == @"US") || (v32 = v31, v33 = objc_msgSend(@"US", "isEqualToString:", v31), v32, v33)))
        {
          if (([v27 documentType] - 1) <= 1)
          {
            objc_storeStrong(&v19->_selectedDocument, v27);
          }
        }

        selectedDocument = v19->_selectedDocument;

        if (selectedDocument)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v24)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    documentsCopy = v38;
    delegateCopy = v39;
    languageCopy = v36;
    bundleCopy = v37;
    if (!v19->_selectedDocument)
    {
      [(PKPaymentDocumentSubmissionController *)v19 setState:1];
    }
  }

  return v19;
}

- (void)setState:(int64_t)state
{
  self->_state = state;
  if (!state)
  {
    [(PKPaymentDocumentSubmissionController *)self setFrontID:?];
    [(PKPaymentDocumentSubmissionController *)self setBackID:0];

    [(PKPaymentDocumentSubmissionController *)self setSide:0];
  }
}

- (id)nextViewController
{
  state = self->_state;
  if (state <= 0xA && ((0x77Fu >> state) & 1) != 0)
  {
    v4 = [objc_alloc(*off_1E801F978[state]) initWithController:self context:self->_context featureIdentifier:self->_featureIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)capturedImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (self->_state == 2)
  {
    self->_state = 3;
    side = self->_side;
    v7 = imageCopy;
    if (side == 1)
    {
      [(PKPaymentDocumentSubmissionController *)self setBackID:imageCopy];
    }

    else
    {
      if (side)
      {
LABEL_7:
        [(PKPaymentDocumentSubmissionController *)self stateChanged];
        v5 = v7;
        goto LABEL_8;
      }

      [(PKPaymentDocumentSubmissionController *)self setFrontID:imageCopy];
    }

    v5 = v7;
    if (self->_state == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)userWantsToContinue
{
  if (!self->_state)
  {
    self->_state = 2;
    [(PKPaymentDocumentSubmissionController *)self stateChanged];
  }
}

- (void)userApprovedCapturedID
{
  if (self->_state != 3)
  {
    return;
  }

  side = self->_side;
  if (side == 1)
  {
LABEL_7:
    [(PKPaymentDocumentSubmissionController *)self uploadID];
LABEL_8:
    if (self->_state == 3)
    {
      return;
    }

    goto LABEL_10;
  }

  if (side)
  {
    return;
  }

  documentType = [(PKDocumentRequest *)self->_selectedDocument documentType];
  if ((documentType - 1) >= 2)
  {
    if (documentType)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *&self->_state = xmmword_1BE116210;
LABEL_10:

  [(PKPaymentDocumentSubmissionController *)self stateChanged];
}

- (void)userRejectedCapturedID
{
  if (self->_state != 3)
  {
    return;
  }

  PKAnalyticsSendEventForFeature();
  self->_state = 2;
  side = self->_side;
  if (side == 1)
  {
    [(PKPaymentDocumentSubmissionController *)self setBackID:0];
LABEL_6:
    if (self->_state == 3)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!side)
  {
    [(PKPaymentDocumentSubmissionController *)self setFrontID:0];
    goto LABEL_6;
  }

LABEL_8:

  [(PKPaymentDocumentSubmissionController *)self stateChanged];
}

- (void)captureFailedWithError:(id)error
{
  state = self->_state;
  self->_state = 4;
  if (state != 4)
  {
    [(PKPaymentDocumentSubmissionController *)self stateChanged];
  }
}

- (void)scanAgain
{
  state = self->_state;
  [(PKPaymentDocumentSubmissionController *)self setFrontID:0];
  [(PKPaymentDocumentSubmissionController *)self setBackID:0];
  *&self->_state = xmmword_1BE0B8DF0;
  if (state != 2)
  {

    [(PKPaymentDocumentSubmissionController *)self stateChanged];
  }
}

- (void)tryUploadAgain
{
  state = self->_state;
  [(PKPaymentDocumentSubmissionController *)self uploadID];
  if (state != self->_state)
  {

    [(PKPaymentDocumentSubmissionController *)self stateChanged];
  }
}

- (void)userWantsToCancel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKPaymentDocumentSubmissionController_userWantsToCancel__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__PKPaymentDocumentSubmissionController_userWantsToCancel__block_invoke(uint64_t a1)
{
  PKAnalyticsSendEventForFeature();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = objc_loadWeakRetained(v3 + 3);
    [WeakRetained viewControllerDidCancelSetupFlow:v4];
  }

  else
  {
    [v3 terminateSetupFlow];
  }
}

- (void)terminateSetupFlow
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPaymentDocumentSubmissionController_terminateSetupFlow__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__PKPaymentDocumentSubmissionController_terminateSetupFlow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v2 = objc_opt_respondsToSelector();
  v3 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = v3;
  if (v2)
  {
    [WeakRetained viewControllerDidTerminateSetupFlow:v3];
  }

  else
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)stateChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__PKPaymentDocumentSubmissionController_stateChanged__block_invoke;
    v4[3] = &unk_1E8010A10;
    v5 = WeakRetained;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

- (PKPaymentDocumentSubmissionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end