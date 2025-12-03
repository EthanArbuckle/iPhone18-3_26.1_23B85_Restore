@interface SUUIMobileUpdateOperationDownloadAndScheduleResults
- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)result andScheduleResult:(BOOL)scheduleResult download:(id)download;
- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)result andScheduleResult:(BOOL)scheduleResult download:(id)download currentAutoInstallOperation:(id)operation;
- (id)descriptionDictionary;
@end

@implementation SUUIMobileUpdateOperationDownloadAndScheduleResults

- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)result andScheduleResult:(BOOL)scheduleResult download:(id)download
{
  selfCopy = self;
  v11 = a2;
  resultCopy = result;
  scheduleResultCopy = scheduleResult;
  location = 0;
  objc_storeStrong(&location, download);
  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUUIMobileUpdateOperationDownloadAndScheduleResults *)v5 initWithResult:resultCopy andScheduleResult:scheduleResultCopy download:location currentAutoInstallOperation:?];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (SUUIMobileUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)result andScheduleResult:(BOOL)scheduleResult download:(id)download currentAutoInstallOperation:(id)operation
{
  selfCopy = self;
  v16 = a2;
  resultCopy = result;
  scheduleResultCopy = scheduleResult;
  location = 0;
  objc_storeStrong(&location, download);
  v12 = 0;
  objc_storeStrong(&v12, operation);
  v6 = selfCopy;
  selfCopy = 0;
  v11.receiver = v6;
  v11.super_class = SUUIMobileUpdateOperationDownloadAndScheduleResults;
  v10 = [(SUUIUpdateOperationDownloadAndScheduleResults *)&v11 initWithResult:resultCopy andScheduleResult:scheduleResultCopy download:location];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    objc_storeStrong(&selfCopy->_currentAutoInstallOperation, v12);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (id)descriptionDictionary
{
  v20[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13[1] = a2;
  v12.receiver = self;
  v12.super_class = SUUIMobileUpdateOperationDownloadAndScheduleResults;
  descriptionDictionary = [(SUUIUpdateOperationDownloadAndScheduleResults *)&v12 descriptionDictionary];
  v13[0] = [descriptionDictionary mutableCopy];
  MEMORY[0x277D82BD8](descriptionDictionary);
  v11 = v13[0];
  v19 = @"currentAutoInstallOperation";
  currentAutoInstallOperation = selfCopy->_currentAutoInstallOperation;
  location = 0;
  objc_storeStrong(&location, currentAutoInstallOperation);
  v15 = 0;
  if (location)
  {
    v3 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    v15 = 1;
    v3 = MEMORY[0x277D82BE0](null);
  }

  v18 = v3;
  if (v15)
  {
    MEMORY[0x277D82BD8](null);
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