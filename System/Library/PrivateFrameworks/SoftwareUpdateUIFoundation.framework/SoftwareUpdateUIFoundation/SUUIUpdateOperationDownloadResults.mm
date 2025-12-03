@interface SUUIUpdateOperationDownloadResults
- (SUUIUpdateOperationDownloadResults)initWithResult:(BOOL)result download:(id)download;
- (id)descriptionDictionary;
@end

@implementation SUUIUpdateOperationDownloadResults

- (SUUIUpdateOperationDownloadResults)initWithResult:(BOOL)result download:(id)download
{
  selfCopy = self;
  v11 = a2;
  resultCopy = result;
  location = 0;
  objc_storeStrong(&location, download);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = SUUIUpdateOperationDownloadResults;
  v7 = [(SUUIUpdateOperationResults *)&v8 initWithResult:resultCopy];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    objc_storeStrong(&selfCopy->_download, location);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)descriptionDictionary
{
  v35[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v28[1] = a2;
  v28[0] = 0;
  download = [(SUUIUpdateOperationDownloadResults *)self download];
  v26 = 0;
  v24 = 0;
  v21 = 0;
  if (download)
  {
    download2 = [(SUUIUpdateOperationDownloadResults *)selfCopy download];
    v26 = 1;
    descriptor = [(SUUIDownload *)download2 descriptor];
    v24 = 1;
    v21 = descriptor != 0;
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](download2);
  }

  MEMORY[0x277D82BD8](download);
  if (v21)
  {
    v13 = MEMORY[0x277CCACA8];
    download3 = [(SUUIUpdateOperationDownloadResults *)selfCopy download];
    descriptor2 = [(SUUIDownload *)download3 descriptor];
    updateName = [descriptor2 updateName];
    download4 = [(SUUIUpdateOperationDownloadResults *)selfCopy download];
    download5 = [(SUUIUpdateOperationDownloadResults *)selfCopy download];
    progress = [(SUUIDownload *)download5 progress];
    v2 = [v13 stringWithFormat:@"%@ (%p) (progress: %@)", updateName, download4, progress];
    v3 = v28[0];
    v28[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](download5);
    MEMORY[0x277D82BD8](download4);
    MEMORY[0x277D82BD8](updateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](download3);
  }

  v22.receiver = selfCopy;
  v22.super_class = SUUIUpdateOperationDownloadResults;
  descriptionDictionary = [(SUUIUpdateOperationResults *)&v22 descriptionDictionary];
  v23 = [descriptionDictionary mutableCopy];
  MEMORY[0x277D82BD8](descriptionDictionary);
  v12 = v23;
  v34 = @"download";
  location = 0;
  objc_storeStrong(&location, v28[0]);
  v30 = 0;
  if (location)
  {
    v4 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v30 = 1;
    v4 = MEMORY[0x277D82BE0](null);
  }

  v33 = v4;
  if (v30)
  {
    MEMORY[0x277D82BD8](null);
  }

  objc_storeStrong(&location, 0);
  v7 = v33;
  v5 = v33;
  v9 = v7;
  v35[0] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [v12 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

@end