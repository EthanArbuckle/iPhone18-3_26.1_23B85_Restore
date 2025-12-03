@interface SUUIUpdateOperationResults
- (SUUIUpdateOperationResults)initWithResult:(BOOL)result;
- (id)descriptionDictionary;
@end

@implementation SUUIUpdateOperationResults

- (SUUIUpdateOperationResults)initWithResult:(BOOL)result
{
  v8 = a2;
  resultCopy = result;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = SUUIUpdateOperationResults;
  v5 = [(SUUIUpdateOperationResults *)&v6 init];
  v9 = v5;
  objc_storeStrong(&v9, v5);
  if (v5)
  {
    v9->_success = resultCopy;
  }

  v4 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v4;
}

- (id)descriptionDictionary
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"success";
  if ([(SUUIUpdateOperationResults *)self isSuccess])
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v5 = v2;
  v3 = v2;
  v6 = v5;
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  MEMORY[0x277D82BD8](v6);
  *MEMORY[0x277D85DE8];

  return v7;
}

@end