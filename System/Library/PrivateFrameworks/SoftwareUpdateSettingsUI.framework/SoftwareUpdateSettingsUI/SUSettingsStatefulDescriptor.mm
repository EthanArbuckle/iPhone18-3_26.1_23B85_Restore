@interface SUSettingsStatefulDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDescriptor:(id)descriptor;
- (SUSettingsStatefulUIManager)ownerManager;
- (id)description;
- (id)humanReadableUpdateName;
- (id)initForDescriptor:(unint64_t)descriptor fromScanResults:(id)results managedBy:(id)by;
- (unint64_t)maskedDescriptorType;
- (void)assignState:(unint64_t)state;
- (void)assignState:(unint64_t)state fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error error:(id)a7;
- (void)assignState:(unint64_t)state fromScanResults:(id)results withConcreteError:(id)error;
- (void)resolveInstallationError:(id)error fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)downloadError error:(id)a7;
- (void)updateStateFromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error isUpdateReadyForInstallation:(BOOL)installation updateInstallationError:(id)installationError error:(id)a8;
- (void)updateStateFromProgressedDownload:(id)download;
- (void)updateStateWithScanResults:(id)results andWithConcreteError:(id)error;
@end

@implementation SUSettingsStatefulDescriptor

- (id)initForDescriptor:(unint64_t)descriptor fromScanResults:(id)results managedBy:(id)by
{
  v47 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v43 = a2;
  descriptorCopy = descriptor;
  location = 0;
  objc_storeStrong(&location, results);
  v40 = 0;
  objc_storeStrong(&v40, by);
  v5 = selfCopy;
  selfCopy = 0;
  v39.receiver = v5;
  v39.super_class = SUSettingsStatefulDescriptor;
  v30 = [(SUSettingsStatefulDescriptor *)&v39 init];
  selfCopy = v30;
  objc_storeStrong(&selfCopy, v30);
  if (!v30)
  {
    goto LABEL_14;
  }

  v6 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUSettingsStatefulDescriptor"];
  v7 = *(selfCopy + 6);
  *(selfCopy + 6) = v6;
  MEMORY[0x277D82BD8](v7);
  *(selfCopy + 2) = 0;
  *(selfCopy + 3) = descriptorCopy;
  [selfCopy setOwnerManager:v40];
  if (!descriptorCopy)
  {
    preferredDescriptor = [location preferredDescriptor];
    [selfCopy setDescriptor:?];
    MEMORY[0x277D82BD8](preferredDescriptor);
    preferredUpdateDownloadable = [location preferredUpdateDownloadable];
    [selfCopy setUpdateDownloadable:preferredUpdateDownloadable];
    preferredUpdateDownloadError = [location preferredUpdateDownloadError];
    [selfCopy setUpdateDownloadError:?];
    MEMORY[0x277D82BD8](preferredUpdateDownloadError);
LABEL_9:
    descriptor = [selfCopy descriptor];
    MEMORY[0x277D82BD8](descriptor);
    if (!descriptor)
    {
      v17 = [selfCopy log];
      oslog = [v17 oslog];
      MEMORY[0x277D82BD8](v17);
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = oslog;
        v16 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_impl(&dword_26AC94000, v15, v16, "Could not instantiate a stateful descriptor descriptor for nil SUDescriptor.", v31, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v45 = 0;
      v34 = 1;
      goto LABEL_15;
    }

    descriptor2 = [selfCopy descriptor];
    latestDescriptor = [location latestDescriptor];
    v11 = [descriptor2 isEqual:?];
    [selfCopy setIsLatestUpdate:v11];
    MEMORY[0x277D82BD8](latestDescriptor);
    MEMORY[0x277D82BD8](descriptor2);
    [selfCopy updateStateWithScanResults:location andWithConcreteError:0];
LABEL_14:
    v45 = MEMORY[0x277D82BE0](selfCopy);
    v34 = 1;
    goto LABEL_15;
  }

  if (descriptorCopy == 1)
  {
    alternateDescriptor = [location alternateDescriptor];
    [selfCopy setDescriptor:?];
    MEMORY[0x277D82BD8](alternateDescriptor);
    alternateUpdateDownloadable = [location alternateUpdateDownloadable];
    [selfCopy setUpdateDownloadable:alternateUpdateDownloadable];
    alternateUpdateDownloadError = [location alternateUpdateDownloadError];
    [selfCopy setUpdateDownloadError:?];
    MEMORY[0x277D82BD8](alternateUpdateDownloadError);
    goto LABEL_9;
  }

  v24 = [selfCopy log];
  oslog2 = [v24 oslog];
  MEMORY[0x277D82BD8](v24);
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog2;
    type = v37;
    v23 = SUSettingsDescriptorTypeToString(descriptorCopy);
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

  objc_storeStrong(&oslog2, 0);
  v45 = MEMORY[0x277D82BE0](selfCopy);
  v34 = 1;
LABEL_15:
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v45;
}

- (id)humanReadableUpdateName
{
  v3 = MEMORY[0x277CCACA8];
  humanReadableUpdateName = [(SUDescriptor *)self->_descriptor humanReadableUpdateName];
  v4 = SUSettingsDescriptorTypeToString(self->_descriptorType);
  v6 = [v3 stringWithFormat:@"%@ (%@)", humanReadableUpdateName, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](humanReadableUpdateName);

  return v6;
}

- (BOOL)isEqualToDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v4 = [(SUDescriptor *)selfCopy->_descriptor isEqual:location[0]];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (location[0])
  {
    if (selfCopy == location[0])
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
        v6 = selfCopy;
        descriptor = [v17 descriptor];
        v15 = 0;
        v13 = 0;
        v11 = 0;
        v9 = 0;
        v8 = 0;
        if ([(SUSettingsStatefulDescriptor *)v6 isEqualToDescriptor:?])
        {
          currentState = [v17 currentState];
          v8 = 0;
          if (currentState == [(SUSettingsStatefulDescriptor *)selfCopy currentState])
          {
            updateDownloadable = [(SUSettingsStatefulDescriptor *)selfCopy updateDownloadable];
            v8 = 0;
            if (updateDownloadable == [v17 updateDownloadable])
            {
              ownerManager = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
              v15 = 1;
              errorContextProvider = [(SUSettingsStatefulUIManager *)ownerManager errorContextProvider];
              v13 = 1;
              updateDownloadError = [(SUSettingsStatefulDescriptor *)selfCopy updateDownloadError];
              v11 = 1;
              updateDownloadError2 = [v17 updateDownloadError];
              v9 = 1;
              v8 = [SUSettingsStatefulErrorContextProvider isError:errorContextProvider intrinsicallyEquivalentToError:"isError:intrinsicallyEquivalentToError:withStatefulDescriptor:" withStatefulDescriptor:updateDownloadError];
            }
          }
        }

        v21 = v8;
        if (v9)
        {
          MEMORY[0x277D82BD8](updateDownloadError2);
        }

        if (v11)
        {
          MEMORY[0x277D82BD8](updateDownloadError);
        }

        if (v13)
        {
          MEMORY[0x277D82BD8](errorContextProvider);
        }

        if (v15)
        {
          MEMORY[0x277D82BD8](ownerManager);
        }

        MEMORY[0x277D82BD8](descriptor);
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
  selfCopy = self;
  v31[1] = a2;
  v31[0] = MEMORY[0x277D82BE0](&stru_287B79370);
  ownerManager = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
  v29 = 0;
  v27 = 0;
  v26 = 0;
  if (ownerManager)
  {
    ownerManager2 = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
    v29 = 1;
    hidingAlternateDescriptor = 1;
    if (![(SUSettingsStatefulUIManager *)ownerManager2 hidingPreferredDescriptor])
    {
      ownerManager3 = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
      v27 = 1;
      hidingAlternateDescriptor = [(SUSettingsStatefulUIManager *)ownerManager3 hidingAlternateDescriptor];
    }

    v26 = hidingAlternateDescriptor;
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](ownerManager3);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](ownerManager2);
  }

  MEMORY[0x277D82BD8](ownerManager);
  if (v26)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = SUSettingsDescriptorTypeToString([(SUSettingsStatefulDescriptor *)selfCopy maskedDescriptorType]);
    v2 = [v22 stringWithFormat:@"maskedType = %@, ", v23];
    v3 = v31[0];
    v31[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v23);
  }

  v15 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v20 = NSStringFromClass(v4);
  v8 = selfCopy;
  v19 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
  v9 = v31[0];
  v18 = SUSettingsDescriptorStateToString(selfCopy->_currentState);
  currentState = selfCopy->_currentState;
  humanReadableUpdateName = [(SUDescriptor *)selfCopy->_descriptor humanReadableUpdateName];
  descriptor = selfCopy->_descriptor;
  v5 = "YES";
  if (selfCopy->_updateDownloadable)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v12 = v6;
  updateDownloadError = selfCopy->_updateDownloadError;
  if (!selfCopy->_isLatestUpdate)
  {
    v5 = "NO";
  }

  v14 = v5;
  WeakRetained = objc_loadWeakRetained(&selfCopy->_ownerManager);
  weakRetained = [v15 stringWithFormat:@"<%@: %p> { type = %@, %@currentState = %@ (%lu), descriptor = %@ (%p), updateDownloadable = %s, updateDownloadError = %@, isLatest = %s, owner = %p }", v20, v8, v19, v9, v18, currentState, humanReadableUpdateName, descriptor, v12, updateDownloadError, v14, WeakRetained];
  MEMORY[0x277D82BD8](WeakRetained);
  MEMORY[0x277D82BD8](humanReadableUpdateName);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  objc_storeStrong(v31, 0);

  return weakRetained;
}

