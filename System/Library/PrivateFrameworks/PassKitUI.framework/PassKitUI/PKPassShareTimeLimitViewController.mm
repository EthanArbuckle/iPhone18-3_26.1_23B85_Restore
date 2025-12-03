@interface PKPassShareTimeLimitViewController
- (PKPassShareTimeLimitViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer entitlementEntry:(id)entry delegate:(id)delegate;
- (void)_configureSections;
- (void)_showTimeLimitEditForStartDate:(BOOL)date expirationDate:(BOOL)expirationDate;
- (void)timeConfigurationDidChange:(id)change;
- (void)toggle:(id)toggle valueDidChange:(BOOL)change;
- (void)viewDidLoad;
@end

@implementation PKPassShareTimeLimitViewController

- (PKPassShareTimeLimitViewController)initWithMode:(unint64_t)mode entitlementComposer:(id)composer entitlementEntry:(id)entry delegate:(id)delegate
{
  composerCopy = composer;
  entryCopy = entry;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PKPassShareTimeLimitViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = mode;
    objc_storeStrong(&v14->_entitlementComposer, composer);
    objc_storeStrong(&v15->_entitlementEntry, entry);
    objc_storeStrong(&v15->_delegate, delegate);
    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
    [(PKPaymentSetupOptionsViewController *)v15 setHeaderMode:2];
    [(PKPassShareTimeLimitViewController *)v15 _configureSections];
  }

  return v15;
}

- (void)_configureSections
{
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:self->_entitlementEntry];
  v4 = v3;
  if (v3)
  {
    globalView = v3;
  }

  else
  {
    globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  }

  v6 = globalView;

  possibleTimeConfiguration = [v6 possibleTimeConfiguration];
  timeConfiguration = [v6 timeConfiguration];
  v9 = timeConfiguration;
  if (timeConfiguration)
  {
    v10 = timeConfiguration;
  }

  else
  {
    v10 = [possibleTimeConfiguration copy];
  }

  v41 = v10;

  entitlementEntry = self->_entitlementEntry;
  isManagingTimeConfiguration = [v6 isManagingTimeConfiguration];
  v13 = isManagingTimeConfiguration ^ 1u;
  if (entitlementEntry)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  support = [possibleTimeConfiguration support];
  editable = [(PKPassEntitlementsComposer *)self->_entitlementComposer editable];
  if (!entitlementEntry)
  {
    enabled = 0;
LABEL_14:
    scheduleSectionController = self->_scheduleSectionController;
    if (scheduleSectionController)
    {
      [(PKPassShareScheduleSectionController *)scheduleSectionController setConfiguration:v41];
      [(PKPassShareScheduleSectionController *)self->_scheduleSectionController setIsDisabled:v13];
    }

    else
    {
      v18 = [[PKPassShareScheduleSectionController alloc] initWithConfiguration:v41 possibleTimeConfiguration:possibleTimeConfiguration isEditable:editable isDisabled:v13 delegate:self];
      v19 = self->_scheduleSectionController;
      self->_scheduleSectionController = v18;
    }

    [v42 addObject:self->_scheduleSectionController];
    if (!entitlementEntry)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  enabled = [v6 enabled];
  if (isManagingTimeConfiguration)
  {
    goto LABEL_14;
  }

LABEL_18:
  entitlementAccessSectionController = self->_entitlementAccessSectionController;
  if (!entitlementAccessSectionController)
  {
    v21 = [PKPassShareToggleSectionController alloc];
    v22 = PKLocalizedShareableCredentialString(&cfstr_ShareableEntit.isa);
    v23 = [(PKPassShareToggleSectionController *)v21 initWithIdentifier:@"EntitlementAccessToggle" title:v22 toggleValue:enabled isEditable:editable delegate:self];
    v24 = self->_entitlementAccessSectionController;
    self->_entitlementAccessSectionController = v23;

    entitlementAccessSectionController = self->_entitlementAccessSectionController;
  }

  [v42 insertObject:entitlementAccessSectionController atIndex:0];
  if ([v6 isManagingEntitlementConfiguration])
  {
    capabilitySectionController = self->_capabilitySectionController;
    if (capabilitySectionController)
    {
      [(PKPassEntitlementCapabilitySectionController *)capabilitySectionController setIsDisabled:enabled ^ 1];
    }

    else
    {
      v26 = [[PKPassEntitlementCapabilitySectionController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer composerView:v6 isDisabled:enabled ^ 1 delegate:self];
      v27 = self->_capabilitySectionController;
      self->_capabilitySectionController = v26;
    }

    [(PKPassShareScheduleSectionController *)self->_scheduleSectionController setShowTimeLimitHeader:1];
    [v42 insertObject:self->_capabilitySectionController atIndex:1];
  }

  else
  {
    [(PKPassShareScheduleSectionController *)self->_scheduleSectionController setShowTimeLimitHeader:0];
  }

LABEL_26:
  if (support > 2)
  {
    v28 = 1;
  }

  else
  {
    v28 = v14;
  }

  if (!enabled && v28)
  {
    advancedScheduleSectionController = self->_advancedScheduleSectionController;
    if (!advancedScheduleSectionController)
    {
      v30 = [PKPassShareToggleSectionController alloc];
      v31 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleA.isa);
      v32 = [(PKPassShareToggleSectionController *)v30 initWithIdentifier:@"AdvancedScheduleToggle" title:v31 toggleValue:v14 isEditable:editable delegate:self];
      v33 = self->_advancedScheduleSectionController;
      self->_advancedScheduleSectionController = v32;

      v34 = self->_advancedScheduleSectionController;
      v35 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleA_0.isa);
      [(PKPassShareToggleSectionController *)v34 setFooterText:v35];

      v36 = self->_advancedScheduleSectionController;
      v37 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar.badge.plus"];
      [(PKPassShareToggleSectionController *)v36 setIcon:v37];

      advancedScheduleSectionController = self->_advancedScheduleSectionController;
    }

    [v42 addObject:advancedScheduleSectionController];
  }

  sections = [(PKDynamicCollectionViewController *)self sections];
  v39 = PKEqualObjects();

  if ((v39 & 1) == 0)
  {
    [(PKPaymentSetupOptionsViewController *)self setSections:v42 animated:1];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKPassShareTimeLimitViewController;
  [(PKPaymentSetupOptionsViewController *)&v6 viewDidLoad];
  entitlementEntry = self->_entitlementEntry;
  if (entitlementEntry)
  {
    displayableEntitlement = [(PKPassEntitlementsComposerEntry *)entitlementEntry displayableEntitlement];
    localizedTitle = [displayableEntitlement localizedTitle];
    [(PKPassShareTimeLimitViewController *)self setTitle:localizedTitle];
  }

  else
  {
    displayableEntitlement = PKLocalizedShareableCredentialString(&cfstr_ShareSchedules_3.isa);
    [(PKPassShareTimeLimitViewController *)self setTitle:displayableEntitlement];
  }
}

