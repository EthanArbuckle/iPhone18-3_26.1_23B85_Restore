@interface SUSUISoftwareUpdateSlowRollController
- (SUSUISoftwareUpdateSlowRollControllerDelegate)delegate;
- (id)navigationController;
- (id)paneTitle;
- (id)presentingStatefulDescriptor;
- (void)statefulUIManager:(id)a3 descriptor:(id)a4 didTransitionFromDescriptorState:(unint64_t)a5 toState:(unint64_t)a6;
- (void)statefulUIManager:(id)a3 didFailToScanForUpdatesWithError:(id)a4;
- (void)statefulUIManager:(id)a3 didFinishScanningForUpdatesWithResults:(id)a4;
- (void)statefulUIManager:(id)a3 didStartDownloadForDescriptor:(id)a4 withDownload:(id)a5;
- (void)viewDidLoad;
@end

@implementation SUSUISoftwareUpdateSlowRollController

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSUISoftwareUpdateSlowRollController;
  [(SUSUISoftwareUpdateController *)&v2 viewDidLoad];
  [(SUSUISoftwareUpdateController *)v4 refreshPane];
}

- (id)navigationController
{
  v13 = self;
  v12 = a2;
  v5 = [(SUSUISoftwareUpdateSlowRollController *)self parentController];
  v10 = 0;
  isKindOfClass = 0;
  if (v5)
  {
    v11 = [(SUSUISoftwareUpdateSlowRollController *)v13 parentController];
    v10 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  MEMORY[0x277D82BD8](v5);
  if ((isKindOfClass & 1) == 0 || ((v4 = -[SUSUISoftwareUpdateSlowRollController parentController](v13, "parentController"), location = [v4 navigationController], MEMORY[0x277D82BD8](v4), !location) ? (v8 = 0) : (v14 = MEMORY[0x277D82BE0](location), v8 = 1), objc_storeStrong(&location, 0), !v8))
  {
    v7.receiver = v13;
    v7.super_class = SUSUISoftwareUpdateSlowRollController;
    v14 = [(SUSUISoftwareUpdateSlowRollController *)&v7 navigationController];
  }

  v2 = v14;

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
    v7 = [(SUSUISoftwareUpdateController *)self manager];
    v6 = 1;
    v5 = [(SUSettingsStatefulUIManager *)v7 preferredStatefulDescriptor];
    v4 = 1;
    v2 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v11 = [(SUSUISoftwareUpdateController *)self manager];
    v10 = 1;
    v9 = [(SUSettingsStatefulUIManager *)v11 alternateStatefulDescriptor];
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

- (void)statefulUIManager:(id)a3 didFinishScanningForUpdatesWithResults:(id)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v95 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v93 = 0;
  objc_storeStrong(&v93, a4);
  v63 = [v93 preferredDescriptor];
  v91 = 0;
  v64 = 0;
  if (!v63)
  {
    v92 = [v93 alternateDescriptor];
    v91 = 1;
    v64 = v92 == 0;
  }

  if (v91)
  {
    MEMORY[0x277D82BD8](v92);
  }

  MEMORY[0x277D82BD8](v63);
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
      v44 = v95;
      v60 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)v95 currentUIState]);
      v45 = MEMORY[0x277D82BE0](v60);
      v87 = v45;
      v46 = [(SUSUISoftwareUpdateSlowRollController *)v95 currentUIState];
      v59 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingStatefulDescriptor];
      v58 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingStatefulDescriptor];
      v57 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingAlternateStatefulDescriptor];
      v56 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingAlternateStatefulDescriptor];
      v55 = [(SUSUISoftwareUpdateController *)v95 manager];
      v54 = [(SUSettingsStatefulUIManager *)v55 currentDownload];
      v53 = [(SUDownload *)v54 descriptor];
      v52 = [(SUDescriptor *)v53 humanReadableUpdateName];
      v41 = MEMORY[0x277D82BE0](v52);
      v86 = v41;
      v51 = [(SUSUISoftwareUpdateController *)v95 manager];
      v50 = [(SUSettingsStatefulUIManager *)v51 currentDownload];
      v49 = [(SUSUISoftwareUpdateController *)v95 manager];
      v5 = [(SUSettingsStatefulUIManager *)v49 isTargetedUpdateScheduledForAutoInstall];
      v6 = "YES";
      if (!v5)
      {
        v6 = "NO";
      }

      v42 = v6;
      v7 = objc_opt_class();
      v85 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_66(v97, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didFinishScanningForUpdatesWithResults:]", v43, v44, v45, v46, v59, v58, v57, v56, v41, v50, v42, v85, v93);
      _os_log_impl(&dword_26AC94000, log, v48, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nA new scan results points to no new updates. Popping out %{public}@.\nSUSettingsFullScanResults: %{public}@", v97, 0x8Eu);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v61);
      objc_storeStrong(&v85, 0);
      objc_storeStrong(&v86, 0);
      objc_storeStrong(&v87, 0);
      objc_storeStrong(&v88, 0);
    }

    objc_storeStrong(&oslog, 0);
    v40 = [(SUSUISoftwareUpdateSlowRollController *)v95 navigationController];
    v8 = [v40 popViewControllerAnimated:1];
    MEMORY[0x277D82BD8](v40);
    v84 = 1;
  }

  else
  {
    slowRollUpdateType = v95->_slowRollUpdateType;
    v81 = 0;
    v79 = 0;
    v77 = 0;
    v39 = 0;
    if (slowRollUpdateType == 1)
    {
      v39 = 0;
      if ([location[0] isPreferredUpdatePromotedAsAlternate])
      {
        v82 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingStatefulDescriptor];
        v81 = 1;
        v80 = [location[0] preferredStatefulDescriptor];
        v79 = 1;
        v78 = [v80 descriptor];
        v77 = 1;
        v39 = [v82 isEqualToDescriptor:?];
      }
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    v83 = v39 & 1;
    v10 = v95->_slowRollUpdateType;
    v74 = 0;
    v72 = 0;
    v70 = 0;
    v38 = 0;
    if (!v10)
    {
      v38 = 0;
      if (([location[0] isPreferredUpdatePromotedAsAlternate] & 1) == 0)
      {
        v75 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingStatefulDescriptor];
        v74 = 1;
        v73 = [location[0] alternateStatefulDescriptor];
        v72 = 1;
        v71 = [v73 descriptor];
        v70 = 1;
        v38 = [v75 isEqualToDescriptor:?];
      }
    }

    if (v70)
    {
      MEMORY[0x277D82BD8](v71);
    }

    if (v72)
    {
      MEMORY[0x277D82BD8](v73);
    }

    if (v74)
    {
      MEMORY[0x277D82BD8](v75);
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
      v20 = v95;
      v36 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)v95 currentUIState]);
      v21 = MEMORY[0x277D82BE0](v36);
      v66 = v21;
      v22 = [(SUSUISoftwareUpdateSlowRollController *)v95 currentUIState];
      v35 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingStatefulDescriptor];
      v34 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingStatefulDescriptor];
      v33 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingAlternateStatefulDescriptor];
      v32 = [(SUSUISoftwareUpdateSlowRollController *)v95 presentingAlternateStatefulDescriptor];
      v31 = [(SUSUISoftwareUpdateController *)v95 manager];
      v30 = [(SUSettingsStatefulUIManager *)v31 currentDownload];
      v29 = [(SUDownload *)v30 descriptor];
      v28 = [(SUDescriptor *)v29 humanReadableUpdateName];
      v18 = MEMORY[0x277D82BE0](v28);
      v65 = v18;
      v27 = [(SUSUISoftwareUpdateController *)v95 manager];
      v26 = [(SUSettingsStatefulUIManager *)v27 currentDownload];
      v25 = [(SUSUISoftwareUpdateController *)v95 manager];
      v12 = [(SUSettingsStatefulUIManager *)v25 isTargetedUpdateScheduledForAutoInstall];
      v13 = "YES";
      if (v12)
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

      __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_32_8_32(v96, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didFinishScanningForUpdatesWithResults:]", v19, v20, v21, v22, v35, v34, v33, v32, v18, v26, v14, v15, v13);
      _os_log_impl(&dword_26AC94000, v23, v24, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\ndoesShowUpToDateNonPromotedUpdate? %s, doesShowUpToDateAlternateUpdate? %s", v96, 0x8Eu);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      objc_storeStrong(&v65, 0);
      objc_storeStrong(&v66, 0);
      objc_storeStrong(&v67, 0);
    }

    objc_storeStrong(&v69, 0);
    if ((v83 & 1) == 0 && (v76 & 1) == 0)
    {
      v17 = [(SUSUISoftwareUpdateSlowRollController *)v95 navigationController];
      v16 = [v17 popViewControllerAnimated:1];
      MEMORY[0x277D82BD8](v17);
    }

    v84 = 0;
  }

  objc_storeStrong(&v93, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)a3 didFailToScanForUpdatesWithError:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
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
    v11 = v37;
    v27 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)v37 currentUIState]);
    v12 = MEMORY[0x277D82BE0](v27);
    v31 = v12;
    v13 = [(SUSUISoftwareUpdateSlowRollController *)v37 currentUIState];
    v26 = [(SUSUISoftwareUpdateSlowRollController *)v37 presentingStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateSlowRollController *)v37 presentingStatefulDescriptor];
    v24 = [(SUSUISoftwareUpdateSlowRollController *)v37 presentingAlternateStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateSlowRollController *)v37 presentingAlternateStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v37 manager];
    v21 = [(SUSettingsStatefulUIManager *)v22 currentDownload];
    v20 = [(SUDownload *)v21 descriptor];
    v19 = [(SUDescriptor *)v20 humanReadableUpdateName];
    v9 = MEMORY[0x277D82BE0](v19);
    v30 = v9;
    v18 = [(SUSUISoftwareUpdateController *)v37 manager];
    v17 = [(SUSettingsStatefulUIManager *)v18 currentDownload];
    v16 = [(SUSUISoftwareUpdateController *)v37 manager];
    v5 = [(SUSettingsStatefulUIManager *)v16 isTargetedUpdateScheduledForAutoInstall];
    v6 = "YES";
    if (!v5)
    {
      v6 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v38, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didFailToScanForUpdatesWithError:]", v10, v11, v12, v13, v26, v25, v24, v23, v9, v17, v6);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v38, 0x7Au);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  v8 = [(SUSUISoftwareUpdateSlowRollController *)v37 navigationController];
  v7 = [v8 popViewControllerAnimated:1];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)a3 didStartDownloadForDescriptor:(id)a4 withDownload:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = 0;
  objc_storeStrong(&v37, a5);
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
    v12 = v40;
    v28 = SUSettingsUIStateToString([(SUSUISoftwareUpdateSlowRollController *)v40 currentUIState]);
    v13 = MEMORY[0x277D82BE0](v28);
    v33 = v13;
    v14 = [(SUSUISoftwareUpdateSlowRollController *)v40 currentUIState];
    v27 = [(SUSUISoftwareUpdateSlowRollController *)v40 presentingStatefulDescriptor];
    v26 = [(SUSUISoftwareUpdateSlowRollController *)v40 presentingStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateSlowRollController *)v40 presentingAlternateStatefulDescriptor];
    v24 = [(SUSUISoftwareUpdateSlowRollController *)v40 presentingAlternateStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateController *)v40 manager];
    v22 = [(SUSettingsStatefulUIManager *)v23 currentDownload];
    v21 = [(SUDownload *)v22 descriptor];
    v20 = [(SUDescriptor *)v21 humanReadableUpdateName];
    v10 = MEMORY[0x277D82BE0](v20);
    v32 = v10;
    v19 = [(SUSUISoftwareUpdateController *)v40 manager];
    v18 = [(SUSettingsStatefulUIManager *)v19 currentDownload];
    v17 = [(SUSUISoftwareUpdateController *)v40 manager];
    v6 = [(SUSettingsStatefulUIManager *)v17 isTargetedUpdateScheduledForAutoInstall];
    v7 = "YES";
    if (!v6)
    {
      v7 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v41, "[SUSUISoftwareUpdateSlowRollController statefulUIManager:didStartDownloadForDescriptor:withDownload:]", v11, v12, v13, v14, v27, v26, v25, v24, v10, v18, v7);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v41, 0x7Au);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
  }

  objc_storeStrong(&v36, 0);
  v9 = [(SUSUISoftwareUpdateSlowRollController *)v40 navigationController];
  v8 = [v9 popViewControllerAnimated:1];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)a3 descriptor:(id)a4 didTransitionFromDescriptorState:(unint64_t)a5 toState:(unint64_t)a6
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = a5;
  v11 = a6;
  if (a5 == 1 && v11 >= 2)
  {
    v10 = 1;
  }

  else
  {
    v9.receiver = v15;
    v9.super_class = SUSUISoftwareUpdateSlowRollController;
    [(SUSUISoftwareUpdateController *)&v9 statefulUIManager:location[0] descriptor:v13 didTransitionFromDescriptorState:v12 toState:v11];
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