@interface SUSettingsStatefulDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDescriptor:(id)a3;
- (SUSettingsStatefulUIManager)ownerManager;
- (id)description;
- (id)humanReadableUpdateName;
- (id)initForDescriptor:(unint64_t)a3 fromScanResults:(id)a4 managedBy:(id)a5;
- (unint64_t)maskedDescriptorType;
- (void)assignState:(unint64_t)a3;
- (void)assignState:(unint64_t)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7;
- (void)assignState:(unint64_t)a3 fromScanResults:(id)a4 withConcreteError:(id)a5;
- (void)resolveInstallationError:(id)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7;
- (void)updateStateFromConcreteDownload:(id)a3 downloadable:(BOOL)a4 downloadError:(id)a5 isUpdateReadyForInstallation:(BOOL)a6 updateInstallationError:(id)a7 error:(id)a8;
- (void)updateStateFromProgressedDownload:(id)a3;
- (void)updateStateWithScanResults:(id)a3 andWithConcreteError:(id)a4;
@end

@implementation SUSettingsStatefulDescriptor

- (id)initForDescriptor:(unint64_t)a3 fromScanResults:(id)a4 managedBy:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v44 = self;
  v43 = a2;
  v42 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v5 = v44;
  v44 = 0;
  v39.receiver = v5;
  v39.super_class = SUSettingsStatefulDescriptor;
  v30 = [(SUSettingsStatefulDescriptor *)&v39 init];
  v44 = v30;
  objc_storeStrong(&v44, v30);
  if (!v30)
  {
    goto LABEL_14;
  }

  v6 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUSettingsStatefulDescriptor"];
  v7 = *(v44 + 6);
  *(v44 + 6) = v6;
  MEMORY[0x277D82BD8](v7);
  *(v44 + 2) = 0;
  *(v44 + 3) = v42;
  [v44 setOwnerManager:v40];
  if (!v42)
  {
    v27 = [location preferredDescriptor];
    [v44 setDescriptor:?];
    MEMORY[0x277D82BD8](v27);
    v8 = [location preferredUpdateDownloadable];
    [v44 setUpdateDownloadable:v8];
    v28 = [location preferredUpdateDownloadError];
    [v44 setUpdateDownloadError:?];
    MEMORY[0x277D82BD8](v28);
LABEL_9:
    v18 = [v44 descriptor];
    MEMORY[0x277D82BD8](v18);
    if (!v18)
    {
      v17 = [v44 log];
      v33 = [v17 oslog];
      MEMORY[0x277D82BD8](v17);
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v33;
        v16 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_impl(&dword_26AC94000, v15, v16, "Could not instantiate a stateful descriptor descriptor for nil SUDescriptor.", v31, 2u);
      }

      objc_storeStrong(&v33, 0);
      v45 = 0;
      v34 = 1;
      goto LABEL_15;
    }

    v14 = [v44 descriptor];
    v13 = [location latestDescriptor];
    v11 = [v14 isEqual:?];
    [v44 setIsLatestUpdate:v11];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    [v44 updateStateWithScanResults:location andWithConcreteError:0];
LABEL_14:
    v45 = MEMORY[0x277D82BE0](v44);
    v34 = 1;
    goto LABEL_15;
  }

  if (v42 == 1)
  {
    v25 = [location alternateDescriptor];
    [v44 setDescriptor:?];
    MEMORY[0x277D82BD8](v25);
    v9 = [location alternateUpdateDownloadable];
    [v44 setUpdateDownloadable:v9];
    v26 = [location alternateUpdateDownloadError];
    [v44 setUpdateDownloadError:?];
    MEMORY[0x277D82BD8](v26);
    goto LABEL_9;
  }

  v24 = [v44 log];
  v38 = [v24 oslog];
  MEMORY[0x277D82BD8](v24);
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    log = v38;
    type = v37;
    v23 = SUSettingsDescriptorTypeToString(v42);
    v19 = MEMORY[0x277D82BE0](v23);
    v36 = v19;
    v10 = objc_opt_class();
    v22 = NSStringFromClass(v10);
    v35 = MEMORY[0x277D82BE0](v22);
    __os_log_helper_16_2_2_8_66_8_66(v46, v19, v35);
    _os_log_impl(&dword_26AC94000, log, type, "Could not use descriptor of type %{public}@ for %{public}@ instantiation.", v46, 0x16u);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  v45 = MEMORY[0x277D82BE0](v44);
  v34 = 1;
