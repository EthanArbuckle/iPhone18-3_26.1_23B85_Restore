@interface PKPassShareEntitlementSelectionViewController
- (id)_initWithAccessType:(int64_t)type mode:(unint64_t)mode entitlementComposer:(id)composer isShowingMyEntitlements:(BOOL)entitlements;
- (void)_reloadSections:(BOOL)sections;
- (void)didTapPassEntitlementTimeSectionController:(id)controller;
- (void)loadView;
- (void)setShowDoneButton:(BOOL)button;
- (void)showAdvancedScheduleSelectionFlowForEntitlementEntry:(id)entry;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPassShareEntitlementSelectionViewController

- (id)_initWithAccessType:(int64_t)type mode:(unint64_t)mode entitlementComposer:(id)composer isShowingMyEntitlements:(BOOL)entitlements
{
  composerCopy = composer;
  v26.receiver = self;
  v26.super_class = PKPassShareEntitlementSelectionViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v26 initWithContext:0];
  v13 = v12;
  if (v12)
  {
    v12->_accessType = type;
    v12->_mode = mode;
    objc_storeStrong(&v12->_entitlementComposer, composer);
    v13->_isShowingMyEntitlements = entitlements;
    v14 = [[PKPassEntitlementSelectionSectionController alloc] initWithMode:mode entitlementComposer:v13->_entitlementComposer delegate:v13];
    entitlementSectionController = v13->_entitlementSectionController;
    v13->_entitlementSectionController = v14;

    v16 = [[PKPassEntitlementTimeSectionController alloc] initWithMode:mode entitlementComposer:v13->_entitlementComposer delegate:v13];
    timeSectionController = v13->_timeSectionController;
    v13->_timeSectionController = v16;

    globalView = [(PKPassEntitlementsComposer *)v13->_entitlementComposer globalView];
    activePredefinedSelectionEntry = [(PKPassEntitlementsComposer *)v13->_entitlementComposer activePredefinedSelectionEntry];

    if (activePredefinedSelectionEntry)
    {
      v20 = [[PKPassSharePredefinedEntitlementSectionController alloc] initWithMode:v13->_mode entitlementComposer:v13->_entitlementComposer delegate:v13];
      v21 = &OBJC_IVAR___PKPassShareEntitlementSelectionViewController__predefinedSectionController;
    }

    else
    {
      if (![globalView isManagingTimeConfiguration] || !-[PKPassEntitlementsComposer preferDetailedCapabilityDisplay](v13->_entitlementComposer, "preferDetailedCapabilityDisplay"))
      {
        goto LABEL_8;
      }

      v20 = [[PKPassEntitlementCapabilitySectionController alloc] initWithMode:v13->_mode entitlementComposer:v13->_entitlementComposer composerView:globalView isDisabled:0 delegate:v13];
      v21 = &OBJC_IVAR___PKPassShareEntitlementSelectionViewController__capabilitySectionController;
    }

    v22 = *v21;
    v23 = *(&v13->super.super.super.super.super.isa + v22);
    *(&v13->super.super.super.super.super.isa + v22) = v20;

LABEL_8:
    [(PKDynamicCollectionViewController *)v13 setUseItemIdentityWhenUpdating:1];
    [(PKPassShareEntitlementSelectionViewController *)v13 setModalPresentationStyle:6];
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v24 addObject:v13->_entitlementSectionController];
    [v24 safelyAddObject:v13->_predefinedSectionController];
    [v24 safelyAddObject:v13->_capabilitySectionController];
    [v24 addObject:v13->_timeSectionController];
    [(PKPaymentSetupOptionsViewController *)v13 setSections:v24 animated:0];
  }

  return v13;
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = PKPassShareEntitlementSelectionViewController;
  [(PKDynamicCollectionViewController *)&v10 loadView];
  accessType = self->_accessType;
  if ((self->_mode & 0xFFFFFFFFFFFFFFFELL) == 2 && self->_isShowingMyEntitlements)
  {
    if (accessType == 4)
    {
      v4 = @"MY_ENTITLEMENTS_TITLE_VEHICLE";
    }

    else
    {
      v4 = @"MY_ENTITLEMENTS_TITLE";
    }

    v5 = 1;
  }

  else
  {
    if (accessType == 4)
    {
      v4 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_TITLE_VEHICLE";
    }

    else
    {
      v4 = @"SHARE_OVERVIEW_SECTION_ENTITLEMENTS_TITLE";
    }

    v5 = 2;
  }

  v6 = PKLocalizedShareableCredentialString(&v4->isa);
  [(PKPassShareEntitlementSelectionViewController *)self setTitle:v6];

  [(PKPaymentSetupOptionsViewController *)self setHeaderMode:v5];
  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  footerView = [dockView footerView];
  [dockView setPrimaryButton:0];
  [dockView setButtonsEnabled:1];
  [footerView setSetUpLaterButton:0];
  if (self->_mode == 2)
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v9 = ;
  [(PKPaymentSetupOptionsViewController *)self setBackgroundColor:v9];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPassShareEntitlementSelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:appear];
  [(PKPassShareEntitlementSelectionViewController *)self _reloadSections:0];
}

- (void)setShowDoneButton:(BOOL)button
{
  if (self->_showDoneButton != button)
  {
    self->_showDoneButton = button;
    navigationItem = [(PKPassShareEntitlementSelectionViewController *)self navigationItem];
    if (self->_showDoneButton)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissButtonPressed];
      [navigationItem setLeftBarButtonItem:v4];
    }

    else
    {
      [navigationItem setLeftBarButtonItem:0];
    }
  }
}

- (void)_reloadSections:(BOOL)sections
{
  [(PKPassEntitlementTimeSectionController *)self->_timeSectionController reloadItemsAnimated:sections];

  [(PKDynamicCollectionViewController *)self reloadDataWithoutRebuildingDataStores];
}

- (void)showAdvancedScheduleSelectionFlowForEntitlementEntry:(id)entry
{
  entryCopy = entry;
  v6 = [[PKPassShareTimeLimitViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer entitlementEntry:entryCopy delegate:self];

  navigationController = [(PKPassShareEntitlementSelectionViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v6];
  }

  else
  {
    [navigationController pushViewController:v6 animated:1];
  }
}

- (void)didTapPassEntitlementTimeSectionController:(id)controller
{
  v5 = [[PKPassShareTimeLimitViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer entitlementEntry:0 delegate:self];
  navigationController = [(PKPassShareEntitlementSelectionViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v5];
  }

  else
  {
    [navigationController pushViewController:v5 animated:1];
  }
}

@end