@interface SUSUISoftwareUpdateSlowRollController
- (SUSUISoftwareUpdateSlowRollControllerDelegate)delegate;
- (id)navigationController;
- (id)paneTitle;
- (id)presentingStatefulDescriptor;
- (void)statefulUIManager:(id)manager descriptor:(id)descriptor didTransitionFromDescriptorState:(unint64_t)state toState:(unint64_t)toState;
- (void)statefulUIManager:(id)manager didFailToScanForUpdatesWithError:(id)error;
- (void)statefulUIManager:(id)manager didFinishScanningForUpdatesWithResults:(id)results;
- (void)statefulUIManager:(id)manager didStartDownloadForDescriptor:(id)descriptor withDownload:(id)download;
- (void)viewDidLoad;
@end

@implementation SUSUISoftwareUpdateSlowRollController

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUISoftwareUpdateSlowRollController;
  [(SUSUISoftwareUpdateController *)&v2 viewDidLoad];
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
}

- (id)navigationController
{
  selfCopy = self;
  v12 = a2;
  parentController = [(SUSUISoftwareUpdateSlowRollController *)self parentController];
  v10 = 0;
  isKindOfClass = 0;
  if (parentController)
  {
    parentController2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy parentController];
    v10 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](parentController2);
  }

  MEMORY[0x277D82BD8](parentController);
  if ((isKindOfClass & 1) == 0 || ((v4 = -[SUSUISoftwareUpdateSlowRollController parentController](selfCopy, "parentController"), location = [v4 navigationController], MEMORY[0x277D82BD8](v4), !location) ? (v8 = 0) : (navigationController = MEMORY[0x277D82BE0](location), v8 = 1), objc_storeStrong(&location, 0), !v8))
  {
    v7.receiver = selfCopy;
    v7.super_class = SUSUISoftwareUpdateSlowRollController;
    navigationController = [(SUSUISoftwareUpdateSlowRollController *)&v7 navigationController];
  }

  v2 = navigationController;

  return v2;
}

- (id)paneTitle
{
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (self->_slowRollUpdateType)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = 1;
    v5 = [v7 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_287B79370 table:@"Software Update"];
    v4 = 1;
    v2 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = 1;
    v9 = [v11 localizedStringForKey:@"AVAILABLE_UPDATE" value:&stru_287B79370 table:@"Software Update"];
    v8 = 1;
    v2 = MEMORY[0x277D82BE0](v9);
  }

  v12 = v2;
  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  return v12;
}

- (id)presentingStatefulDescriptor
{
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v4 = 0;
  if (self->_slowRollUpdateType)
  {
    manager = [(SUSUISoftwareUpdateController *)self manager];
    v6 = 1;
    preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)manager preferredStatefulDescriptor];
    v4 = 1;
    v2 = MEMORY[0x277D82BE0](preferredStatefulDescriptor);
  }

  else
  {
    manager2 = [(SUSUISoftwareUpdateController *)self manager];
    v10 = 1;
    alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)manager2 alternateStatefulDescriptor];
    v8 = 1;
    v2 = MEMORY[0x277D82BE0](alternateStatefulDescriptor);
  }

  v12 = v2;
  if (v4)
  {
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](manager);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](manager2);
  }

  return v12;
}