- (void)toggle:(id)toggle valueDidChange:(BOOL)change
{
  changeCopy = change;
  toggleCopy = toggle;
  v15 = toggleCopy;
  if (toggleCopy == @"AdvancedScheduleToggle")
  {
    goto LABEL_4;
  }

  if (!toggleCopy)
  {
    goto LABEL_6;
  }

  v7 = [(__CFString *)toggleCopy isEqualToString:@"AdvancedScheduleToggle"];

  if (v7)
  {
LABEL_4:
    globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
    [globalView setIsManagingTimeConfiguration:changeCopy ^ 1];
LABEL_5:

    goto LABEL_6;
  }

  v9 = v15;
  if (v9 == @"EntitlementAccessToggle" || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"EntitlementAccessToggle"], v10, v11))
  {
    if (changeCopy)
    {
      globalView2 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
      maxSelectionCount = [globalView2 maxSelectionCount];

      if (maxSelectionCount == 1)
      {
        globalView3 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
        [globalView3 setEnabled:0];
      }
    }

    globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:self->_entitlementEntry];
    [globalView setEnabled:changeCopy];
    goto LABEL_5;
  }

LABEL_6:
  [(PKPassShareTimeLimitViewController *)self _configureSections];
  [(PKDynamicCollectionViewController *)self reloadDataForSection:self->_scheduleSectionController animated:1];
}

