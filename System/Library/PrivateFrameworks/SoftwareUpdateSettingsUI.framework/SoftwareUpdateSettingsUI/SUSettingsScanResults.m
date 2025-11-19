@interface SUSettingsScanResults
- (id)description;
- (id)initFromScanParam:(id)a3 withUUID:(id)a4;
@end

@implementation SUSettingsScanResults

- (id)initFromScanParam:(id)a3 withUUID:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v4 = v23;
  v23 = 0;
  v20.receiver = v4;
  v20.super_class = SUSettingsScanResults;
  v19 = [(SUSettingsScanResults *)&v20 init];
  v23 = v19;
  objc_storeStrong(&v23, v19);
  if (v19)
  {
    [(SUSettingsScanResults *)v23 setScanUUID:v21];
    v5 = [location[0] preferredUpdateDownloadable];
    [(SUSettingsScanResults *)v23 setPreferredUpdateDownloadable:v5];
    v6 = [location[0] alternateUpdateDownloadable];
    [(SUSettingsScanResults *)v23 setAlternateUpdateDownloadable:v6];
    v12 = [location[0] preferredUpdateDownloadError];
    [(SUSettingsScanResults *)v23 setPreferredUpdateDownloadError:?];
    MEMORY[0x277D82BD8](v12);
    v13 = [location[0] alternateUpdateDownloadError];
    [(SUSettingsScanResults *)v23 setAlternateUpdateDownloadError:?];
    MEMORY[0x277D82BD8](v13);
    v14 = [location[0] agreementManager];
    [(SUSettingsScanResults *)v23 setAgreementManager:?];
    MEMORY[0x277D82BD8](v14);
    v7 = [location[0] isClearingSpaceForDownload];
    [(SUSettingsScanResults *)v23 setClearingSpaceForDownload:v7];
    v15 = [location[0] currentDownload];
    [(SUSettingsScanResults *)v23 setCurrentDownload:?];
    MEMORY[0x277D82BD8](v15);
    v8 = [location[0] isUpdateReadyForInstallation];
    [(SUSettingsScanResults *)v23 setIsUpdateReadyForInstallation:v8];
    v16 = [location[0] updateInstallationError];
    [(SUSettingsScanResults *)v23 setUpdateInstallationError:?];
    MEMORY[0x277D82BD8](v16);
    v9 = [location[0] isAutoUpdateScheduled];
    [(SUSettingsScanResults *)v23 setIsAutoUpdateScheduled:v9];
    v17 = [location[0] currentAutoInstallOperation];
    [(SUSettingsScanResults *)v23 setCurrentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](v17);
  }

  v11 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v23, 0);
  return v11;
}

- (id)description
{
  v44 = self;
  v43[1] = a2;
  v43[0] = MEMORY[0x277D82BE0](@"(null)");
  v37 = [(SUSettingsScanResults *)v44 currentDownload];
  v41 = 0;
  v39 = 0;
  v38 = 0;
  if (v37)
  {
    v42 = [(SUSettingsScanResults *)v44 currentDownload];
    v41 = 1;
    v40 = [(SUDownload *)v42 descriptor];
    v39 = 1;
    v38 = v40 != 0;
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](v40);
  }

  if (v41)
  {
    MEMORY[0x277D82BD8](v42);
  }

  MEMORY[0x277D82BD8](v37);
  if (v38)
  {
    v30 = MEMORY[0x277CCACA8];
    v36 = [(SUSettingsScanResults *)v44 currentDownload];
    v35 = [(SUDownload *)v36 descriptor];
    v34 = [(SUDescriptor *)v35 humanReadableUpdateName];
    v33 = [(SUSettingsScanResults *)v44 currentDownload];
    v32 = [(SUSettingsScanResults *)v44 currentDownload];
    v31 = [(SUDownload *)v32 progress];
    v2 = [v30 stringWithFormat:@"%@ (%p) (progess: %@)", v34, v33, v31];
    v3 = v43[0];
    v43[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
  }

  v21 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v28 = NSStringFromClass(v4);
  v14 = v44;
  v27 = [(SUSettingsScanResults *)v44 scanUUID];
  v5 = [(SUSettingsScanResults *)v44 preferredUpdateDownloadable];
  v6 = "YES";
  if (!v5)
  {
    v6 = "NO";
  }

  v15 = v6;
  v7 = [(SUSettingsScanResults *)v44 alternateUpdateDownloadable];
  v8 = "YES";
  if (!v7)
  {
    v8 = "NO";
  }

  v16 = v8;
  v26 = [(SUSettingsScanResults *)v44 preferredUpdateDownloadError];
  v25 = [(SUSettingsScanResults *)v44 alternateUpdateDownloadError];
  v24 = [(SUSettingsScanResults *)v44 agreementManager];
  v17 = [(SUSettingsScanResults *)v44 isClearingSpaceForDownload];
  v18 = v43[0];
  v9 = [(SUSettingsScanResults *)v44 isAutoUpdateScheduled];
  v10 = "YES";
  if (!v9)
  {
    v10 = "NO";
  }

  v19 = v10;
  v23 = [(SUSettingsScanResults *)v44 currentAutoInstallOperation];
  v11 = [(SUSettingsScanResults *)v44 isUpdateReadyForInstallation];
  v12 = "YES";
  if (!v11)
  {
    v12 = "NO";
  }

  v20 = v12;
  v22 = [(SUSettingsScanResults *)v44 updateInstallationError];
  v29 = [v21 stringWithFormat:@"<%@: %p, \n\tscanUUID: %@\n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tautoUpdateScheduled: %s (%p)\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v28, v14, v27, v15, v16, v26, v25, v24, v17, v18, v19, v23, v20, v22];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  objc_storeStrong(v43, 0);

  return v29;
}

@end