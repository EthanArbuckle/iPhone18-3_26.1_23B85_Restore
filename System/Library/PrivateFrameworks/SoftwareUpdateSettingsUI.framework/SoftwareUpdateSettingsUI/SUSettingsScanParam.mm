@interface SUSettingsScanParam
- (SUSettingsScanParam)initWithError:(id)a3;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andLatestDescriptor:(id)a5;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andLatestDescriptor:(id)a5 previouslyDiscoveredDownloadedUpdate:(id)a6 encounteredError:(id)a7;
- (SUSettingsScanParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andLatestDescriptor:(id)a5 previouslyDiscoveredDownloadedUpdate:(id)a6 previouslyDiscoveredAutoInstallOperation:(id)a7 encounteredError:(id)a8;
- (SUSettingsScanParam)initWithScanOptions:(id)a3;
- (id)description;
@end

@implementation SUSettingsScanParam

- (SUSettingsScanParam)initWithScanOptions:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = SUSettingsScanParam;
  v6 = [(SUSettingsScanParam *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    [(SUSettingsScanParam *)v9 setOptions:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (SUSettingsScanParam)initWithError:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = SUSettingsScanParam;
  v6 = [(SUSettingsScanParam *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    [(SUSettingsScanParam *)v9 setOperationError:location[0]];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andLatestDescriptor:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = SUSettingsScanParam;
  v10 = [(SUSettingsScanParam *)&v11 init];
  v15 = v10;
  objc_storeStrong(&v15, v10);
  if (v10)
  {
    [(SUSettingsScanParam *)v15 setPreferredDescriptor:location[0]];
    [(SUSettingsScanParam *)v15 setAlternateDescriptor:v13];
    [(SUSettingsScanParam *)v15 setLatestDescriptor:v12];
  }

  v7 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andLatestDescriptor:(id)a5 previouslyDiscoveredDownloadedUpdate:(id)a6 previouslyDiscoveredAutoInstallOperation:(id)a7 encounteredError:(id)a8
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v19 = 0;
  objc_storeStrong(&v19, a6);
  v18 = 0;
  objc_storeStrong(&v18, a7);
  v17 = 0;
  objc_storeStrong(&v17, a8);
  v8 = v23;
  v23 = 0;
  v16 = [(SUSettingsScanParam *)v8 initWithPreferredDescriptor:location[0] alternateDescriptor:v21 andLatestDescriptor:v20];
  v23 = v16;
  objc_storeStrong(&v23, v16);
  if (v16)
  {
    [(SUSettingsScanParam *)v23 setCurrentDownload:v19];
    [(SUSettingsScanParam *)v23 setCurrentAutoInstallOperation:v18];
    [(SUSettingsScanParam *)v23 setIsAutoUpdateScheduled:v18 != 0];
    [(SUSettingsScanParam *)v23 setOperationError:v17];
  }

  v10 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v23, 0);
  return v10;
}

- (SUSettingsScanParam)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4 andLatestDescriptor:(id)a5 previouslyDiscoveredDownloadedUpdate:(id)a6 encounteredError:(id)a7
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  objc_storeStrong(&v16, a6);
  v15 = 0;
  objc_storeStrong(&v15, a7);
  v7 = v20;
  v20 = 0;
  v14 = [(SUSettingsScanParam *)v7 initWithPreferredDescriptor:location[0] alternateDescriptor:v18 andLatestDescriptor:v17];
  v20 = v14;
  objc_storeStrong(&v20, v14);
  if (v14)
  {
    [(SUSettingsScanParam *)v20 setCurrentDownload:v16];
    [(SUSettingsScanParam *)v20 setOperationError:v15];
  }

  v9 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
  return v9;
}

- (id)description
{
  v78 = &v98;
  v99 = self;
  v98 = a2;
  location = MEMORY[0x277D82BE0](@"(null)");
  v79 = [(SUSettingsScanParam *)v99 currentDownload];
  v95 = 0;
  v93 = 0;
  v80 = 0;
  if (v79)
  {
    v96 = [v78[1] currentDownload];
    v77 = 1;
    v95 = 1;
    v94 = [v96 descriptor];
    v93 = 1;
    v80 = v94 != 0;
  }

  v76 = v80;
  if (v93)
  {
    MEMORY[0x277D82BD8](v94);
  }

  if (v95)
  {
    MEMORY[0x277D82BD8](v96);
  }

  MEMORY[0x277D82BD8](v79);
  if (v76)
  {
    v69 = MEMORY[0x277CCACA8];
    v75 = [v78[1] currentDownload];
    v74 = [v75 descriptor];
    v73 = [v74 humanReadableUpdateName];
    v72 = [v78[1] currentDownload];
    v71 = [v78[1] currentDownload];
    v70 = [v71 progress];
    v2 = [v69 stringWithFormat:@"%@ (%p) (progess: %@)", v73, v72, v70];
    v3 = location;
    location = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
  }

  v63 = MEMORY[0x277CCACA8];
  v4 = v78[1];
  v5 = objc_opt_class();
  v64 = NSStringFromClass(v5);
  v65 = v78[1];
  v66 = [v78[1] options];
  v67 = [v78[1] operationError];
  v68 = [v78[1] preferredDescriptor];
  v91 = 0;
  v89 = 0;
  if (v68)
  {
    v92 = [v78[1] preferredDescriptor];
    v61 = 1;
    v91 = 1;
    v90 = [v92 humanReadableUpdateName];
    v89 = 1;
    v62 = v90;
  }

  else
  {
    v62 = @"(null)";
  }

  v58 = v62;
  v59 = [v78[1] preferredDescriptor];
  v60 = [v78[1] alternateDescriptor];
  v87 = 0;
  v85 = 0;
  if (v60)
  {
    v88 = [v78[1] alternateDescriptor];
    v56 = 1;
    v87 = 1;
    v86 = [v88 humanReadableUpdateName];
    v85 = 1;
    v57 = v86;
  }

  else
  {
    v57 = @"(null)";
  }

  v53 = v57;
  v54 = [v78[1] alternateDescriptor];
  v55 = [v78[1] latestDescriptor];
  v83 = 0;
  v81 = 0;
  if (v55)
  {
    v84 = [v78[1] latestDescriptor];
    v51 = 1;
    v83 = 1;
    v82 = [v84 humanReadableUpdateName];
    v81 = 1;
    v52 = v82;
  }

  else
  {
    v52 = @"(null)";
  }

  v6 = [v78[1] latestDescriptor];
  v50 = v6;
  v7 = [v78[1] scanError];
  v49 = v7;
  v8 = [v78[1] emptyScanResults];
  v28 = "NO";
  v29 = "YES";
  if (v8)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  if ([v78[1] preferredUpdateDownloadable])
  {
    v10 = v29;
  }

  else
  {
    v10 = v28;
  }

  if ([v78[1] alternateUpdateDownloadable])
  {
    v11 = v29;
  }

  else
  {
    v11 = v28;
  }

  v12 = [v78[1] preferredUpdateDownloadError];
  v48 = v12;
  v13 = [v78[1] alternateUpdateDownloadError];
  v47 = v13;
  v46 = [v78[1] agreementManager];
  v30 = [v78[1] isClearingSpaceForDownload];
  v31 = location;
  [v78[1] mdmPathRestrictions];
  v45 = SUStringFromMDMSUPath();
  v32 = [v78[1] mdmPathRestrictions];
  v14 = [v78[1] isDelayingUpdate];
  v15 = v29;
  if ((v14 & 1) == 0)
  {
    v15 = v28;
  }

  v33 = v15;
  v16 = [v78[1] isRollingBack];
  v17 = v29;
  if ((v16 & 1) == 0)
  {
    v17 = v28;
  }

  v34 = v17;
  v44 = [v78[1] rollbackDescriptor];
  v43 = [v78[1] currentSeedingDevice];
  v42 = [v78[1] betaPrograms];
  v41 = [v78[1] betaPrograms];
  v35 = [v41 count];
  v40 = [v78[1] enrolledBetaProgram];
  v18 = [v78[1] isAutoUpdateScheduled];
  v19 = v29;
  if ((v18 & 1) == 0)
  {
    v19 = v28;
  }

  v36 = v19;
  v20 = [v78[1] isUpdateReadyForInstallation];
  v21 = v29;
  if ((v20 & 1) == 0)
  {
    v21 = v28;
  }

  v37 = v21;
  v39 = [v78[1] updateInstallationError];
  v38 = &v26;
  v27 = v30 & 1;
  v22 = [v63 stringWithFormat:@"<%@: %p, \n\tscanOptions: %@\n\toperationError: %@\n\tpreferredDescriptor: %@ (%p), \n\talternateDescriptor: %@ (%p), \n\tlatestDescriptor: %@ (%p), \n\tscanError: %@, \n\temptyScanResults: %s, \n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tmdmPathRestrictions: %@ (%ld), \n\tisDelayingUpdate: %s\n\tisRollingBack: %s\n\trollbackDescriptor: %p\n\tcurrentSeedingDevice: %p\n\tbetaPrograms: %p (count: %ld)\n\tenrolledBetaProgram: %p\n\tautoUpdateScheduled: %s\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v64, v65, v66, v67, v58, v59, v53, v54, v52, v6, v7, v9, v10, v11, v12, v13, v46, v27, v31, v45, v32, v33, v34, v44, v43, v42, v35, v40, v36, v37, v39];
  v23 = v39;
  v78[2] = v22;
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v40);
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
  if (v81)
  {
    MEMORY[0x277D82BD8](v82);
  }

  if (v83)
  {
    MEMORY[0x277D82BD8](v84);
  }

  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v54);
  if (v85)
  {
    MEMORY[0x277D82BD8](v86);
  }

  if (v87)
  {
    MEMORY[0x277D82BD8](v88);
  }

  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v59);
  if (v89)
  {
    MEMORY[0x277D82BD8](v90);
  }

  if (v91)
  {
    MEMORY[0x277D82BD8](v92);
  }

  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v64);
  objc_storeStrong(&location, 0);
  v24 = v78[2];

  return v24;
}

@end