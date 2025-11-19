@interface SUUIMobileUpdateOperationScheduleResults
- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)a3;
- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)a3 currentAutoInstallOperation:(id)a4;
- (id)descriptionDictionary;
@end

@implementation SUUIMobileUpdateOperationScheduleResults

- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)a3
{
  v5 = 0;
  v5 = [(SUUIMobileUpdateOperationScheduleResults *)self initWithResult:a3 currentAutoInstallOperation:?];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  return v4;
}

- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)a3 currentAutoInstallOperation:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v12;
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = SUUIMobileUpdateOperationScheduleResults;
  v7 = [(SUUIUpdateOperationResults *)&v8 initWithResult:v10];
  v12 = v7;
  objc_storeStrong(&v12, v7);
  if (v7)
  {
    objc_storeStrong(&v12->_currentAutoInstallOperation, location);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (id)descriptionDictionary
{
  v20[1] = *MEMORY[0x277D85DE8];
  v14 = self;
  v13[1] = a2;
  v12.receiver = self;
  v12.super_class = SUUIMobileUpdateOperationScheduleResults;
  v10 = [(SUUIUpdateOperationResults *)&v12 descriptionDictionary];
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