LABEL_15:
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v44, 0);
  *MEMORY[0x277D85DE8];
  return v45;
}

- (id)humanReadableUpdateName
{
  v3 = MEMORY[0x277CCACA8];
  v5 = [(SUDescriptor *)self->_descriptor humanReadableUpdateName];
  v4 = SUSettingsDescriptorTypeToString(self->_descriptorType);
  v6 = [v3 stringWithFormat:@"%@ (%@)", v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (BOOL)isEqualToDescriptor:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(SUDescriptor *)v6->_descriptor isEqual:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if (v20 == location[0])
    {
      v21 = 1;
      v18 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = MEMORY[0x277D82BE0](location[0]);
        v6 = v20;
        v7 = [v17 descriptor];
        v15 = 0;
        v13 = 0;
        v11 = 0;
        v9 = 0;
        v8 = 0;
        if ([(SUSettingsStatefulDescriptor *)v6 isEqualToDescriptor:?])
        {
          v5 = [v17 currentState];
          v8 = 0;
          if (v5 == [(SUSettingsStatefulDescriptor *)v20 currentState])
          {
            v4 = [(SUSettingsStatefulDescriptor *)v20 updateDownloadable];
            v8 = 0;
            if (v4 == [v17 updateDownloadable])
            {
              v16 = [(SUSettingsStatefulDescriptor *)v20 ownerManager];
              v15 = 1;
              v14 = [(SUSettingsStatefulUIManager *)v16 errorContextProvider];
              v13 = 1;
              v12 = [(SUSettingsStatefulDescriptor *)v20 updateDownloadError];
              v11 = 1;
              v10 = [v17 updateDownloadError];
              v9 = 1;
              v8 = [SUSettingsStatefulErrorContextProvider isError:v14 intrinsicallyEquivalentToError:"isError:intrinsicallyEquivalentToError:withStatefulDescriptor:" withStatefulDescriptor:v12];
            }
          }
        }

        v21 = v8;
        if (v9)
        {
          MEMORY[0x277D82BD8](v10);
        }

        if (v11)
        {
          MEMORY[0x277D82BD8](v12);
        }

        if (v13)
        {
          MEMORY[0x277D82BD8](v14);
        }

        if (v15)
        {
          MEMORY[0x277D82BD8](v16);
        }

        MEMORY[0x277D82BD8](v7);
        v18 = 1;
        objc_storeStrong(&v17, 0);
      }

      else
      {
        v21 = 0;
        v18 = 1;
      }
    }
  }

  else
  {
    v21 = 0;
    v18 = 1;
  }

  objc_storeStrong(location, 0);
  return v21 & 1;
}

