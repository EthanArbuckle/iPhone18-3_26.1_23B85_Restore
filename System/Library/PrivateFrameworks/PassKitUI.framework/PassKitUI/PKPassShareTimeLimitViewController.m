@interface PKPassShareTimeLimitViewController
- (PKPassShareTimeLimitViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 entitlementEntry:(id)a5 delegate:(id)a6;
- (void)_configureSections;
- (void)_showTimeLimitEditForStartDate:(BOOL)a3 expirationDate:(BOOL)a4;
- (void)timeConfigurationDidChange:(id)a3;
- (void)toggle:(id)a3 valueDidChange:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation PKPassShareTimeLimitViewController

- (PKPassShareTimeLimitViewController)initWithMode:(unint64_t)a3 entitlementComposer:(id)a4 entitlementEntry:(id)a5 delegate:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PKPassShareTimeLimitViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v17 initWithContext:0];
  v15 = v14;
  if (v14)
  {
    v14->_mode = a3;
    objc_storeStrong(&v14->_entitlementComposer, a4);
    objc_storeStrong(&v15->_entitlementEntry, a5);
    objc_storeStrong(&v15->_delegate, a6);
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
    v5 = v3;
  }

  else
  {
    v5 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  }

  v6 = v5;

  v7 = [v6 possibleTimeConfiguration];
  v8 = [v6 timeConfiguration];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 copy];
  }

  v41 = v10;

  entitlementEntry = self->_entitlementEntry;
  v12 = [v6 isManagingTimeConfiguration];
  v13 = v12 ^ 1u;
  if (entitlementEntry)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v7 support];
  v40 = [(PKPassEntitlementsComposer *)self->_entitlementComposer editable];
  if (!entitlementEntry)
  {
    v16 = 0;
LABEL_14:
    scheduleSectionController = self->_scheduleSectionController;
    if (scheduleSectionController)
    {
      [(PKPassShareScheduleSectionController *)scheduleSectionController setConfiguration:v41];
      [(PKPassShareScheduleSectionController *)self->_scheduleSectionController setIsDisabled:v13];
    }

    else
    {
      v18 = [[PKPassShareScheduleSectionController alloc] initWithConfiguration:v41 possibleTimeConfiguration:v7 isEditable:v40 isDisabled:v13 delegate:self];
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

  v16 = [v6 enabled];
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_18:
  entitlementAccessSectionController = self->_entitlementAccessSectionController;
  if (!entitlementAccessSectionController)
  {
    v21 = [PKPassShareToggleSectionController alloc];
    v22 = PKLocalizedShareableCredentialString(&cfstr_ShareableEntit.isa);
    v23 = [(PKPassShareToggleSectionController *)v21 initWithIdentifier:@"EntitlementAccessToggle" title:v22 toggleValue:v16 isEditable:v40 delegate:self];
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
      [(PKPassEntitlementCapabilitySectionController *)capabilitySectionController setIsDisabled:v16 ^ 1];
    }

    else
    {
      v26 = [[PKPassEntitlementCapabilitySectionController alloc] initWithMode:self->_mode entitlementComposer:self->_entitlementComposer composerView:v6 isDisabled:v16 ^ 1 delegate:self];
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
  if (v15 > 2)
  {
    v28 = 1;
  }

  else
  {
    v28 = v14;
  }

  if (!v16 && v28)
  {
    advancedScheduleSectionController = self->_advancedScheduleSectionController;
    if (!advancedScheduleSectionController)
    {
      v30 = [PKPassShareToggleSectionController alloc];
      v31 = PKLocalizedShareableCredentialString(&cfstr_ShareScheduleA.isa);
      v32 = [(PKPassShareToggleSectionController *)v30 initWithIdentifier:@"AdvancedScheduleToggle" title:v31 toggleValue:v14 isEditable:v40 delegate:self];
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

  v38 = [(PKDynamicCollectionViewController *)self sections];
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
    v4 = [(PKPassEntitlementsComposerEntry *)entitlementEntry displayableEntitlement];
    v5 = [v4 localizedTitle];
    [(PKPassShareTimeLimitViewController *)self setTitle:v5];
  }

  else
  {
    v4 = PKLocalizedShareableCredentialString(&cfstr_ShareSchedules_3.isa);
    [(PKPassShareTimeLimitViewController *)self setTitle:v4];
  }
}

- (void)toggle:(id)a3 valueDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v15 = v6;
  if (v6 == @"AdvancedScheduleToggle")
  {
    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [(__CFString *)v6 isEqualToString:@"AdvancedScheduleToggle"];

  if (v7)
  {
LABEL_4:
    v8 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
    [v8 setIsManagingTimeConfiguration:v4 ^ 1];
LABEL_5:

    goto LABEL_6;
  }

  v9 = v15;
  if (v9 == @"EntitlementAccessToggle" || (v10 = v9, v11 = [(__CFString *)v9 isEqualToString:@"EntitlementAccessToggle"], v10, v11))
  {
    if (v4)
    {
      v12 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
      v13 = [v12 maxSelectionCount];

      if (v13 == 1)
      {
        v14 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
        [v14 setEnabled:0];
      }
    }

    v8 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:self->_entitlementEntry];
    [v8 setEnabled:v4];
    goto LABEL_5;
  }

LABEL_6:
  [(PKPassShareTimeLimitViewController *)self _configureSections];
  [(PKDynamicCollectionViewController *)self reloadDataForSection:self->_scheduleSectionController animated:1];
}

- (void)timeConfigurationDidChange:(id)a3
{
  entitlementComposer = self->_entitlementComposer;
  entitlementEntry = self->_entitlementEntry;
  v6 = a3;
  v7 = [(PKPassEntitlementsComposer *)entitlementComposer viewFor:entitlementEntry];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  }

  v10 = v9;

  [v10 setTimeConfiguration:v6];
  [(PKPassShareScheduleSectionController *)self->_scheduleSectionController setConfiguration:v6];
}

- (void)_showTimeLimitEditForStartDate:(BOOL)a3 expirationDate:(BOOL)a4
{
  v4 = a3;
  v6 = [(PKPassEntitlementsComposer *)self->_entitlementComposer viewFor:self->_entitlementEntry, a4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  }

  v9 = v8;

  v10 = [v9 possibleTimeConfiguration];
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v9 timeConfiguration];
  v13 = v12;
  v32 = v4;
  if (v4)
  {
    v14 = [v12 startDate];
    if (v14)
    {
      v15 = v14;
      v16 = @"SHARE_SCHEDULES_EDIT_START_DATE_TITLE";
LABEL_9:
      v18 = v15;
      goto LABEL_12;
    }

    v18 = [v10 startDate];
    v15 = 0;
    v16 = @"SHARE_SCHEDULES_EDIT_START_DATE_TITLE";
  }

  else
  {
    v17 = [v12 expirationDate];
    if (v17)
    {
      v15 = v17;
      v16 = @"SHARE_SCHEDULES_EDIT_EXPIRATION_DATE_TITLE";
      goto LABEL_9;
    }

    v18 = [v10 expirationDate];
    v15 = 0;
    v16 = @"SHARE_SCHEDULES_EDIT_EXPIRATION_DATE_TITLE";
  }

LABEL_12:

  v19 = [v18 laterDate:v11];

  v20 = [v10 startDate];
  v21 = [v20 laterDate:v11];
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

  v25 = [v10 expirationDate];
  v26 = [v25 laterDate:v11];

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
  v30 = v10;
  v35 = v30;
  v37 = v32;
  [(PKPassShareSelectDateViewController *)v28 setDateChangeHandler:v33];
  v31 = [(PKPassShareTimeLimitViewController *)self navigationController];
  if ([v31 pk_settings_useStateDrivenNavigation])
  {
    [v31 pk_settings_pushViewController:v28];
  }

  else
  {
    [v31 pushViewController:v28 animated:1];
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