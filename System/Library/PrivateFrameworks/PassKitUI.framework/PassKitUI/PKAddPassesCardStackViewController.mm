@interface PKAddPassesCardStackViewController
- (PKAddPassesCardStackViewController)initWithPasses:(id)passes orPassesContainer:(id)container fromPresentationSource:(unint64_t)source;
- (PKAddPassesCardStackViewControllerDelegate)delegate;
- (id)groupAtIndex:(unint64_t)index;
- (unint64_t)suppressedContent;
- (void)_aboutButtonPressed;
- (void)_addButtonPressed:(id)pressed;
- (void)_addPassesWithCompletion:(id)completion;
- (void)_beginReportingIfNecessary;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_configureAddOrNextButtonItemAsPending:(BOOL)pending;
- (void)_configureNavigationItemTitle;
- (void)_endReportingIfNecessary;
- (void)_nextButtonPressedForPersonalization:(id)personalization;
- (void)_sendAnalyticsDidTapButton:(id)button;
- (void)_sendAnalyticsViewVisibilityUpdateWithType:(id)type;
- (void)dealloc;
- (void)groupStackView:(id)view deleteConfirmedForPass:(id)pass;
- (void)groupStackView:(id)view didTransitionToState:(int64_t)state animated:(BOOL)animated;
- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index;
- (void)passPersonalizationViewController:(id)controller didFinishPersonalizingPass:(id)pass success:(BOOL)success;
- (void)setUpAboutWalletButton;
- (void)setUpInfoTextLabel;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddPassesCardStackViewController

- (PKAddPassesCardStackViewController)initWithPasses:(id)passes orPassesContainer:(id)container fromPresentationSource:(unint64_t)source
{
  passesCopy = passes;
  containerCopy = container;
  v10 = containerCopy;
  if (containerCopy && ![containerCopy unarchivePassesWithOptions:0 usingBlock:0])
  {
    v12 = v11;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_7:
    selfCopy = 0;
    goto LABEL_15;
  }

  v12 = [passesCopy count];
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__27;
  v35[4] = __Block_byref_object_dispose__27;
  v36 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKAddPassesCardStackViewController_initWithPasses_orPassesContainer_fromPresentationSource___block_invoke;
  aBlock[3] = &unk_1E801A120;
  v34 = v35;
  v14 = v13;
  v33 = v14;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (v10)
  {
    v17 = v31;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __94__PKAddPassesCardStackViewController_initWithPasses_orPassesContainer_fromPresentationSource___block_invoke_2;
    v31[3] = &unk_1E801A148;
    v31[4] = v15;
    [v10 unarchivePassesWithOptions:0 usingBlock:v31];
  }

  else
  {
    v17 = v30;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __94__PKAddPassesCardStackViewController_initWithPasses_orPassesContainer_fromPresentationSource___block_invoke_3;
    v30[3] = &unk_1E801A170;
    v30[4] = v15;
    [passesCopy enumerateObjectsUsingBlock:v30];
  }

  if ([v14 count])
  {
    v29.receiver = self;
    v29.super_class = PKAddPassesCardStackViewController;
    v19 = [(PKAddPassesCardStackViewController *)&v29 initWithNibName:0 bundle:0];
    if (v19)
    {
      v20 = [v14 copy];
      passes = v19->_passes;
      v19->_passes = v20;

      objc_storeStrong(&v19->_passesContainer, container);
      v22 = [passesCopy copy];
      passDataArray = v19->_passDataArray;
      v19->_passDataArray = v22;

      v19->_presentationSource = source;
      [(PKAddPassesCardStackViewController *)v19 _beginReportingIfNecessary];
      initLimited = [objc_alloc(MEMORY[0x1E69B88E0]) initLimited];
      groupsController = v19->_groupsController;
      v19->_groupsController = initLimited;

      [(PKGroupsController *)v19->_groupsController setDelegate:v19];
      navigationItem = [(PKAddPassesCardStackViewController *)v19 navigationItem];
      v27 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v27 configureWithTransparentBackground];
      [navigationItem setStandardAppearance:v27];
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  _Block_object_dispose(v35, 8);
LABEL_15:

  return selfCopy;
}

void __94__PKAddPassesCardStackViewController_initWithPasses_orPassesContainer_fromPresentationSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    if ([v3 passType] == 1)
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      if (!v4)
      {
        v5 = [MEMORY[0x1E69B91E0] sharedSecureElement];
        v6 = [v5 secureElementIdentifiers];
        v7 = *(*(a1 + 40) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v4 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v9 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v4];
    }

    [*(a1 + 32) addObject:v9];
    v3 = v9;
  }
}

