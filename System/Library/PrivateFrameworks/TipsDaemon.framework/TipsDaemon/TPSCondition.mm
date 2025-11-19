@interface TPSCondition
+ (id)conditionFromDictionary:(id)a3;
+ (int64_t)typeFromConditionDictionary:(id)a3;
- (NSString)debugDescription;
- (TPSCondition)initWithDictionary:(id)a3;
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
- (void)validateWithValidations:(id)a3 completion:(id)a4;
@end

@implementation TPSCondition

- (TPSCondition)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TPSCondition;
  v5 = [(TPSCondition *)&v20 init];
  if (v5)
  {
    v6 = [v4 TPSSafeStringForKey:@"id"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"unknown";
    }

    objc_storeStrong(&v5->_identifier, v8);

    if ([(NSString *)v5->_identifier isEqualToString:@"unknown"])
    {
      v9 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_impl(&dword_232D6F000, v9, OS_LOG_TYPE_DEFAULT, "Missing condition id %@", buf, 0xCu);
      }
    }

    v5->_type = [objc_opt_class() typeFromConditionDictionary:v4];
    v10 = [v4 TPSSafeStringForKey:@"joinType"];
    if ([v10 isEqualToString:@"AND"])
    {
      v11 = 0;
    }

    else if ([v10 isEqualToString:@"OR"])
    {
      v11 = 1;
    }

    else
    {
      v11 = [(TPSCondition *)v5 defaultJoinType];
    }

    v5->_joinType = v11;
    v12 = [v4 TPSSafeStringForKey:@"valueType"];
    valueType = v5->_valueType;
    v5->_valueType = v12;

    v14 = [v4 TPSSafeObjectForKey:@"values"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

        v14 = v15;
      }
    }

    v16 = [(TPSCondition *)v5 _valuesFromValuesArray:v14];
    values = v5->_values;
    v5->_values = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TPSCondition *)self targetingValidations];
  [(TPSCondition *)self validateWithValidations:v5 completion:v4];
}

- (void)validateWithValidations:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_type)
  {
    objc_storeStrong(&self->_validations, a3);
    validations = self->_validations;
    v11 = [(TPSCondition *)self joinType];
    v12 = [(TPSCondition *)self identifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__TPSCondition_validateWithValidations_completion___block_invoke;
    v13[3] = &unk_2789AFFD8;
    v14 = v9;
    [TPSTargetingValidator validateConditions:validations joinType:v11 context:v12 cache:0 completionQueue:0 completionHandler:v13];
  }

  else
  {
    (*(v8 + 2))(v8, 0, 0);
  }
}

- (void)getCurrentStateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEB68];
  v5 = a3;
  v6 = [v4 null];
  (*(a3 + 2))(v5, v6, 0);
}

+ (int64_t)typeFromConditionDictionary:(id)a3
{
  v3 = [a3 TPSSafeStringForKey:@"type"];
  if ([v3 isEqualToString:@"deviceCapability"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"userType"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"regions"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"installedApps"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"devices"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"pairedDevices"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"cloudDevices"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"watchCapability"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"appStoreRegions"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"siriLanguages"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"contentStatus"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"appIntent"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"appEntity"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)conditionFromDictionary:(id)a3
{
  v4 = a3;
  switch([a1 typeFromConditionDictionary:v4])
  {
    case 1:
      v5 = TPSDeviceCapabilityCondition;
      break;
    case 2:
      v5 = TPSUserTypeCondition;
      break;
    case 3:
      v5 = TPSRegionsCondition;
      break;
    case 4:
      v5 = TPSInstalledAppsCondition;
      break;
    case 5:
      v5 = TPSDevicesCondition;
      break;
    case 6:
      v5 = TPSPairedDevicesCondition;
      break;
    case 7:
      v5 = TPSCloudDevicesCondition;
      break;
    case 8:
      v5 = TPSNRDeviceCapabilityCondition;
      break;
    case 9:
      v5 = TPSAppStoreRegionsCondition;
      break;
    case 10:
      v5 = TPSSiriLanguagesCondition;
      break;
    case 11:
      v5 = TPSContentStatusCondition;
      break;
    case 12:
      v5 = TPSAppIntentCondition;
      break;
    case 13:
      v5 = TPSAppEntityCondition;
      break;
    default:
      v6 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(TPSCondition *)v4 conditionFromDictionary:v6];
      }

      v5 = objc_opt_class();
      break;
  }

  v7 = [[v5 alloc] initWithDictionary:v4];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TPSCondition *)self identifier];
  if ([(TPSCondition *)self joinType])
  {
    v6 = @"OR";
  }

  else
  {
    v6 = @"AND";
  }

  v7 = [(TPSCondition *)self values];
  v8 = [v7 valueForKey:@"debugDescription"];
  v9 = [v3 stringWithFormat:@"<%@ %p> [%@] Values(%@): %@ ", v4, self, v5, v6, v8];

  return v9;
}

+ (void)conditionFromDictionary:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 TPSSafeStringForKey:@"type"];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unsupported condition type: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end