- (void)statefulUIManager:(id)manager didFinishScanningForUpdatesWithResults:(id)results
{
  v98 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v93 = 0;
  objc_storeStrong(&v93, results);
  preferredDescriptor = [v93 preferredDescriptor];
  v91 = 0;
  v64 = 0;
  if (!preferredDescriptor)
  {
    alternateDescriptor = [v93 alternateDescriptor];
    v91 = 1;
    v64 = alternateDescriptor == 0;
  }

  if (v91)
  {
    MEMORY[0x277D82BD8](alternateDescriptor);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  if (v64)
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v48 = type;
      v4 = objc_opt_class();
      v61 = NSStringFromClass(v4);
      v43 = MEMORY[0x277D82BE0](v61);
      v88 = v43;
      v44 = selfCopy;
      v60 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState]);
      v45 = MEMORY[0x277D82BE0](v60);
      v87 = v45;
      currentUIState = [(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState];
      presentingStatefulDescriptor = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
      presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
      presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
      manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
      descriptor = [(SUDownload *)currentDownload descriptor];
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v41 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v86 = v41;
      manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
      manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
      v6 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall)
      {
        v6 = "NO";
      }

      v42 = v6;
      v7 = objc_opt_class();
      v85 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_66(v97, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didFinishScanningForUpdatesWithResults:]", v43, v44, v45, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v41, currentDownload2, v42, v85, v93);
      _os_log_impl(&dword_26AC94000, log, v48, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nA new scan results points to no new updates. Popping out %{public}@.\nSUSettingsFullScanResults: %{public}@", v97, 0x8Eu);
      MEMORY[0x277D82BD8](manager3);
      MEMORY[0x277D82BD8](currentDownload2);
      MEMORY[0x277D82BD8](manager2);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](manager);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v61);
      objc_storeStrong(&v85, 0);
      objc_storeStrong(&v86, 0);
      objc_storeStrong(&v87, 0);
      objc_storeStrong(&v88, 0);
    }

    objc_storeStrong(&oslog, 0);
    navigationController = [(SUSUISoftwareUpdateSlowRollController *)selfCopy navigationController];
    v8 = [navigationController popViewControllerAnimated:1];
    MEMORY[0x277D82BD8](navigationController);
    v84 = 1;
  }

  else
  {
    slowRollUpdateType = selfCopy->_slowRollUpdateType;
    v81 = 0;
    v79 = 0;
    v77 = 0;
    v39 = 0;
    if (slowRollUpdateType == 1)
    {
      v39 = 0;
      if ([location[0] isPreferredUpdatePromotedAsAlternate])
      {
        presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
        v81 = 1;
        preferredStatefulDescriptor = [location[0] preferredStatefulDescriptor];
        v79 = 1;
        descriptor2 = [preferredStatefulDescriptor descriptor];
        v77 = 1;
        v39 = [presentingStatefulDescriptor3 isEqualToDescriptor:?];
      }
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](descriptor2);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
    }

    v83 = v39 & 1;
    v10 = selfCopy->_slowRollUpdateType;
    v74 = 0;
    v72 = 0;
    v70 = 0;
    v38 = 0;
    if (!v10)
    {
      v38 = 0;
      if (([location[0] isPreferredUpdatePromotedAsAlternate] & 1) == 0)
      {
        presentingStatefulDescriptor4 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
        v74 = 1;
        alternateStatefulDescriptor = [location[0] alternateStatefulDescriptor];
        v72 = 1;
        descriptor3 = [alternateStatefulDescriptor descriptor];
        v70 = 1;
        v38 = [presentingStatefulDescriptor4 isEqualToDescriptor:?];
      }
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](descriptor3);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    }

    if (v74)
    {
      MEMORY[0x277D82BD8](presentingStatefulDescriptor4);
    }

    v76 = v38 & 1;
    v69 = _SUSUILoggingFacility();
    v68 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v69;
      v24 = v68;
      v11 = objc_opt_class();
      v37 = NSStringFromClass(v11);
      v19 = MEMORY[0x277D82BE0](v37);
      v67 = v19;
      v20 = selfCopy;
      v36 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState]);
      v21 = MEMORY[0x277D82BE0](v36);
      v66 = v21;
      currentUIState2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState];
      presentingStatefulDescriptor5 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
      presentingStatefulDescriptor6 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor3 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
      presentingAlternateStatefulDescriptor4 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
      manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload3 = [(SUSettingsStatefulUIManager *)manager4 currentDownload];
      descriptor4 = [(SUDownload *)currentDownload3 descriptor];
      humanReadableUpdateName2 = [(SUDescriptor *)descriptor4 humanReadableUpdateName];
      v18 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      v65 = v18;
      manager5 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload4 = [(SUSettingsStatefulUIManager *)manager5 currentDownload];
      manager6 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)manager6 isTargetedUpdateScheduledForAutoInstall];
      v13 = "YES";
      if (isTargetedUpdateScheduledForAutoInstall2)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      if (v83)
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      if ((v76 & 1) == 0)
      {
        v13 = "NO";
      }

      __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_32_8_32(v96, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didFinishScanningForUpdatesWithResults:]", v19, v20, v21, currentUIState2, presentingStatefulDescriptor5, presentingStatefulDescriptor6, presentingAlternateStatefulDescriptor3, presentingAlternateStatefulDescriptor4, v18, currentDownload4, v14, v15, v13);
      _os_log_impl(&dword_26AC94000, v23, v24, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\ndoesShowUpToDateNonPromotedUpdate? %s, doesShowUpToDateAlternateUpdate? %s", v96, 0x8Eu);
      MEMORY[0x277D82BD8](manager6);
      MEMORY[0x277D82BD8](currentDownload4);
      MEMORY[0x277D82BD8](manager5);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](descriptor4);
      MEMORY[0x277D82BD8](currentDownload3);
      MEMORY[0x277D82BD8](manager4);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor4);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor3);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor6);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor5);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      objc_storeStrong(&v65, 0);
      objc_storeStrong(&v66, 0);
      objc_storeStrong(&v67, 0);
    }

    objc_storeStrong(&v69, 0);
    if ((v83 & 1) == 0 && (v76 & 1) == 0)
    {
      navigationController2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy navigationController];
      v16 = [navigationController2 popViewControllerAnimated:1];
      MEMORY[0x277D82BD8](navigationController2);
    }

    v84 = 0;
  }

  objc_storeStrong(&v93, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)manager didFailToScanForUpdatesWithError:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v35 = 0;
  objc_storeStrong(&v35, error);
  v34 = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    log = v34;
    type = v33;
    v4 = objc_opt_class();
    v28 = NSStringFromClass(v4);
    v10 = MEMORY[0x277D82BE0](v28);
    v32 = v10;
    v11 = selfCopy;
    v27 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState]);
    v12 = MEMORY[0x277D82BE0](v27);
    v31 = v12;
    currentUIState = [(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v9 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v30 = v9;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v6 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v6 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v38, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didFailToScanForUpdatesWithError:]", v10, v11, v12, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v9, currentDownload2, v6);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v38, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  navigationController = [(SUSUISoftwareUpdateSlowRollController *)selfCopy navigationController];
  v7 = [navigationController popViewControllerAnimated:1];
  MEMORY[0x277D82BD8](navigationController);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)manager didStartDownloadForDescriptor:(id)descriptor withDownload:(id)download
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v38 = 0;
  objc_storeStrong(&v38, descriptor);
  v37 = 0;
  objc_storeStrong(&v37, download);
  v36 = _SUSUILoggingFacility();
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    log = v36;
    type = v35;
    v5 = objc_opt_class();
    v29 = NSStringFromClass(v5);
    v11 = MEMORY[0x277D82BE0](v29);
    v34 = v11;
    v12 = selfCopy;
    v28 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState]);
    v13 = MEMORY[0x277D82BE0](v28);
    v33 = v13;
    currentUIState = [(SUSUISoftwareUpdateSlowRollController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateSlowRollController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v10 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v32 = v10;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v7 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v41, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didStartDownloadForDescriptor:withDownload:]", v11, v12, v13, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v10, currentDownload2, v7);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v41, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
  }

  objc_storeStrong(&v36, 0);
  navigationController = [(SUSUISoftwareUpdateSlowRollController *)selfCopy navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
  MEMORY[0x277D82BD8](navigationController);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)manager descriptor:(id)descriptor didTransitionFromDescriptorState:(unint64_t)state toState:(unint64_t)toState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v13 = 0;
  objc_storeStrong(&v13, descriptor);
  stateCopy = state;
  toStateCopy = toState;
  if (state == 1 && toStateCopy >= 2)
  {
    v10 = 1;
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = SUSUISoftwareUpdateSlowRollController;
    [(SUSUISoftwareUpdateController *)&v9 statefulUIManager:location[0] descriptor:v13 didTransitionFromDescriptorState:stateCopy toState:toStateCopy];
    v10 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateSlowRollControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end