@interface SUSUISoftwareUpdateBetaUpdatesController
- (PSSpecifier)appleIDGroupSpecifier;
- (PSSpecifier)appleIDSpecifier;
- (PSSpecifier)mismatchedSpecifier;
- (PSSpecifier)unavailableProgramNoticeSpecifier;
- (id)_specifierForBetaProgram:(id)a3 rowIdentifier:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)presentAuthKitController;
- (void)presentAuthenticationDialog;
- (void)setMismatchedSpecifier:(id)a3;
- (void)setupProgramListSpecifiers;
- (void)setupProgramsGroupSpecifier;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateFooter;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SUSUISoftwareUpdateBetaUpdatesController

- (void)viewDidLoad
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = SUSUISoftwareUpdateBetaUpdatesController;
  [(SUSUISoftwareUpdateBetaUpdatesController *)&v5 viewDidLoad];
  [(SUSUISoftwareUpdateBetaUpdatesController *)v7 setIsBusy:0];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"GET_BETA_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  v2 = [(SUSUISoftwareUpdateBetaUpdatesController *)v7 navigationItem];
  [v2 setTitle:v3];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (void)viewDidAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = SUSUISoftwareUpdateBetaUpdatesController;
  [(SUSUISoftwareUpdateBetaUpdatesController *)&v6 viewDidAppear:a3];
  v3 = v9;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"GET_BETA_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  [PSListController addNavigationEventForSystemSettings:v3 andRelativeLinkToSoftwareUpdate:"addNavigationEventForSystemSettings:andRelativeLinkToSoftwareUpdate:"];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
}

- (id)specifiers
{
  v28 = self;
  v27 = a2;
  if (*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    for (i = 0; i < [*(&v28->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count]; ++i)
    {
      v21 = [*(&v28->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndexedSubscript:i];
      v20 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUSUISoftwareUpdateBetaUpdatesController isBusy](v28, "isBusy") ^ 1}];
      v2 = *MEMORY[0x277D3FF38];
      [v21 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
    }

    v29 = MEMORY[0x277D82BE0](*(&v28->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]));
  }

  else
  {
    [(SUSUISoftwareUpdateBetaUpdatesController *)v28 setupProgramsGroupSpecifier];
    [(SUSUISoftwareUpdateBetaUpdatesController *)v28 setupProgramListSpecifiers];
    [(SUSUISoftwareUpdateBetaUpdatesController *)v28 updateFooter];
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
    v15 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 programsGroup];
    [v25 addObject:?];
    MEMORY[0x277D82BD8](v15);
    v16 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 programsList];
    [v25 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v16);
    v17 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 appleIDGroupSpecifier];
    [v25 addObject:?];
    MEMORY[0x277D82BD8](v17);
    v18 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 mismatchedSpecifier];
    v23 = 0;
    v19 = 1;
    if (!v18)
    {
      v24 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 updateController];
      v23 = 1;
      v19 = [v24 betaUpdatesHasInstallationRestriction] != 0;
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    MEMORY[0x277D82BD8](v18);
    if (v19)
    {
      v14 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 unavailableProgramNoticeSpecifier];
      [v25 addObject:?];
      MEMORY[0x277D82BD8](v14);
    }

    v13 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 appleIDSpecifier];
    MEMORY[0x277D82BD8](v13);
    if (v13)
    {
      v12 = [(SUSUISoftwareUpdateBetaUpdatesController *)v28 appleIDSpecifier];
      [v25 addObject:?];
      MEMORY[0x277D82BD8](v12);
    }

    for (j = 0; j < [v25 count]; ++j)
    {
      v11 = [v25 objectAtIndexedSubscript:j];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUSUISoftwareUpdateBetaUpdatesController isBusy](v28, "isBusy") ^ 1}];
      v3 = *MEMORY[0x277D3FF38];
      [v11 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }

    v4 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
    v9 = MEMORY[0x277D3FC48];
    v5 = (v28 + *MEMORY[0x277D3FC48]);
    v6 = *v5;
    *v5 = v4;
    MEMORY[0x277D82BD8](v6);
    v29 = MEMORY[0x277D82BE0](*(&v28->super.super.super.super.super.isa + *v9));
    objc_storeStrong(&v25, 0);
  }

  v7 = v29;

  return v7;
}

- (void)setMismatchedSpecifier:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_mismatchedSpecifier, location[0]);
  objc_storeStrong(&v4->_appleIDSpecifier, 0);
  objc_storeStrong(&v4->_appleIDGroupSpecifier, 0);
  objc_storeStrong(location, 0);
}

- (PSSpecifier)appleIDGroupSpecifier
{
  if (!self->_appleIDGroupSpecifier)
  {
    v2 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BETA_PROGRAMS_APPLE_ID_GROUP"];
    appleIDGroupSpecifier = self->_appleIDGroupSpecifier;
    self->_appleIDGroupSpecifier = v2;
    MEMORY[0x277D82BD8](appleIDGroupSpecifier);
  }

  v4 = MEMORY[0x277D82BE0](self->_appleIDGroupSpecifier);

  return v4;
}

