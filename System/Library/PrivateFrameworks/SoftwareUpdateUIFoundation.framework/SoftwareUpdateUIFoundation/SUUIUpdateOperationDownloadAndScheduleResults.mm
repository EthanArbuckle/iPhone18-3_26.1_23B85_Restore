@interface SUUIUpdateOperationDownloadAndScheduleResults
- (SUUIUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)a3 andScheduleResult:(BOOL)a4 download:(id)a5;
- (id)descriptionDictionary;
@end

@implementation SUUIUpdateOperationDownloadAndScheduleResults

- (SUUIUpdateOperationDownloadAndScheduleResults)initWithResult:(BOOL)a3 andScheduleResult:(BOOL)a4 download:(id)a5
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v5 = v14;
  v14 = 0;
  v9.receiver = v5;
  v9.super_class = SUUIUpdateOperationDownloadAndScheduleResults;
  v8 = [(SUUIUpdateOperationDownloadResults *)&v9 initWithResult:v12 download:location];
  v14 = v8;
  objc_storeStrong(&v14, v8);
  if (v8)
  {
    v14->_scheduled = v11;
  }

  v7 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  return v7;
}

- (id)descriptionDictionary
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = self;
  v12[1] = a2;
  v11.receiver = self;
  v11.super_class = SUUIUpdateOperationDownloadAndScheduleResults;
  v5 = [(SUUIUpdateOperationDownloadResults *)&v11 descriptionDictionary];
  v12[0] = [v5 mutableCopy];
  MEMORY[0x277D82BD8](v5);
  v7 = v12[0];
  v15 = @"scheduled";
  if (v13->_scheduled)
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