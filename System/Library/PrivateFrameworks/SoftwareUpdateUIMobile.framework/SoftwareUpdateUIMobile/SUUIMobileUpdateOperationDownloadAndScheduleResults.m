@interface SUUIMobileUpdateOperationDownloadAndScheduleResults
- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)a3 andScheduleResult:(BOOL)a4 download:(id)a5;
- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)a3 andScheduleResult:(BOOL)a4 download:(id)a5 currentAutoInstallOperation:(id)a6;
- (id)descriptionDictionary;
@end

@implementation SUUIMobileUpdateOperationDownloadAndScheduleResults

- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)a3 andScheduleResult:(BOOL)a4 download:(id)a5
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v5 = v12;
  v12 = 0;
  v12 = [(SUUIMobileUpdateOperationDownloadAndScheduleResults *)v5 initWithResult:v10 andScheduleResult:v9 download:location currentAutoInstallOperation:?];
  v7 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v7;
}

- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)a3 andScheduleResult:(BOOL)a4 download:(id)a5 currentAutoInstallOperation:(id)a6
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v12 = 0;
  objc_storeStrong(&v12, a6);
  v6 = v17;
  v17 = 0;
  v11.receiver = v6;
  v11.super_class = SUUIMobileUpdateOperationDownloadAndScheduleResults;
  v10 = [(SUUIUpdateOperationDownloadAndScheduleResults *)&v11 initWithResult:v15 andScheduleResult:v14 download:location];
  v17 = v10;
  objc_storeStrong(&v17, v10);
  if (v10)
  {
    objc_storeStrong(&v17->_currentAutoInstallOperation, v12);
  }

  v8 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  return v8;
}

- (id)descriptionDictionary
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = self;
  v13[1] = a2;
  v12.receiver = self;
  v12.super_class = SUUIMobileUpdateOperationDownloadAndScheduleResults;
  v10 = [(SUUIUpdateOperationDownloadAndScheduleResults *)&v12 descriptionDictionary];
  v13[0] = [v10 mutableCopy];
  MEMORY[0x277D82BD8](v10);
  v11 = v13[0];
  v19 = @"currentAutoInstallOperation";
  currentAutoInstallOperation = v14->_currentAutoInstallOperation;
  location = 0;
  objc_storeStrong(&location, currentAutoInstallOperation);
  v15 = 0;
  if (location)
  {
    v3 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v16 = [MEMORY[0x277CBEB68] null];
    v15 = 1;
    v3 = MEMORY[0x277D82BE0](v16);
  }

  v18 = v3;
  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  objc_storeStrong(&location, 0);
  v6 = v18;
  v4 = v18;
  v8 = v6;
  v20[0] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  [v11 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = MEMORY[0x277D82BE0](v13[0]);
  objc_storeStrong(v13, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

@end