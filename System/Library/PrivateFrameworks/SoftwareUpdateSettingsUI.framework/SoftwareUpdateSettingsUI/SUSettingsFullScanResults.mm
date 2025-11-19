@interface SUSettingsFullScanResults
- (id)description;
- (id)initFromScanParam:(id)a3 withUUID:(id)a4;
@end

@implementation SUSettingsFullScanResults

- (id)initFromScanParam:(id)a3 withUUID:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v4 = v24;
  v24 = 0;
  v21.receiver = v4;
  v21.super_class = SUSettingsFullScanResults;
  v20 = [(SUSettingsScanResults *)&v21 initFromScanParam:location[0] withUUID:v22];
  v24 = v20;
  objc_storeStrong(&v24, v20);
  if (v20)
  {
    v10 = [location[0] preferredDescriptor];
    [(SUSettingsFullScanResults *)v24 setPreferredDescriptor:?];
    MEMORY[0x277D82BD8](v10);
    v11 = [location[0] alternateDescriptor];
    [(SUSettingsFullScanResults *)v24 setAlternateDescriptor:?];
    MEMORY[0x277D82BD8](v11);
    v12 = [location[0] latestDescriptor];
    [(SUSettingsFullScanResults *)v24 setLatestDescriptor:?];
    MEMORY[0x277D82BD8](v12);
    v13 = [location[0] scanError];
    [(SUSettingsFullScanResults *)v24 setScanError:?];
    MEMORY[0x277D82BD8](v13);
    v5 = [location[0] mdmPathRestrictions];
    [(SUSettingsFullScanResults *)v24 setMdmPathRestrictions:v5];
    v6 = [location[0] isDelayingUpdate];
    [(SUSettingsFullScanResults *)v24 setIsDelayingUpdate:v6];
    v7 = [location[0] isRollingBack];
    [(SUSettingsFullScanResults *)v24 setIsRollingBack:v7];
    v14 = [location[0] rollbackDescriptor];
    [(SUSettingsFullScanResults *)v24 setRollbackDescriptor:?];
    MEMORY[0x277D82BD8](v14);
    v15 = [location[0] currentSeedingDevice];
    [(SUSettingsFullScanResults *)v24 setCurrentSeedingDevice:?];
    MEMORY[0x277D82BD8](v15);
    v16 = [location[0] betaPrograms];
    [(SUSettingsFullScanResults *)v24 setBetaPrograms:?];
    MEMORY[0x277D82BD8](v16);
    v17 = [location[0] enrolledBetaProgram];
    [(SUSettingsFullScanResults *)v24 setEnrolledBetaProgram:?];
    MEMORY[0x277D82BD8](v17);
    v18 = [location[0] ddmDeclaration];
    [(SUSettingsFullScanResults *)v24 setDDMDeclaration:?];
    MEMORY[0x277D82BD8](v18);
  }

  v9 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v9;
}