- (void)updateStateWithScanResults:(id)results andWithConcreteError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v16 = 0;
  objc_storeStrong(&v16, error);
  maskedDescriptorType = [(SUSettingsStatefulDescriptor *)selfCopy maskedDescriptorType];
  v9 = selfCopy;
  currentDownload = [location[0] currentDownload];
  if (maskedDescriptorType)
  {
    alternateUpdateDownloadable = [location[0] alternateUpdateDownloadable];
  }

  else
  {
    alternateUpdateDownloadable = [location[0] preferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (maskedDescriptorType)
  {
    alternateUpdateDownloadError = [location[0] alternateUpdateDownloadError];
    v11 = 1;
    v6 = alternateUpdateDownloadError;
  }

  else
  {
    preferredUpdateDownloadError = [location[0] preferredUpdateDownloadError];
    v13 = 1;
    v6 = preferredUpdateDownloadError;
  }

  isUpdateReadyForInstallation = [location[0] isUpdateReadyForInstallation];
  updateInstallationError = [location[0] updateInstallationError];
  [SUSettingsStatefulDescriptor updateStateFromConcreteDownload:v9 downloadable:"updateStateFromConcreteDownload:downloadable:downloadError:isUpdateReadyForInstallation:updateInstallationError:error:" downloadError:currentDownload isUpdateReadyForInstallation:alternateUpdateDownloadable != 0 updateInstallationError:v6 error:isUpdateReadyForInstallation];
  MEMORY[0x277D82BD8](updateInstallationError);
  if (v11)
  {
    MEMORY[0x277D82BD8](alternateUpdateDownloadError);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  }

  MEMORY[0x277D82BD8](currentDownload);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)assignState:(unint64_t)state fromScanResults:(id)results withConcreteError:(id)error
{
  selfCopy = self;
  v19 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, results);
  v16 = 0;
  objc_storeStrong(&v16, error);
  maskedDescriptorType = [(SUSettingsStatefulDescriptor *)selfCopy maskedDescriptorType];
  v8 = selfCopy;
  v9 = stateCopy;
  currentDownload = [location currentDownload];
  if (maskedDescriptorType)
  {
    alternateUpdateDownloadable = [location alternateUpdateDownloadable];
  }

  else
  {
    alternateUpdateDownloadable = [location preferredUpdateDownloadable];
  }

  v13 = 0;
  v11 = 0;
  if (maskedDescriptorType)
  {
    alternateUpdateDownloadError = [location alternateUpdateDownloadError];
    v11 = 1;
    v5 = alternateUpdateDownloadError;
  }

  else
  {
    preferredUpdateDownloadError = [location preferredUpdateDownloadError];
    v13 = 1;
    v5 = preferredUpdateDownloadError;
  }

  [(SUSettingsStatefulDescriptor *)v8 assignState:v9 fromConcreteDownload:currentDownload downloadable:alternateUpdateDownloadable != 0 downloadError:v5 error:v16];
  if (v11)
  {
    MEMORY[0x277D82BD8](alternateUpdateDownloadError);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  }

  MEMORY[0x277D82BD8](currentDownload);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
}

