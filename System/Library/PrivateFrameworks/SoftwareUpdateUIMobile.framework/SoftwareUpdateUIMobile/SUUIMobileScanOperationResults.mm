@interface SUUIMobileScanOperationResults
- (id)descriptionDictionary;
- (id)initFromScanParam:(id)a3 withIdentifier:(id)a4;
@end

@implementation SUUIMobileScanOperationResults

- (id)initFromScanParam:(id)a3 withIdentifier:(id)a4
{
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, a4);
  v24 = v48;
  v25 = v46;
  v26 = [location[0] preferredUpdateDownloadable];
  v27 = [location[0] alternateUpdateDownloadable];
  v28 = [location[0] preferredUpdateDownloadError];
  v44 = 0;
  v42 = 0;
  if (v28)
  {
    v21 = [SUUIMobileStatefulError alloc];
    v45 = [location[0] preferredUpdateDownloadError];
    v44 = 1;
    v43 = [(SUUIStatefulError *)v21 initFromError:?];
    v42 = 1;
    v22 = v43;
  }

  else
  {
    v22 = 0;
  }

  v20 = [location[0] alternateUpdateDownloadError];
  v40 = 0;
  v38 = 0;
  if (v20)
  {
    v18 = [SUUIMobileStatefulError alloc];
    v41 = [location[0] alternateUpdateDownloadError];
    v40 = 1;
    v39 = [(SUUIStatefulError *)v18 initFromError:?];
    v38 = 1;
    v19 = v39;
  }

  else
  {
    v19 = 0;
  }

  v16 = [location[0] isClearingSpaceForDownload];
  v17 = [location[0] currentDownload];
  v36 = 0;
  v34 = 0;
  if (v17)
  {
    v14 = [SUUIMobileDownload alloc];
    v37 = [location[0] currentDownload];
    v36 = 1;
    v35 = [(SUUIMobileDownload *)v14 initWithDownload:?];
    v34 = 1;
    v15 = v35;
  }

  else
  {
    v15 = 0;
  }

  v11 = [location[0] isAutoUpdateScheduled];
  v12 = [location[0] isUpdateReadyForInstallation];
  v13 = [location[0] updateInstallationError];
  v32 = 0;
  v30 = 0;
  if (v13)
  {
    v9 = [SUUIMobileStatefulError alloc];
    v33 = [location[0] updateInstallationError];
    v32 = 1;
    v31 = [(SUUIStatefulError *)v9 initFromError:?];
    v30 = 1;
    v10 = v31;
  }

  else
  {
    v10 = 0;
  }

  v48 = 0;
  v29.receiver = v24;
  v29.super_class = SUUIMobileScanOperationResults;
  LOBYTE(v5) = v11;
  HIBYTE(v5) = v12;
  v8 = [(SUUIScanOperationScanResults *)&v29 initWithIdentifier:v25 preferredUpdateDownloadable:v26 alternateUpdateDownloadable:v27 preferredUpdateDownloadError:v22 alternateUpdateDownloadError:v19 clearingSpaceForDownload:v16 currentDownload:v15 autoUpdateScheduled:v5 updateReadyForInstallation:v10 updateInstallationError:?];
  v48 = v8;
  objc_storeStrong(&v48, v8);
  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  MEMORY[0x277D82BD8](v13);
  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  MEMORY[0x277D82BD8](v17);
  if (v38)
  {
    MEMORY[0x277D82BD8](v39);
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](v41);
  }

  MEMORY[0x277D82BD8](v20);
  if (v42)
  {
    MEMORY[0x277D82BD8](v43);
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](v45);
  }

  MEMORY[0x277D82BD8](v28);
  if (v8)
  {
    v7 = [location[0] currentAutoInstallOperation];
    [(SUUIMobileScanOperationResults *)v48 setCurrentAutoInstallOperation:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v48);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v48, 0);
  return v6;
}

- (id)descriptionDictionary
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10 = self;
  v9[1] = a2;
  v8.receiver = self;
  v8.super_class = SUUIMobileScanOperationResults;
  v3 = [(SUUIScanOperationScanResults *)&v8 descriptionDictionary];
  v9[0] = [v3 mutableCopy];
  MEMORY[0x277D82BD8](v3);
  v4 = v9[0];
  v11 = @"currentAutoInstallOperation";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", v10->_currentAutoInstallOperation];
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