- (PSSpecifier)unavailableProgramNoticeSpecifier
{
  v38 = self;
  v37[1] = a2;
  if (self->_unavailableProgramNoticeSpecifier)
  {
    v39 = MEMORY[0x277D82BE0](v38->_unavailableProgramNoticeSpecifier);
  }

  else
  {
    v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_287B79370 target:0 set:0 get:0 detail:0 cell:4 edit:0];
    v30 = 0x2803D8000uLL;
    unavailableProgramNoticeSpecifier = v38->_unavailableProgramNoticeSpecifier;
    v38->_unavailableProgramNoticeSpecifier = v2;
    MEMORY[0x277D82BD8](unavailableProgramNoticeSpecifier);
    v31 = *(&v38->super.super.super.super.super.isa + *(v30 + 1996));
    [v31 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    v32 = [(SUSUISoftwareUpdateBetaUpdatesController *)v38 updateController];
    v37[0] = [v32 betaUpdatesAppleID];
    MEMORY[0x277D82BD8](v32);
    v36 = 0;
    v33 = [(SUSUISoftwareUpdateBetaUpdatesController *)v38 updateController];
    v34 = [v33 betaUpdatesHasInstallationRestriction];
    MEMORY[0x277D82BD8](v33);
    v35 = v34;
    if (v34 == 2)
    {
      v28 = MEMORY[0x277CCA8D8];
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = [v29 localizedStringForKey:@"BETA_UPDATES_MDM_RESTRICTED" value:&stru_287B79370 table:@"Software Update"];
      v5 = v36;
      v36 = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v29);
    }

    else if (v35 == 1)
    {
      v26 = MEMORY[0x277CCA8D8];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v27 localizedStringForKey:@"BETA_UPDATES_LOCKDOWN_RESTRICTED" value:&stru_287B79370 table:@"Software Update"];
      v7 = v36;
      v36 = v6;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v27);
    }

    else if (v37[0])
    {
      v23 = MEMORY[0x277CCACA8];
      v22 = MEMORY[0x277CCA8D8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v25 localizedStringForKey:@"BETA_UPDATES_MISMATCHED_APPLE_ACCOUNT" value:&stru_287B79370 table:@"Software Update"];
      v8 = [v23 stringWithFormat:v37[0]];
      v9 = v36;
      v36 = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v18 = MEMORY[0x277CCA8D8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v21 localizedStringForKey:@"BETA_UPDATES_NO_APPLE_ACCOUNT" value:&stru_287B79370 table:@"Software Update"];
      v10 = [v19 stringWithFormat:?];
      v11 = v36;
      v36 = v10;
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
    }

    v15 = 0x2803D8000uLL;
    v12 = v38->_unavailableProgramNoticeSpecifier;
    location = &v36;
    [(PSSpecifier *)v12 setProperty:v36 forKey:*MEMORY[0x277D40160]];
    [*(&v38->super.super.super.super.super.isa + *(v15 + 1996)) setProperty:&unk_287B85588 forKey:*MEMORY[0x277D3FD68]];
    [*(&v38->super.super.super.super.super.isa + *(v15 + 1996)) setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [*(&v38->super.super.super.super.super.isa + *(v15 + 1996)) setProperty:@"BETA_PROGRAMS_NOTICE" forKey:*MEMORY[0x277D3FFB8]];
    v39 = MEMORY[0x277D82BE0](*(&v38->super.super.super.super.super.isa + *(v15 + 1996)));
    obj = 0;
    objc_storeStrong(location, 0);
    objc_storeStrong(v37, obj);
  }

  v13 = v39;

  return v13;
}