- (void)updateStateFromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error isUpdateReadyForInstallation:(BOOL)installation updateInstallationError:(id)installationError error:(id)a8
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  downloadableCopy = downloadable;
  v26 = 0;
  objc_storeStrong(&v26, error);
  installationCopy = installation;
  v24 = 0;
  objc_storeStrong(&v24, installationError);
  v23 = 0;
  objc_storeStrong(&v23, a8);
  descriptor = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
  MEMORY[0x277D82BD8](descriptor);
  if (descriptor)
  {
    v20 = 0;
    LOBYTE(v12) = 1;
    if (location[0])
    {
      v11 = selfCopy;
      descriptor2 = [location[0] descriptor];
      v20 = 1;
      v12 = ![(SUSettingsStatefulDescriptor *)v11 isEqualToDescriptor:?];
    }

    if (v20)
    {
      MEMORY[0x277D82BD8](descriptor2);
    }

    if (v12)
    {
      [(SUSettingsStatefulDescriptor *)selfCopy assignState:1 fromConcreteDownload:location[0] downloadable:downloadableCopy downloadError:v26 error:v23];
      v22 = 1;
    }

    else
    {
      progress = [location[0] progress];
      if ([progress isDone])
      {
        if (installationCopy)
        {
          [(SUSettingsStatefulDescriptor *)selfCopy assignState:4 fromConcreteDownload:location[0] downloadable:downloadableCopy downloadError:v26 error:v23];
          v22 = 1;
        }

        else
        {
          [(SUSettingsStatefulDescriptor *)selfCopy resolveInstallationError:v24 fromConcreteDownload:location[0] downloadable:downloadableCopy downloadError:v26 error:v23];
          v22 = 0;
        }
      }

      else
      {
        v9 = selfCopy;
        phase = [progress phase];
        if (SUPrefsDownloadPhaseIsStalled(phase))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        [(SUSettingsStatefulDescriptor *)v9 assignState:v8 fromConcreteDownload:location[0] downloadable:downloadableCopy downloadError:v26 error:v23];
        MEMORY[0x277D82BD8](phase);
        v22 = 1;
      }

      objc_storeStrong(&progress, 0);
    }
  }

  else
  {
    [(SUSettingsStatefulDescriptor *)selfCopy assignState:0];
    v22 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)assignState:(unint64_t)state fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)error error:(id)a7
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v56 = a2;
  stateCopy = state;
  location = 0;
  objc_storeStrong(&location, download);
  downloadableCopy = downloadable;
  v52 = 0;
  objc_storeStrong(&v52, error);
  v51 = 0;
  objc_storeStrong(&v51, a7);
  progress = [location progress];
  isDone = [progress isDone];
  MEMORY[0x277D82BD8](progress);
  if (isDone)
  {
    v31 = selfCopy;
    descriptor = [location descriptor];
    v33 = [(SUSettingsStatefulDescriptor *)v31 isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](descriptor);
    if (v33)
    {
      objc_storeStrong(&v52, 0);
    }
  }

  updateDownloadError = [(SUSettingsStatefulDescriptor *)selfCopy updateDownloadError];
  selfCopy->_updateDownloadable = downloadableCopy;
  if (v51)
  {
    objc_storeStrong(&selfCopy->_updateDownloadError, v51);
  }

  else
  {
    objc_storeStrong(&selfCopy->_updateDownloadError, v52);
  }

  currentState = [(SUSettingsStatefulDescriptor *)selfCopy currentState];
  if (currentState != stateCopy)
  {
    goto LABEL_15;
  }

  ownerManager = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
  errorContextProvider = [(SUSettingsStatefulUIManager *)ownerManager errorContextProvider];
  v30 = [(SUSettingsStatefulErrorContextProvider *)errorContextProvider isError:updateDownloadError intrinsicallyEquivalentToError:selfCopy->_updateDownloadError withStatefulDescriptor:selfCopy download:location];
  MEMORY[0x277D82BD8](errorContextProvider);
  MEMORY[0x277D82BD8](ownerManager);
  if (!v30)
  {
    v17 = [(SUSettingsStatefulDescriptor *)selfCopy log];
    oslog = [(SUCoreLog *)v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v42;
      v16 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
      v8 = MEMORY[0x277D82BE0](v16);
      v41 = v8;
      descriptor2 = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
      humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
      v9 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v40 = v9;
      v10 = selfCopy;
      v13 = SUSettingsDescriptorStateToString(stateCopy);
      v39 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v58, "[SUSettingsStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v8, v9, v10, v39, stateCopy, updateDownloadError, selfCopy->_updateDownloadError);
      _os_log_impl(&dword_26AC94000, v11, v12, "%s [%{public}@, %{public}@, %p]: Allowing to re-assign the state %{public}@ (%ld) because the old error is not intrinsically equivalent to the new error.\n\tPrevious Error: %{public}@\n\tNew Error: %{public}@", v58, 0x52u);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&oslog, 0);
LABEL_15:
    [(SUSettingsStatefulDescriptor *)selfCopy assignState:stateCopy];
    v44 = 0;
    goto LABEL_16;
  }

  v27 = [(SUSettingsStatefulDescriptor *)selfCopy log];
  oslog = [(SUCoreLog *)v27 oslog];
  MEMORY[0x277D82BD8](v27);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v22 = type;
    v26 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
    v18 = MEMORY[0x277D82BE0](v26);
    v47 = v18;
    descriptor3 = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
    humanReadableUpdateName2 = [(SUDescriptor *)descriptor3 humanReadableUpdateName];
    v19 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v46 = v19;
    v20 = selfCopy;
    v23 = SUSettingsDescriptorStateToString(stateCopy);
    v45 = MEMORY[0x277D82BE0](v23);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_66_8_0(v59, "[SUSettingsStatefulDescriptor assignState:fromConcreteDownload:downloadable:downloadError:error:]", v18, v19, v20, v45, stateCopy);
    _os_log_impl(&dword_26AC94000, log, v22, "%s [%{public}@, %{public}@, %p]: Skipping on state assignment as it matches the current state: %{public}@ (%ld)", v59, 0x3Eu);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](descriptor3);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
  }

  objc_storeStrong(&oslog, 0);
  v44 = 1;
