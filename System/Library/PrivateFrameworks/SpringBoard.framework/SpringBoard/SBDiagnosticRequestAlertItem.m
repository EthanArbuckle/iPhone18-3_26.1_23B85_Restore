@interface SBDiagnosticRequestAlertItem
- (id)_noButtonTitle;
- (id)_stringFromClassification:(int64_t)a3;
- (id)_stringFromReproducibility:(int64_t)a3;
- (id)_yesButtonTitle;
- (void)_fileRadar;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBDiagnosticRequestAlertItem

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v6 = [(SBAlertItem *)self alertController:a3];
  v7 = [(SBDiagnosticRequestAlertItem *)self title];
  v8 = [(SBDiagnosticRequestAlertItem *)self message];
  v9 = v8;
  if (!v7)
  {
    [SBDiagnosticRequestAlertItem configure:a2 requirePasscodeForActions:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SBDiagnosticRequestAlertItem configure:a2 requirePasscodeForActions:self];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 setTitle:v7];
  [v6 setMessage:v9];
  v10 = MEMORY[0x277D750F8];
  v11 = [(SBDiagnosticRequestAlertItem *)self _yesButtonTitle];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SBDiagnosticRequestAlertItem_configure_requirePasscodeForActions___block_invoke;
  v17[3] = &unk_2783A8A40;
  v17[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v17];

  [v6 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  v14 = [(SBDiagnosticRequestAlertItem *)self _noButtonTitle];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SBDiagnosticRequestAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v16[3] = &unk_2783A8A40;
  v16[4] = self;
  v15 = [v13 actionWithTitle:v14 style:1 handler:v16];

  [v6 addAction:v15];
}

void __68__SBDiagnosticRequestAlertItem_configure_requirePasscodeForActions___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) deactivateForButton];
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) completionBlock];
    v3[2]();
  }
}

- (id)_yesButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"RADAR_REQUEST_BUTTON" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)_noButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"RADAR_REQUEST_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (void)_fileRadar
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = +[SBPlatformController sharedInstance];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    v43 = v4;
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new"];
    v42 = [MEMORY[0x277CCACE0] componentsWithString:?];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [(SBDiagnosticRequestAlertItem *)self radarTitle];
    v46 = [(SBDiagnosticRequestAlertItem *)self radarDescription];
    v45 = [(SBDiagnosticRequestAlertItem *)self radarAttachments];
    v44 = [(SBDiagnosticRequestAlertItem *)self radarKeywordIDs];
    v9 = [(SBDiagnosticRequestAlertItem *)self radarClassification];
    v10 = [(SBDiagnosticRequestAlertItem *)self radarReproducibility];
    v11 = [(SBDiagnosticRequestAlertItem *)self radarComponentName];
    v12 = [(SBDiagnosticRequestAlertItem *)self radarComponentVersion];
    v13 = [(SBDiagnosticRequestAlertItem *)self radarComponentID];
    if (!v13)
    {
      v13 = &unk_283371EB8;
    }

    v14 = MEMORY[0x277CCAD18];
    v40 = v13;
    v15 = [v13 stringValue];
    v16 = [v14 queryItemWithName:@"ComponentID" value:v15];
    [v7 addObject:v16];

    if (v11 && v12)
    {
      v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:v11];
      [v7 addObject:v17];

      v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:v12];
      [v7 addObject:v18];
    }

    if ([v8 length])
    {
      v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:v8];
      [v7 addObject:v19];
    }

    if ([v46 length])
    {
      v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:v46];
      [v7 addObject:v20];
    }

    if (v9)
    {
      v21 = MEMORY[0x277CCAD18];
      v22 = [(SBDiagnosticRequestAlertItem *)self _stringFromClassification:v9];
      v23 = [v21 queryItemWithName:@"Classification" value:v22];
      [v7 addObject:v23];
    }

    if (v10)
    {
      v24 = MEMORY[0x277CCAD18];
      v25 = [(SBDiagnosticRequestAlertItem *)self _stringFromReproducibility:v10];
      v26 = [v24 queryItemWithName:@"Reproducibility" value:v25];
      [v7 addObject:v26];
    }

    if ([v45 count])
    {
      v27 = [v45 bs_map:&__block_literal_global_359];
      v28 = [v27 componentsJoinedByString:{@", "}];
      v29 = [MEMORY[0x277CCAD18] queryItemWithName:@"Attachments" value:v28];
      [v7 addObject:v29];
    }

    v30 = v44;
    if ([v44 count])
    {
      v31 = [v44 bs_map:&__block_literal_global_61_4];
      v32 = [v31 componentsJoinedByString:{@", "}];
      v33 = [MEMORY[0x277CCAD18] queryItemWithName:@"Keywords" value:v32];
      [v7 addObject:v33];

      v30 = v44;
    }

    [v42 setQueryItems:v7];
    v34 = [v42 URL];
    v35 = [v34 absoluteString];

    v4 = v43;
  }

  else
  {
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"applefeedback://new?bundleID=%@", v4];
  }

  v36 = [MEMORY[0x277CBEBC0] URLWithString:v35];
  [(SBAlertItem *)self deactivateForButton];
  v37 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v37 setSource:24];
  [(SBLockScreenUnlockRequest *)v37 setIntent:2];
  [(SBLockScreenUnlockRequest *)v37 setName:@"Diagnostic Request Unlock"];
  [(SBLockScreenUnlockRequest *)v37 setWantsBiometricPresentation:0];
  v38 = +[SBLockScreenManager sharedInstance];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __42__SBDiagnosticRequestAlertItem__fileRadar__block_invoke_3;
  v47[3] = &unk_2783A8BF0;
  v48 = v36;
  v49 = self;
  v39 = v36;
  [v38 unlockWithRequest:v37 completion:v47];
}

void __42__SBDiagnosticRequestAlertItem__fileRadar__block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    SBWorkspaceActivateApplicationFromURL(*(a1 + 32), 0, &__block_literal_global_76_1);
    v3 = [*(a1 + 40) completionBlock];

    if (v3)
    {
      v4 = [*(a1 + 40) completionBlock];
      v4[2]();
    }
  }
}

- (id)_stringFromClassification:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_2783C0310[a3 - 1];
  }
}

- (id)_stringFromReproducibility:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_2783C0360[a3 - 1];
  }
}

- (void)configure:(uint64_t)a1 requirePasscodeForActions:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDiagnosticRequestAlertItem.m" lineNumber:25 description:@"The title for an SBDiagnosticRequestAlertItem cannot be nil."];
}

- (void)configure:(uint64_t)a1 requirePasscodeForActions:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDiagnosticRequestAlertItem.m" lineNumber:26 description:@"The message for an SBDiagnosticRequestAlertItem cannot be nil."];
}

@end