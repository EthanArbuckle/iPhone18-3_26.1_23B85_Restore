@interface PKPassShareEntitlementSelectionViewController
- (id)_initWithAccessType:(int64_t)a3 mode:(unint64_t)a4 entitlementComposer:(id)a5 isShowingMyEntitlements:(BOOL)a6;
- (void)_reloadSections:(BOOL)a3;
- (void)didTapPassEntitlementTimeSectionController:(id)a3;
- (void)loadView;
- (void)setShowDoneButton:(BOOL)a3;
- (void)showAdvancedScheduleSelectionFlowForEntitlementEntry:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassShareEntitlementSelectionViewController

- (id)_initWithAccessType:(int64_t)a3 mode:(unint64_t)a4 entitlementComposer:(id)a5 isShowingMyEntitlements:(BOOL)a6
{
  v11 = a5;
  v26.receiver = self;
  v26.super_class = PKPassShareEntitlementSelectionViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v26 initWithContext:0];
  v13 = v12;
  if (v12)
  {
    v12->_accessType = a3;
    v12->_mode = a4;
    objc_storeStrong(&v12->_entitlementComposer, a5);
    v13->_isShowingMyEntitlements = a6;
    v14 = [[PKPassEntitlementSelectionSectionController alloc] initWithMode:a4 entitlementComposer:v13->_entitlementComposer delegate:v13];
    entitlementSectionController = v13->_entitlementSectionController;
    v13->_entitlementSectionController = v14;

    v16 = [[PKPassEntitlementTimeSectionController alloc] initWithMode:a4 entitlementComposer:v13->_entitlementComposer delegate:v13];
    timeSectionController = v13->_timeSectionController;
    v13->_timeSectionController = v16;

    v18 = [(PKPassEntitlementsComposer *)v13->_entitlementComposer globalView];
    v19 = [(PKPassEntitlementsComposer *)v13->_entitlementComposer activePredefinedSelectionEntry];

    if (v19)
    {
      v20 = [[PKPassSharePredefinedEntitlementSectionController alloc] initWithMode:v13->_mode entitlementComposer:v13->_entitlementComposer delegate:v13];
      v21 = &OBJC_IVAR___PKPassShareEntitlementSelectionViewController__predefinedSectionController;
    }

    else
    {
      if (![v18 isManagingTimeConfiguration] || !-[PKPassEntitlementsComposer preferDetailedCapabilityDisplay](v13->_entitlementComposer, "preferDetailedCapabilityDisplay"))
      {
        goto LABEL_8;
      }

      v20 = [[PKPassEntitlementCapabilitySectionController alloc] initWithMode:v13->_mode entitlementComposer:v13->_entitlementComposer composerView:v18 isDisabled:0 delegate:v13];
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
  v7 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v8 = [v7 footerView];
  [v7 setPrimaryButton:0];
  [v7 setButtonsEnabled:1];
  [v8 setSetUpLaterButton:0];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPassShareEntitlementSelectionViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewWillAppear:a3];
  [(PKPassShareEntitlementSelectionViewController *)self _reloadSections:0];
}

- (void)setShowDoneButton:(BOOL)a3
{
  if (self->_showDoneButton != a3)
  {
    self->_showDoneButton = a3;
    v5 = [(PKPassShareEntitlementSelectionViewController *)self navigationItem];
    if (self->_showDoneButton)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissButtonPressed];
      [v5 setLeftBarButtonItem:v4];
    }

    else
    {
      [v5 setLeftBarButtonItem:0];
    }
  }
}

- (void)_reloadSections:(BOOL)a3
{
  [(PKPassEntitlementTimeSectionController *)self->_timeSectionController reloadItemsAnimated:a3];

  [(PKDynamicCollectionViewController *)self reloadDataWithoutRebuildingDataStores];
}

- (void)showAdvancedScheduleSelectionFlowForEntitlementEntry:(id)a3
{
  v4 = a3;
  v6 = [[PKPassShareTimeLimitViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer entitlementEntry:v4 delegate:self];

  v5 = [(PKPassShareEntitlementSelectionViewController *)self navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_pushViewController:v6];
  }

  else
  {
    [v5 pushViewController:v6 animated:1];
  }
}

- (void)didTapPassEntitlementTimeSectionController:(id)a3
{
  v5 = [[PKPassShareTimeLimitViewController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer entitlementEntry:0 delegate:self];
  v4 = [(PKPassShareEntitlementSelectionViewController *)self navigationController];
  if ([v4 pk_settings_useStateDrivenNavigation])
  {
    [v4 pk_settings_pushViewController:v5];
  }

  else
  {
    [v4 pushViewController:v5 animated:1];
  }
}

@end