@interface DBSExternalDisplayZoomSelectionListController
- (id)supportedDisplayZoomOptions;
- (unint64_t)displayZoomTableViewCellCurrentlySelectedDisplayZoomOption:(id)option;
- (void)displayZoomTableViewCell:(id)cell userDidTapOnDisplayZoomOption:(unint64_t)option;
- (void)supportedDisplayZoomOptions;
- (void)updateNavigationButtonStateWithCurrentState;
- (void)userDidTapDone:(id)done;
@end

@implementation DBSExternalDisplayZoomSelectionListController

- (void)updateNavigationButtonStateWithCurrentState
{
  externalDisplayInfo = [(DBSExternalDisplayZoomSelectionListController *)self externalDisplayInfo];
  displayModeSettings = [externalDisplayInfo displayModeSettings];
  [(DBSExternalDisplayZoomSelectionListController *)self _updateNavigationButtonStateWithNewDisplayModeSettings:displayModeSettings];
}

- (void)userDidTapDone:(id)done
{
  doneCopy = done;
  selectedDisplayModeSettings = [(DBSExternalDisplayZoomSelectionListController *)self selectedDisplayModeSettings];
  externalDisplayInfo = [(DBSExternalDisplayZoomSelectionListController *)self externalDisplayInfo];
  displayModeSettings = [externalDisplayInfo displayModeSettings];

  if ([displayModeSettings isEqual:selectedDisplayModeSettings])
  {
    navigationController = [(DBSExternalDisplayZoomSelectionListController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    objc_initWeak(&location, self);
    displayService = [(DBSExternalDisplayZoomSelectionListController *)self displayService];
    externalDisplayInfo2 = [(DBSExternalDisplayZoomSelectionListController *)self externalDisplayInfo];
    identifier = [externalDisplayInfo2 identifier];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__DBSExternalDisplayZoomSelectionListController_userDidTapDone___block_invoke;
    v12[3] = &unk_2784598F0;
    objc_copyWeak(&v13, &location);
    [displayService setSettings:selectedDisplayModeSettings forDisplay:identifier options:2 completionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __64__DBSExternalDisplayZoomSelectionListController_userDidTapDone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DBSLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__DBSExternalDisplayZoomSelectionListController_userDidTapDone___block_invoke_cold_1(v3, v4);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__DBSExternalDisplayZoomSelectionListController_userDidTapDone___block_invoke_166;
  block[3] = &unk_278459828;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
}

void __64__DBSExternalDisplayZoomSelectionListController_userDidTapDone___block_invoke_166(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 displayZoomDidUpdate];
}

- (id)supportedDisplayZoomOptions
{
  v3 = objc_opt_new();
  externalDisplayInfo = [(DBSExternalDisplayZoomSelectionListController *)self externalDisplayInfo];
  supportedScales = [externalDisplayInfo supportedScales];

  if (supportedScales)
  {
    [v3 addObject:&unk_28349F598];
    if ((supportedScales & 2) == 0)
    {
LABEL_3:
      if ((supportedScales & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((supportedScales & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:&unk_28349F5B0];
  if ((supportedScales & 4) != 0)
  {
LABEL_4:
    [v3 addObject:&unk_28349F5C8];
  }

LABEL_5:
  v6 = DBSLogForCategory(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(DBSExternalDisplayZoomSelectionListController *)self supportedDisplayZoomOptions];
  }

  return v3;
}

- (void)displayZoomTableViewCell:(id)cell userDidTapOnDisplayZoomOption:(unint64_t)option
{
  if (option <= 2)
  {
    v6 = qword_22105F3F8[option];
    v7 = objc_alloc(MEMORY[0x277D66B48]);
    externalDisplayInfo = [(DBSExternalDisplayZoomSelectionListController *)self externalDisplayInfo];
    displayModeSettings = [externalDisplayInfo displayModeSettings];
    v10 = [v7 initWithSettings:displayModeSettings];

    [v10 setScale:v6];
    [(DBSExternalDisplayZoomSelectionListController *)self _updateNavigationButtonStateWithNewDisplayModeSettings:v10];
  }
}

- (unint64_t)displayZoomTableViewCellCurrentlySelectedDisplayZoomOption:(id)option
{
  selectedDisplayModeSettings = [(DBSExternalDisplayZoomSelectionListController *)self selectedDisplayModeSettings];
  scale = [selectedDisplayModeSettings scale];

  if (scale > 2)
  {
    return 0;
  }

  else
  {
    return qword_22105F3F8[scale];
  }
}

void __64__DBSExternalDisplayZoomSelectionListController_userDidTapDone___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22102E000, a2, OS_LOG_TYPE_ERROR, "Failed to modify external display zoom: %@", &v2, 0xCu);
}

- (void)supportedDisplayZoomOptions
{
  v14 = *MEMORY[0x277D85DE8];
  displayService = [self displayService];
  externalDisplayInfo = [self externalDisplayInfo];
  v8 = 138412802;
  v9 = displayService;
  v10 = 2112;
  v11 = externalDisplayInfo;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_22102E000, a3, OS_LOG_TYPE_DEBUG, "displayService %@, displayInfo %@, supported display zooms %@", &v8, 0x20u);
}

@end