- (id)description
{
  v32 = self;
  v31[1] = a2;
  v31[0] = MEMORY[0x277D82BE0](&stru_287B79370);
  v25 = [(SUSettingsStatefulDescriptor *)v32 ownerManager];
  v29 = 0;
  v27 = 0;
  v26 = 0;
  if (v25)
  {
    v30 = [(SUSettingsStatefulDescriptor *)v32 ownerManager];
    v29 = 1;
    v24 = 1;
    if (![(SUSettingsStatefulUIManager *)v30 hidingPreferredDescriptor])
    {
      v28 = [(SUSettingsStatefulDescriptor *)v32 ownerManager];
      v27 = 1;
      v24 = [(SUSettingsStatefulUIManager *)v28 hidingAlternateDescriptor];
    }

    v26 = v24;
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  MEMORY[0x277D82BD8](v25);
  if (v26)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = SUSettingsDescriptorTypeToString([(SUSettingsStatefulDescriptor *)v32 maskedDescriptorType]);
    v2 = [v22 stringWithFormat:@"maskedType = %@, ", v23];
    v3 = v31[0];
    v31[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v23);
  }

  v15 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v20 = NSStringFromClass(v4);
  v8 = v32;
  v19 = SUSettingsDescriptorTypeToString(v32->_descriptorType);
  v9 = v31[0];
  v18 = SUSettingsDescriptorStateToString(v32->_currentState);
  currentState = v32->_currentState;
  v17 = [(SUDescriptor *)v32->_descriptor humanReadableUpdateName];
  descriptor = v32->_descriptor;
  v5 = "YES";
  if (v32->_updateDownloadable)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v12 = v6;
  updateDownloadError = v32->_updateDownloadError;
  if (!v32->_isLatestUpdate)
  {
    v5 = "NO";
  }

  v14 = v5;
  WeakRetained = objc_loadWeakRetained(&v32->_ownerManager);
  v21 = [v15 stringWithFormat:@"<%@: %p> { type = %@, %@currentState = %@ (%lu), descriptor = %@ (%p), updateDownloadable = %s, updateDownloadError = %@, isLatest = %s, owner = %p }", v20, v8, v19, v9, v18, currentState, v17, descriptor, v12, updateDownloadError, v14, WeakRetained];
  MEMORY[0x277D82BD8](WeakRetained);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  objc_storeStrong(v31, 0);

  return v21;
}