void __94__PKAddPassesCardStackViewController_initWithPasses_orPassesContainer_fromPresentationSource___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69B8A20] createWithData:a2 warnings:0 error:0];
  (*(v2 + 16))(v2, v3);
}

- (void)dealloc
{
  [(PKAddPassesCardStackViewController *)self _endReportingIfNecessary];
  [(PKGroupsController *)self->_groupsController setDelegate:0];
  [(PKPassGroupStackView *)self->_passGroupStackView setDelegate:0];
  [(PKPassGroupStackView *)self->_passGroupStackView setDatasource:0];
  [(PKPassGroupStackView *)self->_passGroupStackView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = PKAddPassesCardStackViewController;
  [(PKAddPassesCardStackViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PKAddPassesCardStackViewController;
  [(PKAddPassesCardStackViewController *)&v17 viewDidLoad];
  view = [(PKAddPassesCardStackViewController *)self view];
  v4 = [PKPassGroupStackView alloc];
  [view bounds];
  v5 = [(PKPassGroupStackView *)v4 initWithFrame:?];
  passGroupStackView = self->_passGroupStackView;
  self->_passGroupStackView = v5;

  v7 = self->_passGroupStackView;
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKPassGroupStackView *)v7 setBackgroundColor:systemBackgroundColor];

  [(PKPassGroupStackView *)self->_passGroupStackView setShowsVerticalScrollIndicator:0];
  [(PKPassGroupStackView *)self->_passGroupStackView setFooterSuppressed:1];
  [(PKPassGroupStackView *)self->_passGroupStackView setDelegate:self];
  [(PKPassGroupStackView *)self->_passGroupStackView setDatasource:self];
  systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor2];

  [view setOpaque:1];
  [view addSubview:self->_passGroupStackView];
  if (self->_passes)
  {
    [(PKGroupsController *)self->_groupsController addLocalPasses:?];
    firstObject = [(NSArray *)self->_passes firstObject];
    groupsController = self->_groupsController;
    uniqueID = [firstObject uniqueID];
    v13 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:uniqueID];

    [(PKPassGroupStackView *)self->_passGroupStackView setModalGroupIndex:v13];
    [(PKAddPassesCardStackViewController *)self _configureNavigationItemTitle];
    if (-[NSArray count](self->_passes, "count") == 1 && [firstObject isPersonalizable])
    {
      [(PKAddPassesCardStackViewController *)self _configureAddOrNextButtonItemAsPending:1];
      passTypeIdentifier = [firstObject passTypeIdentifier];
      PKPassPersonalizationRequestToken();
    }

    else
    {
      [(PKAddPassesCardStackViewController *)self _configureAddOrNextButtonItemAsPending:0];
    }
  }

  else
  {
    [(PKPassGroupStackView *)self->_passGroupStackView setModalGroupIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  v15 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
  if (PKIsPad())
  {
    [(PKAddPassesCardStackViewController *)self setUpAboutWalletButton];
    [(PKAddPassesCardStackViewController *)self setUpInfoTextLabel];
  }

  navigationItem = [(PKAddPassesCardStackViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v15 animated:0];
}

void __49__PKAddPassesCardStackViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PKAddPassesCardStackViewController_viewDidLoad__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __49__PKAddPassesCardStackViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1032), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _configureAddOrNextButtonItemAsPending:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKAddPassesCardStackViewController;
  [(PKAddPassesCardStackViewController *)&v14 viewWillAppear:appear];
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_passes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [mEMORY[0x1E69B8A58] getContainmentStatusAndSettingsForPass:? withHandler:?];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(PKPassGroupStackView *)self->_passGroupStackView setPresentationState:6 animated:0];
}