- (PSSpecifier)appleIDSpecifier
{
  v42 = v61;
  v43 = "[SUSUISoftwareUpdateBetaUpdatesController appleIDSpecifier]";
  v63 = *MEMORY[0x277D85DE8];
  v61[1] = self;
  v61[0] = a2;
  if (self->_appleIDSpecifier)
  {
    v42[2] = MEMORY[0x277D82BE0](*(v42[1] + 1488));
  }

  else
  {
    v40 = [v42[1] updateController];
    v41 = [v40 betaUpdatesHasInstallationRestriction];
    MEMORY[0x277D82BD8](v40);
    v60 = v41;
    if (v41)
    {
      location = _SUSUILoggingFacility();
      v58 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
      {
        log = location;
        *type = v58;
        buf = v62;
        __os_log_helper_16_2_2_8_32_8_0(v62, v43, v60);
        _os_log_impl(&dword_26AC94000, location, v58, "%s: Hiding Apple ID row - device has installation restriction (%ld).", v62, 0x16u);
      }

      objc_storeStrong(&location, 0);
      v42[2] = 0;
    }

    else
    {
      v35 = [v42[1] updateController];
      v57 = [v35 betaUpdatesAppleID];
      MEMORY[0x277D82BD8](v35);
      v56 = 0;
      v36 = [v42[1] mismatchedSpecifier];
      MEMORY[0x277D82BD8](v36);
      if (v36)
      {
        v54 = 0;
        v52 = 0;
        v50 = 0;
        v48 = 0;
        v46 = 0;
        v44 = 0;
        if (v57)
        {
          v32 = MEMORY[0x277CCACA8];
          v31 = MEMORY[0x277CCA8D8];
          v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v33 = 1;
          v54 = 1;
          v53 = [v55 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_MISMATCH_PROMPT" value:&stru_287B79370 table:@"Software Update"];
          v52 = 1;
          v51 = [v32 stringWithFormat:?];
          v50 = 1;
          obj = v51;
        }

        else
        {
          v29 = MEMORY[0x277CCACA8];
          v28 = MEMORY[0x277CCA8D8];
          v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v30 = 1;
          v48 = 1;
          v47 = [v49 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_PROMPT" value:&stru_287B79370 table:@"Software Update"];
          v46 = 1;
          v45 = [v29 stringWithFormat:?];
          v44 = 1;
          obj = v45;
        }

        objc_storeStrong(&v56, obj);
        if (v44)
        {
          MEMORY[0x277D82BD8](v45);
        }

        if (v46)
        {
          MEMORY[0x277D82BD8](v47);
        }

        if (v48)
        {
          MEMORY[0x277D82BD8](v49);
        }

        if (v50)
        {
          MEMORY[0x277D82BD8](v51);
        }

        if (v52)
        {
          MEMORY[0x277D82BD8](v53);
        }

        if (v54)
        {
          MEMORY[0x277D82BD8](v55);
        }
      }

      else if (v57)
      {
        v25 = MEMORY[0x277CCACA8];
        v24 = MEMORY[0x277CCA8D8];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = [v27 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_PREFIX" value:&stru_287B79370 table:@"Software Update"];
        v2 = [v25 stringWithFormat:v57];
        v3 = v56;
        v56 = v2;
        MEMORY[0x277D82BD8](v3);
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](v27);
      }

      else
      {
        v21 = MEMORY[0x277CCACA8];
        v20 = MEMORY[0x277CCA8D8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = [v23 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_PROMPT" value:&stru_287B79370 table:@"Software Update"];
        v4 = [v21 stringWithFormat:?];
        v5 = v56;
        v56 = v4;
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BD8](v23);
      }

      v18 = &v56;
      v6 = v42[1];
      v19 = 0;
      v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v56 target:v6 set:0 get:0 detail:0 cell:13 edit:0];
      v8 = v42[1];
      v17 = 0x2803D8000uLL;
      v8 += 186;
      v9 = *v8;
      *v8 = v7;
      MEMORY[0x277D82BD8](v9);
      [*(v42[1] + *(v17 + 1988)) setProperty:@"BETA_PROGRAMS_APPLE_ID" forKey:*MEMORY[0x277D3FFB8]];
      v10 = MEMORY[0x277D82BE0](*(v42[1] + *(v17 + 1988)));
      v11 = v19;
      v12 = v10;
      v13 = v18;
      v42[2] = v12;
      objc_storeStrong(v13, v11);
      objc_storeStrong(&v57, v19);
    }
  }

  v16 = v42[2];
  *MEMORY[0x277D85DE8];
  v14 = v16;

  return v14;
}

- (void)setupProgramsGroupSpecifier
{
  v4 = [(SUSUISoftwareUpdateBetaUpdatesController *)self programsGroup];
  MEMORY[0x277D82BD8](v4);
  if (!v4)
  {
    v2 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BETA_PROGRAMS_LIST_GROUP"];
    [(SUSUISoftwareUpdateBetaUpdatesController *)self setProgramsGroup:?];
    MEMORY[0x277D82BD8](v2);
    v3 = [(SUSUISoftwareUpdateBetaUpdatesController *)self programsGroup];
    [(PSSpecifier *)v3 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)updateFooter
{
  v23 = self;
  v22[1] = a2;
  v6 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"BETA_UPDATES_FOOTER"];
  v9 = [v11 localizedStringForKey:? value:? table:?];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:? value:? table:?];
  v22[0] = [v6 stringWithFormat:v9, v7];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = v22[0];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v14 localizedStringForKey:@"LEARN_MORE_LINK" value:&stru_287B79370 table:@"Software Update"];
  v21.location = [v12 rangeOfString:?];
  v21.length = v2;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v16 = [(SUSUISoftwareUpdateBetaUpdatesController *)v23 programsGroup];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v4 = *MEMORY[0x277D3FF48];
  [PSSpecifier setProperty:v16 forKey:"setProperty:forKey:"];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = [(SUSUISoftwareUpdateBetaUpdatesController *)v23 programsGroup];
  [(PSSpecifier *)v17 setProperty:v22[0] forKey:*MEMORY[0x277D3FF70]];
  MEMORY[0x277D82BD8](v17);
  v19 = [(SUSUISoftwareUpdateBetaUpdatesController *)v23 programsGroup];
  v18 = NSStringFromRange(v21);
  v5 = *MEMORY[0x277D3FF58];
  [PSSpecifier setProperty:v19 forKey:"setProperty:forKey:"];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v20 = [(SUSUISoftwareUpdateBetaUpdatesController *)v23 programsGroup];
  [(PSSpecifier *)v20 setProperty:@"https://beta.apple.com/" forKey:*MEMORY[0x277D3FF78]];
  MEMORY[0x277D82BD8](v20);
  objc_storeStrong(v22, 0);
}

- (void)setupProgramListSpecifiers
{
  v53 = *MEMORY[0x277D85DE8];
  v49 = self;
  v48[1] = a2;
  [(SUSUISoftwareUpdateBetaUpdatesController *)self setMismatchedSpecifier:?];
  v23 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 updateController];
  v48[0] = [v23 availableBetaPrograms];
  MEMORY[0x277D82BD8](v23);
  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v48[0], "count") + 2}];
  v24 = MEMORY[0x277D3FAD8];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v26 localizedStringForKey:@"OFF" value:&stru_287B79370 table:@"Software Update"];
  v46 = [v24 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  [v46 setProperty:@"BETA_PROGRAMS_OFF_SELECTION" forKey:*MEMORY[0x277D3FFB8]];
  v27 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 updateController];
  v45 = [v27 enrolledBetaProgram];
  MEMORY[0x277D82BD8](v27);
  v28 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 updateController];
  v29 = [v28 enrolledBetaProgram];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v28);
  if (!v29)
  {
    v22 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 programsGroup];
    [(PSSpecifier *)v22 setProperty:v46 forKey:*MEMORY[0x277D40090]];
    MEMORY[0x277D82BD8](v22);
  }

  [v47 addObject:v46];
  v43 = 0;
  v41 = 0;
  LOBYTE(v21) = 0;
  if (v45)
  {
    v44 = [v48[0] valueForKey:@"programID"];
    v43 = 1;
    v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "programID")}];
    v41 = 1;
    v21 = [v44 containsObject:?] ^ 1;
  }

  if (v41)
  {
    MEMORY[0x277D82BD8](v42);
  }

  if (v43)
  {
    MEMORY[0x277D82BD8](v44);
  }

  if (v21)
  {
    v40 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 _specifierForBetaProgram:v45 rowIdentifier:@"BETA_PROGRAMS_UNAVAILABLE_PROGRAM"];
    [v47 addObject:v40];
    v20 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 programsGroup];
    [(PSSpecifier *)v20 setProperty:v40 forKey:*MEMORY[0x277D40090]];
    MEMORY[0x277D82BD8](v20);
    [(SUSUISoftwareUpdateBetaUpdatesController *)v49 setMismatchedSpecifier:v40];
    objc_storeStrong(&v40, 0);
  }

  v18 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 updateController];
  v19 = [v18 betaUpdatesHasInstallationRestriction];
  MEMORY[0x277D82BD8](v18);
  v39 = v19;
  v38 = v19 == 0;
  oslog = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v16 = type;
    v17 = SUBetaUpdatesRestrictionToString(v39);
    v35 = MEMORY[0x277D82BE0](v17);
    __os_log_helper_16_2_3_8_32_8_64_8_0(v52, "[SUSUISoftwareUpdateBetaUpdatesController setupProgramListSpecifiers]", v35, v39);
    _os_log_impl(&dword_26AC94000, log, v16, "%s: Beta program restriction type: %@ (%ld)", v52, 0x20u);
    MEMORY[0x277D82BD8](v17);
    objc_storeStrong(&v35, 0);
  }

  objc_storeStrong(&oslog, 0);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v48[0]);
  v14 = [obj countByEnumeratingWithState:__b objects:v51 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(__b[1] + 8 * v11);
      v8 = [v34 title];
      MEMORY[0x277D82BD8](v8);
      if (v8)
      {
        v7 = [v45 programID];
        v32 = v7 == [v34 programID];
        v31 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 _specifierForBetaProgram:v34 rowIdentifier:0];
        if (v32)
        {
          v6 = [(SUSUISoftwareUpdateBetaUpdatesController *)v49 programsGroup];
          [(PSSpecifier *)v6 setProperty:v31 forKey:*MEMORY[0x277D40090]];
          MEMORY[0x277D82BD8](v6);
          [v47 addObject:v31];
        }

        else if (v38)
        {
          [v47 addObject:v31];
        }

        else
        {
          v30 = _SUSUILoggingFacility();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v4 = v30;
            v5 = [v34 title];
            if (v5)
            {
              v3 = v5;
            }

            else
            {
              v3 = @"(null)");
            }

            __os_log_helper_16_2_2_8_32_8_66(v50, "[SUSUISoftwareUpdateBetaUpdatesController setupProgramListSpecifiers]", v3);
            _os_log_impl(&dword_26AC94000, v4, OS_LOG_TYPE_DEFAULT, "%s: Skipping adding %{public}@ to program list", v50, 0x16u);
            MEMORY[0x277D82BD8](v5);
          }

          objc_storeStrong(&v30, 0);
        }

        objc_storeStrong(&v31, 0);
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v51 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v2 = [MEMORY[0x277CBEA60] arrayWithArray:v47];
  [(SUSUISoftwareUpdateBetaUpdatesController *)v49 setProgramsList:?];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(v48, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_specifierForBetaProgram:(id)a3 rowIdentifier:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v8 = MEMORY[0x277D3FAD8];
  v9 = [location[0] title];
  v11 = [v8 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  MEMORY[0x277D82BD8](v9);
  if (v12)
  {
    [v11 setProperty:v12 forKey:*MEMORY[0x277D3FFB8]];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "programID")}];
    v10 = [v6 stringValue];
    MEMORY[0x277D82BD8](v6);
    [v11 setUserInfo:location[0]];
    [v11 setProperty:v10 forKey:*MEMORY[0x277D3FFB8]];
    objc_storeStrong(&v10, 0);
  }

  [v11 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = 0;
  objc_storeStrong(&v53, a4);
  v52.receiver = v55;
  v52.super_class = SUSUISoftwareUpdateBetaUpdatesController;
  [(SUSUISoftwareUpdateBetaUpdatesController *)&v52 tableView:location[0] didSelectRowAtIndexPath:v53];
  v51 = [(SUSUISoftwareUpdateBetaUpdatesController *)v55 specifierAtIndexPath:v53];
  v50 = [v51 propertyForKey:*MEMORY[0x277D3FFB8]];
  if ([v50 isEqualToString:@"BETA_PROGRAMS_OFF_SELECTION"])
  {
    v49 = _SUSUILoggingFacility();
    v48 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v58, "[SUSUISoftwareUpdateBetaUpdatesController tableView:didSelectRowAtIndexPath:]");
      _os_log_impl(&dword_26AC94000, v49, v48, "%s: Unenrolling from beta updates", v58, 0xCu);
    }

    objc_storeStrong(&v49, 0);
    v18 = MEMORY[0x277D82BE0](v55);
    objc_sync_enter(v18);
    if ([(SUSUISoftwareUpdateBetaUpdatesController *)v55 isBusy])
    {
      v47 = 1;
    }

    else
    {
      [(SUSUISoftwareUpdateBetaUpdatesController *)v55 setIsBusy:1];
      v47 = 0;
    }

    objc_sync_exit(v18);
    MEMORY[0x277D82BD8](v18);
    if (!v47)
    {
      [(SUSUISoftwareUpdateBetaUpdatesController *)v55 reloadSpecifiers];
      v17 = [(SUSUISoftwareUpdateBetaUpdatesController *)v55 updateController];
      v41 = MEMORY[0x277D85DD0];
      v42 = -1073741824;
      v43 = 0;
      v44 = __78__SUSUISoftwareUpdateBetaUpdatesController_tableView_didSelectRowAtIndexPath___block_invoke;
      v45 = &unk_279CB98E8;
      v46 = MEMORY[0x277D82BE0](v55);
      [v17 unenrollFromBetaProgramsWithCompletion:&v41];
      MEMORY[0x277D82BD8](v17);
      v16 = [(SUSUISoftwareUpdateBetaUpdatesController *)v55 programsGroup];
      [(PSSpecifier *)v16 setProperty:v51 forKey:*MEMORY[0x277D40090]];
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v46, 0);
LABEL_41:
      v47 = 0;
    }
  }

  else
  {
    if ([v50 isEqualToString:@"BETA_PROGRAMS_APPLE_ID"])
    {
      v40 = _SUSUILoggingFacility();
      v39 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v57, "[SUSUISoftwareUpdateBetaUpdatesController tableView:didSelectRowAtIndexPath:]");
        _os_log_impl(&dword_26AC94000, v40, v39, "%s: Switch Beta Apple ID button tapped.", v57, 0xCu);
      }

      objc_storeStrong(&v40, 0);
      v14 = [(SUSUISoftwareUpdateBetaUpdatesController *)v55 mismatchedSpecifier];
      v37 = 0;
      v35 = 0;
      v15 = 1;
      if (!v14)
      {
        v38 = [MEMORY[0x277D4D310] sharedManager];
        v37 = 1;
        v36 = [v38 seedingAppleIDUsernameForCurrentDevice];
        v35 = 1;
        v15 = v36 == 0;
      }

      if (v35)
      {
        MEMORY[0x277D82BD8](v36);
      }

      if (v37)
      {
        MEMORY[0x277D82BD8](v38);
      }

      MEMORY[0x277D82BD8](v14);
      if (v15)
      {
        [(SUSUISoftwareUpdateBetaUpdatesController *)v55 presentAuthKitController];
      }

      else
      {
        [(SUSUISoftwareUpdateBetaUpdatesController *)v55 presentAuthenticationDialog];
      }

      goto LABEL_41;
    }

    v13 = [v51 userInfo];
    objc_opt_class();
    LOBYTE(v12) = 0;
    if (objc_opt_isKindOfClass())
    {
      v12 = [v50 isEqualToString:@"BETA_PROGRAMS_UNAVAILABLE_PROGRAM"] ^ 1;
    }

    MEMORY[0x277D82BD8](v13);
    if ((v12 & 1) == 0)
    {
      goto LABEL_41;
    }

    v34 = [v51 userInfo];
    v11 = [(SUSUISoftwareUpdateBetaUpdatesController *)v55 updateController];
    v9 = [v11 enrolledBetaProgram];
    v32 = 0;
    v30 = 0;
    v10 = 0;
    if (v9)
    {
      v10 = 0;
      if (v34)
      {
        v33 = [(SUSUISoftwareUpdateBetaUpdatesController *)v55 updateController];
        v32 = 1;
        v31 = [v33 enrolledBetaProgram];
        v30 = 1;
        v8 = [v31 programID];
        v10 = v8 == [v34 programID];
      }
    }

    if (v30)
    {
      MEMORY[0x277D82BD8](v31);
    }

    if (v32)
    {
      MEMORY[0x277D82BD8](v33);
    }

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v11);
    if (v10)
    {
      v47 = 1;
    }

    else
    {
      v7 = MEMORY[0x277D82BE0](v55);
      objc_sync_enter(v7);
      if ([(SUSUISoftwareUpdateBetaUpdatesController *)v55 isBusy])
      {
        v47 = 1;
      }

      else
      {
        [(SUSUISoftwareUpdateBetaUpdatesController *)v55 setIsBusy:1];
        v47 = 0;
      }

      objc_sync_exit(v7);
      MEMORY[0x277D82BD8](v7);
      if (!v47)
      {
        [(SUSUISoftwareUpdateBetaUpdatesController *)v55 reloadSpecifiers];
        oslog = _SUSUILoggingFacility();
        v28 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_32_8_0(v56, "-[SUSUISoftwareUpdateBetaUpdatesController tableView:didSelectRowAtIndexPath:]", [v34 programID]);
          _os_log_impl(&dword_26AC94000, oslog, v28, "%s: Enrolling in program %ld", v56, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        v6 = [(SUSUISoftwareUpdateBetaUpdatesController *)v55 updateController];
        v4 = v34;
        v5 = v55;
        v20 = MEMORY[0x277D85DD0];
        v21 = -1073741824;
        v22 = 0;
        v23 = __78__SUSUISoftwareUpdateBetaUpdatesController_tableView_didSelectRowAtIndexPath___block_invoke_370;
        v24 = &unk_279CB9820;
        v25 = MEMORY[0x277D82BE0](v34);
        v26 = MEMORY[0x277D82BE0](v55);
        v27 = MEMORY[0x277D82BE0](v51);
        [v6 setBetaProgramFromUI:v4 forViewController:v5 withCompletion:&v20];
        MEMORY[0x277D82BD8](v6);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v25, 0);
        v47 = 0;
      }
    }

    objc_storeStrong(&v34, 0);
    if (!v47)
    {
      goto LABEL_41;
    }
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __78__SUSUISoftwareUpdateBetaUpdatesController_tableView_didSelectRowAtIndexPath___block_invoke(void *a1, char a2)
{
  v14 = a1;
  v13 = a2;
  v12[1] = a1;
  when = dispatch_time(0, 1000000000);
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __78__SUSUISoftwareUpdateBetaUpdatesController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  v11 = &unk_279CB93E8;
  v12[0] = MEMORY[0x277D82BE0](a1[4]);
  dispatch_after(when, queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v12, 0);
}