- (void)updateStateWithScanResults:(id)a3 andWithConcreteError:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = [(SUSettingsStatefulDescriptor *)v18 maskedDescriptorType];
  v9 = v18;
  v10 = [location[0] currentDownload];
  if (v15)
  {
    v7 = [location[0] alternateUpdateDownloadable];
  }

  else
  {
    v7 = [location[0] preferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (v15)
  {
    v12 = [location[0] alternateUpdateDownloadError];
    v11 = 1;
    v6 = v12;
  }

  else
  {
    v14 = [location[0] preferredUpdateDownloadError];
    v13 = 1;
    v6 = v14;
  }

  v4 = [location[0] isUpdateReadyForInstallation];
  v5 = [location[0] updateInstallationError];
  [SUSettingsStatefulDescriptor updateStateFromConcreteDownload:v9 downloadable:"updateStateFromConcreteDownload:downloadable:downloadError:isUpdateReadyForInstallation:updateInstallationError:error:" downloadError:v10 isUpdateReadyForInstallation:v7 != 0 updateInstallationError:v6 error:v4];
  MEMORY[0x277D82BD8](v5);
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)assignState:(unint64_t)a3 fromScanResults:(id)a4 withConcreteError:(id)a5
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = [(SUSettingsStatefulDescriptor *)v20 maskedDescriptorType];
  v8 = v20;
  v9 = v18;
  v10 = [location currentDownload];
  if (v15)
  {
    v6 = [location alternateUpdateDownloadable];
  }

  else
  {
    v6 = [location preferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (v15)
  {
    v12 = [location alternateUpdateDownloadError];
    v11 = 1;
    v5 = v12;
  }

  else
  {
    v14 = [location preferredUpdateDownloadError];
    v13 = 1;
    v5 = v14;
  }

  [(SUSettingsStatefulDescriptor *)v8 assignState:v9 fromConcreteDownload:v10 downloadable:v6 != 0 downloadError:v5 error:v16];
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

- (void)updateStateFromConcreteDownload:(id)a3 downloadable:(BOOL)a4 downloadError:(id)a5 isUpdateReadyForInstallation:(BOOL)a6 updateInstallationError:(id)a7 error:(id)a8
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = a6;
  v24 = 0;
  objc_storeStrong(&v24, a7);
  v23 = 0;
  objc_storeStrong(&v23, a8);
  v18 = [(SUSettingsStatefulDescriptor *)v29 descriptor];
  MEMORY[0x277D82BD8](v18);
  if (v18)
  {
    v20 = 0;
    LOBYTE(v12) = 1;
    if (location[0])
    {
      v11 = v29;
      v21 = [location[0] descriptor];
      v20 = 1;
      v12 = ![(SUSettingsStatefulDescriptor *)v11 isEqualToDescriptor:?];
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](v21);
    }

    if (v12)
    {
      [(SUSettingsStatefulDescriptor *)v29 assignState:1 fromConcreteDownload:location[0] downloadable:v27 downloadError:v26 error:v23];
      v22 = 1;
    }

    else
    {
      v19 = [location[0] progress];
      if ([v19 isDone])
      {
        if (v25)
        {
          [(SUSettingsStatefulDescriptor *)v29 assignState:4 fromConcreteDownload:location[0] downloadable:v27 downloadError:v26 error:v23];
          v22 = 1;
        }

        else
        {
          [(SUSettingsStatefulDescriptor *)v29 resolveInstallationError:v24 fromConcreteDownload:location[0] downloadable:v27 downloadError:v26 error:v23];
          v22 = 0;
        }
      }

      else
      {
        v9 = v29;
        v10 = [v19 phase];
        if (SUPrefsDownloadPhaseIsStalled(v10))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        [(SUSettingsStatefulDescriptor *)v9 assignState:v8 fromConcreteDownload:location[0] downloadable:v27 downloadError:v26 error:v23];
        MEMORY[0x277D82BD8](v10);
        v22 = 1;
      }

      objc_storeStrong(&v19, 0);
    }
  }

  else
  {
    [(SUSettingsStatefulDescriptor *)v29 assignState:0];
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)assignState:(unint64_t)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = self;
  v56 = a2;
  v55 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v53 = a5;
  v52 = 0;
  objc_storeStrong(&v52, a6);
  v51 = 0;
  objc_storeStrong(&v51, a7);
  v37 = [location progress];
  v38 = [v37 isDone];
  MEMORY[0x277D82BD8](v37);
  if (v38)
  {
    v31 = v57;
    v32 = [location descriptor];
    v33 = [(SUSettingsStatefulDescriptor *)v31 isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](v32);
    if (v33)
    {
      objc_storeStrong(&v52, 0);
    }
  }

  v50 = [(SUSettingsStatefulDescriptor *)v57 updateDownloadError];
  v57->_updateDownloadable = v53;
  if (v51)
  {
    objc_storeStrong(&v57->_updateDownloadError, v51);
  }

  else
  {
    objc_storeStrong(&v57->_updateDownloadError, v52);
  }

  v7 = [(SUSettingsStatefulDescriptor *)v57 currentState];
  if (v7 != v55)
  {
    goto LABEL_15;
  }

  v29 = [(SUSettingsStatefulDescriptor *)v57 ownerManager];
  v28 = [(SUSettingsStatefulUIManager *)v29 errorContextProvider];
  v30 = [(SUSettingsStatefulErrorContextProvider *)v28 isError:v50 intrinsicallyEquivalentToError:v57->_updateDownloadError withStatefulDescriptor:v57 download:location];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  if (!v30)
  {
    v17 = [(SUSettingsStatefulDescriptor *)v57 log];
    v43 = [(SUCoreLog *)v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v43;
      v12 = v42;
      v16 = SUSettingsDescriptorTypeToString(v57->_descriptorType);
      v8 = MEMORY[0x277D82BE0](v16);
      v41 = v8;
      v15 = [(SUSettingsStatefulDescriptor *)v57 descriptor];
      v14 = [(SUDescriptor *)v15 humanReadableUpdateName];
      v9 = MEMORY[0x277D82BE0](v14);
      v40 = v9;
      v10 = v57;
      v13 = SUSettingsDescriptorStateToString(v55);
      v39 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v58, "[SUSettingsStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v8, v9, v10, v39, v55, v50, v57->_updateDownloadError);
      _os_log_impl(&dword_26AC94000, v11, v12, "%s [%{public}@, %{public}@, %p]: Allowing to re-assign the state %{public}@ (%ld) because the old error is not intrinsically equivalent to the new error.\n\tPrevious Error: %{public}@\n\tNew Error: %{public}@", v58, 0x52u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v43, 0);
LABEL_15:
    [(SUSettingsStatefulDescriptor *)v57 assignState:v55];
    v44 = 0;
    goto LABEL_16;
  }

  v27 = [(SUSettingsStatefulDescriptor *)v57 log];
  oslog = [(SUCoreLog *)v27 oslog];
  MEMORY[0x277D82BD8](v27);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v22 = type;
    v26 = SUSettingsDescriptorTypeToString(v57->_descriptorType);
    v18 = MEMORY[0x277D82BE0](v26);
    v47 = v18;
    v25 = [(SUSettingsStatefulDescriptor *)v57 descriptor];
    v24 = [(SUDescriptor *)v25 humanReadableUpdateName];
    v19 = MEMORY[0x277D82BE0](v24);
    v46 = v19;
    v20 = v57;
    v23 = SUSettingsDescriptorStateToString(v55);
    v45 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_66_8_0(v59, "[SUSettingsStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v18, v19, v20, v45, v55);
    _os_log_impl(&dword_26AC94000, log, v22, "%s [%{public}@, %{public}@, %p]: Skipping on state assignment as it matches the current state: %{public}@ (%ld)", v59, 0x3Eu);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(&oslog, 0);
  v44 = 1;
LABEL_16:
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateStateFromProgressedDownload:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v5 = v11;
    v6 = [location[0] descriptor];
    v7 = [(SUSettingsStatefulDescriptor *)v5 isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      v8 = [location[0] progress];
      if (([v8 isDone] & 1) == 0)
      {
        v3 = [v8 phase];
        v4 = 0;
        if (SUPrefsDownloadPhaseIsStalled(v3))
        {
          v4 = v11->_currentState != 3;
        }

        MEMORY[0x277D82BD8](v3);
        if (v4)
        {
          [(SUSettingsStatefulDescriptor *)v11 assignState:3];
        }

        else if (v11->_currentState != 2)
        {
          [(SUSettingsStatefulDescriptor *)v11 assignState:2];
        }
      }

      objc_storeStrong(&v8, 0);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    [(SUSettingsStatefulDescriptor *)v11 assignState:1];
    v9 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)assignState:(unint64_t)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v57 = self;
  v56 = a2;
  v55 = a3;
  if ([(SUSettingsStatefulDescriptor *)self currentState]== a3)
  {
    v32 = [(SUSettingsStatefulDescriptor *)v57 log];
    v54 = [(SUCoreLog *)v32 oslog];
    MEMORY[0x277D82BD8](v32);
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      log = v54;
      type = v53;
      v31 = SUSettingsDescriptorTypeToString(v57->_descriptorType);
      v23 = MEMORY[0x277D82BE0](v31);
      v52 = v23;
      v30 = [(SUSettingsStatefulDescriptor *)v57 descriptor];
      v29 = [(SUDescriptor *)v30 humanReadableUpdateName];
      v24 = MEMORY[0x277D82BE0](v29);
      v51 = v24;
      v25 = v57;
      v28 = SUSettingsDescriptorStateToString([(SUSettingsStatefulDescriptor *)v57 currentState]);
      v50 = MEMORY[0x277D82BE0](v28);
      __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_66_8_0(v59, "[SUSettingsStatefulDescriptor assignState:]", v23, v24, v25, v50, [(SUSettingsStatefulDescriptor *)v57 currentState]);
      _os_log_impl(&dword_26AC94000, log, type, "%s [%{public}@, %{public}@, %p]: Skipping on Descriptor State Assignment request: currentState == currentState (%{public}@ (%ld))", v59, 0x3Eu);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      objc_storeStrong(&v50, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v52, 0);
    }

    objc_storeStrong(&v54, 0);
  }

  else
  {
    v22 = [(SUSettingsStatefulDescriptor *)v57 log];
    oslog = [(SUCoreLog *)v22 oslog];
    MEMORY[0x277D82BD8](v22);
    v48 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = oslog;
      v16 = v48;
      v21 = SUSettingsDescriptorTypeToString(v57->_descriptorType);
      v10 = MEMORY[0x277D82BE0](v21);
      v47 = v10;
      v20 = [(SUSettingsStatefulDescriptor *)v57 descriptor];
      v19 = [(SUDescriptor *)v20 humanReadableUpdateName];
      v11 = MEMORY[0x277D82BE0](v19);
      v46 = v11;
      v12 = v57;
      v18 = SUSettingsDescriptorStateToString([(SUSettingsStatefulDescriptor *)v57 currentState]);
      v13 = MEMORY[0x277D82BE0](v18);
      v45 = v13;
      v14 = [(SUSettingsStatefulDescriptor *)v57 currentState];
      v17 = SUSettingsDescriptorStateToString(v55);
      v44 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_0(v58, "[SUSettingsStatefulDescriptor assignState:]", v10, v11, v12, v13, v14, v44, v55);
      _os_log_impl(&dword_26AC94000, v15, v16, "%s [%{public}@, %{public}@, %p]: Assigning Descriptor state: %{public}@ (%ld) -> %{public}@ (%ld)", v58, 0x52u);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v47, 0);
    }

    objc_storeStrong(&oslog, 0);
    v43 = [(SUSettingsStatefulDescriptor *)v57 currentState];
    [(SUSettingsStatefulDescriptor *)v57 setCurrentState:v55];
    v7 = [(SUSettingsStatefulDescriptor *)v57 ownerManager];
    v8 = [(SUSettingsStatefulUIManager *)v7 delegate];
    v41 = 0;
    v39 = 0;
    v9 = 0;
    if (v8)
    {
      v42 = [(SUSettingsStatefulDescriptor *)v57 ownerManager];
      v41 = 1;
      v40 = [(SUSettingsStatefulUIManager *)v42 delegate];
      v39 = 1;
      v9 = objc_opt_respondsToSelector();
    }

    if (v39)
    {
      MEMORY[0x277D82BD8](v40);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](v42);
    }

    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v7);
    if (v9)
    {
      v6 = [MEMORY[0x277D643F8] sharedCore];
      v5 = [(SUSettingsStatefulDescriptor *)v57 ownerManager];
      v4 = [(SUSettingsStatefulUIManager *)v5 delegateCallbackQueue];
      queue = [v6 selectDelegateCallbackQueue:?];
      v33 = MEMORY[0x277D85DD0];
      v34 = -1073741824;
      v35 = 0;
      v36 = __44__SUSettingsStatefulDescriptor_assignState___block_invoke;
      v37 = &unk_279CB93C0;
      v38[0] = MEMORY[0x277D82BE0](v57);
      v38[1] = v43;
      v38[2] = v55;
      dispatch_async(queue, &v33);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(v38, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

uint64_t __44__SUSettingsStatefulDescriptor_assignState___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) ownerManager];
  v7 = [v8 delegate];
  v6 = [*(a1 + 32) ownerManager];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [v7 statefulUIManager:? descriptor:? didTransitionFromDescriptorState:? toState:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  return MEMORY[0x277D82BD8](v8);
}

