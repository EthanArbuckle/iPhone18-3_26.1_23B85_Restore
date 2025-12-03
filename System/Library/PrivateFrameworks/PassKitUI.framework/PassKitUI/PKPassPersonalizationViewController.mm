@interface PKPassPersonalizationViewController
- (BOOL)_contactReadyForPersonalization;
- (BOOL)personalizationCellShouldReturn:(id)return;
- (PKPassPersonalizationViewController)initWithPass:(id)pass personalizationToken:(id)token personalizationSource:(unint64_t)source;
- (PKPassPersonalizationViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)_nextCellForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)_configureHeaderViewForState:(unint64_t)state;
- (void)_personalizeNowButtonPressed:(id)pressed;
- (void)_personalizePass;
- (void)_positionFooterView;
- (void)_presentPersonalizationErrorAlert;
- (void)_scrollToCellsIfNeeded;
- (void)finishPersonalizationOfPassWithUniqueID:(id)d result:(BOOL)result;
- (void)passPersonalizationTermsViewControllerDidAcceptTerms:(id)terms;
- (void)personalizationCellDidChangeValue:(id)value;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPassPersonalizationViewController

- (PKPassPersonalizationViewController)initWithPass:(id)pass personalizationToken:(id)token personalizationSource:(unint64_t)source
{
  v62[16] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  tokenCopy = token;
  personalization = [passCopy personalization];
  if (!personalization)
  {

    v13 = 0;
    goto LABEL_34;
  }

  v57.receiver = self;
  v57.super_class = PKPassPersonalizationViewController;
  v12 = [(PKPassPersonalizationViewController *)&v57 initWithStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pass, pass);
    v14 = [tokenCopy copy];
    personalizationToken = v13->_personalizationToken;
    v13->_personalizationToken = v14;

    v13->_personalizationSource = source;
    v16 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v17 = *MEMORY[0x1E695C208];
    v62[0] = *MEMORY[0x1E695C360];
    v62[1] = v17;
    v18 = *MEMORY[0x1E695C240];
    v62[2] = *MEMORY[0x1E695C330];
    v62[3] = v18;
    v62[4] = *MEMORY[0x1E695C230];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:5];
    v20 = [v16 _ios_meContactWithKeysToFetch:v19 error:0];

    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:v20];
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E69B8728]);
    }

    v22 = v21;

    contact = v13->_contact;
    v13->_contact = v22;

    requiredPersonalizationFields = [personalization requiredPersonalizationFields];
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0.0;
    if (requiredPersonalizationFields)
    {
      v27 = objc_alloc_init(PKPassPersonalizationCellContext);
      v28 = PKLocalizedString(&cfstr_Personalizatio_4.isa);
      [PKPassPersonalizationCell textLabelWidthForText:v28];
      if (v29 >= 0.0)
      {
        [PKPassPersonalizationCell textLabelWidthForText:v28];
        v26 = v30;
      }

      [(PKPassPersonalizationCellContext *)v27 setTitle:v28];
      [(PKPassPersonalizationCellContext *)v27 setKeyboardType:0];
      [(PKPassPersonalizationCellContext *)v27 setAutocapitalizationType:1];
      [(PKPassPersonalizationCellContext *)v27 setStringRepresentationBlock:&__block_literal_global_203];
      [(PKPassPersonalizationCellContext *)v27 setContactUpdateBlock:&__block_literal_global_207];
      [v25 addObject:v27];

      if ((requiredPersonalizationFields & 2) == 0)
      {
LABEL_9:
        if ((requiredPersonalizationFields & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }
    }

    else if ((requiredPersonalizationFields & 2) == 0)
    {
      goto LABEL_9;
    }

    v31 = objc_alloc_init(PKPassPersonalizationCellContext);
    v32 = PKLocalizedString(&cfstr_Personalizatio_5.isa);
    [PKPassPersonalizationCell textLabelWidthForText:v32];
    if (v26 <= v33)
    {
      [PKPassPersonalizationCell textLabelWidthForText:v32];
      v26 = v34;
    }

    [(PKPassPersonalizationCellContext *)v31 setTitle:v32];
    [(PKPassPersonalizationCellContext *)v31 setKeyboardType:0];
    [(PKPassPersonalizationCellContext *)v31 setAutocapitalizationType:3];
    [(PKPassPersonalizationCellContext *)v31 setStringRepresentationBlock:&__block_literal_global_217];
    [(PKPassPersonalizationCellContext *)v31 setContactUpdateBlock:&__block_literal_global_219];
    [v25 addObject:v31];

    if ((requiredPersonalizationFields & 4) == 0)
    {
LABEL_10:
      if ((requiredPersonalizationFields & 8) == 0)
      {
LABEL_24:
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v43 = v25;
        v44 = [(NSArray *)v43 countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v59;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v59 != v46)
              {
                objc_enumerationMutation(v43);
              }

              [*(*(&v58 + 1) + 8 * i) setMinimumTextLabelWidth:v26];
            }

            v45 = [(NSArray *)v43 countByEnumeratingWithState:&v58 objects:v62 count:16];
          }

          while (v45);
        }

        cellContexts = v13->_cellContexts;
        v13->_cellContexts = v43;

        if ((_UISolariumEnabled() & 1) == 0)
        {
          navigationItem = [(PKPassPersonalizationViewController *)v13 navigationItem];
          [navigationItem pkui_setupScrollEdgeChromelessAppearance];
          [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
        }

        v50 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:1];
        privacyController = v13->_privacyController;
        v13->_privacyController = v50;

        [(PKPassPersonalizationViewController *)v13 addChildViewController:v13->_privacyController];
        v52 = objc_alloc(MEMORY[0x1E69DD250]);
        v53 = [v52 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        view = [(OBPrivacyLinkController *)v13->_privacyController view];
        [v53 addSubview:view];

        tableView = [(PKPassPersonalizationViewController *)v13 tableView];
        [tableView setTableFooterView:v53];

        [(OBPrivacyLinkController *)v13->_privacyController didMoveToParentViewController:v13];
        goto LABEL_34;
      }

LABEL_21:
      v39 = objc_alloc_init(PKPassPersonalizationCellContext);
      v40 = PKLocalizedString(&cfstr_Personalizatio_7.isa);
      [PKPassPersonalizationCell textLabelWidthForText:v40];
      if (v26 <= v41)
      {
        [PKPassPersonalizationCell textLabelWidthForText:v40];
        v26 = v42;
      }

      [(PKPassPersonalizationCellContext *)v39 setTitle:v40];
      [(PKPassPersonalizationCellContext *)v39 setKeyboardType:5];
      [(PKPassPersonalizationCellContext *)v39 setBindTextToStringRepresentation:1];
      [(PKPassPersonalizationCellContext *)v39 setStringRepresentationBlock:&__block_literal_global_232];
      [(PKPassPersonalizationCellContext *)v39 setContactUpdateBlock:&__block_literal_global_234];
      [v25 addObject:v39];

      goto LABEL_24;
    }