void __78__SUSUISoftwareUpdateBetaUpdatesController_tableView_didSelectRowAtIndexPath___block_invoke_370(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v17 = a2;
  location[1] = a1;
  location[0] = _SUSUILoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = "Sucessfully enroll";
    if ((v17 & 1) == 0)
    {
      v2 = "Failed to enroll";
    }

    __os_log_helper_16_2_3_8_32_8_32_8_0(v19, "-[SUSUISoftwareUpdateBetaUpdatesController tableView:didSelectRowAtIndexPath:]_block_invoke", v2, [*(a1 + 32) programID]);
    _os_log_impl(&dword_26AC94000, location[0], v15, "%s: %s in program %ld", v19, 0x20u);
  }

  objc_storeStrong(location, 0);
  if (v17)
  {
    v7 = [*(a1 + 40) programsGroup];
    [v7 setProperty:*(a1 + 48) forKey:*MEMORY[0x277D40090]];
    MEMORY[0x277D82BD8](v7);
  }

  when = dispatch_time(0, 1000000000);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __78__SUSUISoftwareUpdateBetaUpdatesController_tableView_didSelectRowAtIndexPath___block_invoke_373;
  v13 = &unk_279CB93E8;
  v14 = MEMORY[0x277D82BE0](*(a1 + 40));
  dispatch_after(when, queue, &v9);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v17.receiver = v21;
  v17.super_class = SUSUISoftwareUpdateBetaUpdatesController;
  v18 = [(SUSUISoftwareUpdateBetaUpdatesController *)&v17 tableView:location[0] cellForRowAtIndexPath:v19];
  v16 = [(SUSUISoftwareUpdateBetaUpdatesController *)v21 specifierAtIndexPath:v19];
  v15 = [v16 propertyForKey:*MEMORY[0x277D3FFB8]];
  if ([v15 isEqualToString:@"BETA_PROGRAMS_NOTICE"])
  {
    v14 = MEMORY[0x277D82BE0](v18);
    v6 = [v14 detailTextLabel];
    [v6 setNumberOfLines:0];
    MEMORY[0x277D82BD8](v6);
    v10 = [v14 imageView];
    v7 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277D755D0] configurationWithScale:3];
    v8 = [v7 systemImageNamed:@"exclamationmark.triangle.fill" withConfiguration:?];
    [v10 setImage:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v12 = [v14 imageView];
    v11 = [MEMORY[0x277D75348] systemYellowColor];
    [v12 setTintColor:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v14, 0);
  }

  v5 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)presentAuthenticationDialog
{
  v70 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v38 = [MEMORY[0x277D4D310] sharedManager];
  v68 = [v38 seedingAppleIDUsernameForCurrentDevice];
  MEMORY[0x277D82BD8](v38);
  v36 = [MEMORY[0x277D4D310] sharedManager];
  v37 = [v36 isCurrentDeviceUsingSeedingAppleID];
  MEMORY[0x277D82BD8](v36);
  v67 = v37;
  v66 = 0;
  if (v68)
  {
    v32 = MEMORY[0x277CCACA8];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v31 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_AUTHENTICATION_ALERT_MESSAGE" value:&stru_287B79370 table:@"Software Update"];
    v4 = [v32 stringWithFormat:v68];
    v5 = v66;
    v66 = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
  }

  else
  {
    v35 = MEMORY[0x277CCACA8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v34 localizedStringForKey:@"BETA_UPDATES_AUTHENTICATION_NO_APPLE_ACCOUNT_MESSAGE" value:&stru_287B79370 table:@"Software Update"];
    v2 = [v35 stringWithFormat:?];
    v3 = v66;
    v66 = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
  }

  v28 = MEMORY[0x277D75110];
  v29 = MEMORY[0x277CCACA8];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v27 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_AUTHENTICATION_TITLE" value:&stru_287B79370 table:@"Software Update"];
  v25 = [v29 stringWithFormat:?];
  v65 = [v28 alertControllerWithTitle:? message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v22 = v65;
  v23 = MEMORY[0x277D750F8];
  v24 = MEMORY[0x277CCACA8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v21 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_MISMATCH_PROMPT" value:&stru_287B79370 table:@"Software Update"];
  v19 = [v24 stringWithFormat:?];
  v59 = MEMORY[0x277D85DD0];
  v60 = -1073741824;
  v61 = 0;
  v62 = __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke;
  v63 = &unk_279CBB350;
  objc_copyWeak(&v64, location);
  v18 = [v23 actionWithTitle:v19 style:0 handler:&v59];
  [v22 addAction:?];
  v58 = 0;
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  if (v67)
  {
    v17 = [MEMORY[0x277D4D310] sharedManager];
    v57 = [v17 deviceAppleIDUsernameForCurrentDevice];
    MEMORY[0x277D82BD8](v17);
    v54 = 0;
    v52 = 0;
    v50 = 0;
    v48 = 0;
    v46 = 0;
    if (v57)
    {
      v16 = MEMORY[0x277CCACA8];
      v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v54 = 1;
      v53 = [v55 localizedStringForKey:@"BETA_UPDATES_SIGN_OUT_APPLE_ACCOUNT" value:&stru_287B79370 table:@"Software Update"];
      v52 = 1;
      v51 = [v16 stringWithFormat:v57];
      v50 = 1;
      v6 = MEMORY[0x277D82BE0](v51);
    }

    else
    {
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = 1;
      v47 = [v49 localizedStringForKey:@"BETA_UPDATES_SIGN_OUT" value:&stru_287B79370 table:@"Software Update"];
      v46 = 1;
      v6 = MEMORY[0x277D82BE0](v47);
    }

    v56 = v6;
    if (v46)
    {
      MEMORY[0x277D82BD8](v47);
    }

    if (v48)
    {
      MEMORY[0x277D82BD8](v49);
    }

    if (v50)
    {
      MEMORY[0x277D82BD8](v51);
    }

    if (v52)
    {
      MEMORY[0x277D82BD8](v53);
    }

    if (v54)
    {
      MEMORY[0x277D82BD8](v55);
    }

    v13 = v65;
    v15 = MEMORY[0x277D750F8];
    v14 = v56;
    v39 = MEMORY[0x277D85DD0];
    v40 = -1073741824;
    v41 = 0;
    v42 = __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke_400;
    v43 = &unk_279CBB3C8;
    objc_copyWeak(&v45, location);
    v44 = MEMORY[0x277D82BE0](v70);
    v12 = [v15 actionWithTitle:v14 style:0 handler:&v39];
    [v13 addAction:?];
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v44, 0);
    objc_destroyWeak(&v45);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v57, 0);
  }

  v10 = v65;
  v11 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"CANCEL" value:&stru_287B79370 table:@"Software Update"];
  v7 = [v11 actionWithTitle:? style:? handler:?];
  [v10 addAction:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  [(SUSUISoftwareUpdateBetaUpdatesController *)v70 presentViewController:v65 animated:1 completion:0];
  objc_destroyWeak(&v64);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v68, 0);
  objc_destroyWeak(location);
}