LABEL_16:
  objc_storeStrong(&updateDownloadError, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)updateStateFromProgressedDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  if (location[0])
  {
    v5 = selfCopy;
    descriptor = [location[0] descriptor];
    v7 = [(SUSettingsStatefulDescriptor *)v5 isEqualToDescriptor:?];
    MEMORY[0x277D82BD8](descriptor);
    if (v7)
    {
      progress = [location[0] progress];
      if (([progress isDone] & 1) == 0)
      {
        phase = [progress phase];
        v4 = 0;
        if (SUPrefsDownloadPhaseIsStalled(phase))
        {
          v4 = selfCopy->_currentState != 3;
        }

        MEMORY[0x277D82BD8](phase);
        if (v4)
        {
          [(SUSettingsStatefulDescriptor *)selfCopy assignState:3];
        }

        else if (selfCopy->_currentState != 2)
        {
          [(SUSettingsStatefulDescriptor *)selfCopy assignState:2];
        }
      }

      objc_storeStrong(&progress, 0);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    [(SUSettingsStatefulDescriptor *)selfCopy assignState:1];
    v9 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)assignState:(unint64_t)state
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v56 = a2;
  stateCopy = state;
  if ([(SUSettingsStatefulDescriptor *)self currentState]== state)
  {
    v32 = [(SUSettingsStatefulDescriptor *)selfCopy log];
    oslog = [(SUCoreLog *)v32 oslog];
    MEMORY[0x277D82BD8](v32);
    v53 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      type = v53;
      v31 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
      v23 = MEMORY[0x277D82BE0](v31);
      v52 = v23;
      descriptor = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v24 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v51 = v24;
      v25 = selfCopy;
      v28 = SUSettingsDescriptorStateToString([(SUSettingsStatefulDescriptor *)selfCopy currentState]);
      v50 = MEMORY[0x277D82BE0](v28);
      __os_log_helper_16_2_6_8_32_8_66_8_66_8_0_8_66_8_0(v59, "[SUSettingsStatefulDescriptor assignState:]", v23, v24, v25, v50, [(SUSettingsStatefulDescriptor *)selfCopy currentState]);
      _os_log_impl(&dword_26AC94000, log, type, "%s [%{public}@, %{public}@, %p]: Skipping on Descriptor State Assignment request: currentState == currentState (%{public}@ (%ld))", v59, 0x3Eu);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](v31);
      objc_storeStrong(&v50, 0);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v52, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v22 = [(SUSettingsStatefulDescriptor *)selfCopy log];
    oslog = [(SUCoreLog *)v22 oslog];
    MEMORY[0x277D82BD8](v22);
    v48 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = oslog;
      v16 = v48;
      v21 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
      v10 = MEMORY[0x277D82BE0](v21);
      v47 = v10;
      descriptor2 = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
      humanReadableUpdateName2 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
      v11 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      v46 = v11;
      v12 = selfCopy;
      v18 = SUSettingsDescriptorStateToString([(SUSettingsStatefulDescriptor *)selfCopy currentState]);
      v13 = MEMORY[0x277D82BE0](v18);
      v45 = v13;
      currentState = [(SUSettingsStatefulDescriptor *)selfCopy currentState];
      v17 = SUSettingsDescriptorStateToString(stateCopy);
      v44 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_8_8_32_8_66_8_66_8_0_8_66_8_0_8_66_8_0(v58, "[SUSettingsStatefulDescriptor assignState:]", v10, v11, v12, v13, currentState, v44, stateCopy);
      _os_log_impl(&dword_26AC94000, v15, v16, "%s [%{public}@, %{public}@, %p]: Assigning Descriptor state: %{public}@ (%ld) -> %{public}@ (%ld)", v58, 0x52u);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v44, 0);
      objc_storeStrong(&v45, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v47, 0);
    }

    objc_storeStrong(&oslog, 0);
    currentState2 = [(SUSettingsStatefulDescriptor *)selfCopy currentState];
    [(SUSettingsStatefulDescriptor *)selfCopy setCurrentState:stateCopy];
    ownerManager = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
    delegate = [(SUSettingsStatefulUIManager *)ownerManager delegate];
    v41 = 0;
    v39 = 0;
    v9 = 0;
    if (delegate)
    {
      ownerManager2 = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
      v41 = 1;
      delegate2 = [(SUSettingsStatefulUIManager *)ownerManager2 delegate];
      v39 = 1;
      v9 = objc_opt_respondsToSelector();
    }

    if (v39)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](ownerManager2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](ownerManager);
    if (v9)
    {
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      ownerManager3 = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
      delegateCallbackQueue = [(SUSettingsStatefulUIManager *)ownerManager3 delegateCallbackQueue];
      queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:?];
      v33 = MEMORY[0x277D85DD0];
      v34 = -1073741824;
      v35 = 0;
      v36 = __44__SUSettingsStatefulDescriptor_assignState___block_invoke;
      v37 = &unk_279CB93C0;
      v38[0] = MEMORY[0x277D82BE0](selfCopy);
      v38[1] = currentState2;
      v38[2] = stateCopy;
      dispatch_async(queue, &v33);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](delegateCallbackQueue);
      MEMORY[0x277D82BD8](ownerManager3);
      MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
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

