@interface SUUIMobileScanOperationFullScanResults
- (id)descriptionDictionary;
- (id)initFromScanParam:(id)param withIdentifier:(id)identifier;
@end

@implementation SUUIMobileScanOperationFullScanResults

- (id)initFromScanParam:(id)param withIdentifier:(id)identifier
{
  obj = identifier;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, param);
  v98 = 0;
  objc_storeStrong(&v98, obj);
  v64 = selfCopy;
  v65 = v98;
  preferredUpdateDownloadable = [location[0] preferredUpdateDownloadable];
  alternateUpdateDownloadable = [location[0] alternateUpdateDownloadable];
  preferredUpdateDownloadError = [location[0] preferredUpdateDownloadError];
  v96 = 0;
  v94 = 0;
  if (preferredUpdateDownloadError)
  {
    v60 = [SUUIMobileStatefulError alloc];
    preferredUpdateDownloadError2 = [location[0] preferredUpdateDownloadError];
    v61 = 1;
    v96 = 1;
    v95 = [(SUUIStatefulError *)v60 initFromError:?];
    v94 = 1;
    v62 = v95;
  }

  else
  {
    v62 = 0;
  }

  v58 = v62;
  alternateUpdateDownloadError = [location[0] alternateUpdateDownloadError];
  v92 = 0;
  v90 = 0;
  if (alternateUpdateDownloadError)
  {
    v55 = [SUUIMobileStatefulError alloc];
    alternateUpdateDownloadError2 = [location[0] alternateUpdateDownloadError];
    v56 = 1;
    v92 = 1;
    v91 = [(SUUIStatefulError *)v55 initFromError:?];
    v90 = 1;
    v57 = v91;
  }

  else
  {
    v57 = 0;
  }

  v52 = v57;
  isClearingSpaceForDownload = [location[0] isClearingSpaceForDownload];
  currentDownload = [location[0] currentDownload];
  v88 = 0;
  v86 = 0;
  if (currentDownload)
  {
    v49 = [SUUIMobileDownload alloc];
    currentDownload2 = [location[0] currentDownload];
    v50 = 1;
    v88 = 1;
    v87 = [(SUUIMobileDownload *)v49 initWithDownload:?];
    v86 = 1;
    v51 = v87;
  }

  else
  {
    v51 = 0;
  }

  v45 = v51;
  isAutoUpdateScheduled = [location[0] isAutoUpdateScheduled];
  isUpdateReadyForInstallation = [location[0] isUpdateReadyForInstallation];
  updateInstallationError = [location[0] updateInstallationError];
  v84 = 0;
  v82 = 0;
  if (updateInstallationError)
  {
    v42 = [SUUIMobileStatefulError alloc];
    updateInstallationError2 = [location[0] updateInstallationError];
    v43 = 1;
    v84 = 1;
    v83 = [(SUUIStatefulError *)v42 initFromError:?];
    v82 = 1;
    v44 = v83;
  }

  else
  {
    v44 = 0;
  }

  v40 = v44;
  preferredDescriptor = [location[0] preferredDescriptor];
  v80 = 0;
  v78 = 0;
  if (preferredDescriptor)
  {
    v37 = [SUUIMobileDescriptor alloc];
    preferredDescriptor2 = [location[0] preferredDescriptor];
    v38 = 1;
    v80 = 1;
    v79 = [(SUUIMobileDescriptor *)v37 initWithDescriptor:?];
    v78 = 1;
    v39 = v79;
  }

  else
  {
    v39 = 0;
  }

  v35 = v39;
  alternateDescriptor = [location[0] alternateDescriptor];
  v76 = 0;
  v74 = 0;
  if (alternateDescriptor)
  {
    v32 = [SUUIMobileDescriptor alloc];
    alternateDescriptor2 = [location[0] alternateDescriptor];
    v33 = 1;
    v76 = 1;
    v75 = [(SUUIMobileDescriptor *)v32 initWithDescriptor:?];
    v74 = 1;
    v34 = v75;
  }

  else
  {
    v34 = 0;
  }

  v30 = v34;
  scanError = [location[0] scanError];
  v72 = 0;
  v70 = 0;
  if (scanError)
  {
    v27 = [SUUIMobileStatefulError alloc];
    scanError2 = [location[0] scanError];
    v28 = 1;
    v72 = 1;
    v71 = [(SUUIStatefulError *)v27 initFromError:?];
    v70 = 1;
    v29 = v71;
  }

  else
  {
    v29 = 0;
  }

  v15 = v29;
  emptyScanResults = [location[0] emptyScanResults];
  v14 = MEMORY[0x277D64B60];
  v17 = [MEMORY[0x277D64B60] definitionFromSUType:{objc_msgSend(location[0], "mdmPathRestrictions")}];
  isDelayingUpdate = [location[0] isDelayingUpdate];
  isRollingBackSplatUpdate = [location[0] isRollingBackSplatUpdate];
  currentSeedingDevice = [location[0] currentSeedingDevice];
  betaPrograms = [location[0] betaPrograms];
  enrolledBetaProgram = [location[0] enrolledBetaProgram];
  ddmDeclaration = [location[0] ddmDeclaration];
  v21 = &selfCopy;
  selfCopy = 0;
  v69.receiver = v64;
  v69.super_class = SUUIMobileScanOperationFullScanResults;
  v20 = &v5;
  LOBYTE(v6) = isAutoUpdateScheduled;
  BYTE1(v6) = isUpdateReadyForInstallation;
  LOBYTE(v7) = emptyScanResults;
  LOBYTE(v8) = isDelayingUpdate;
  BYTE1(v8) = isRollingBackSplatUpdate;
  v22 = [SUUIScanOperationFullScanResults initWithIdentifier:sel_initWithIdentifier_preferredUpdateDownloadable_alternateUpdateDownloadable_preferredUpdateDownloadError_alternateUpdateDownloadError_clearingSpaceForDownload_currentDownload_autoUpdateScheduled_updateReadyForInstallation_updateInstallationError_preferredDescriptor_alternateDescriptor_scanError_emptyScanResults_mdmPathRestrictions_delayingUpdate_rollingBack_currentSeedingDevice_betaPrograms_enrolledBetaProgram_ddmDeclaration_ preferredUpdateDownloadable:v65 alternateUpdateDownloadable:preferredUpdateDownloadable preferredUpdateDownloadError:alternateUpdateDownloadable alternateUpdateDownloadError:v58 clearingSpaceForDownload:v52 currentDownload:isClearingSpaceForDownload autoUpdateScheduled:v45 updateReadyForInstallation:v6 updateInstallationError:v40 preferredDescriptor:v35 alternateDescriptor:v30 scanError:v29 emptyScanResults:v7 mdmPathRestrictions:v17 delayingUpdate:v8 rollingBack:currentSeedingDevice currentSeedingDevice:betaPrograms betaPrograms:enrolledBetaProgram enrolledBetaProgram:ddmDeclaration ddmDeclaration:?];
  selfCopy = v22;
  objc_storeStrong(v21, v22);
  MEMORY[0x277D82BD8](ddmDeclaration);
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](betaPrograms);
  MEMORY[0x277D82BD8](currentSeedingDevice);
  if (v70)
  {
    MEMORY[0x277D82BD8](v71);
  }

  if (v72)
  {
    MEMORY[0x277D82BD8](scanError2);
  }

  MEMORY[0x277D82BD8](scanError);
  if (v74)
  {
    MEMORY[0x277D82BD8](v75);
  }

  if (v76)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  MEMORY[0x277D82BD8](alternateDescriptor);
  if (v78)
  {
    MEMORY[0x277D82BD8](v79);
  }

  if (v80)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  MEMORY[0x277D82BD8](preferredDescriptor);
  if (v82)
  {
    MEMORY[0x277D82BD8](v83);
  }

  if (v84)
  {
    MEMORY[0x277D82BD8](updateInstallationError2);
  }

  MEMORY[0x277D82BD8](updateInstallationError);
  if (v86)
  {
    MEMORY[0x277D82BD8](v87);
  }

  if (v88)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v90)
  {
    MEMORY[0x277D82BD8](v91);
  }

  if (v92)
  {
    MEMORY[0x277D82BD8](alternateUpdateDownloadError2);
  }

  MEMORY[0x277D82BD8](alternateUpdateDownloadError);
  if (v94)
  {
    MEMORY[0x277D82BD8](v95);
  }

  if (v96)
  {
    MEMORY[0x277D82BD8](preferredUpdateDownloadError2);
  }

  MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  if (v22)
  {
    currentAutoInstallOperation = [location[0] currentAutoInstallOperation];
    [(SUUIMobileScanOperationFullScanResults *)selfCopy setCurrentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
    rollbackDescriptor = [location[0] rollbackDescriptor];
    [(SUUIMobileScanOperationFullScanResults *)selfCopy setRollbackDescriptor:?];
    MEMORY[0x277D82BD8](rollbackDescriptor);
  }

  v9 = &selfCopy;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v10 = 0;
  objc_storeStrong(&v98, 0);
  objc_storeStrong(location, v10);
  objc_storeStrong(v9, v10);
  return v11;
}

- (id)descriptionDictionary
{
  v21[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14[1] = a2;
  v13.receiver = self;
  v13.super_class = SUUIMobileScanOperationFullScanResults;
  descriptionDictionary = [(SUUIScanOperationFullScanResults *)&v13 descriptionDictionary];
  v14[0] = [descriptionDictionary mutableCopy];
  MEMORY[0x277D82BD8](descriptionDictionary);
  v10 = v14[0];
  v20[0] = @"currentAutoInstallOperation";
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", selfCopy->_currentAutoInstallOperation];
  v21[0] = v11;
  v20[1] = @"rollbackDescriptor";
  rollbackDescriptor = [(SUUIMobileScanOperationFullScanResults *)selfCopy rollbackDescriptor];
  location = 0;
  objc_storeStrong(&location, rollbackDescriptor);
  v16 = 0;
  if (location)
  {
    v2 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v16 = 1;
    v2 = MEMORY[0x277D82BE0](null);
  }

  v19 = v2;
  if (v16)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v5 = v19;
  v3 = v19;
  v7 = v5;
  v21[1] = v7;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v10 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](rollbackDescriptor);
  MEMORY[0x277D82BD8](v11);
  v8 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

@end