- (void)timeConfigurationDidChange:(id)change
{
  entitlementComposer = self->_entitlementComposer;
  entitlementEntry = self->_entitlementEntry;
  changeCopy = change;
  v7 = [(PKPassEntitlementsComposer *)entitlementComposer viewFor:entitlementEntry];
  v8 = v7;
  if (v7)
  {
    globalView = v7;
  }

  else
  {
    globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  }

  v10 = globalView;

  [v10 setTimeConfiguration:changeCopy];
  [(PKPassShareScheduleSectionController *)self->_scheduleSectionController setConfiguration:changeCopy];
}

- (void)_showTimeLimitEditForStartDate:(BOOL)date expirationDate:(BOOL)expirationDate
{
  dateCopy = date;
  expirationDate = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:self->_entitlementEntry, expirationDate];
  v7 = expirationDate;
  if (expirationDate)
  {
    globalView = expirationDate;
  }

  else
  {
    globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  }

  v9 = globalView;

  possibleTimeConfiguration = [v9 possibleTimeConfiguration];
  v11 = [MEMORY[0x1E695DF00] now];
  timeConfiguration = [v9 timeConfiguration];
  v13 = timeConfiguration;
  v32 = dateCopy;
  if (dateCopy)
  {
    startDate = [timeConfiguration startDate];
    if (startDate)
    {
      v15 = startDate;
      v16 = @"SHARE_SCHEDULES_EDIT_START_DATE_TITLE";
LABEL_9:
      startDate2 = v15;
      goto LABEL_12;
    }

    startDate2 = [possibleTimeConfiguration startDate];
    v15 = 0;
    v16 = @"SHARE_SCHEDULES_EDIT_START_DATE_TITLE";
  }

  else
  {
    expirationDate2 = [timeConfiguration expirationDate];
    if (expirationDate2)
    {
      v15 = expirationDate2;
      v16 = @"SHARE_SCHEDULES_EDIT_EXPIRATION_DATE_TITLE";
      goto LABEL_9;
    }

    startDate2 = [possibleTimeConfiguration expirationDate];
    v15 = 0;
    v16 = @"SHARE_SCHEDULES_EDIT_EXPIRATION_DATE_TITLE";
  }

LABEL_12:

  v19 = [startDate2 laterDate:v11];

  startDate3 = [possibleTimeConfiguration startDate];
  v21 = [startDate3 laterDate:v11];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v11;
  }

  v24 = v23;

  expirationDate3 = [possibleTimeConfiguration expirationDate];
  v26 = [expirationDate3 laterDate:v11];

  v27 = PKLocalizedShareableCredentialString(&v16->isa);
  v28 = [[PKPassShareSelectDateViewController alloc] initWithDate:v19 minimumDate:v24 maximumDate:v26 title:v27];
  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __84__PKPassShareTimeLimitViewController__showTimeLimitEditForStartDate_expirationDate___block_invoke;
  v33[3] = &unk_1E8013880;
  objc_copyWeak(&v36, &location);
  v29 = v9;
  v34 = v29;
  v30 = possibleTimeConfiguration;
  v35 = v30;
  v37 = v32;
  [(PKPassShareSelectDateViewController *)v28 setDateChangeHandler:v33];
  navigationController = [(PKPassShareTimeLimitViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_pushViewController:v28];
  }

  else
  {
    [navigationController pushViewController:v28 animated:1];
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __84__PKPassShareTimeLimitViewController__showTimeLimitEditForStartDate_expirationDate___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) timeConfiguration];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [*(a1 + 40) copy];
    }

    v7 = v6;

    if (*(a1 + 56) == 1)
    {
      v8 = PKStartOfDay();
      [v7 setStartDate:v8];
      v9 = [v7 expirationDate];
      if (!v9 || [v14 compare:v9] != 1)
      {
        goto LABEL_16;
      }

      v10 = [*(a1 + 40) expirationDate];
      v11 = PKStartOfDay();
      [v7 setExpirationDate:v11];
    }

    else
    {
      v8 = PKEndOfDay();
      [v7 setExpirationDate:v8];
      v9 = [v7 startDate];
      if (!v9 || [v14 compare:v9] != -1)
      {
        goto LABEL_16;
      }

      v12 = [*(a1 + 40) startDate];
      v10 = v12;
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      [v7 setStartDate:v13];
    }

LABEL_16:
    [WeakRetained timeConfigurationDidChange:v7];
    [WeakRetained reloadDataAnimated:1];
  }
}

@end