- (void)resolveInstallationError:(id)error fromConcreteDownload:(id)download downloadable:(BOOL)downloadable downloadError:(id)downloadError error:(id)a7
{
  v78 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v71 = 0;
  objc_storeStrong(&v71, download);
  downloadableCopy = downloadable;
  v69 = 0;
  objc_storeStrong(&v69, downloadError);
  v68 = 0;
  objc_storeStrong(&v68, a7);
  v43 = [(SUSettingsStatefulDescriptor *)selfCopy log];
  oslog = [(SUCoreLog *)v43 oslog];
  MEMORY[0x277D82BD8](v43);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v39 = type;
    v42 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
    v37 = MEMORY[0x277D82BE0](v42);
    v65 = v37;
    descriptor = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v64 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v77, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v37, v64, selfCopy, location[0]);
    _os_log_impl(&dword_26AC94000, log, v39, "%s [%{public}@, %{public}@, %p]: Resolving installation error: %{public}@", v77, 0x34u);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](v42);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
  }

  objc_storeStrong(&oslog, 0);
  v63 = 4;
  v62 = 1;
  domain = [location[0] domain];
  v34 = getSUErrorDomain_0();
  v36 = [domain isEqualToString:?];
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](domain);
  if ((v36 & 1) == 0)
  {
    v33 = [(SUSettingsStatefulDescriptor *)selfCopy log];
    oslog = [(SUCoreLog *)v33 oslog];
    MEMORY[0x277D82BD8](v33);
    v60 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v28 = oslog;
      v29 = v60;
      v32 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
      v27 = MEMORY[0x277D82BE0](v32);
      v59 = v27;
      descriptor2 = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
      humanReadableUpdateName2 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
      v58 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v76, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v27, v58, selfCopy);
      _os_log_error_impl(&dword_26AC94000, v28, v29, "%s [%{public}@, %{public}@, %p]: The installation error domain doesn't match SUSErrorDomain.", v76, 0x2Au);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](v32);
      objc_storeStrong(&v58, 0);
      objc_storeStrong(&v59, 0);
    }

    objc_storeStrong(&oslog, 0);
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

  code = [location[0] code];
  switch(code)
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
      v25 = [(SUSettingsStatefulDescriptor *)selfCopy log];
      oslog2 = [(SUCoreLog *)v25 oslog];
      MEMORY[0x277D82BD8](v25);
      v55 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        v20 = oslog2;
        v21 = v55;
        v24 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
        v19 = MEMORY[0x277D82BE0](v24);
        v54 = v19;
        descriptor3 = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
        humanReadableUpdateName3 = [(SUDescriptor *)descriptor3 humanReadableUpdateName];
        v53 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
        __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v75, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v19, v53, selfCopy, v68);
        _os_log_impl(&dword_26AC94000, v20, v21, "%s [%{public}@, %{public}@, %p]: Starting a new scan due to installation error: %{public}@", v75, 0x34u);
        MEMORY[0x277D82BD8](humanReadableUpdateName3);
        MEMORY[0x277D82BD8](descriptor3);
        MEMORY[0x277D82BD8](v24);
        objc_storeStrong(&v53, 0);
        objc_storeStrong(&v54, 0);
      }

      objc_storeStrong(&oslog2, 0);
      v62 = 0;
      ownerManager = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
      [(SUSettingsStatefulUIManager *)ownerManager checkForAvailableUpdates];
      MEMORY[0x277D82BD8](ownerManager);
      goto LABEL_24;
    case 19:
      goto LABEL_31;
    case 20:
