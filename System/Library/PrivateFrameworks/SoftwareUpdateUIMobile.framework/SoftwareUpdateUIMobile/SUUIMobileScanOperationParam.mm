@interface SUUIMobileScanOperationParam
- (SUUIMobileScanOperationParam)initWithError:(id)error;
- (SUUIMobileScanOperationParam)initWithFullScanContext:(id)context;
- (SUUIMobileScanOperationParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andRefreshContext:(id)context;
- (id)description;
@end

@implementation SUUIMobileScanOperationParam

- (SUUIMobileScanOperationParam)initWithFullScanContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v17.receiver = v3;
  v17.super_class = SUUIMobileScanOperationParam;
  v16 = [(SUUIMobileScanOperationParam *)&v17 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    scanOptions = [location[0] scanOptions];
    options = selfCopy->_options;
    selfCopy->_options = scanOptions;
    MEMORY[0x277D82BD8](options);
    forceReloadScanResults = [location[0] forceReloadScanResults];
    selfCopy->_forceReloadScanResults = forceReloadScanResults;
    previousThirdPartyScanResults = [location[0] previousThirdPartyScanResults];
    toSUScanResults = [previousThirdPartyScanResults toSUScanResults];
    thirdPartyDiscoveredScanResults = selfCopy->_thirdPartyDiscoveredScanResults;
    selfCopy->_thirdPartyDiscoveredScanResults = toSUScanResults;
    MEMORY[0x277D82BD8](thirdPartyDiscoveredScanResults);
    MEMORY[0x277D82BD8](previousThirdPartyScanResults);
    previousScanError = [location[0] previousScanError];
    thirdPartyDiscoveredScanError = selfCopy->_thirdPartyDiscoveredScanError;
    selfCopy->_thirdPartyDiscoveredScanError = previousScanError;
    MEMORY[0x277D82BD8](thirdPartyDiscoveredScanError);
    agreementStatusRegistry = [location[0] agreementStatusRegistry];
    agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
    selfCopy->_agreementStatusRegistry = agreementStatusRegistry;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
  }

  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (SUUIMobileScanOperationParam)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor andRefreshContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v24 = 0;
  objc_storeStrong(&v24, alternateDescriptor);
  v23 = 0;
  objc_storeStrong(&v23, context);
  v5 = selfCopy;
  selfCopy = 0;
  v22.receiver = v5;
  v22.super_class = SUUIMobileScanOperationParam;
  v19 = [(SUUIMobileScanOperationParam *)&v22 init];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    objc_storeStrong(&selfCopy->_preferredDescriptor, location[0]);
    objc_storeStrong(&selfCopy->_alternateDescriptor, v24);
    previousDownload = [v23 previousDownload];
    v20 = MEMORY[0x277D82BE0](previousDownload);
    objc_storeStrong(&previousDownload, 0);
    underlyingDownload = [v20 underlyingDownload];
    currentDownload = selfCopy->_currentDownload;
    selfCopy->_currentDownload = underlyingDownload;
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](v20);
    currentAutoInstallOperation = [v23 currentAutoInstallOperation];
    currentAutoInstallOperation = selfCopy->_currentAutoInstallOperation;
    selfCopy->_currentAutoInstallOperation = currentAutoInstallOperation;
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
    currentAutoInstallOperation2 = [v23 currentAutoInstallOperation];
    selfCopy->_isAutoUpdateScheduled = currentAutoInstallOperation2 != 0;
    MEMORY[0x277D82BD8](currentAutoInstallOperation2);
    previousEncounteredError = [v23 previousEncounteredError];
    operationError = selfCopy->_operationError;
    selfCopy->_operationError = previousEncounteredError;
    MEMORY[0x277D82BD8](operationError);
    agreementStatusRegistry = [v23 agreementStatusRegistry];
    agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
    selfCopy->_agreementStatusRegistry = agreementStatusRegistry;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
  }

  v16 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (SUUIMobileScanOperationParam)initWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = SUUIMobileScanOperationParam;
  v6 = [(SUUIMobileScanOperationParam *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_operationError, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)description
{
  v145[22] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  obj[1] = a2;
  obj[0] = 0;
  currentDownload = [(SUUIMobileScanOperationParam *)self currentDownload];
  v103 = 0;
  v101 = 0;
  v96 = 0;
  if (currentDownload)
  {
    currentDownload2 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    v103 = 1;
    descriptor = [(SUDownload *)currentDownload2 descriptor];
    v101 = 1;
    v96 = descriptor != 0;
  }

  if (v101)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v103)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v96)
  {
    v88 = MEMORY[0x277CCACA8];
    currentDownload3 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    descriptor2 = [(SUDownload *)currentDownload3 descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
    currentDownload4 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    currentDownload5 = [(SUUIMobileScanOperationParam *)selfCopy currentDownload];
    progress = [(SUDownload *)currentDownload5 progress];
    v2 = [v88 stringWithFormat:@"%@ (%p) (progess: %@)", humanReadableUpdateName, currentDownload4, progress];
    v3 = obj[0];
    obj[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v87 = MEMORY[0x277D64B68];
  v144[0] = @"operationError";
  operationError = selfCopy->_operationError;
  location = 0;
  objc_storeStrong(&location, operationError);
  v132 = 0;
  if (location)
  {
    v5 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v132 = 1;
    v5 = MEMORY[0x277D82BE0](null);
  }

  v135 = v5;
  if (v132)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v84 = v135;
  v6 = v135;
  v85 = v84;
  v145[0] = v85;
  v144[1] = @"preferredDescriptor";
  v86 = MEMORY[0x277CCACA8];
  v99 = 0;
  if (selfCopy->_preferredDescriptor)
  {
    humanReadableUpdateName2 = [(SUDescriptor *)selfCopy->_preferredDescriptor humanReadableUpdateName];
    v99 = 1;
    v83 = humanReadableUpdateName2;
  }

  else
  {
    v83 = @"(null)";
  }

  v81 = [v86 stringWithFormat:@"%@ (%p)", v83, selfCopy->_preferredDescriptor];
  v145[1] = v81;
  v144[2] = @"alternateDescriptor";
  v82 = MEMORY[0x277CCACA8];
  v97 = 0;
  if (selfCopy->_alternateDescriptor)
  {
    humanReadableUpdateName3 = [(SUDescriptor *)selfCopy->_alternateDescriptor humanReadableUpdateName];
    v97 = 1;
    v80 = humanReadableUpdateName3;
  }

  else
  {
    v80 = @"(null)";
  }

  v79 = [v82 stringWithFormat:@"%@ (%p)", v80, selfCopy->_alternateDescriptor];
  v145[2] = v79;
  v144[3] = @"scanError";
  scanError = selfCopy->_scanError;
  v130 = 0;
  objc_storeStrong(&v130, scanError);
  v128 = 0;
  if (v130)
  {
    v8 = MEMORY[0x277D82BE0](v130);
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    v128 = 1;
    v8 = MEMORY[0x277D82BE0](null2);
  }

  v131 = v8;
  if (v128)
  {
    MEMORY[0x277D82BD8](null2);
  }

  objc_storeStrong(&v130, 0);
  v71 = v131;
  v9 = v131;
  v72 = v71;
  v145[3] = v72;
  v144[4] = @"emptyScanResults";
  if (selfCopy->_emptyScanResults)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v73 = v10;
  v11 = v10;
  v74 = v73;
  v145[4] = v74;
  v144[5] = @"preferredUpdateDownloadable";
  if (selfCopy->_preferredUpdateDownloadable)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v75 = v12;
  v13 = v12;
  v76 = v75;
  v145[5] = v76;
  v144[6] = @"alternateUpdateDownloadable";
  if (selfCopy->_alternateUpdateDownloadable)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v77 = v14;
  v15 = v14;
  v78 = v77;
  v145[6] = v78;
  v144[7] = @"preferredUpdateDownloadError";
  preferredUpdateDownloadError = selfCopy->_preferredUpdateDownloadError;
  v126 = 0;
  objc_storeStrong(&v126, preferredUpdateDownloadError);
  v124 = 0;
  if (v126)
  {
    v17 = MEMORY[0x277D82BE0](v126);
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
    v124 = 1;
    v17 = MEMORY[0x277D82BE0](null3);
  }

  v127 = v17;
  if (v124)
  {
    MEMORY[0x277D82BD8](null3);
  }

  objc_storeStrong(&v126, 0);
  v69 = v127;
  v18 = v127;
  v70 = v69;
  v145[7] = v70;
  v144[8] = @"alternateUpdateDownloadError";
  alternateUpdateDownloadError = selfCopy->_alternateUpdateDownloadError;
  v122 = 0;
  objc_storeStrong(&v122, alternateUpdateDownloadError);
  v120 = 0;
  if (v122)
  {
    v20 = MEMORY[0x277D82BE0](v122);
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
    v120 = 1;
    v20 = MEMORY[0x277D82BE0](null4);
  }

  v123 = v20;
  if (v120)
  {
    MEMORY[0x277D82BD8](null4);
  }

  objc_storeStrong(&v122, 0);
  v67 = v123;
  v21 = v123;
  v68 = v67;
  v145[8] = v68;
  v144[9] = @"agreementStatusRegistry";
  agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
  v118 = 0;
  objc_storeStrong(&v118, agreementStatusRegistry);
  v116 = 0;
  if (v118)
  {
    v23 = MEMORY[0x277D82BE0](v118);
  }

  else
  {
    null5 = [MEMORY[0x277CBEB68] null];
    v116 = 1;
    v23 = MEMORY[0x277D82BE0](null5);
  }

  v119 = v23;
  if (v116)
  {
    MEMORY[0x277D82BD8](null5);
  }

  objc_storeStrong(&v118, 0);
  v63 = v119;
  v24 = v119;
  v64 = v63;
  v145[9] = v64;
  v144[10] = @"clearingSpaceForDownload";
  if (selfCopy->_clearingSpaceForDownload)
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v65 = v25;
  v26 = v25;
  v66 = v65;
  v145[10] = v66;
  v144[11] = @"currentDownload";
  v114 = 0;
  objc_storeStrong(&v114, obj[0]);
  v112 = 0;
  if (v114)
  {
    v27 = MEMORY[0x277D82BE0](v114);
  }

  else
  {
    null6 = [MEMORY[0x277CBEB68] null];
    v112 = 1;
    v27 = MEMORY[0x277D82BE0](null6);
  }

  v115 = v27;
  if (v112)
  {
    MEMORY[0x277D82BD8](null6);
  }

  objc_storeStrong(&v114, 0);
  v46 = v115;
  v28 = v115;
  v47 = v46;
  v145[11] = v47;
  v144[12] = @"mdmPathRestrictions";
  v48 = MEMORY[0x277CCACA8];
  mdmPathRestrictions = selfCopy->_mdmPathRestrictions;
  v49 = SUStringFromMDMSUPath();
  v50 = [v48 stringWithFormat:@"%@ (%ld)", v49, selfCopy->_mdmPathRestrictions];
  v145[12] = v50;
  v144[13] = @"isDelayingUpdate";
  if (selfCopy->_isDelayingUpdate)
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v51 = v30;
  v31 = v30;
  v52 = v51;
  v145[13] = v52;
  v144[14] = @"rollingBackSplatUpdate";
  if (selfCopy->_rollingBackSplatUpdate)
  {
    v32 = @"YES";
  }

  else
  {
    v32 = @"NO";
  }

  v53 = v32;
  v33 = v32;
  v54 = v53;
  v145[14] = v54;
  v144[15] = @"rollbackDescriptor";
  v55 = [MEMORY[0x277CCACA8] stringWithFormat:selfCopy->_rollbackDescriptor];
  v145[15] = v55;
  v144[16] = @"currentSeedingDevice";
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", selfCopy->_currentSeedingDevice];
  v145[16] = v56;
  v144[17] = @"betaPrograms";
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p (count: %ld)", selfCopy->_betaPrograms, -[NSArray count](selfCopy->_betaPrograms, "count")];
  v145[17] = v57;
  v144[18] = @"enrolledBetaProgram";
  v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", selfCopy->_enrolledBetaProgram];
  v145[18] = v58;
  v144[19] = @"isAutoUpdateScheduled";
  if (selfCopy->_isAutoUpdateScheduled)
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v59 = v34;
  v35 = v34;
  v60 = v59;
  v145[19] = v60;
  v144[20] = @"isUpdateReadyForInstallation";
  if (selfCopy->_isUpdateReadyForInstallation)
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v61 = v36;
  v37 = v36;
  v62 = v61;
  v145[20] = v62;
  v144[21] = @"updateInstallationError";
  updateInstallationError = selfCopy->_updateInstallationError;
  v110 = 0;
  objc_storeStrong(&v110, updateInstallationError);
  v108 = 0;
  if (v110)
  {
    v39 = MEMORY[0x277D82BE0](v110);
  }

  else
  {
    null7 = [MEMORY[0x277CBEB68] null];
    v108 = 1;
    v39 = MEMORY[0x277D82BE0](null7);
  }

  v111 = v39;
  if (v108)
  {
    MEMORY[0x277D82BD8](null7);
  }

  objc_storeStrong(&v110, 0);
  v43 = v111;
  v40 = v111;
  v45 = v43;
  v145[21] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:22];
  v107 = [v87 descriptionForObject:selfCopy properties:? options:?];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v79);
  if (v97)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName3);
  }

  MEMORY[0x277D82BD8](v81);
  if (v99)
  {
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
  }

  MEMORY[0x277D82BD8](v85);
  objc_storeStrong(obj, 0);
  *MEMORY[0x277D85DE8];
  v41 = v107;

  return v41;
}

@end