void __53__PKAddPassesCardStackViewController_viewWillAppear___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKAddPassesCardStackViewController_viewWillAppear___block_invoke_2;
  block[3] = &unk_1E8012188;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __53__PKAddPassesCardStackViewController_viewWillAppear___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    return [*(result + 32) setSettings:*(result + 48)];
  }

  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKAddPassesCardStackViewController;
  [(PKAddPassesCardStackViewController *)&v4 viewDidAppear:appear];
  [(PKAddPassesCardStackViewController *)self _sendAnalyticsViewVisibilityUpdateWithType:*MEMORY[0x1E69BA818]];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKAddPassesCardStackViewController;
  [(PKAddPassesCardStackViewController *)&v4 viewDidDisappear:disappear];
  [(PKAddPassesCardStackViewController *)self _sendAnalyticsViewVisibilityUpdateWithType:*MEMORY[0x1E69BA820]];
}

- (void)viewWillLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = PKAddPassesCardStackViewController;
  [(PKAddPassesCardStackViewController *)&v25 viewWillLayoutSubviews];
  view = [(PKAddPassesCardStackViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  remainder.origin.x = v4;
  remainder.origin.y = v6;
  remainder.size.width = v8;
  remainder.size.height = v10;
  memset(&slice, 0, sizeof(slice));
  [view safeAreaInsets];
  v13 = v12;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  CGRectDivide(v26, &slice, &remainder, v13, CGRectMinYEdge);
  v22 = remainder;
  v14 = *(MEMORY[0x1E695F058] + 16);
  v21.origin = *MEMORY[0x1E695F058];
  v21.size = v14;
  x = remainder.origin.x;
  v14.width = remainder.origin.y;
  width = remainder.size.width;
  height = remainder.size.height;
  CGRectDivide(*(&v14 - 8), &v21, &v22, 90.0, CGRectMaxYEdge);
  [(PKPassGroupStackView *)self->_passGroupStackView setFrame:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
  [(PKPassGroupStackView *)self->_passGroupStackView layoutContentForCurrentPresentationState:0];
  [view bounds];
  [(UIButton *)self->_aboutWalletButton setFrame:(v18 + -274.0) * 0.5, v21.origin.y + 30.0 + 8.0, 274.0, 40.0];
  y = v21.origin.y;
  infoTextLabel = self->_infoTextLabel;
  [view bounds];
  [(UILabel *)infoTextLabel setFrame:0.0, y];
}

- (void)setUpInfoTextLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  infoTextLabel = self->_infoTextLabel;
  self->_infoTextLabel = v3;

  v5 = self->_infoTextLabel;
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)v5 setTextColor:systemGrayColor];

  v7 = self->_infoTextLabel;
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  [(UILabel *)v7 setFont:v8];

  [(UILabel *)self->_infoTextLabel setTextAlignment:1];
  [(UILabel *)self->_infoTextLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_infoTextLabel setNumberOfLines:0];
  [(UILabel *)self->_infoTextLabel setLayoutMargins:24.0, 0.0, 0.0, 0.0];
  v9 = self->_infoTextLabel;
  v10 = PKLocalizedString(&cfstr_InfoTextAddToW.isa);
  [(UILabel *)v9 setText:v10];

  view = [(PKAddPassesCardStackViewController *)self view];
  [view addSubview:self->_infoTextLabel];
}

- (void)setUpAboutWalletButton
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  aboutWalletButton = self->_aboutWalletButton;
  self->_aboutWalletButton = v3;

  v5 = self->_aboutWalletButton;
  v6 = PKCoreLocalizedString(&cfstr_AboutWalletBut.isa);
  [(UIButton *)v5 setTitle:v6 forState:0];

  titleLabel = [(UIButton *)self->_aboutWalletButton titleLabel];
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
  [titleLabel setFont:v8];

  titleLabel2 = [(UIButton *)self->_aboutWalletButton titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)self->_aboutWalletButton _setCornerRadius:14.0];
  v10 = self->_aboutWalletButton;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIButton *)v10 setBackgroundColor:systemBlueColor];

  [(UIButton *)self->_aboutWalletButton addTarget:self action:sel__aboutButtonPressed forControlEvents:64];
  view = [(PKAddPassesCardStackViewController *)self view];
  [view addSubview:self->_aboutWalletButton];
}