LABEL_24:
      userInfo = [v68 userInfo];
      v15 = getkSUInstallationConstraintsUnmetKey();
      v14 = [userInfo objectForKey:?];
      unsignedIntegerValue = [v14 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](userInfo);
      v52 = unsignedIntegerValue;
      if (unsignedIntegerValue == 16 || v52 == 32 || v52 == 48)
      {
        objc_storeStrong(&v68, 0);
        goto LABEL_31;
      }

LABEL_28:
      v13 = [(SUSettingsStatefulDescriptor *)selfCopy log];
      oslog3 = [(SUCoreLog *)v13 oslog];
      MEMORY[0x277D82BD8](v13);
      v50 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        v8 = oslog3;
        v9 = v50;
        v12 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
        v7 = MEMORY[0x277D82BE0](v12);
        v49 = v7;
        descriptor4 = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
        humanReadableUpdateName4 = [(SUDescriptor *)descriptor4 humanReadableUpdateName];
        v48 = MEMORY[0x277D82BE0](humanReadableUpdateName4);
        __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v74, "[SUSettingsStatefulDescriptor resolveInstallationError:fromConcreteDownload:downloadable:downloadError:error:]", v7, v48, selfCopy, v68);
        _os_log_error_impl(&dword_26AC94000, v8, v9, "%s [%{public}@, %{public}@, %p]: Couldn't resolve the installation error: %{public}@", v74, 0x34u);
        MEMORY[0x277D82BD8](humanReadableUpdateName4);
        MEMORY[0x277D82BD8](descriptor4);
        MEMORY[0x277D82BD8](v12);
        objc_storeStrong(&v48, 0);
        objc_storeStrong(&v49, 0);
      }

      objc_storeStrong(&oslog3, 0);
      goto LABEL_31;
  }

  if (code != 42)
  {
    goto LABEL_28;
  }

