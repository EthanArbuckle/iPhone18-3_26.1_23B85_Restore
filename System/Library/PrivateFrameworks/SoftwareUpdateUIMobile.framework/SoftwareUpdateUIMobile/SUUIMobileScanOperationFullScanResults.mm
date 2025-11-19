@interface SUUIMobileScanOperationFullScanResults
- (id)descriptionDictionary;
- (id)initFromScanParam:(id)a3 withIdentifier:(id)a4;
@end

@implementation SUUIMobileScanOperationFullScanResults

- (id)initFromScanParam:(id)a3 withIdentifier:(id)a4
{
  obj = a4;
  v100 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v98 = 0;
  objc_storeStrong(&v98, obj);
  v64 = v100;
  v65 = v98;
  v66 = [location[0] preferredUpdateDownloadable];
  v67 = [location[0] alternateUpdateDownloadable];
  v68 = [location[0] preferredUpdateDownloadError];
  v96 = 0;
  v94 = 0;
  if (v68)
  {
    v60 = [SUUIMobileStatefulError alloc];
    v97 = [location[0] preferredUpdateDownloadError];
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
  v59 = [location[0] alternateUpdateDownloadError];
  v92 = 0;
  v90 = 0;
  if (v59)
  {
    v55 = [SUUIMobileStatefulError alloc];
    v93 = [location[0] alternateUpdateDownloadError];
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
  v53 = [location[0] isClearingSpaceForDownload];
  v54 = [location[0] currentDownload];
  v88 = 0;
  v86 = 0;
  if (v54)
  {
    v49 = [SUUIMobileDownload alloc];
    v89 = [location[0] currentDownload];
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
  v46 = [location[0] isAutoUpdateScheduled];
  v47 = [location[0] isUpdateReadyForInstallation];
  v48 = [location[0] updateInstallationError];
  v84 = 0;
  v82 = 0;
  if (v48)
  {
    v42 = [SUUIMobileStatefulError alloc];
    v85 = [location[0] updateInstallationError];
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
  v41 = [location[0] preferredDescriptor];
  v80 = 0;
  v78 = 0;
  if (v41)
  {
    v37 = [SUUIMobileDescriptor alloc];
    v81 = [location[0] preferredDescriptor];
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
  v36 = [location[0] alternateDescriptor];
  v76 = 0;
  v74 = 0;
  if (v36)
  {
    v32 = [SUUIMobileDescriptor alloc];
    v77 = [location[0] alternateDescriptor];
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
  v31 = [location[0] scanError];
  v72 = 0;
  v70 = 0;
  if (v31)
  {
    v27 = [SUUIMobileStatefulError alloc];
    v73 = [location[0] scanError];
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
  v16 = [location[0] emptyScanResults];
  v14 = MEMORY[0x277D64B60];
  v17 = [MEMORY[0x277D64B60] definitionFromSUType:{objc_msgSend(location[0], "mdmPathRestrictions")}];
  v18 = [location[0] isDelayingUpdate];
  v19 = [location[0] isRollingBackSplatUpdate];
  v26 = [location[0] currentSeedingDevice];
  v25 = [location[0] betaPrograms];
  v24 = [location[0] enrolledBetaProgram];
  v23 = [location[0] ddmDeclaration];
  v21 = &v100;
  v100 = 0;
  v69.receiver = v64;
  v69.super_class = SUUIMobileScanOperationFullScanResults;
  v20 = &v5;
  LOBYTE(v6) = v46;
  BYTE1(v6) = v47;
  LOBYTE(v7) = v16;
  LOBYTE(v8) = v18;
  BYTE1(v8) = v19;
  v22 = [SUUIScanOperationFullScanResults initWithIdentifier:sel_initWithIdentifier_preferredUpdateDownloadable_alternateUpdateDownloadable_preferredUpdateDownloadError_alternateUpdateDownloadError_clearingSpaceForDownload_currentDownload_autoUpdateScheduled_updateReadyForInstallation_updateInstallationError_preferredDescriptor_alternateDescriptor_scanError_emptyScanResults_mdmPathRestrictions_delayingUpdate_rollingBack_currentSeedingDevice_betaPrograms_enrolledBetaProgram_ddmDeclaration_ preferredUpdateDownloadable:v65 alternateUpdateDownloadable:v66 preferredUpdateDownloadError:v67 alternateUpdateDownloadError:v58 clearingSpaceForDownload:v52 currentDownload:v53 autoUpdateScheduled:v45 updateReadyForInstallation:v6 updateInstallationError:v40 preferredDescriptor:v35 alternateDescriptor:v30 scanError:v29 emptyScanResults:v7 mdmPathRestrictions:v17 delayingUpdate:v8 rollingBack:v26 currentSeedingDevice:v25 betaPrograms:v24 enrolledBetaProgram:v23 ddmDeclaration:?];
  v100 = v22;
  objc_storeStrong(v21, v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  if (v70)
  {
    MEMORY[0x277D82BD8](v71);
  }

  if (v72)
  {
    MEMORY[0x277D82BD8](v73);
  }

  MEMORY[0x277D82BD8](v31);
  if (v74)
  {
    MEMORY[0x277D82BD8](v75);
  }

  if (v76)
  {
    MEMORY[0x277D82BD8](v77);
  }

  MEMORY[0x277D82BD8](v36);
  if (v78)
  {
    MEMORY[0x277D82BD8](v79);
  }

  if (v80)
  {
    MEMORY[0x277D82BD8](v81);
  }

  MEMORY[0x277D82BD8](v41);
  if (v82)
  {
    MEMORY[0x277D82BD8](v83);
  }

  if (v84)
  {
    MEMORY[0x277D82BD8](v85);
  }

  MEMORY[0x277D82BD8](v48);
  if (v86)
  {
    MEMORY[0x277D82BD8](v87);
  }

  if (v88)
  {
    MEMORY[0x277D82BD8](v89);
  }

  MEMORY[0x277D82BD8](v54);
  if (v90)
  {
    MEMORY[0x277D82BD8](v91);
  }

  if (v92)
  {
    MEMORY[0x277D82BD8](v93);
  }

  MEMORY[0x277D82BD8](v59);
  if (v94)
  {
    MEMORY[0x277D82BD8](v95);
  }

  if (v96)
  {
    MEMORY[0x277D82BD8](v97);
  }

  MEMORY[0x277D82BD8](v68);
  if (v22)
  {
    v12 = [location[0] currentAutoInstallOperation];
    [(SUUIMobileScanOperationFullScanResults *)v100 setCurrentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](v12);
    v13 = [location[0] rollbackDescriptor];
    [(SUUIMobileScanOperationFullScanResults *)v100 setRollbackDescriptor:?];
    MEMORY[0x277D82BD8](v13);
  }

  v9 = &v100;
  v11 = MEMORY[0x277D82BE0](v100);
  v10 = 0;
  objc_storeStrong(&v98, 0);
  objc_storeStrong(location, v10);
  objc_storeStrong(v9, v10);
  return v11;
}

- (id)descriptionDictionary
{
  v21[2] = *MEMORY[0x277D85DE8];
  v15 = self;
  v14[1] = a2;
  v13.receiver = self;
  v13.super_class = SUUIMobileScanOperationFullScanResults;
  v9 = [(SUUIScanOperationFullScanResults *)&v13 descriptionDictionary];
  v14[0] = [v9 mutableCopy];
  MEMORY[0x277D82BD8](v9);
  v10 = v14[0];
  v20[0] = @"currentAutoInstallOperation";
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v15->_currentAutoInstallOperation];
  v21[0] = v11;
  v20[1] = @"rollbackDescriptor";
  v12 = [(SUUIMobileScanOperationFullScanResults *)v15 rollbackDescriptor];
  location = 0;
  objc_storeStrong(&location, v12);
  v16 = 0;
  if (location)
  {
    v2 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v17 = [MEMORY[0x277CBEB68] null];
    v16 = 1;
    v2 = MEMORY[0x277D82BE0](v17);
  }

  v19 = v2;
  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
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
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v11);
  v8 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

@end