@interface SUUIMobileScanOperationResults
- (id)descriptionDictionary;
- (id)initFromScanParam:(id)param withIdentifier:(id)identifier;
@end

@implementation SUUIMobileScanOperationResults

- (id)initFromScanParam:(id)param withIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, param);
  v46 = 0;
  objc_storeStrong(&v46, identifier);
  v24 = selfCopy;
  v25 = v46;
  preferredUpdateDownloadable = [location[0] preferredUpdateDownloadable];
  alternateUpdateDownloadable = [location[0] alternateUpdateDownloadable];
  preferredUpdateDownloadError = [location[0] preferredUpdateDownloadError];
  v44 = 0;
  v42 = 0;
  if (preferredUpdateDownloadError)
  {
    v21 = [SUUIMobileStatefulError alloc];
    preferredUpdateDownloadError2 = [location[0] preferredUpdateDownloadError];
    v44 = 1;
    v43 = [(SUUIStatefulError *)v21 initFromError:?];
    v42 = 1;
    v22 = v43;
  }

  else
  {
    v22 = 0;
  }

  alternateUpdateDownloadError = [location[0] alternateUpdateDownloadError];
  v40 = 0;
  v38 = 0;
  if (alternateUpdateDownloadError)
  {
    v18 = [SUUIMobileStatefulError alloc];
    alternateUpdateDownloadError2 = [location[0] alternateUpdateDownloadError];
    v40 = 1;
    v39 = [(SUUIStatefulError *)v18 initFromError:?];
    v38 = 1;
    v19 = v39;
  }

  else
  {
    v19 = 0;
  }

  isClearingSpaceForDownload = [location[0] isClearingSpaceForDownload];
  currentDownload = [location[0] currentDownload];
  v36 = 0;
  v34 = 0;
  if (currentDownload)
  {
    v14 = [SUUIMobileDownload alloc];
    currentDownload2 = [location[0] currentDownload];
    v36 = 1;
    v35 = [(SUUIMobileDownload *)v14 initWithDownload:?];
    v34 = 1;
    v15 = v35;
  }

  else
  {
    v15 = 0;
  }

  isAutoUpdateScheduled = [location[0] isAutoUpdateScheduled];
  isUpdateReadyForInstallation = [location[0] isUpdateReadyForInstallation];
  updateInstallationError = [location[0] updateInstallationError];
  v32 = 0;
  v30 = 0;
  if (updateInstallationError)
  {
    v9 = [SUUIMobileStatefulError alloc];
    updateInstallationError2 = [location[0] updateInstallationError];
    v32 = 1;
    v31 = [(SUUIStatefulError *)v9 initFromError:?];
    v30 = 1;
    v10 = v31;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = 0;
  v29.receiver = v24;
  v29.super_class = SUUIMobileScanOperationResults;
  LOBYTE(v5) = isAutoUpdateScheduled;
  HIBYTE(v5) = isUpdateReadyForInstallation;
  v8 = [(SUUIScanOperationScanResults *)&v29 initWithIdentifier:v25 preferredUpdateDownloadable:preferredUpdateDownloadable alternateUpdateDownloadable:alternateUpdateDownloadable preferredUpdateDownloadError:v22 alternateUpdateDownloadError:v19 clearingSpaceForDownload:isClearingSpaceForDownload currentDownload:v15 autoUpdateScheduled:v5 updateReadyForInstallation:v10 updateInstallationError:?];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](updateInstallationError2);
  }

  MEMORY[0x277D82BD8](updateInstallationError);
  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](currentDownload2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  if (v38)
  {
    MEMORY[0x277D82BD8](v39);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](alternateUpdateDownloadError2);
  }

  MEMORY[0x277D82BD8](alternateUpdateDownloadError);
  if (v42)
  {
    MEMORY[0x277D82BD8](v43);
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](preferredUpdateDownloadError2);
  }

  MEMORY[0x277D82BD8](preferredUpdateDownloadError);
  if (v8)
  {
    currentAutoInstallOperation = [location[0] currentAutoInstallOperation];
    [(SUUIMobileScanOperationResults *)selfCopy setCurrentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)descriptionDictionary
{
  v12[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9[1] = a2;
  v8.receiver = self;
  v8.super_class = SUUIMobileScanOperationResults;
  descriptionDictionary = [(SUUIScanOperationScanResults *)&v8 descriptionDictionary];
  v9[0] = [descriptionDictionary mutableCopy];
  MEMORY[0x277D82BD8](descriptionDictionary);
  v4 = v9[0];
  v11 = @"currentAutoInstallOperation";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", selfCopy->_currentAutoInstallOperation];
  v12[0] = v6;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v4 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

@end