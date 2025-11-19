@interface SUUIScanOperationScanResults
- (SUUIScanOperationScanResults)initWithIdentifier:(id)a3 preferredUpdateDownloadable:(BOOL)a4 alternateUpdateDownloadable:(BOOL)a5 preferredUpdateDownloadError:(id)a6 alternateUpdateDownloadError:(id)a7 clearingSpaceForDownload:(BOOL)a8 currentDownload:(id)a9 autoUpdateScheduled:(BOOL)a10 updateReadyForInstallation:(BOOL)a11 updateInstallationError:(id)a12;
- (id)descriptionDictionary;
@end

@implementation SUUIScanOperationScanResults

- (SUUIScanOperationScanResults)initWithIdentifier:(id)a3 preferredUpdateDownloadable:(BOOL)a4 alternateUpdateDownloadable:(BOOL)a5 preferredUpdateDownloadError:(id)a6 alternateUpdateDownloadError:(id)a7 clearingSpaceForDownload:(BOOL)a8 currentDownload:(id)a9 autoUpdateScheduled:(BOOL)a10 updateReadyForInstallation:(BOOL)a11 updateInstallationError:(id)a12
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = a4;
  v31 = a5;
  v30 = 0;
  objc_storeStrong(&v30, a6);
  v29 = 0;
  objc_storeStrong(&v29, a7);
  v28 = a8;
  v27 = 0;
  objc_storeStrong(&v27, a9);
  v26 = a10;
  v25 = a11;
  v24 = 0;
  objc_storeStrong(&v24, a12);
  v12 = v34;
  v34 = 0;
  v23.receiver = v12;
  v23.super_class = SUUIScanOperationScanResults;
  v22 = [(SUUIScanOperationScanResults *)&v23 init];
  v34 = v22;
  objc_storeStrong(&v34, v22);
  if (v22)
  {
    v13 = [location[0] copy];
    identifier = v34->_identifier;
    v34->_identifier = v13;
    MEMORY[0x277D82BD8](identifier);
    v34->_preferredUpdateDownloadable = v32;
    v34->_alternateUpdateDownloadable = v31;
    objc_storeStrong(&v34->_preferredUpdateDownloadError, v30);
    objc_storeStrong(&v34->_alternateUpdateDownloadError, v29);
    v34->_clearingSpaceForDownload = v28;
    objc_storeStrong(&v34->_currentDownload, v27);
    v34->_autoUpdateScheduled = v26;
    v34->_updateReadyForInstallation = v25;
    objc_storeStrong(&v34->_updateInstallationError, v24);
  }

  v16 = MEMORY[0x277D82BE0](v34);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v34, 0);
  return v16;
}

- (id)descriptionDictionary
{
  v83[10] = *MEMORY[0x277D85DE8];
  v60 = self;
  obj[1] = a2;
  obj[0] = 0;
  v53 = [(SUUIScanOperationScanResults *)self currentDownload];
  v57 = 0;
  v55 = 0;
  v54 = 0;
  if (v53)
  {
    v58 = [(SUUIScanOperationScanResults *)v60 currentDownload];
    v57 = 1;
    v56 = [(SUUIDownload *)v58 descriptor];
    v55 = 1;
    v54 = v56 != 0;
  }

  if (v55)
  {
    MEMORY[0x277D82BD8](v56);
  }

  if (v57)
  {
    MEMORY[0x277D82BD8](v58);
  }

  MEMORY[0x277D82BD8](v53);
  if (v54)
  {
    v46 = MEMORY[0x277CCACA8];
    v52 = [(SUUIScanOperationScanResults *)v60 currentDownload];
    v51 = [(SUUIDownload *)v52 descriptor];
    v50 = [v51 updateName];
    v49 = [(SUUIScanOperationScanResults *)v60 currentDownload];
    v48 = [(SUUIScanOperationScanResults *)v60 currentDownload];
    v47 = [(SUUIDownload *)v48 progress];
    v2 = [v46 stringWithFormat:@"%@ (%p) (progess: %@)", v50, v49, v47];
    v3 = obj[0];
    obj[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
  }

  v82[0] = @"identifier";
  v40 = [(SUUIScanOperationScanResults *)v60 identifier];
  v83[0] = v40;
  v82[1] = @"preferredUpdateDownloadable";
  if ([(SUUIScanOperationScanResults *)v60 isPreferredUpdateDownloadable])
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
  if ([(SUUIScanOperationScanResults *)v60 isAlternateUpdateDownloadable])
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
  v45 = [(SUUIScanOperationScanResults *)v60 preferredUpdateDownloadError];
  location = 0;
  objc_storeStrong(&location, v45);
  v78 = 0;
  if (location)
  {
    v8 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v79 = [MEMORY[0x277CBEB68] null];
    v78 = 1;
    v8 = MEMORY[0x277D82BE0](v79);
  }

  v81 = v8;
  if (v78)
  {
    MEMORY[0x277D82BD8](v79);
  }

  objc_storeStrong(&location, 0);
  v37 = v81;
  v9 = v81;
  v38 = v37;
  v83[3] = v38;
  v82[4] = @"alternateUpdateDownloadError";
  v39 = [(SUUIScanOperationScanResults *)v60 preferredUpdateDownloadError];
  v76 = 0;
  objc_storeStrong(&v76, v39);
  v74 = 0;
  if (v76)
  {
    v10 = MEMORY[0x277D82BE0](v76);
  }

  else
  {
    v75 = [MEMORY[0x277CBEB68] null];
    v74 = 1;
    v10 = MEMORY[0x277D82BE0](v75);
  }

  v77 = v10;
  if (v74)
  {
    MEMORY[0x277D82BD8](v75);
  }

  objc_storeStrong(&v76, 0);
  v33 = v77;
  v11 = v77;
  v34 = v33;
  v83[4] = v34;
  v82[5] = @"isClearingSpaceForDownload";
  if ([(SUUIScanOperationScanResults *)v60 isClearingSpaceForDownload])
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
    v71 = [MEMORY[0x277CBEB68] null];
    v70 = 1;
    v14 = MEMORY[0x277D82BE0](v71);
  }

  v73 = v14;
  if (v70)
  {
    MEMORY[0x277D82BD8](v71);
  }

  objc_storeStrong(&v72, 0);
  v26 = v73;
  v15 = v73;
  v27 = v26;
  v83[6] = v27;
  v82[7] = @"autoUpdateScheduled";
  if ([(SUUIScanOperationScanResults *)v60 isAutoUpdateScheduled])
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
  if ([(SUUIScanOperationScanResults *)v60 isUpdateReadyForInstallation])
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
  v32 = [(SUUIScanOperationScanResults *)v60 updateInstallationError];
  v68 = 0;
  objc_storeStrong(&v68, v32);
  v66 = 0;
  if (v68)
  {
    v20 = MEMORY[0x277D82BE0](v68);
  }

  else
  {
    v67 = [MEMORY[0x277CBEB68] null];
    v66 = 1;
    v20 = MEMORY[0x277D82BE0](v67);
  }

  v69 = v20;
  if (v66)
  {
    MEMORY[0x277D82BD8](v67);
  }

  objc_storeStrong(&v68, 0);
  v23 = v69;
  v21 = v69;
  v24 = v23;
  v83[9] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:10];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v40);
  objc_storeStrong(obj, 0);
  *MEMORY[0x277D85DE8];

  return v25;
}

@end