LABEL_19:
  v63 = 5;
  objc_storeStrong(&v68, 0);
LABEL_31:
  if (v62)
  {
    [(SUSettingsStatefulDescriptor *)selfCopy assignState:v63 fromConcreteDownload:v71 downloadable:downloadableCopy downloadError:v69 error:v68];
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
  selfCopy = self;
  v16[1] = a2;
  ownerManager = [(SUSettingsStatefulDescriptor *)self ownerManager];
  MEMORY[0x277D82BD8](ownerManager);
  if (ownerManager)
  {
    ownerManager2 = [(SUSettingsStatefulDescriptor *)selfCopy ownerManager];
    hidingPreferredDescriptor = [(SUSettingsStatefulUIManager *)ownerManager2 hidingPreferredDescriptor];
    MEMORY[0x277D82BD8](ownerManager2);
    if (hidingPreferredDescriptor)
    {
      descriptorType = selfCopy->_descriptorType != 1;
    }

    else
    {
      descriptorType = selfCopy->_descriptorType;
    }
  }

  else
  {
    v11 = [(SUSettingsStatefulDescriptor *)selfCopy log];
    v16[0] = [(SUCoreLog *)v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v16[0];
      type = v15;
      v10 = SUSettingsDescriptorTypeToString(selfCopy->_descriptorType);
      v5 = MEMORY[0x277D82BE0](v10);
      v14 = v5;
      descriptor = [(SUSettingsStatefulDescriptor *)selfCopy descriptor];
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v19, "[SUSettingsStatefulDescriptor maskedDescriptorType]", v5, v13, selfCopy);
      _os_log_impl(&dword_26AC94000, log, type, "%s [%{public}@, %{public}@, %p]: Could not get the masked descriptor type because the ownerManager is nil. This is likely a bug.", v19, 0x2Au);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(v16, 0);
    descriptorType = selfCopy->_descriptorType;
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