LABEL_18:
    v35 = objc_alloc_init(PKPassPersonalizationCellContext);
    v36 = PKLocalizedString(&cfstr_Personalizatio_6.isa);
    [PKPassPersonalizationCell textLabelWidthForText:v36];
    if (v26 <= v37)
    {
      [PKPassPersonalizationCell textLabelWidthForText:v36];
      v26 = v38;
    }

    [(PKPassPersonalizationCellContext *)v35 setTitle:v36];
    [(PKPassPersonalizationCellContext *)v35 setKeyboardType:7];
    [(PKPassPersonalizationCellContext *)v35 setTextContentType:*MEMORY[0x1E69DE4A0]];
    [(PKPassPersonalizationCellContext *)v35 setStringRepresentationBlock:&__block_literal_global_225];
    [(PKPassPersonalizationCellContext *)v35 setContactUpdateBlock:&__block_literal_global_227];
    [v25 addObject:v35];

    if ((requiredPersonalizationFields & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_34:

  return v13;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = PKPassPersonalizationViewController;
  [(PKPassPersonalizationViewController *)&v29 viewDidLoad];
  v3 = MEMORY[0x1E69DCAB8];
  personalizationLogoImage = [(PKPass *)self->_pass personalizationLogoImage];
  v5 = [v3 imageWithPKImage:personalizationLogoImage];

  personalization = [(PKPass *)self->_pass personalization];
  localizedDescription = [personalization localizedDescription];

  v8 = [[PKPassPersonalizationHeaderView alloc] initWithLogoImage:v5 description:localizedDescription];
  headerView = self->_headerView;
  self->_headerView = v8;

  v10 = PKLocalizedString(&cfstr_Personalizatio.isa);
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v10 style:2 target:self action:sel__personalizeNowButtonPressed_];
  personalizeNowButton = self->_personalizeNowButton;
  self->_personalizeNowButton = v11;

  v13 = MEMORY[0x1E69DC740];
  v14 = PKLocalizedString(&cfstr_Personalizatio_0.isa);
  v15 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
  v16 = [v13 pkui_plainConfigurationWithTitle:v14 font:v15];

  [v16 setContentInsets:{23.0, 0.0, 5.0, 0.0}];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v16 setBaseForegroundColor:systemBlueColor];

  objc_initWeak(&location, self);
  v18 = MEMORY[0x1E69DC628];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__PKPassPersonalizationViewController_viewDidLoad__block_invoke;
  v26[3] = &unk_1E8012328;
  objc_copyWeak(&v27, &location);
  v26[4] = self;
  v19 = [v18 actionWithHandler:v26];
  v20 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v16 primaryAction:v19];
  personalizeLaterButton = self->_personalizeLaterButton;
  self->_personalizeLaterButton = v20;

  [(UIButton *)self->_personalizeLaterButton setConfigurationUpdateHandler:&__block_literal_global_45];
  tableView = [(PKPassPersonalizationViewController *)self tableView];
  [tableView setTableHeaderView:self->_headerView];

  tableView2 = [(PKPassPersonalizationViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPassPersonalizationCellReuseIdentifier"];

  [(UIBarButtonItem *)self->_personalizeNowButton setEnabled:[(PKPassPersonalizationViewController *)self _contactReadyForPersonalization]];
  navigationItem = [(PKPassPersonalizationViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:self->_personalizeNowButton];

  navigationItem2 = [(PKPassPersonalizationViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __50__PKPassPersonalizationViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained(WeakRetained + 140);
  [v2 passPersonalizationViewController:*(a1 + 32) didFinishPersonalizingPass:WeakRetained[133] success:0];
}

void __50__PKPassPersonalizationViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setExclusiveTouch:1];
  v3 = [v2 titleLabel];

  [v3 setTextAlignment:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPassPersonalizationViewController;
  [(PKPassPersonalizationViewController *)&v4 viewWillAppear:appear];
  [(PKPassPersonalizationViewController *)self _configureHeaderViewForState:[(PKPassPersonalizationHeaderView *)self->_headerView state]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPassPersonalizationViewController;
  [(PKPassPersonalizationViewController *)&v5 viewWillLayoutSubviews];
  tableView = [(PKPassPersonalizationViewController *)self tableView];
  [tableView layoutIfNeeded];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    navigationItem = [(PKPassPersonalizationViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }

  [(PKPassPersonalizationViewController *)self _positionFooterView];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  cellContexts = self->_cellContexts;
  pathCopy = path;
  viewCopy = view;
  v9 = -[NSArray objectAtIndexedSubscript:](cellContexts, "objectAtIndexedSubscript:", [pathCopy row]);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPassPersonalizationCellReuseIdentifier" forIndexPath:pathCopy];

  [v10 setContext:v9 andContact:self->_contact];
  [v10 setDelegate:self];

  return v10;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  result = 0.0;
  if (!section)
  {
    [view bounds];
    [(UIButton *)self->_personalizeLaterButton sizeThatFits:v6, v7];
    return v8;
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_personalizeLaterButton;
  }

  return v5;
}

- (void)personalizationCellDidChangeValue:(id)value
{
  personalizeNowButton = self->_personalizeNowButton;
  _contactReadyForPersonalization = [(PKPassPersonalizationViewController *)self _contactReadyForPersonalization];

  [(UIBarButtonItem *)personalizeNowButton setEnabled:_contactReadyForPersonalization];
}

- (BOOL)personalizationCellShouldReturn:(id)return
{
  returnCopy = return;
  tableView = [(PKPassPersonalizationViewController *)self tableView];
  v6 = [tableView indexPathForCell:returnCopy];

  v7 = [(PKPassPersonalizationViewController *)self _nextCellForIndexPath:v6];
  v8 = v7;
  if (v7)
  {
    [v7 becomeFirstResponder];
  }

  else
  {
    if (![(PKPassPersonalizationViewController *)self _contactReadyForPersonalization])
    {
      v9 = 1;
      goto LABEL_6;
    }

    [(PKPassPersonalizationViewController *)self _personalizeNowButtonPressed:self];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKPassPersonalizationViewController *)self view];
  [view setNeedsLayout];
}

- (void)passPersonalizationTermsViewControllerDidAcceptTerms:(id)terms
{
  self->_termsAndConditionsAccepted = 1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __92__PKPassPersonalizationViewController_passPersonalizationTermsViewControllerDidAcceptTerms___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [(PKPassPersonalizationViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)_personalizeNowButtonPressed:(id)pressed
{
  personalization = [(PKPass *)self->_pass personalization];
  if (self->_termsAndConditionsAccepted || ([personalization termsAndConditions], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, !v5))
  {
    [(PKPassPersonalizationViewController *)self _personalizePass];
  }

  else
  {
    termsAndConditions = [personalization termsAndConditions];
    v7 = [[PKPassPersonalizationTermsViewController alloc] initWithTermsAndConditions:termsAndConditions];
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    [(PKPassPersonalizationTermsViewController *)v7 setDelegate:self];
    [(PKPassPersonalizationViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_personalizePass
{
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  uniqueID = [(PKPass *)self->_pass uniqueID];
  [(UIBarButtonItem *)self->_personalizeNowButton setEnabled:0];
  [(UIButton *)self->_personalizeLaterButton setEnabled:0];
  [(PKPassPersonalizationViewController *)self _configureHeaderViewForState:1];
  tableView = [(PKPassPersonalizationViewController *)self tableView];
  [tableView safeAreaInsets];
  v7 = -v6;

  tableView2 = [(PKPassPersonalizationViewController *)self tableView];
  [tableView2 setContentOffset:1 animated:{0.0, v7}];

  tableView3 = [(PKPassPersonalizationViewController *)self tableView];
  [tableView3 setUserInteractionEnabled:0];

  v10 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PKPassPersonalizationViewController__personalizePass__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  personalization = [(PKPass *)self->_pass personalization];
  requiredPersonalizationFields = [personalization requiredPersonalizationFields];

  personalizationSource = self->_personalizationSource;
  v14 = objc_alloc_init(MEMORY[0x1E69B8658]);
  if (personalizationSource <= 1)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __55__PKPassPersonalizationViewController__personalizePass__block_invoke_2;
    v31[3] = &unk_1E80145B0;
    v32 = mEMORY[0x1E69B8A58];
    selfCopy = self;
    [v14 addOperation:v31];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __55__PKPassPersonalizationViewController__personalizePass__block_invoke_4;
  v26[3] = &unk_1E80145D8;
  v15 = mEMORY[0x1E69B8A58];
  v27 = v15;
  v16 = uniqueID;
  v28 = v16;
  selfCopy2 = self;
  v30 = requiredPersonalizationFields;
  [v14 addOperation:v26];
  null = [MEMORY[0x1E695DFB0] null];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__PKPassPersonalizationViewController__personalizePass__block_invoke_6;
  v21[3] = &unk_1E8014600;
  v25 = personalizationSource < 2;
  v22 = v15;
  v23 = v16;
  selfCopy3 = self;
  v18 = v16;
  v19 = v15;
  v20 = [v14 evaluateWithInput:null completion:v21];
}

void __55__PKPassPersonalizationViewController__personalizePass__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  v2 = [v1 firstResponder];

  [v2 resignFirstResponder];
}

void __55__PKPassPersonalizationViewController__personalizePass__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v15[0] = *(*(a1 + 40) + 1064);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PKPassPersonalizationViewController__personalizePass__block_invoke_3;
  v12[3] = &unk_1E8014588;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v8 addPasses:v9 withCompletionHandler:v12];
}

void __55__PKPassPersonalizationViewController__personalizePass__block_invoke_4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = v10[135];
  v13 = v10[134];
  v14 = v10[137];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__PKPassPersonalizationViewController__personalizePass__block_invoke_5;
  v17[3] = &unk_1E80109C0;
  v18 = v6;
  v19 = v7;
  v15 = v6;
  v16 = v7;
  [v8 requestPersonalizationOfPassWithUniqueIdentifier:v9 contact:v12 personalizationToken:v13 requiredPersonalizationFields:v11 personalizationSource:v14 handler:v17];
}

void __55__PKPassPersonalizationViewController__personalizePass__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  v8 = v5;
  if (*(a1 + 56) == 1)
  {
    v7 = [v5 isCanceled];
    v6 = v8;
    if (v7)
    {
      [*(a1 + 32) removePassWithUniqueID:*(a1 + 40) diagnosticReason:@"personalization failed"];
      v6 = v8;
    }
  }

  [*(a1 + 48) finishPersonalizationOfPassWithUniqueID:*(a1 + 40) result:{objc_msgSend(v6, "isCanceled") ^ 1}];
}

- (void)finishPersonalizationOfPassWithUniqueID:(id)d result:(BOOL)result
{
  dCopy = d;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKPassPersonalizationViewController_finishPersonalizationOfPassWithUniqueID_result___block_invoke;
  block[3] = &unk_1E8013D60;
  resultCopy = result;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __86__PKPassPersonalizationViewController_finishPersonalizationOfPassWithUniqueID_result___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [MEMORY[0x1E69B8A58] sharedInstance];
    v3 = [v2 passWithUniqueID:*(a1 + 32)];

    [*(a1 + 40) _configureHeaderViewForState:2];
    v4 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__PKPassPersonalizationViewController_finishPersonalizationOfPassWithUniqueID_result___block_invoke_2;
    block[3] = &unk_1E8013D60;
    block[4] = *(a1 + 40);
    v9 = v3;
    v10 = *(a1 + 48);
    v5 = v3;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [*(a1 + 40) _configureHeaderViewForState:0];
    [*(a1 + 40) _presentPersonalizationErrorAlert];
    v6 = [*(a1 + 40) tableView];
    [v6 setUserInteractionEnabled:1];

    [*(*(a1 + 40) + 1048) setEnabled:1];
    v7 = *(*(a1 + 40) + 1056);

    [v7 setEnabled:1];
  }
}

void __86__PKPassPersonalizationViewController_finishPersonalizationOfPassWithUniqueID_result___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1120));
  [WeakRetained passPersonalizationViewController:*(a1 + 32) didFinishPersonalizingPass:*(a1 + 40) success:*(a1 + 48)];
}

- (BOOL)_contactReadyForPersonalization
{
  personalization = [(PKPass *)self->_pass personalization];
  requiredPersonalizationFields = [personalization requiredPersonalizationFields];

  name = [(PKContact *)self->_contact name];
  givenName = [name givenName];

  postalAddress = [(PKContact *)self->_contact postalAddress];
  postalCode = [postalAddress postalCode];

  phoneNumber = [(PKContact *)self->_contact phoneNumber];
  stringValue = [phoneNumber stringValue];

  emailAddress = [(PKContact *)self->_contact emailAddress];
  v12 = ((requiredPersonalizationFields & 1) == 0 || [givenName length]) && ((requiredPersonalizationFields & 2) == 0 || objc_msgSend(postalCode, "length")) && ((requiredPersonalizationFields & 8) == 0 || objc_msgSend(stringValue, "length")) && ((requiredPersonalizationFields & 4) == 0 || objc_msgSend(emailAddress, "length") != 0);

  return v12;
}

- (void)_scrollToCellsIfNeeded
{
  if (!self->_hasScrolledToCells)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKPassPersonalizationViewController__scrollToCellsIfNeeded__block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    self->_hasScrolledToCells = 1;
  }
}