- (id)groupAtIndex:(unint64_t)index
{
  if ([(PKAddPassesCardStackViewController *)self numberOfGroups]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PKGroupsController *)self->_groupsController groupAtIndex:index];
  }

  return v5;
}

- (void)groupStackView:(id)view deleteConfirmedForPass:(id)pass
{
  groupsController = self->_groupsController;
  uniqueID = [pass uniqueID];
  [(PKGroupsController *)groupsController handleUserPassDelete:uniqueID];
}

- (unint64_t)suppressedContent
{
  if (PKIsLowEndDevice())
  {
    return 2849;
  }

  else
  {
    return 2337;
  }
}

- (void)groupStackView:(id)view didTransitionToState:(int64_t)state animated:(BOOL)animated
{
  viewCopy = view;
  if (state == 6 && !self->_passes)
  {
    v9 = viewCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained addPassesCardStackViewController:self didCancelAddingPasses:self->_passes];

    viewCopy = v9;
  }
}

- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index
{
  [(PKPassGroupStackView *)self->_passGroupStackView reloadData:controller];
  groupsController = self->_groupsController;
  firstObject = [(NSArray *)self->_passes firstObject];
  uniqueID = [firstObject uniqueID];
  v10 = [(PKGroupsController *)groupsController groupIndexForPassUniqueID:uniqueID];

  if (v10 != index)
  {
    passGroupStackView = self->_passGroupStackView;

    [(PKPassGroupStackView *)passGroupStackView stageGroupInPresentationState:2 atIndex:index];
  }
}

- (void)passPersonalizationViewController:(id)controller didFinishPersonalizingPass:(id)pass success:(BOOL)success
{
  successCopy = success;
  v11[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (successCopy)
  {
    v11[0] = passCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    [WeakRetained addPassesCardStackViewController:self didFinishAddingPasses:v9];
  }

  else
  {
    v10 = passCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];

    [WeakRetained addPassesCardStackViewController:self didCancelAddingPasses:v9];
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained addPassesCardStackViewController:self didFinishAddingPasses:self->_passes];
}

- (void)_beginReportingIfNecessary
{
  firstObject = [(NSArray *)self->_passes firstObject];
  supportsIssuerBinding = [firstObject supportsIssuerBinding];

  if (supportsIssuerBinding)
  {
    self->_shouldReportAnalytics = 1;
    v5 = *MEMORY[0x1E69BB710];
    v6 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB710]];

    if (!v6)
    {
      self->_didBeginVASSubject = 1;
      v7 = MEMORY[0x1E69B8540];

      [v7 beginSubjectReporting:v5];
    }
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginVASSubject)
  {
    self->_didBeginVASSubject = 0;
    self->_shouldReportAnalytics = 0;
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB710]];
  }
}

- (void)_sendAnalyticsViewVisibilityUpdateWithType:(id)type
{
  v43 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (self->_shouldReportAnalytics)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = self->_passes;
    v35 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v35)
    {
      v33 = *v37;
      v31 = *MEMORY[0x1E69BA680];
      v32 = *MEMORY[0x1E69BB710];
      v29 = *MEMORY[0x1E69BABF0];
      v30 = *MEMORY[0x1E69BABE8];
      v27 = *MEMORY[0x1E69BB3A8];
      v28 = *MEMORY[0x1E69BB3E0];
      v25 = *MEMORY[0x1E69BACA0];
      v26 = *MEMORY[0x1E69BB0E0];
      v23 = *MEMORY[0x1E69BBE20];
      v24 = *MEMORY[0x1E69BAC30];
      v22 = *MEMORY[0x1E69BB120];
      v21 = *MEMORY[0x1E69BB318];
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v36 + 1) + 8 * i);
          v6 = MEMORY[0x1E69B8540];
          v40[0] = v31;
          v40[1] = v30;
          v41[0] = typeCopy;
          v41[1] = v29;
          v40[2] = v28;
          passTypeIdentifier = [v5 passTypeIdentifier];
          v8 = passTypeIdentifier;
          if (passTypeIdentifier)
          {
            v9 = passTypeIdentifier;
          }

          else
          {
            v9 = v27;
          }

          v41[2] = v9;
          v40[3] = v26;
          v10 = AnalyticsVASReferralSource();
          v41[3] = v10;
          v40[4] = v25;
          [v5 style];
          v11 = PKPassStyleToString();
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = v27;
          }

          v41[4] = v13;
          v40[5] = v24;
          v14 = [v5 stringForSemanticKey:v23];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = v27;
          }

          v41[5] = v16;
          v40[6] = v22;
          v17 = AnalyticsRelevancyTypeForPass();
          v41[6] = v17;
          v40[7] = v21;
          v18 = [PKPassSemanticTileFactory analyticsTileAvailabilityForPass:v5];
          v41[7] = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:8];
          [v6 subject:v32 sendEvent:v19];
        }

        v35 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v35);
    }
  }
}

