@interface SUUIMobileUpdateOperationScheduleResults
- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)result;
- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)result currentAutoInstallOperation:(id)operation;
- (id)descriptionDictionary;
@end

@implementation SUUIMobileUpdateOperationScheduleResults

- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)result
{
  v5 = 0;
  v5 = [(SUUIMobileUpdateOperationScheduleResults *)self initWithResult:result currentAutoInstallOperation:?];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  return v4;
}

- (SUUIMobileUpdateOperationScheduleResults)initWithResult:(BOOL)result currentAutoInstallOperation:(id)operation
{
  selfCopy = self;
  v11 = a2;
  resultCopy = result;
  location = 0;
  objc_storeStrong(&location, operation);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = SUUIMobileUpdateOperationScheduleResults;
  v7 = [(SUUIUpdateOperationResults *)&v8 initWithResult:resultCopy];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    objc_storeStrong(&selfCopy->_currentAutoInstallOperation, location);
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (id)descriptionDictionary
{
  v20[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13[1] = a2;
  v12.receiver = self;
  v12.super_class = SUUIMobileUpdateOperationScheduleResults;
  descriptionDictionary = [(SUUIUpdateOperationResults *)&v12 descriptionDictionary];
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