- (void)resolveInstallationError:(id)a3 fromConcreteDownload:(id)a4 downloadable:(BOOL)a5 downloadError:(id)a6 error:(id)a7
{
  v78 = *MEMORY[0x277D85DE8];
  v73 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v71 = 0;
  objc_storeStrong(&v71, a4);
  v70 = a5;
  v69 = 0;
  objc_storeStrong(&v69, a6);
  v68 = 0;
  objc_storeStrong(&v68, a7);
  v43 = [(SUSettingsStatefulDescriptor *)v73 log];
  oslog = [(SUCoreLog *)v43 oslog];
  MEMORY[0x277D82BD8](v43);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v39 = type;
    v42 = SUSettingsDescriptorTypeToString(v73->_descriptorType);
    v37 = MEMORY[0x277D82BE0](v42);
    v65 = v37;
    v41 = [(SUSettingsStatefulDescriptor *)v73 descriptor];
    v40 = [(SUDescriptor *)v41 humanReadableUpdateName];
    v64 = MEMORY[0x277D82BE0](v40);
    __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v77, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v37, v64, v73, location[0]);
    _os_log_impl(&dword_26AC94000, log, v39, "%s [%{public}@, %{public}@, %p]: Resolving installation error: %{public}@", v77, 0x34u);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
  }

  objc_storeStrong(&oslog, 0);
  v63 = 4;
  v62 = 1;
  v35 = [location[0] domain];
  v34 = getSUErrorDomain_0();
  v36 = [v35 isEqualToString:?];
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  if ((v36 & 1) == 0)
  {
    v33 = [(SUSettingsStatefulDescriptor *)v73 log];
    v61 = [(SUCoreLog *)v33 oslog];
    MEMORY[0x277D82BD8](v33);
    v60 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v28 = v61;
      v29 = v60;
      v32 = SUSettingsDescriptorTypeToString(v73->_descriptorType);
      v27 = MEMORY[0x277D82BE0](v32);
      v59 = v27;
      v31 = [(SUSettingsStatefulDescriptor *)v73 descriptor];
      v30 = [(SUDescriptor *)v31 humanReadableUpdateName];
      v58 = MEMORY[0x277D82BE0](v30);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v76, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v27, v58, v73);
      _os_log_error_impl(&dword_26AC94000, v28, v29, "%s [%{public}@, %{public}@, %p]: The installation error domain doesn't match SUSErrorDomain.", v76, 0x2Au);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      objc_storeStrong(&v58, 0);
      objc_storeStrong(&v59, 0);
    }

    objc_storeStrong(&v61, 0);
    v57 = 1;
    goto LABEL_34;
  }

  if (v68)
  {
    objc_storeStrong(&v68, v68);
  }

  else
  {
    objc_storeStrong(&v68, location[0]);
  }

  v26 = [location[0] code];
  switch(v26)
  {
    case 3:
    case 11:
      goto LABEL_21;
    case 13:
      goto LABEL_31;
    case 14:
      goto LABEL_19;
    case 17:
      goto LABEL_31;
    case 18:
LABEL_21:
      v25 = [(SUSettingsStatefulDescriptor *)v73 log];
      v56 = [(SUCoreLog *)v25 oslog];
      MEMORY[0x277D82BD8](v25);
      v55 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v56;
        v21 = v55;
        v24 = SUSettingsDescriptorTypeToString(v73->_descriptorType);
        v19 = MEMORY[0x277D82BE0](v24);
        v54 = v19;
        v23 = [(SUSettingsStatefulDescriptor *)v73 descriptor];
        v22 = [(SUDescriptor *)v23 humanReadableUpdateName];
        v53 = MEMORY[0x277D82BE0](v22);
        __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v75, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v19, v53, v73, v68);
        _os_log_impl(&dword_26AC94000, v20, v21, "%s [%{public}@, %{public}@, %p]: Starting a new scan due to installation error: %{public}@", v75, 0x34u);
        MEMORY[0x277D82BD8](v22);
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
        objc_storeStrong(&v53, 0);
        objc_storeStrong(&v54, 0);
      }

      objc_storeStrong(&v56, 0);
      v62 = 0;
      v18 = [(SUSettingsStatefulDescriptor *)v73 ownerManager];
      [(SUSettingsStatefulUIManager *)v18 checkForAvailableUpdates];
      MEMORY[0x277D82BD8](v18);
      goto LABEL_24;
    case 19:
      goto LABEL_31;
    case 20:
