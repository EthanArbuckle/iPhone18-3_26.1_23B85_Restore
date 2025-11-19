@interface PKDynamicProvisioningPageViewController
- (PKDynamicProvisioningPageViewController)initWithPage:(id)a3 context:(int64_t)a4;
- (void)explanationViewControllerDidSelectCancel:(id)a3;
- (void)explanationViewControllerDidSelectDone:(id)a3;
- (void)explanationViewDidSelectBodyButton:(id)a3;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKDynamicProvisioningPageViewController

- (PKDynamicProvisioningPageViewController)initWithPage:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKDynamicProvisioningPageViewController;
  v8 = [(PKExplanationViewController *)&v11 initWithContext:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_page, a3);
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
  v30 = [(PKDynamicProvisioningPageViewController *)self navigationItem];
  [v30 setHidesBackButton:1];
  v39 = [(PKExplanationViewController *)self explanationView];
  v3 = [v39 dockView];
  v27 = [v3 footerView];

  v37 = [v39 dockView];
  [v39 setShowPrivacyView:0];
  if (self->_heroImage)
  {
    [v39 setImage:?];
  }

  else
  {
    v4 = [(PKDynamicProvisioningPageContent *)self->_page identifier];
    v5 = [v4 isEqualToString:@"physicalCardQuote"];

    if (v5)
    {
      v6 = PKFeatureApplicationHeaderImageWithImage(2, 0);
      [v39 setImage:v6];
    }
  }

  v7 = [(PKDynamicProvisioningPageContent *)self->_page title];
  [v39 setTitleText:v7];

  v29 = [(PKDynamicProvisioningPageContent *)self->_page subtitle];
  v36 = PKAttributedStringCreateProvisioningBulletedParagraph(v29, *MEMORY[0x1E69DDC90]);
  if (v36)
  {
    [v39 setAttributedBodyText:v36];
    v8 = [v39 bodyTextView];
    [v8 setDataDetectorTypes:0];
  }

  v35 = [(PKDynamicProvisioningPageContent *)self->_page disclosureTitle];
  if (v35)
  {
    [v37 setButtonExplanationText:v35];
  }

  v9 = [(PKDynamicProvisioningPageContent *)self->_page learnMore];
  v34 = [v9 buttonTitle];

  if (v34)
  {
    [v39 setBodyButtonText:v34];
  }

  v33 = [(PKDynamicProvisioningPageContent *)self->_page primaryActionTitle];
  if (v33)
  {
    v10 = [v37 primaryButton];
    [v10 setTitle:v33 forState:0];
  }

  else
  {
    [v37 setPrimaryButton:0];
  }

  v32 = [(PKDynamicProvisioningPageContent *)self->_page secondaryActionTitle];
  if (v32)
  {
    [v39 setForceShowSetupLaterButton:1];
    v11 = [v27 setUpLaterButton];
    [v11 setTitle:v32 forState:0];
  }

  else
  {
    [v39 setForceShowSetupLaterButton:0];
  }

  v12 = PKOBKTextAlignment();
  v13 = [(PKDynamicProvisioningPageContent *)self->_page contentAlignment];
  if (v12 == 4)
  {
    v14 = 2;
  }

  else
  {
    v14 = 4;
  }

  if (v14 == v13)
  {
    if (v12 == 4)
    {
      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    [v39 setTitleAlignment:v15];
    [v39 setBodyTextAlignment:v15];
  }

  v38 = [(PKDynamicProvisioningPageContent *)self->_page footerContent];
  v31 = [v38 footerText];
  if (v38 && v31)
  {
    v28 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v28 setText:v31];
    [(PKMultiHyperlinkView *)v28 setTextAlignment:1];
    objc_initWeak(&location, self);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = [v38 links];
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v18)
    {
      v19 = *v43;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v42 + 1) + 8 * i);
          v22 = [PKTextRangeHyperlink alloc];
          v23 = [v21 linkText];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __54__PKDynamicProvisioningPageViewController_viewDidLoad__block_invoke;
          v40[3] = &unk_1E80110E0;
          objc_copyWeak(&v41, &location);
          v40[4] = v21;
          v24 = [(PKTextRangeHyperlink *)v22 initWithLinkText:v23 action:v40];

          [v16 safelyAddObject:v24];
          objc_destroyWeak(&v41);
        }

        v18 = [v17 countByEnumeratingWithState:&v42 objects:v48 count:16];
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

    [v37 setAdditionalView:v28];

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

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFF8];
  v6 = [(PKDynamicProvisioningPageContent *)self->_page heroImageURL];
  v7 = [v5 URLWithString:v6];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKDynamicProvisioningPageViewController_preflightWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8020520;
    aBlock[4] = self;
    v15 = v4;
    v8 = _Block_copy(aBlock);
    v9 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v10 = [v9 cachedDataForURL:v7];

    if (v10)
    {
      v8[2](v8, v10);
    }

    else
    {
      v11 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67__PKDynamicProvisioningPageViewController_preflightWithCompletion___block_invoke_3;
      v12[3] = &unk_1E8013E70;
      v13 = v8;
      [v11 downloadFromUrl:v7 completionHandler:v12];
    }
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1);
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

- (void)explanationViewDidSelectContinue:(id)a3
{
  v3 = _Block_copy(self->_primaryButtonAction);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v3 = _Block_copy(self->_secondaryButtonAction);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)explanationViewControllerDidSelectCancel:(id)a3
{
  v4 = _Block_copy(self->_cancelButtonAction);
  v6 = v4;
  if (v4)
  {
    (*(v4 + 2))();
  }

  else
  {
    v5 = [(PKDynamicProvisioningPageViewController *)self presentingViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewControllerDidSelectDone:(id)a3
{
  v4 = _Block_copy(self->_doneButtonAction);
  v6 = v4;
  if (v4)
  {
    (*(v4 + 2))();
  }

  else
  {
    v5 = [(PKDynamicProvisioningPageViewController *)self presentingViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)explanationViewDidSelectBodyButton:(id)a3
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