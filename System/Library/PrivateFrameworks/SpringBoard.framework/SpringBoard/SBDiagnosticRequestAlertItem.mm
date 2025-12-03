@interface SBDiagnosticRequestAlertItem
- (id)_noButtonTitle;
- (id)_stringFromClassification:(int64_t)classification;
- (id)_stringFromReproducibility:(int64_t)reproducibility;
- (id)_yesButtonTitle;
- (void)_fileRadar;
- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions;
@end

@implementation SBDiagnosticRequestAlertItem

- (void)configure:(BOOL)configure requirePasscodeForActions:(BOOL)actions
{
  v6 = [(SBAlertItem *)self alertController:configure];
  title = [(SBDiagnosticRequestAlertItem *)self title];
  message = [(SBDiagnosticRequestAlertItem *)self message];
  v9 = message;
  if (!title)
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

  if (!message)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 setTitle:title];
  [v6 setMessage:v9];
  v10 = MEMORY[0x277D750F8];
  _yesButtonTitle = [(SBDiagnosticRequestAlertItem *)self _yesButtonTitle];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SBDiagnosticRequestAlertItem_configure_requirePasscodeForActions___block_invoke;
  v17[3] = &unk_2783A8A40;
  v17[4] = self;
  v12 = [v10 actionWithTitle:_yesButtonTitle style:0 handler:v17];

  [v6 addAction:v12];
  v13 = MEMORY[0x277D750F8];
  _noButtonTitle = [(SBDiagnosticRequestAlertItem *)self _noButtonTitle];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SBDiagnosticRequestAlertItem_configure_requirePasscodeForActions___block_invoke_2;
  v16[3] = &unk_2783A8A40;
  v16[4] = self;
  v15 = [v13 actionWithTitle:_noButtonTitle style:1 handler:v16];

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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"RADAR_REQUEST_BUTTON" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)_noButtonTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"RADAR_REQUEST_CANCEL" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (void)_fileRadar
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v5 = +[SBPlatformController sharedInstance];
  isInternalInstall = [v5 isInternalInstall];

  if (isInternalInstall)
  {
    v43 = bundleIdentifier;
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new"];
    v42 = [MEMORY[0x277CCACE0] componentsWithString:?];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    radarTitle = [(SBDiagnosticRequestAlertItem *)self radarTitle];
    radarDescription = [(SBDiagnosticRequestAlertItem *)self radarDescription];
    radarAttachments = [(SBDiagnosticRequestAlertItem *)self radarAttachments];
    radarKeywordIDs = [(SBDiagnosticRequestAlertItem *)self radarKeywordIDs];
    radarClassification = [(SBDiagnosticRequestAlertItem *)self radarClassification];
    radarReproducibility = [(SBDiagnosticRequestAlertItem *)self radarReproducibility];
    radarComponentName = [(SBDiagnosticRequestAlertItem *)self radarComponentName];
    radarComponentVersion = [(SBDiagnosticRequestAlertItem *)self radarComponentVersion];
    radarComponentID = [(SBDiagnosticRequestAlertItem *)self radarComponentID];
    if (!radarComponentID)
    {
      radarComponentID = &unk_283371EB8;
    }

    v14 = MEMORY[0x277CCAD18];
    v40 = radarComponentID;
    stringValue = [radarComponentID stringValue];
    v16 = [v14 queryItemWithName:@"ComponentID" value:stringValue];
    [v7 addObject:v16];

    if (radarComponentName && radarComponentVersion)
    {
      v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:radarComponentName];
      [v7 addObject:v17];

      v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:radarComponentVersion];
      [v7 addObject:v18];
    }

    if ([radarTitle length])
    {
      v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:radarTitle];
      [v7 addObject:v19];
    }

    if ([radarDescription length])
    {
      v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:radarDescription];
      [v7 addObject:v20];
    }

    if (radarClassification)
    {
      v21 = MEMORY[0x277CCAD18];
      v22 = [(SBDiagnosticRequestAlertItem *)self _stringFromClassification:radarClassification];
      v23 = [v21 queryItemWithName:@"Classification" value:v22];
      [v7 addObject:v23];
    }

    if (radarReproducibility)
    {
      v24 = MEMORY[0x277CCAD18];
      v25 = [(SBDiagnosticRequestAlertItem *)self _stringFromReproducibility:radarReproducibility];
      v26 = [v24 queryItemWithName:@"Reproducibility" value:v25];
      [v7 addObject:v26];
    }

    if ([radarAttachments count])
    {
      v27 = [radarAttachments bs_map:&__block_literal_global_359];
      v28 = [v27 componentsJoinedByString:{@", "}];
      v29 = [MEMORY[0x277CCAD18] queryItemWithName:@"Attachments" value:v28];
      [v7 addObject:v29];
    }

    v30 = radarKeywordIDs;
    if ([radarKeywordIDs count])
    {
      v31 = [radarKeywordIDs bs_map:&__block_literal_global_61_4];
      v32 = [v31 componentsJoinedByString:{@", "}];
      v33 = [MEMORY[0x277CCAD18] queryItemWithName:@"Keywords" value:v32];
      [v7 addObject:v33];

      v30 = radarKeywordIDs;
    }

    [v42 setQueryItems:v7];
    v34 = [v42 URL];
    absoluteString = [v34 absoluteString];

    bundleIdentifier = v43;
  }

  else
  {
    absoluteString = [MEMORY[0x277CCACA8] stringWithFormat:@"applefeedback://new?bundleID=%@", bundleIdentifier];
  }

  v36 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
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
  selfCopy = self;
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

- (id)_stringFromClassification:(int64_t)classification
{
  if ((classification - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_2783C0310[classification - 1];
  }
}

- (id)_stringFromReproducibility:(int64_t)reproducibility
{
  if ((reproducibility - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_2783C0360[reproducibility - 1];
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