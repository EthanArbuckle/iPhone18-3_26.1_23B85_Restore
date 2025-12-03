@interface SUUIScanOperationScanResults
- (SUUIScanOperationScanResults)initWithIdentifier:(id)identifier preferredUpdateDownloadable:(BOOL)downloadable alternateUpdateDownloadable:(BOOL)updateDownloadable preferredUpdateDownloadError:(id)error alternateUpdateDownloadError:(id)downloadError clearingSpaceForDownload:(BOOL)download currentDownload:(id)currentDownload autoUpdateScheduled:(BOOL)self0 updateReadyForInstallation:(BOOL)self1 updateInstallationError:(id)self2;
- (id)descriptionDictionary;
@end

@implementation SUUIScanOperationScanResults

- (SUUIScanOperationScanResults)initWithIdentifier:(id)identifier preferredUpdateDownloadable:(BOOL)downloadable alternateUpdateDownloadable:(BOOL)updateDownloadable preferredUpdateDownloadError:(id)error alternateUpdateDownloadError:(id)downloadError clearingSpaceForDownload:(BOOL)download currentDownload:(id)currentDownload autoUpdateScheduled:(BOOL)self0 updateReadyForInstallation:(BOOL)self1 updateInstallationError:(id)self2
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  downloadableCopy = downloadable;
  updateDownloadableCopy = updateDownloadable;
  v30 = 0;
  objc_storeStrong(&v30, error);
  v29 = 0;
  objc_storeStrong(&v29, downloadError);
  downloadCopy = download;
  v27 = 0;
  objc_storeStrong(&v27, currentDownload);
  scheduledCopy = scheduled;
  installationCopy = installation;
  v24 = 0;
  objc_storeStrong(&v24, installationError);
  v12 = selfCopy;
  selfCopy = 0;
  v23.receiver = v12;
  v23.super_class = SUUIScanOperationScanResults;
  v22 = [(SUUIScanOperationScanResults *)&v23 init];
  selfCopy = v22;
  objc_storeStrong(&selfCopy, v22);
  if (v22)
  {
    v13 = [location[0] copy];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = v13;
    MEMORY[0x277D82BD8](identifier);
    selfCopy->_preferredUpdateDownloadable = downloadableCopy;
    selfCopy->_alternateUpdateDownloadable = updateDownloadableCopy;
    objc_storeStrong(&selfCopy->_preferredUpdateDownloadError, v30);
    objc_storeStrong(&selfCopy->_alternateUpdateDownloadError, v29);
    selfCopy->_clearingSpaceForDownload = downloadCopy;
    objc_storeStrong(&selfCopy->_currentDownload, v27);
    selfCopy->_autoUpdateScheduled = scheduledCopy;
    selfCopy->_updateReadyForInstallation = installationCopy;
    objc_storeStrong(&selfCopy->_updateInstallationError, v24);
  }

  v16 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (id)descriptionDictionary
{
  v83[10] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  obj[1] = a2;
  obj[0] = 0;
  currentDownload = [(SUUIScanOperationScanResults *)self currentDownload];
  v57 = 0;
  v55 = 0;
  v54 = 0;
  if (currentDownload)
  {
    currentDownload2 = [(SUUIScanOperationScanResults *)selfCopy currentDownload];
    v57 = 1;
    descriptor = [(SUUIDownload *)currentDownload2 descriptor];
    v55 = 1;
    v54 = descriptor != 0;
  }

  if (v55)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v54)
  {
    v46 = MEMORY[0x277CCACA8];
    currentDownload3 = [(SUUIScanOperationScanResults *)selfCopy currentDownload];
    descriptor2 = [(SUUIDownload *)currentDownload3 descriptor];
    updateName = [descriptor2 updateName];
    currentDownload4 = [(SUUIScanOperationScanResults *)selfCopy currentDownload];
    currentDownload5 = [(SUUIScanOperationScanResults *)selfCopy currentDownload];
    progress = [(SUUIDownload *)currentDownload5 progress];
    v2 = [v46 stringWithFormat:@"%@ (%p) (progess: %@)", updateName, currentDownload4, progress];
    v3 = obj[0];
    obj[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](updateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v82[0] = @"identifier";
  identifier = [(SUUIScanOperationScanResults *)selfCopy identifier];
  v83[0] = identifier;
  v82[1] = @"preferredUpdateDownloadable";
  if ([(SUUIScanOperationScanResults *)selfCopy isPreferredUpdateDownloadable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v41 = v4;
  v5 = v4;
  v42 = v41;
  v83[1] = v42;
  v82[2] = @"alternateUpdateDownloadable";
  if ([(SUUIScanOperationScanResults *)selfCopy isAlternateUpdateDownloadable])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v43 = v6;
  v7 = v6;
  v44 = v43;
  v83[2] = v44;
  v82[3] = @"preferredUpdateDownloadError";
  preferredUpdateDownloadError = [(SUUIScanOperationScanResults *)selfCopy preferredUpdateDownloadError];
  location = 0;
  objc_storeStrong(&location, preferredUpdateDownloadError);
  v78 = 0;
  if (location)
  {
    v8 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v78 = 1;
    v8 = MEMORY[0x277D82BE0](null);
  }

  v81 = v8;
  if (v78)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v37 = v81;
  v9 = v81;
  v38 = v37;
  v83[3] = v38;
  v82[4] = @"alternateUpdateDownloadError";
  preferredUpdateDownloadError2 = [(SUUIScanOperationScanResults *)selfCopy preferredUpdateDownloadError];
  v76 = 0;
  objc_storeStrong(&v76, preferredUpdateDownloadError2);
  v74 = 0;
  if (v76)
  {
    v10 = MEMORY[0x277D82BE0](v76);
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    v74 = 1;
    v10 = MEMORY[0x277D82BE0](null2);
  }

  v77 = v10;
  if (v74)
  {
    MEMORY[0x277D82BD8](null2);
  }

  objc_storeStrong(&v76, 0);
  v33 = v77;
  v11 = v77;
  v34 = v33;
  v83[4] = v34;
  v82[5] = @"isClearingSpaceForDownload";
  if ([(SUUIScanOperationScanResults *)selfCopy isClearingSpaceForDownload])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v35 = v12;
  v13 = v12;
  v36 = v35;
  v83[5] = v36;
  v82[6] = @"currentDownload";
  v72 = 0;
  objc_storeStrong(&v72, obj[0]);
  v70 = 0;
  if (v72)
  {
    v14 = MEMORY[0x277D82BE0](v72);
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
    v70 = 1;
    v14 = MEMORY[0x277D82BE0](null3);
  }

  v73 = v14;
  if (v70)
  {
    MEMORY[0x277D82BD8](null3);
  }

  objc_storeStrong(&v72, 0);
  v26 = v73;
  v15 = v73;
  v27 = v26;
  v83[6] = v27;
  v82[7] = @"autoUpdateScheduled";
  if ([(SUUIScanOperationScanResults *)selfCopy isAutoUpdateScheduled])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v28 = v16;
  v17 = v16;
  v29 = v28;
  v83[7] = v29;
  v82[8] = @"isUpdateReadyForInstallation";
  if ([(SUUIScanOperationScanResults *)selfCopy isUpdateReadyForInstallation])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v30 = v18;
  v19 = v18;
  v31 = v30;
  v83[8] = v31;
  v82[9] = @"updateInstallationError";
  updateInstallationError = [(SUUIScanOperationScanResults *)selfCopy updateInstallationError];
  v68 = 0;
  objc_storeStrong(&v68, updateInstallationError);
  v66 = 0;
  if (v68)
  {
    v20 = MEMORY[0x277D82BE0](v68);
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
    v66 = 1;
    v20 = MEMORY[0x277D82BE0](null4);
  }

  v69 = v20;
  if (v66)
  {
    MEMORY[0x277D82BD8](null4);
  }

  objc_storeStrong(&v68, 0);
  v23 = v69;
  v21 = v69;
  v24 = v23;
  v83[9] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:10];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](updateInstallationError);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](preferredUpdateDownloadError2);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](identifier);
  objc_storeStrong(obj, 0);
  *MEMORY[0x277D85DE8];

  return v25;
}

@end