LABEL_24:
      v16 = [v68 userInfo];
      v15 = getkSUInstallationConstraintsUnmetKey();
      v14 = [v16 objectForKey:?];
      v17 = [v14 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      v52 = v17;
      if (v17 == 16 || v52 == 32 || v52 == 48)
      {
        objc_storeStrong(&v68, 0);
        goto LABEL_31;
      }

LABEL_28:
      v13 = [(SUSettingsStatefulDescriptor *)v73 log];
      v51 = [(SUCoreLog *)v13 oslog];
      MEMORY[0x277D82BD8](v13);
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v8 = v51;
        v9 = v50;
        v12 = SUSettingsDescriptorTypeToString(v73->_descriptorType);
        v7 = MEMORY[0x277D82BE0](v12);
        v49 = v7;
        v11 = [(SUSettingsStatefulDescriptor *)v73 descriptor];
        v10 = [(SUDescriptor *)v11 humanReadableUpdateName];
        v48 = MEMORY[0x277D82BE0](v10);
        __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v74, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v7, v48, v73, v68);
        _os_log_error_impl(&dword_26AC94000, v8, v9, "%s [%{public}@, %{public}@, %p]: Couldn't resolve the installation error: %{public}@", v74, 0x34u);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
      }

      objc_storeStrong(&v51, 0);
      goto LABEL_31;
  }

  if (v26 != 42)
  {
    goto LABEL_28;
  }

