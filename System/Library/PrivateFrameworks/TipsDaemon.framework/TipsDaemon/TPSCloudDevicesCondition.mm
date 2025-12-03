@interface TPSCloudDevicesCondition
- (TPSCloudDevicesCondition)init;
- (id)_valuesFromValuesArray:(id)array;
- (id)targetingValidations;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSCloudDevicesCondition

- (TPSCloudDevicesCondition)init
{
  v5.receiver = self;
  v5.super_class = TPSCloudDevicesCondition;
  v2 = [(TPSCloudDevicesCondition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSCondition *)v2 setType:7];
  }

  return v3;
}

- (id)targetingValidations
{
  v3 = MEMORY[0x277CBEB18];
  values = [(TPSCondition *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(values, "count")}];

  values2 = [(TPSCondition *)self values];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__TPSCloudDevicesCondition_targetingValidations__block_invoke;
  v11[3] = &unk_2789B0A40;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [values2 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __48__TPSCloudDevicesCondition_targetingValidations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TPSCloudDeviceValidation alloc] initWithDeviceInfo:v3];

  [(TPSCloudDeviceValidation *)v4 setDataSource:*(a1 + 32)];
  [*(a1 + 40) addObject:v4];
}

- (id)_valuesFromValuesArray:(id)array
{
  v3 = MEMORY[0x277CBEB18];
  arrayCopy = array;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__TPSCloudDevicesCondition__valuesFromValuesArray___block_invoke;
  v9[3] = &unk_2789B0078;
  v10 = v5;
  v6 = v5;
  [arrayCopy enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __51__TPSCloudDevicesCondition__valuesFromValuesArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[TPSCloudDeviceInfo alloc] initWithDictionary:v3];
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__TPSCloudDevicesCondition__valuesFromValuesArray___block_invoke_cold_1(v3, v5);
    }
  }
}

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x277D18778]);
  v6 = [v5 initWithService:*MEMORY[0x277D71880]];
  devices = [v6 devices];
  [(TPSCloudDevicesCondition *)self setRegisteredDevices:devices];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__TPSCloudDevicesCondition_validateWithCompletion___block_invoke;
  v10[3] = &unk_2789B0A68;
  v10[4] = self;
  v11 = completionCopy;
  v9.receiver = self;
  v9.super_class = TPSCloudDevicesCondition;
  v8 = completionCopy;
  [(TPSCondition *)&v9 validateWithCompletion:v10];
}

uint64_t __51__TPSCloudDevicesCondition_validateWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setRegisteredDevices:0];
}

void __51__TPSCloudDevicesCondition__valuesFromValuesArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unexpected value for cloud device condition: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end