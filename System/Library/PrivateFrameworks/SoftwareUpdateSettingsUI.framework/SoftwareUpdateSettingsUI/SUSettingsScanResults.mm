@interface SUSettingsScanResults
- (id)description;
- (id)initFromScanParam:(id)param withUUID:(id)d;
@end

@implementation SUSettingsScanResults

- (id)initFromScanParam:(id)param withUUID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, param);
  v21 = 0;
  objc_storeStrong(&v21, d);
  v4 = selfCopy;
  selfCopy = 0;
  v20.receiver = v4;
  v20.super_class = SUSettingsScanResults;
  v19 = [(SUSettingsScanResults *)&v20 init];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    [(SUSettingsScanResults *)selfCopy setScanUUID:v21];
    preferredUpdateDownloadable = [location[0] preferredUpdateDownloadable];
    [(SUSettingsScanResults *)selfCopy setPreferredUpdateDownloadable:preferredUpdateDownloadable];
    alternateUpdateDownloadable = [location[0] alternateUpdateDownloadable];
    [(SUSettingsScanResults *)selfCopy setAlternateUpdateDownloadable:alternateUpdateDownloadable];
    preferredUpdateDownloadError = [location[0] preferredUpdateDownloadError];
    [(SUSettingsScanResults *)selfCopy setPreferredUpdateDownloadError:?];
    MEMORY[0x277D82BD8](preferredUpdateDownloadError);
    alternateUpdateDownloadError = [location[0] alternateUpdateDownloadError];
    [(SUSettingsScanResults *)selfCopy setAlternateUpdateDownloadError:?];
    MEMORY[0x277D82BD8](alternateUpdateDownloadError);
    agreementManager = [location[0] agreementManager];
    [(SUSettingsScanResults *)selfCopy setAgreementManager:?];
    MEMORY[0x277D82BD8](agreementManager);
    isClearingSpaceForDownload = [location[0] isClearingSpaceForDownload];
    [(SUSettingsScanResults *)selfCopy setClearingSpaceForDownload:isClearingSpaceForDownload];
    currentDownload = [location[0] currentDownload];
    [(SUSettingsScanResults *)selfCopy setCurrentDownload:?];
    MEMORY[0x277D82BD8](currentDownload);
    isUpdateReadyForInstallation = [location[0] isUpdateReadyForInstallation];
    [(SUSettingsScanResults *)selfCopy setIsUpdateReadyForInstallation:isUpdateReadyForInstallation];
    updateInstallationError = [location[0] updateInstallationError];
    [(SUSettingsScanResults *)selfCopy setUpdateInstallationError:?];
    MEMORY[0x277D82BD8](updateInstallationError);
    isAutoUpdateScheduled = [location[0] isAutoUpdateScheduled];
    [(SUSettingsScanResults *)selfCopy setIsAutoUpdateScheduled:isAutoUpdateScheduled];
    currentAutoInstallOperation = [location[0] currentAutoInstallOperation];
    [(SUSettingsScanResults *)selfCopy setCurrentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)description
{
  selfCopy = self;
  v43[1] = a2;
  v43[0] = MEMORY[0x277D82BE0](@"(null)");
  currentDownload = [(SUSettingsScanResults *)selfCopy currentDownload];
  v41 = 0;
  v39 = 0;
  v38 = 0;
  if (currentDownload)
  {
    currentDownload2 = [(SUSettingsScanResults *)selfCopy currentDownload];
    v41 = 1;
    descriptor = [(SUDownload *)currentDownload2 descriptor];
    v39 = 1;
    v38 = descriptor != 0;
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v41)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v38)
  {
    v30 = MEMORY[0x277CCACA8];
    currentDownload3 = [(SUSettingsScanResults *)selfCopy currentDownload];
    descriptor2 = [(SUDownload *)currentDownload3 descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
    currentDownload4 = [(SUSettingsScanResults *)selfCopy currentDownload];
    currentDownload5 = [(SUSettingsScanResults *)selfCopy currentDownload];
    progress = [(SUDownload *)currentDownload5 progress];
    v2 = [v30 stringWithFormat:@"%@ (%p) (progess: %@)", humanReadableUpdateName, currentDownload4, progress];
    v3 = v43[0];
    v43[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload5);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
  }

  v21 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v28 = NSStringFromClass(v4);
  v14 = selfCopy;
  scanUUID = [(SUSettingsScanResults *)selfCopy scanUUID];
  preferredUpdateDownloadable = [(SUSettingsScanResults *)selfCopy preferredUpdateDownloadable];
  v6 = "YES";
  if (!preferredUpdateDownloadable)
  {
    v6 = "NO";
  }

  v15 = v6;
  alternateUpdateDownloadable = [(SUSettingsScanResults *)selfCopy alternateUpdateDownloadable];
  v8 = "YES";
  if (!alternateUpdateDownloadable)
  {
    v8 = "NO";
  }

  v16 = v8;
  preferredUpdateDownloadError = [(SUSettingsScanResults *)selfCopy preferredUpdateDownloadError];
  alternateUpdateDownloadError = [(SUSettingsScanResults *)selfCopy alternateUpdateDownloadError];
  agreementManager = [(SUSettingsScanResults *)selfCopy agreementManager];
  isClearingSpaceForDownload = [(SUSettingsScanResults *)selfCopy isClearingSpaceForDownload];
  v18 = v43[0];
  isAutoUpdateScheduled = [(SUSettingsScanResults *)selfCopy isAutoUpdateScheduled];
  v10 = "YES";
  if (!isAutoUpdateScheduled)
  {
    v10 = "NO";
  }

  v19 = v10;
  currentAutoInstallOperation = [(SUSettingsScanResults *)selfCopy currentAutoInstallOperation];
  isUpdateReadyForInstallation = [(SUSettingsScanResults *)selfCopy isUpdateReadyForInstallation];
  v12 = "YES";
  if (!isUpdateReadyForInstallation)
  {
    v12 = "NO";
  }

  v20 = v12;
  updateInstallationError = [(SUSettingsScanResults *)selfCopy updateInstallationError];
  v29 = [v21 stringWithFormat:@"<%@: %p, \n\tscanUUID: %@\n\tpreferredUpdateDownloadable: %s, \n\talternateUpdateDownloadable: %s, \n\tpreferredUpdateDownloadError: %@, \n\talternateUpdateDownloadError: %@, \n\tagreementManager: %@, \n\tisClearingSpaceForDownload: %d, \n\tcurrentDownload: %@, \n\tautoUpdateScheduled: %s (%p)\n\tisUpdateReadyForInstallation: %s\n\tupdateInstallationError: %@>", v28, v14, scanUUID, v15, v16, preferredUpdateDownloadError, alternateUpdateDownloadError, agreementManager, isClearingSpaceForDownload, v18, v19, currentAutoInstallOperation, v20, updateInstallationError];
  MEMORY[0x277D82BD8](updateInstallationError);
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  MEMORY[0x277D82BD8](agreementManager);
  MEMORY[0x277D82BD8](alternateUpdateDownloadError);
  MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  MEMORY[0x277D82BD8](scanUUID);
  MEMORY[0x277D82BD8](v28);
  objc_storeStrong(v43, 0);

  return v29;
}

@end