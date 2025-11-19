@interface SUUIMobileScanOperationParam
- (SUUIMobileScanOperationParam)initWithError:(id)a3;
- (SUUIMobileScanOperationParam)initWithFullScanContext:(id)a3;
- (SUUIMobileScanOperationParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andRefreshContext:(id)a5;
- (id)description;
@end

@implementation SUUIMobileScanOperationParam

- (SUUIMobileScanOperationParam)initWithFullScanContext:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v19;
  v19 = 0;
  v17.receiver = v3;
  v17.super_class = SUUIMobileScanOperationParam;
  v16 = [(SUUIMobileScanOperationParam *)&v17 init];
  v19 = v16;
  objc_storeStrong(&v19, v16);
  if (v16)
  {
    v4 = [location[0] scanOptions];
    options = v19->_options;
    v19->_options = v4;
    MEMORY[0x277D82BD8](options);
    v6 = [location[0] forceReloadScanResults];
    v19->_forceReloadScanResults = v6;
    v15 = [location[0] previousThirdPartyScanResults];
    v7 = [v15 toSUScanResults];
    thirdPartyDiscoveredScanResults = v19->_thirdPartyDiscoveredScanResults;
    v19->_thirdPartyDiscoveredScanResults = v7;
    MEMORY[0x277D82BD8](thirdPartyDiscoveredScanResults);
    MEMORY[0x277D82BD8](v15);
    v9 = [location[0] previousScanError];
    thirdPartyDiscoveredScanError = v19->_thirdPartyDiscoveredScanError;
    v19->_thirdPartyDiscoveredScanError = v9;
    MEMORY[0x277D82BD8](thirdPartyDiscoveredScanError);
    v11 = [location[0] agreementStatusRegistry];
    agreementStatusRegistry = v19->_agreementStatusRegistry;
    v19->_agreementStatusRegistry = v11;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
  }

  v14 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v14;
}

- (SUUIMobileScanOperationParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andRefreshContext:(id)a5
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v5 = v26;
  v26 = 0;
  v22.receiver = v5;
  v22.super_class = SUUIMobileScanOperationParam;
  v19 = [(SUUIMobileScanOperationParam *)&v22 init];
  v26 = v19;
  objc_storeStrong(&v26, v19);
  if (v19)
  {
    objc_storeStrong(&v26->_preferredDescriptor, location[0]);
    objc_storeStrong(&v26->_alternateDescriptor, v24);
    v21 = [v23 previousDownload];
    v20 = MEMORY[0x277D82BE0](v21);
    objc_storeStrong(&v21, 0);
    v6 = [v20 underlyingDownload];
    currentDownload = v26->_currentDownload;
    v26->_currentDownload = v6;
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](v20);
    v8 = [v23 currentAutoInstallOperation];
    currentAutoInstallOperation = v26->_currentAutoInstallOperation;
    v26->_currentAutoInstallOperation = v8;
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
    v10 = [v23 currentAutoInstallOperation];
    v26->_isAutoUpdateScheduled = v10 != 0;
    MEMORY[0x277D82BD8](v10);
    v11 = [v23 previousEncounteredError];
    operationError = v26->_operationError;
    v26->_operationError = v11;
    MEMORY[0x277D82BD8](operationError);
    v13 = [v23 agreementStatusRegistry];
    agreementStatusRegistry = v26->_agreementStatusRegistry;
    v26->_agreementStatusRegistry = v13;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
  }

  v16 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v16;
}

