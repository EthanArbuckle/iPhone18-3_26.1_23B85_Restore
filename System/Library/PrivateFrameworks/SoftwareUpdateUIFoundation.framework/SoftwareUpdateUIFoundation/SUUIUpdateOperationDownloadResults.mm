@interface SUUIUpdateOperationDownloadResults
- (SUUIUpdateOperationDownloadResults)initWithResult:(BOOL)a3 download:(id)a4;
- (id)descriptionDictionary;
@end

@implementation SUUIUpdateOperationDownloadResults

- (SUUIUpdateOperationDownloadResults)initWithResult:(BOOL)a3 download:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v12;
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = SUUIUpdateOperationDownloadResults;
  v7 = [(SUUIUpdateOperationResults *)&v8 initWithResult:v10];
  v12 = v7;
  objc_storeStrong(&v12, v7);
  if (v7)
  {
    objc_storeStrong(&v12->_download, location);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)descriptionDictionary
{
  v35[1] = *MEMORY[0x277D85DE8];
  v29 = self;
  v28[1] = a2;
  v28[0] = 0;
  v20 = [(SUUIUpdateOperationDownloadResults *)self download];
  v26 = 0;
  v24 = 0;
  v21 = 0;
  if (v20)
  {
    v27 = [(SUUIUpdateOperationDownloadResults *)v29 download];
    v26 = 1;
    v25 = [(SUUIDownload *)v27 descriptor];
    v24 = 1;
    v21 = v25 != 0;
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](v25);
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](v27);
  }

  MEMORY[0x277D82BD8](v20);
  if (v21)
  {
    v13 = MEMORY[0x277CCACA8];
    v19 = [(SUUIUpdateOperationDownloadResults *)v29 download];
    v18 = [(SUUIDownload *)v19 descriptor];
    v17 = [v18 updateName];
    v16 = [(SUUIUpdateOperationDownloadResults *)v29 download];
    v15 = [(SUUIUpdateOperationDownloadResults *)v29 download];
    v14 = [(SUUIDownload *)v15 progress];
    v2 = [v13 stringWithFormat:@"%@ (%p) (progress: %@)", v17, v16, v14];
    v3 = v28[0];
    v28[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
  }

  v22.receiver = v29;
  v22.super_class = SUUIUpdateOperationDownloadResults;
  v11 = [(SUUIUpdateOperationResults *)&v22 descriptionDictionary];
  v23 = [v11 mutableCopy];
  MEMORY[0x277D82BD8](v11);
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
    v31 = [MEMORY[0x277CBEB68] null];
    v30 = 1;
    v4 = MEMORY[0x277D82BE0](v31);
  }

  v33 = v4;
  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
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