- (void)_sendAnalyticsDidTapButton:(id)button
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (self->_shouldReportAnalytics)
  {
    v3 = MEMORY[0x1E69B8540];
    v4 = *MEMORY[0x1E69BB710];
    v5 = *MEMORY[0x1E69BA6F0];
    v6 = *MEMORY[0x1E69BABE8];
    v14[0] = *MEMORY[0x1E69BA680];
    v14[1] = v6;
    v7 = *MEMORY[0x1E69BABF0];
    v15[0] = v5;
    v15[1] = v7;
    v8 = *MEMORY[0x1E69BA440];
    v15[2] = button;
    v9 = *MEMORY[0x1E69BAB08];
    v14[2] = v8;
    v14[3] = v9;
    passes = self->_passes;
    buttonCopy = button;
    [(NSArray *)passes count];
    v12 = PKAnalyticsReportSwitchToggleResultValue();
    v15[3] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
    [v3 subject:v4 sendEvent:v13];
  }
}

- (void)_addPassesWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  v5 = mEMORY[0x1E69B8A58];
  passesContainer = self->_passesContainer;
  if (passesContainer)
  {
    [mEMORY[0x1E69B8A58] addPassesContainer:passesContainer withCompletionHandler:completionCopy];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:self->_passDataArray];
    [v5 addPassesWithData:v7 withCompletionHandler:completionCopy];
  }
}

- (void)_cancelButtonPressed:(id)pressed
{
  [(PKAddPassesCardStackViewController *)self _sendAnalyticsDidTapButton:*MEMORY[0x1E69BA468]];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained addPassesCardStackViewController:self didCancelAddingPasses:self->_passes];
}

- (void)_addButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, self);
  [(PKAddPassesCardStackViewController *)self _sendAnalyticsDidTapButton:*MEMORY[0x1E69BB3D0]];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PKAddPassesCardStackViewController__addButtonPressed___block_invoke;
  v5[3] = &unk_1E801A1E8;
  objc_copyWeak(&v6, &location);
  [(PKAddPassesCardStackViewController *)self _addPassesWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__PKAddPassesCardStackViewController__addButtonPressed___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKAddPassesCardStackViewController__addButtonPressed___block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __56__PKAddPassesCardStackViewController__addButtonPressed___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E69B87F0] sharedInstance];
    objc_initWeak(&location, v2);

    v3 = objc_loadWeakRetained(&location);
    [v3 beginReporingDiscoveryAnalytics];

    v4 = objc_loadWeakRetained(&location);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __56__PKAddPassesCardStackViewController__addButtonPressed___block_invoke_3;
    v9 = &unk_1E8011338;
    objc_copyWeak(&v10, &location);
    [v4 completedDiscoveryItemCTAWithCompletion:&v6];

    v5 = objc_loadWeakRetained(WeakRetained + 132);
    [v5 addPassesCardStackViewController:WeakRetained didFinishAddingPasses:{WeakRetained[124], v6, v7, v8, v9}];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __56__PKAddPassesCardStackViewController__addButtonPressed___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endReporingDiscoveryAnalytics];
}