void __61__PKPassPersonalizationViewController__scrollToCellsIfNeeded__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v2 = [*(a1 + 32) tableView];
  [v2 scrollToRowAtIndexPath:v3 atScrollPosition:1 animated:1];
}

- (void)_configureHeaderViewForState:(unint64_t)state
{
  [(PKPassPersonalizationHeaderView *)self->_headerView setState:state];
  tableView = [(PKPassPersonalizationViewController *)self tableView];
  [tableView bounds];
  v6 = v5;
  v8 = v7;

  [(PKPassPersonalizationHeaderView *)self->_headerView sizeThatFits:v6, v8];
  v10 = v9;
  [(PKPassPersonalizationHeaderView *)self->_headerView frame];
  [(PKPassPersonalizationHeaderView *)self->_headerView setFrame:?];
  tableView2 = [(PKPassPersonalizationViewController *)self tableView];
  [tableView2 _tableHeaderHeightDidChangeToHeight:v10];
}

- (void)_positionFooterView
{
  view = [(PKPassPersonalizationViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  tableView = [(PKPassPersonalizationViewController *)self tableView];
  tableFooterView = [tableView tableFooterView];
  [tableView bounds];
  if (tableFooterView)
  {
    v8 = v7;
    if (PKUIGetMinScreenWidthType())
    {
      v9 = 24.0;
    }

    else
    {
      v9 = 5.0;
    }

    [tableView pkui_readableContentBoundsWithMargins:{0.0, v9, 11.0, v9}];
    v11 = v10;
    view2 = [(OBPrivacyLinkController *)self->_privacyController view];
    LODWORD(v13) = 1148846080;
    LODWORD(v14) = 1112014848;
    [view2 systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v13, v14}];
    v16 = v15;
    v18 = v17;
    [view2 frame];
    v29.origin.y = 0.0;
    v29.origin.x = v9;
    v29.size.width = v16;
    v29.size.height = v18;
    if (!CGRectEqualToRect(v26, v29))
    {
      [view2 setFrame:{v9, 0.0, v16, v18}];
    }

    v27.origin.y = 0.0;
    v27.origin.x = v9;
    v27.size.width = v16;
    v27.size.height = v18;
    v19 = CGRectGetMaxY(v27) + 11.0;
    [tableView layoutIfNeeded];
    [tableView _rectForTableFooterView];
    v21 = v20;
    v23 = v22;
    [tableView pkui_naturalRestingBounds];
    [tableFooterView setFrame:{v21, fmax(v23, CGRectGetMaxY(v28) - v19 - v5), v8, v19}];
  }
}

- (id)_nextCellForIndexPath:(id)path
{
  v4 = [path row] + 1;
  if (v4 >= [(NSArray *)self->_cellContexts count])
  {
    v7 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
    tableView = [(PKPassPersonalizationViewController *)self tableView];
    v7 = [tableView cellForRowAtIndexPath:v5];
  }

  return v7;
}

- (void)_presentPersonalizationErrorAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_Personalizatio_2.isa);
  v5 = PKLocalizedString(&cfstr_Personalizatio_3.isa);
  v9 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(PKPassPersonalizationViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (PKPassPersonalizationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end