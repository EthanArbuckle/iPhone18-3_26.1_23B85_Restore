@interface PKDynamicProvisioningPageViewController
- (PKDynamicProvisioningPageViewController)initWithPage:(id)page context:(int64_t)context;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewControllerDidSelectDone:(id)done;
- (void)explanationViewDidSelectBodyButton:(id)button;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PKDynamicProvisioningPageViewController

- (PKDynamicProvisioningPageViewController)initWithPage:(id)page context:(int64_t)context
{
  pageCopy = page;
  v11.receiver = self;
  v11.super_class = PKDynamicProvisioningPageViewController;
  v8 = [(PKExplanationViewController *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_page, page);
    [(PKExplanationViewController *)v9 setShowCancelButton:0];
    [(PKExplanationViewController *)v9 setShowDoneButton:0];
    [(PKExplanationViewController *)v9 setExplanationViewControllerDelegate:v9];
  }

  return v9;
}

- (void)viewDidLoad
{
  v49 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = PKDynamicProvisioningPageViewController;
  [(PKExplanationViewController *)&v47 viewDidLoad];
  navigationItem = [(PKDynamicProvisioningPageViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];

  dockView2 = [explanationView dockView];
  [explanationView setShowPrivacyView:0];
  if (self->_heroImage)
  {
    [explanationView setImage:?];
  }

  else
  {
    identifier = [(PKDynamicProvisioningPageContent *)self->_page identifier];
    v5 = [identifier isEqualToString:@"physicalCardQuote"];

    if (v5)
    {
      v6 = PKFeatureApplicationHeaderImageWithImage(2, 0);
      [explanationView setImage:v6];
    }
  }

  title = [(PKDynamicProvisioningPageContent *)self->_page title];
  [explanationView setTitleText:title];

  subtitle = [(PKDynamicProvisioningPageContent *)self->_page subtitle];
  v36 = PKAttributedStringCreateProvisioningBulletedParagraph(subtitle, *MEMORY[0x1E69DDC90]);
  if (v36)
  {
    [explanationView setAttributedBodyText:v36];
    bodyTextView = [explanationView bodyTextView];
    [bodyTextView setDataDetectorTypes:0];
  }

  disclosureTitle = [(PKDynamicProvisioningPageContent *)self->_page disclosureTitle];
  if (disclosureTitle)
  {
    [dockView2 setButtonExplanationText:disclosureTitle];
  }

  learnMore = [(PKDynamicProvisioningPageContent *)self->_page learnMore];
  buttonTitle = [learnMore buttonTitle];

  if (buttonTitle)
  {
    [explanationView setBodyButtonText:buttonTitle];
  }

  primaryActionTitle = [(PKDynamicProvisioningPageContent *)self->_page primaryActionTitle];
  if (primaryActionTitle)
  {
    primaryButton = [dockView2 primaryButton];
    [primaryButton setTitle:primaryActionTitle forState:0];
  }

  else
  {
    [dockView2 setPrimaryButton:0];
  }

  secondaryActionTitle = [(PKDynamicProvisioningPageContent *)self->_page secondaryActionTitle];
  if (secondaryActionTitle)
  {
    [explanationView setForceShowSetupLaterButton:1];
    setUpLaterButton = [footerView setUpLaterButton];
    [setUpLaterButton setTitle:secondaryActionTitle forState:0];
  }

  else
  {
    [explanationView setForceShowSetupLaterButton:0];
  }

  v12 = PKOBKTextAlignment();
  contentAlignment = [(PKDynamicProvisioningPageContent *)self->_page contentAlignment];
  if (v12 == 4)
  {
    v14 = 2;
  }

  else
  {
    v14 = 4;
  }

  if (v14 == contentAlignment)
  {
    if (v12 == 4)
    {
      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    [explanationView setTitleAlignment:v15];
    [explanationView setBodyTextAlignment:v15];
  }

  footerContent = [(PKDynamicProvisioningPageContent *)self->_page footerContent];
  footerText = [footerContent footerText];
  if (footerContent && footerText)
  {
    v28 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v28 setText:footerText];
    [(PKMultiHyperlinkView *)v28 setTextAlignment:1];
    objc_initWeak(&location, self);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    links = [footerContent links];
    v18 = [links countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v18)
    {
      v19 = *v43;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(links);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = [PKTextRangeHyperlink alloc];
          linkText = [v21 linkText];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __54__PKDynamicProvisioningPageViewController_viewDidLoad__block_invoke;
          v40[3] = &unk_1E80110E0;
          objc_copyWeak(&v41, &location);
          v40[4] = v21;
          v24 = [(PKTextRangeHyperlink *)v22 initWithLinkText:linkText action:v40];

          [v16 safelyAddObject:v24];
          objc_destroyWeak(&v41);
        }

        v18 = [links countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v18);
    }

    v25 = [v16 count];
    if (v25)
    {
      v26 = [v16 copy];
    }

    else
    {
      v26 = 0;
    }

    [(PKMultiHyperlinkView *)v28 setSources:v26];
    if (v25)
    {
    }

    [dockView2 setAdditionalView:v28];

    objc_destroyWeak(&location);
  }
}

void __54__PKDynamicProvisioningPageViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 142);
    if (v4)
    {
      v5 = v3;
      (*(v4 + 16))(v4, *(a1 + 32));
      v3 = v5;
    }
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E695DFF8];
  heroImageURL = [(PKDynamicProvisioningPageContent *)self->_page heroImageURL];
  v7 = [v5 URLWithString:heroImageURL];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKDynamicProvisioningPageViewController_preflightWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8020520;
    aBlock[4] = self;
    v15 = completionCopy;
    v8 = _Block_copy(aBlock);
    mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v10 = [mEMORY[0x1E69B8A08] cachedDataForURL:v7];

    if (v10)
    {
      v8[2](v8, v10);
    }

    else
    {
      mEMORY[0x1E69B8A08]2 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67__PKDynamicProvisioningPageViewController_preflightWithCompletion___block_invoke_3;
      v12[3] = &unk_1E8013E70;
      v13 = v8;
      [mEMORY[0x1E69B8A08]2 downloadFromUrl:v7 completionHandler:v12];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __67__PKDynamicProvisioningPageViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithData:v3];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1080);
    *(v5 + 1080) = v4;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PKDynamicProvisioningPageViewController_preflightWithCompletion___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v3 = _Block_copy(self->_primaryButtonAction);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v3 = _Block_copy(self->_secondaryButtonAction);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  v4 = _Block_copy(self->_cancelButtonAction);
  v6 = v4;
  if (v4)
  {
    (*(v4 + 2))();
  }

  else
  {
    presentingViewController = [(PKDynamicProvisioningPageViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewControllerDidSelectDone:(id)done
{
  v4 = _Block_copy(self->_doneButtonAction);
  v6 = v4;
  if (v4)
  {
    (*(v4 + 2))();
  }

  else
  {
    presentingViewController = [(PKDynamicProvisioningPageViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewDidSelectBodyButton:(id)button
{
  v3 = _Block_copy(self->_bodyButtonAction);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

@end