- (id)description
{
  v80 = &v100;
  v101 = self;
  v100 = a2;
  location = MEMORY[0x277D82BE0](@"(null)");
  v81 = [(SUSettingsScanResults *)v101 currentDownload];
  v97 = 0;
  v95 = 0;
  v82 = 0;
  if (v81)
  {
    v98 = [v80[1] currentDownload];
    v79 = 1;
    v97 = 1;
    v96 = [v98 descriptor];
    v95 = 1;
    v82 = v96 != 0;
  }

  v78 = v82;
  if (v95)
  {
    MEMORY[0x277D82BD8](v96);
  }

  if (v97)
  {
    MEMORY[0x277D82BD8](v98);
  }

  MEMORY[0x277D82BD8](v81);
  if (v78)
  {
    v71 = MEMORY[0x277CCACA8];
    v77 = [v80[1] currentDownload];
    v76 = [v77 descriptor];
    v75 = [v76 humanReadableUpdateName];
    v74 = [v80[1] currentDownload];
    v73 = [v80[1] currentDownload];
    v72 = [v73 progress];
    v2 = [v71 stringWithFormat:@"%@ (%p) (progess: %@)", v75, v74, v72];
    v3 = location;
    location = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
  }

  v66 = MEMORY[0x277CCACA8];
  v4 = v80[1];
  v5 = objc_opt_class();
  v67 = NSStringFromClass(v5);
  v68 = v80[1];
  v69 = [v80[1] scanUUID];
  v70 = [v80[1] preferredDescriptor];
  v93 = 0;
  v91 = 0;
  if (v70)
  {
    v94 = [v80[1] preferredDescriptor];
    v64 = 1;
    v93 = 1;
    v92 = [v94 humanReadableUpdateName];
    v91 = 1;
    v65 = v92;
  }

  else
  {
    v65 = @"(null)";
  }

  v61 = v65;
  v62 = [v80[1] preferredDescriptor];
  v63 = [v80[1] alternateDescriptor];
  v89 = 0;
  v87 = 0;
  if (v63)
  {
    v90 = [v80[1] alternateDescriptor];
    v59 = 1;
    v89 = 1;
    v88 = [v90 humanReadableUpdateName];
    v87 = 1;
    v60 = v88;
  }

  else
  {
    v60 = @"(null)";
  }

  v56 = v60;
  v57 = [v80[1] alternateDescriptor];
  v58 = [v80[1] latestDescriptor];
  v85 = 0;
  v83 = 0;
  if (v58)
  {
    v86 = [v80[1] latestDescriptor];
    v54 = 1;
    v85 = 1;
    v84 = [v86 humanReadableUpdateName];
    v83 = 1;
    v55 = v84;
  }

  else
  {
    v55 = @"(null)";
  }

  v6 = [v80[1] latestDescriptor];
  v53 = v6;
  v7 = [v80[1] scanError];
  v52 = v7;
  v8 = [v80[1] emptyScanResults];
  v30 = "NO";
  v31 = "YES";
  if (v8)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if ([v80[1] preferredUpdateDownloadable])
  {
    v10 = v31;
  }

  else
  {
    v10 = v30;
  }

  if ([v80[1] alternateUpdateDownloadable])
  {
    v11 = v31;
  }

  else
  {
    v11 = v30;
  }

  v12 = [v80[1] preferredUpdateDownloadError];
  v51 = v12;
  v13 = [v80[1] alternateUpdateDownloadError];
  v50 = v13;
  v14 = [v80[1] agreementManager];
  v49 = v14;
  v15 = [v80[1] isClearingSpaceForDownload];
  v32 = location;
  [v80[1] mdmPathRestrictions];
  v48 = SUStringFromMDMSUPath();
  v33 = [v80[1] mdmPathRestrictions];
  v47 = [v80[1] ddmDeclaration];
  v16 = [v80[1] isDelayingUpdate];
  v17 = v31;
  if ((v16 & 1) == 0)
  {
    v17 = v30;
  }

  v34 = v17;
  v18 = [v80[1] isRollingBack];
  v19 = v31;
  if ((v18 & 1) == 0)
  {
    v19 = v30;
  }

  v35 = v19;
  v46 = [v80[1] rollbackDescriptor];
  v45 = [v80[1] currentSeedingDevice];
  v44 = [v80[1] betaPrograms];
  v43 = [v80[1] betaPrograms];
  v36 = [v43 count];
  v42 = [v80[1] enrolledBetaProgram];
  v20 = [v80[1] isAutoUpdateScheduled];
  v21 = v31;
  if ((v20 & 1) == 0)
  {
    v21 = v30;
  }

  v37 = v21;
  v41 = [v80[1] currentAutoInstallOperation];
  v22 = [v80[1] isUpdateReadyForInstallation];
  v23 = v31;
  if ((v22 & 1) == 0)
  {
    v23 = v30;
  }

  v38 = v23;
  v40 = [v80[1] updateInstallationError];
  v39 = &v28;
  v29 = v15 & 1;
  v24 = [v66 stringWithFormat:@"<%@: %p, \n\tscanUUID: %@, \n\tpreferredDescriptor: %@ (%p), \n\talternateDescriptor: %@ (%p), \n\tlatestUpdateDescriptor: %@ (%p), \n\tscanError: %@, \n\temptyScanResults: %s, \n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tmdmPathRestrictions: %@ (%ld), \n\tddmDeclaration: %p\n\tisDelayingUpdate: %s\n\tisRollingBack: %s\n\trollbackDescriptor: %p\n\tcurrentSeedingDevice: %p\n\tbetaPrograms: %p (count: %ld)\n\tenrolledBetaProgram: %p\n\tautoUpdateScheduled: %s (%p)\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v67, v68, v69, v61, v62, v56, v57, v55, v6, v7, v9, v10, v11, v12, v13, v14, v29, v32, v48, v33, v47, v34, v35, v46, v45, v44, v36, v42, v37, v41, v38, v40];
  v25 = v40;
  v80[2] = v24;
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  if (v83)
  {
    MEMORY[0x277D82BD8](v84);
  }

  if (v85)
  {
    MEMORY[0x277D82BD8](v86);
  }

  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v57);
  if (v87)
  {
    MEMORY[0x277D82BD8](v88);
  }

  if (v89)
  {
    MEMORY[0x277D82BD8](v90);
  }

  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v62);
  if (v91)
  {
    MEMORY[0x277D82BD8](v92);
  }

  if (v93)
  {
    MEMORY[0x277D82BD8](v94);
  }

  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v67);
  objc_storeStrong(&location, 0);
  v26 = v80[2];

  return v26;
}

@end