void __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke(id *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v6, "[SUSUISoftwareUpdateBetaUpdatesController presentAuthenticationDialog]_block_invoke");
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: Asked to use a different account.", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [v4[0] presentAuthKitController];
  objc_storeStrong(v4, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke_400(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277D4D310] sharedManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke_2;
  v8 = &unk_279CBB3A0;
  v9 = MEMORY[0x277D82BE0](v11[0]);
  v10 = MEMORY[0x277D82BE0](*(a1 + 32));
  [v3 deleteSeedingAppleAccountForCurrentDeviceWithCompletion:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(location, 0);
}

void __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  if (location[0])
  {
    v12[0] = _SUSUILoggingFacility();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUSUISoftwareUpdateBetaUpdatesController presentAuthenticationDialog]_block_invoke_2", location[0]);
      _os_log_error_impl(&dword_26AC94000, v12[0], v11, "%s: Failed to delete seeding data. Error: %{public}@.", v14, 0x16u);
    }

    objc_storeStrong(v12, 0);
  }

  v3 = [*(a1 + 32) updateController];
  v2 = [v3 manager];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke_401;
  v9 = &unk_279CBB378;
  v10 = MEMORY[0x277D82BE0](*(a1 + 40));
  [v2 refreshBetaUpdates:&v5];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke_401(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_66(v8, "[SUSUISoftwareUpdateBetaUpdatesController presentAuthenticationDialog]_block_invoke", v6);
    _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Beta Updates have been refreshed. Error: %{public}@.", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa reloadSpecifiers];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __71__SUSUISoftwareUpdateBetaUpdatesController_presentAuthenticationDialog__block_invoke_407(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

- (void)presentAuthKitController
{
  v23 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v21 = objc_alloc_init(MEMORY[0x277CF0380]);
  [v21 setShouldAllowAppleIDCreation:0];
  [v21 setAuthenticationType:2];
  [v21 setPresentingViewController:v23];
  [v21 setIsEphemeral:0];
  v12 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_AUTHENTICATION_TITLE" value:&stru_287B79370 table:@"Software Update"];
  v9 = [v12 stringWithFormat:?];
  [v21 setTitle:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v8 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v7 localizedStringForKey:@"BETA_UPDATES_APPLE_ACCOUNT_AUTHENTICATION_PROMPT" value:&stru_287B79370 table:@"Software Update"];
  v5 = [v8 stringWithFormat:?];
  [v21 setReason:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v4 = objc_alloc(MEMORY[0x277CF0178]);
  v20 = [v4 initWithIdentifier:*MEMORY[0x277D4D328]];
  v3 = v20;
  v2 = v21;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __68__SUSUISoftwareUpdateBetaUpdatesController_presentAuthKitController__block_invoke;
  v17 = &unk_279CBB3F0;
  objc_copyWeak(&v19, location);
  v18 = MEMORY[0x277D82BE0](v23);
  [v3 authenticateWithContext:v2 completion:&v13];
  objc_storeStrong(&v18, 0);
  objc_destroyWeak(&v19);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_destroyWeak(location);
}

void __68__SUSUISoftwareUpdateBetaUpdatesController_presentAuthKitController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  v20[0] = objc_loadWeakRetained((a1 + 40));
  objc_storeStrong((*(a1 + 32) + 1488), 0);
  if (v21)
  {
    v19 = _SUSUILoggingFacility();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUSUISoftwareUpdateBetaUpdatesController presentAuthKitController]_block_invoke", v21);
      _os_log_error_impl(&dword_26AC94000, v19, v18, "%s: Beta Updates failed to log in: %{public}@", v24, 0x16u);
    }

    objc_storeStrong(&v19, 0);
    v17 = 1;
  }

  else
  {
    v16 = _SUSUILoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v23, "[SUSUISoftwareUpdateBetaUpdatesController presentAuthKitController]_block_invoke");
      _os_log_impl(&dword_26AC94000, v16, v15, "%s: Beta Updates successfully log in", v23, 0xCu);
    }

    objc_storeStrong(&v16, 0);
    v14 = [location[0] objectForKeyedSubscript:*MEMORY[0x277CEFF78]];
    v4 = [MEMORY[0x277D4D310] sharedManager];
    v3 = v14;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __68__SUSUISoftwareUpdateBetaUpdatesController_presentAuthKitController__block_invoke_413;
    v11 = &unk_279CBB3A0;
    v12 = MEMORY[0x277D82BE0](v20[0]);
    v13 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v4 saveAppleAccountIdentifierWithAlternateDSIDForCurrentDevice:v3 completion:&v7];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v14, 0);
    v17 = 0;
  }

  objc_storeStrong(v20, 0);
  if (!v17)
  {
    v17 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUSUISoftwareUpdateBetaUpdatesController_presentAuthKitController__block_invoke_413(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[1] = a1;
  if (location[0])
  {
    v13[0] = _SUSUILoggingFacility();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_ERROR))
    {
      v4 = [location[0] description];
      __os_log_helper_16_2_2_8_32_8_64(v15, "[SUSUISoftwareUpdateBetaUpdatesController presentAuthKitController]_block_invoke", v4);
      _os_log_error_impl(&dword_26AC94000, v13[0], v12, "%s: Failed to save new Apple ID to seeding: %@", v15, 0x16u);
      MEMORY[0x277D82BD8](v4);
    }

    objc_storeStrong(v13, 0);
  }

  v3 = [*(a1 + 32) updateController];
  v2 = [v3 manager];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__SUSUISoftwareUpdateBetaUpdatesController_presentAuthKitController__block_invoke_414;
  v10 = &unk_279CBB378;
  v11 = MEMORY[0x277D82BE0](*(a1 + 40));
  [v2 refreshBetaUpdates:&v6];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __68__SUSUISoftwareUpdateBetaUpdatesController_presentAuthKitController__block_invoke_414(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_66(v8, "[SUSUISoftwareUpdateBetaUpdatesController presentAuthKitController]_block_invoke", v6);
    _os_log_impl(&dword_26AC94000, oslog[0], OS_LOG_TYPE_DEFAULT, "%s: Beta Updates have been refreshed. Error: %{public}@.", v8, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa reloadSpecifiers];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (PSSpecifier)mismatchedSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_mismatchedSpecifier);

  return WeakRetained;
}

@end