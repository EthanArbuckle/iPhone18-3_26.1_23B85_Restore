@interface SUUIUpdateOperationDownloadAndScheduleResults
- (SUUIUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)result andScheduleResult:(BOOL)scheduleResult download:(id)download;
- (id)descriptionDictionary;
@end

@implementation SUUIUpdateOperationDownloadAndScheduleResults

- (SUUIUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)result andScheduleResult:(BOOL)scheduleResult download:(id)download
{
  selfCopy = self;
  v13 = a2;
  resultCopy = result;
  scheduleResultCopy = scheduleResult;
  location = 0;
  objc_storeStrong(&location, download);
  v5 = selfCopy;
  selfCopy = 0;
  v9.receiver = v5;
  v9.super_class = SUUIUpdateOperationDownloadAndScheduleResults;
  v8 = [(SUUIUpdateOperationDownloadResults *)&v9 initWithResult:resultCopy download:location];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    selfCopy->_scheduled = scheduleResultCopy;
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)descriptionDictionary
{
  v16[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12[1] = a2;
  v11.receiver = self;
  v11.super_class = SUUIUpdateOperationDownloadAndScheduleResults;
  descriptionDictionary = [(SUUIUpdateOperationDownloadResults *)&v11 descriptionDictionary];
  v12[0] = [descriptionDictionary mutableCopy];
  MEMORY[0x277D82BD8](descriptionDictionary);
  v7 = v12[0];
  v15 = @"scheduled";
  if (selfCopy->_scheduled)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v6 = v2;
  v3 = v2;
  v9 = v6;
  v16[0] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v7 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

@end