LABEL_19:
  v63 = 5;
  objc_storeStrong(&v68, 0);
LABEL_31:
  if (v62)
  {
    [(SUSettingsStatefulDescriptor *)v73 assignState:v63 fromConcreteDownload:v71 downloadable:v70 downloadError:v69 error:v68];
  }

  v57 = 0;
LABEL_34:
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (unint64_t)maskedDescriptorType
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16[1] = a2;
  v12 = [(SUSettingsStatefulDescriptor *)self ownerManager];
  MEMORY[0x277D82BD8](v12);
  if (v12)
  {
    v3 = [(SUSettingsStatefulDescriptor *)v17 ownerManager];
    v4 = [(SUSettingsStatefulUIManager *)v3 hidingPreferredDescriptor];
    MEMORY[0x277D82BD8](v3);
    if (v4)
    {
      descriptorType = v17->_descriptorType != 1;
    }

    else
    {
      descriptorType = v17->_descriptorType;
    }
  }

  else
  {
    v11 = [(SUSettingsStatefulDescriptor *)v17 log];
    v16[0] = [(SUCoreLog *)v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v16[0];
      type = v15;
      v10 = SUSettingsDescriptorTypeToString(v17->_descriptorType);
      v5 = MEMORY[0x277D82BE0](v10);
      v14 = v5;
      v9 = [(SUSettingsStatefulDescriptor *)v17 descriptor];
      v8 = [(SUDescriptor *)v9 humanReadableUpdateName];
      v13 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v19, "[SUSettingsStatefulDescriptor maskedDescriptorType]", v5, v13, v17);
      _os_log_impl(&dword_26AC94000, log, type, "%s [%{public}@, %{public}@, %p]: Could not get the masked descriptor type because the ownerManager is nil. This is likely a bug.", v19, 0x2Au);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(v16, 0);
    descriptorType = v17->_descriptorType;
  }

  *MEMORY[0x277D85DE8];
  return descriptorType;
}

- (SUSettingsStatefulUIManager)ownerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerManager);

  return WeakRetained;
}

@end