- (SUUIMobileScanOperationParam)initWithError:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = SUUIMobileScanOperationParam;
  v6 = [(SUUIMobileScanOperationParam *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_operationError, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)description
{
  v145[22] = *MEMORY[0x277D85DE8];
  v106 = self;
  obj[1] = a2;
  obj[0] = 0;
  v95 = [(SUUIMobileScanOperationParam *)self currentDownload];
  v103 = 0;
  v101 = 0;
  v96 = 0;
  if (v95)
  {
    v104 = [(SUUIMobileScanOperationParam *)v106 currentDownload];
    v103 = 1;
    v102 = [(SUDownload *)v104 descriptor];
    v101 = 1;
    v96 = v102 != 0;
  }

  if (v101)
  {
    MEMORY[0x277D82BD8](v102);
  }

  if (v103)
  {
    MEMORY[0x277D82BD8](v104);
  }

  MEMORY[0x277D82BD8](v95);
  if (v96)
  {
    v88 = MEMORY[0x277CCACA8];
    v94 = [(SUUIMobileScanOperationParam *)v106 currentDownload];
    v93 = [(SUDownload *)v94 descriptor];
    v92 = [(SUDescriptor *)v93 humanReadableUpdateName];
    v91 = [(SUUIMobileScanOperationParam *)v106 currentDownload];
    v90 = [(SUUIMobileScanOperationParam *)v106 currentDownload];
    v89 = [(SUDownload *)v90 progress];
    v2 = [v88 stringWithFormat:@"%@ (%p) (progess: %@)", v92, v91, v89];
    v3 = obj[0];
    obj[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
  }

  v87 = MEMORY[0x277D64B68];
  v144[0] = @"operationError";
  operationError = v106->_operationError;
  location = 0;
  objc_storeStrong(&location, operationError);
  v132 = 0;
  if (location)
  {
    v5 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v133 = [MEMORY[0x277CBEB68] null];
    v132 = 1;
    v5 = MEMORY[0x277D82BE0](v133);
  }

  v135 = v5;
  if (v132)
  {
    MEMORY[0x277D82BD8](v133);
  }

  objc_storeStrong(&location, 0);
  v84 = v135;
  v6 = v135;
  v85 = v84;
  v145[0] = v85;
  v144[1] = @"preferredDescriptor";
  v86 = MEMORY[0x277CCACA8];
  v99 = 0;
  if (v106->_preferredDescriptor)
  {
    v100 = [(SUDescriptor *)v106->_preferredDescriptor humanReadableUpdateName];
    v99 = 1;
    v83 = v100;
  }

  else
  {
    v83 = @"(null)";
  }

  v81 = [v86 stringWithFormat:@"%@ (%p)", v83, v106->_preferredDescriptor];
  v145[1] = v81;
  v144[2] = @"alternateDescriptor";
  v82 = MEMORY[0x277CCACA8];
  v97 = 0;
  if (v106->_alternateDescriptor)
  {
    v98 = [(SUDescriptor *)v106->_alternateDescriptor humanReadableUpdateName];
    v97 = 1;
    v80 = v98;
  }

  else
  {
    v80 = @"(null)";
  }

  v79 = [v82 stringWithFormat:@"%@ (%p)", v80, v106->_alternateDescriptor];
  v145[2] = v79;
  v144[3] = @"scanError";
  scanError = v106->_scanError;
  v130 = 0;
  objc_storeStrong(&v130, scanError);
  v128 = 0;
  if (v130)
  {
    v8 = MEMORY[0x277D82BE0](v130);
  }

  else
  {
    v129 = [MEMORY[0x277CBEB68] null];
    v128 = 1;
    v8 = MEMORY[0x277D82BE0](v129);
  }

  v131 = v8;
  if (v128)
  {
    MEMORY[0x277D82BD8](v129);
  }

  objc_storeStrong(&v130, 0);
  v71 = v131;
  v9 = v131;
  v72 = v71;
  v145[3] = v72;
  v144[4] = @"emptyScanResults";
  if (v106->_emptyScanResults)
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
  if (v106->_preferredUpdateDownloadable)
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
  if (v106->_alternateUpdateDownloadable)
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
  preferredUpdateDownloadError = v106->_preferredUpdateDownloadError;
  v126 = 0;
  objc_storeStrong(&v126, preferredUpdateDownloadError);
  v124 = 0;
  if (v126)
  {
    v17 = MEMORY[0x277D82BE0](v126);
  }

  else
  {
    v125 = [MEMORY[0x277CBEB68] null];
    v124 = 1;
    v17 = MEMORY[0x277D82BE0](v125);
  }

  v127 = v17;
  if (v124)
  {
    MEMORY[0x277D82BD8](v125);
  }

  objc_storeStrong(&v126, 0);
  v69 = v127;
  v18 = v127;
  v70 = v69;
  v145[7] = v70;
  v144[8] = @"alternateUpdateDownloadError";
  alternateUpdateDownloadError = v106->_alternateUpdateDownloadError;
  v122 = 0;
  objc_storeStrong(&v122, alternateUpdateDownloadError);
  v120 = 0;
  if (v122)
  {
    v20 = MEMORY[0x277D82BE0](v122);
  }

  else
  {
    v121 = [MEMORY[0x277CBEB68] null];
    v120 = 1;
    v20 = MEMORY[0x277D82BE0](v121);
  }

  v123 = v20;
  if (v120)
  {
    MEMORY[0x277D82BD8](v121);
  }

  objc_storeStrong(&v122, 0);
  v67 = v123;
  v21 = v123;
  v68 = v67;
  v145[8] = v68;
  v144[9] = @"agreementStatusRegistry";
  agreementStatusRegistry = v106->_agreementStatusRegistry;
  v118 = 0;
  objc_storeStrong(&v118, agreementStatusRegistry);
  v116 = 0;
  if (v118)
  {
    v23 = MEMORY[0x277D82BE0](v118);
  }

  else
  {
    v117 = [MEMORY[0x277CBEB68] null];
    v116 = 1;
    v23 = MEMORY[0x277D82BE0](v117);
  }

  v119 = v23;
  if (v116)
  {
    MEMORY[0x277D82BD8](v117);
  }

  objc_storeStrong(&v118, 0);
  v63 = v119;
  v24 = v119;
  v64 = v63;
  v145[9] = v64;
  v144[10] = @"clearingSpaceForDownload";
  if (v106->_clearingSpaceForDownload)
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
    v113 = [MEMORY[0x277CBEB68] null];
    v112 = 1;
    v27 = MEMORY[0x277D82BE0](v113);
  }

  v115 = v27;
  if (v112)
  {
    MEMORY[0x277D82BD8](v113);
  }

  objc_storeStrong(&v114, 0);
  v46 = v115;
  v28 = v115;
  v47 = v46;
  v145[11] = v47;
  v144[12] = @"mdmPathRestrictions";
  v48 = MEMORY[0x277CCACA8];
  mdmPathRestrictions = v106->_mdmPathRestrictions;
  v49 = SUStringFromMDMSUPath();
  v50 = [v48 stringWithFormat:@"%@ (%ld)", v49, v106->_mdmPathRestrictions];
  v145[12] = v50;
  v144[13] = @"isDelayingUpdate";
  if (v106->_isDelayingUpdate)
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
  if (v106->_rollingBackSplatUpdate)
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
  v55 = [MEMORY[0x277CCACA8] stringWithFormat:v106->_rollbackDescriptor];
  v145[15] = v55;
  v144[16] = @"currentSeedingDevice";
  v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v106->_currentSeedingDevice];
  v145[16] = v56;
  v144[17] = @"betaPrograms";
  v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p (count: %ld)", v106->_betaPrograms, -[NSArray count](v106->_betaPrograms, "count")];
  v145[17] = v57;
  v144[18] = @"enrolledBetaProgram";
  v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v106->_enrolledBetaProgram];
  v145[18] = v58;
  v144[19] = @"isAutoUpdateScheduled";
  if (v106->_isAutoUpdateScheduled)
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
  if (v106->_isUpdateReadyForInstallation)
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
  updateInstallationError = v106->_updateInstallationError;
  v110 = 0;
  objc_storeStrong(&v110, updateInstallationError);
  v108 = 0;
  if (v110)
  {
    v39 = MEMORY[0x277D82BE0](v110);
  }

  else
  {
    v109 = [MEMORY[0x277CBEB68] null];
    v108 = 1;
    v39 = MEMORY[0x277D82BE0](v109);
  }

  v111 = v39;
  if (v108)
  {
    MEMORY[0x277D82BD8](v109);
  }

  objc_storeStrong(&v110, 0);
  v43 = v111;
  v40 = v111;
  v45 = v43;
  v145[21] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:22];
  v107 = [v87 descriptionForObject:v106 properties:? options:?];
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
    MEMORY[0x277D82BD8](v98);
  }

  MEMORY[0x277D82BD8](v81);
  if (v99)
  {
    MEMORY[0x277D82BD8](v100);
  }

  MEMORY[0x277D82BD8](v85);
  objc_storeStrong(obj, 0);
  *MEMORY[0x277D85DE8];
  v41 = v107;

  return v41;
}

@end