- (void)_aboutButtonPressed
{
  v3 = objc_alloc_init(PKAddPassesAboutWalletViewController);
  [(PKAddPassesAboutWalletViewController *)v3 setModalTransitionStyle:2];
  [(PKAddPassesAboutWalletViewController *)v3 setModalPresentationStyle:2];
  [(PKAddPassesCardStackViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)_nextButtonPressedForPersonalization:(id)personalization
{
  firstObject = [(NSArray *)self->_passes firstObject];
  v4 = [[PKPassPersonalizationViewController alloc] initWithPass:firstObject personalizationToken:self->_personalizatonToken personalizationSource:self->_presentationSource == 1];
  [(PKPassPersonalizationViewController *)v4 setDelegate:self];
  navigationController = [(PKAddPassesCardStackViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)_configureNavigationItemTitle
{
  firstObject = [(NSArray *)self->_passes firstObject];
  style = [firstObject style];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  passes = self->_passes;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__PKAddPassesCardStackViewController__configureNavigationItemTitle__block_invoke;
  v20[3] = &unk_1E801A210;
  v20[4] = &v21;
  v20[5] = style;
  [(NSArray *)passes enumerateObjectsUsingBlock:v20];
  v6 = self->_passes;
  if (*(v22 + 24) != 1)
  {
    v10 = [(NSArray *)v6 count];
    v11 = MEMORY[0x1E696ADA0];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v8 = [v11 localizedStringFromNumber:v12 numberStyle:0];

    pluralLocalizedName = PKCoreLocalizedString(&cfstr_TemplateNamePa.isa);
    v14 = PKLocalizedString(&cfstr_IngestionTitle.isa, &stru_1F3BD6370.isa, v8, pluralLocalizedName);
LABEL_6:
    localizedDescription = v14;

    goto LABEL_7;
  }

  v7 = [(NSArray *)v6 count];
  if (v7 != 1)
  {
    v15 = MEMORY[0x1E696ADA0];
    v16 = MEMORY[0x1E696AD98];
    v17 = firstObject;
    v18 = [v16 numberWithUnsignedInteger:v7];
    v8 = [v15 localizedStringFromNumber:v18 numberStyle:0];

    pluralLocalizedName = [v17 pluralLocalizedName];

    v14 = PKLocalizedString(&cfstr_IngestionTitle.isa, &stru_1F3BD6370.isa, v8, pluralLocalizedName);
    goto LABEL_6;
  }

  v8 = firstObject;
  localizedDescription = [v8 localizedDescription];
LABEL_7:

  navigationItem = [(PKAddPassesCardStackViewController *)self navigationItem];
  [navigationItem setTitle:localizedDescription];

  _Block_object_dispose(&v21, 8);
}

uint64_t __67__PKAddPassesCardStackViewController__configureNavigationItemTitle__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 style];
  *(*(*(a1 + 32) + 8) + 24) = result == *(a1 + 40);
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

- (void)_configureAddOrNextButtonItemAsPending:(BOOL)pending
{
  navigationItem = [(PKAddPassesCardStackViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (pending)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v7];
    [v7 startAnimating];
  }

  else
  {
    if ([(NSArray *)self->_passes count]< 2)
    {
      firstObject = [(NSArray *)self->_passes firstObject];
      if ([firstObject isPersonalizable] && self->_personalizatonToken)
      {
        v9 = 0;
        v11 = &selRef__nextButtonPressedForPersonalization_;
        v12 = @"INGESTION_NEXT";
      }

      else
      {
        v11 = &selRef__addButtonPressed_;
        v9 = 2;
        v12 = @"INGESTION_ADD";
      }

      v7 = PKLocalizedString(&v12->isa);
      v8 = *v11;
    }

    else
    {
      v7 = PKLocalizedString(&cfstr_IngestionAddN.isa);
      v8 = sel__addButtonPressed_;
      v9 = 2;
    }

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v7 style:v9 target:self action:v8];
  }

  navigationItem2 = [(PKAddPassesCardStackViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v14 animated:rightBarButtonItem != 0];
}

- (PKAddPassesCardStackViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end