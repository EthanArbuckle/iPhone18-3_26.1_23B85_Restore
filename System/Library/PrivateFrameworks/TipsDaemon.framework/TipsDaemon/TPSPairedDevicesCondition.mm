@interface TPSPairedDevicesCondition
- (TPSPairedDevicesCondition)init;
- (id)targetingValidations;
@end

@implementation TPSPairedDevicesCondition

- (TPSPairedDevicesCondition)init
{
  v5.receiver = self;
  v5.super_class = TPSPairedDevicesCondition;
  v2 = [(TPSPairedDevicesCondition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSCondition *)v2 setType:6];
  }

  return v3;
}

- (id)targetingValidations
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(TPSCondition *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(TPSCondition *)self values];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TPSPairedDevicesCondition_targetingValidations__block_invoke;
  v9[3] = &unk_2789B0920;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __49__TPSPairedDevicesCondition_targetingValidations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TPSPairedDeviceValidation alloc];
  v5 = [v3 targetValues];
  v6 = [v3 excludeValues];

  v7 = [(TPSPairedDeviceValidation *)v4 initWithTargetDevices:v5 excludeDevices:v6];
  [*(a1 + 32) addObject:v7];
}

@end