@interface TPSCondition
+ (id)conditionFromDictionary:(id)dictionary;
+ (int64_t)typeFromConditionDictionary:(id)dictionary;
- (NSString)debugDescription;
- (TPSCondition)initWithDictionary:(id)dictionary;
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
- (void)validateWithValidations:(id)validations completion:(id)completion;
@end

@implementation TPSCondition

- (TPSCondition)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = TPSCondition;
  v5 = [(TPSCondition *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"id"];
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
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = dictionaryCopy;
        _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEFAULT, "Missing condition id %@", buf, 0xCu);
      }
    }

    v5->_type = [objc_opt_class() typeFromConditionDictionary:dictionaryCopy];
    v10 = [dictionaryCopy TPSSafeStringForKey:@"joinType"];
    if ([v10 isEqualToString:@"AND"])
    {
      defaultJoinType = 0;
    }

    else if ([v10 isEqualToString:@"OR"])
    {
      defaultJoinType = 1;
    }

    else
    {
      defaultJoinType = [(TPSCondition *)v5 defaultJoinType];
    }

    v5->_joinType = defaultJoinType;
    v12 = [dictionaryCopy TPSSafeStringForKey:@"valueType"];
    valueType = v5->_valueType;
    v5->_valueType = v12;

    v14 = [dictionaryCopy TPSSafeObjectForKey:@"values"];
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

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  targetingValidations = [(TPSCondition *)self targetingValidations];
  [(TPSCondition *)self validateWithValidations:targetingValidations completion:completionCopy];
}

- (void)validateWithValidations:(id)validations completion:(id)completion
{
  validationsCopy = validations;
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_type)
  {
    objc_storeStrong(&self->_validations, validations);
    validations = self->_validations;
    joinType = [(TPSCondition *)self joinType];
    identifier = [(TPSCondition *)self identifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__TPSCondition_validateWithValidations_completion___block_invoke;
    v13[3] = &unk_2789AFFD8;
    v14 = v9;
    [TPSTargetingValidator validateConditions:validations joinType:joinType context:identifier cache:0 completionQueue:0 completionHandler:v13];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEB68];
  completionCopy = completion;
  null = [v4 null];
  (*(completion + 2))(completionCopy, null, 0);
}

+ (int64_t)typeFromConditionDictionary:(id)dictionary
{
  v3 = [dictionary TPSSafeStringForKey:@"type"];
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

+ (id)conditionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  switch([self typeFromConditionDictionary:dictionaryCopy])
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
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
      {
        [(TPSCondition *)dictionaryCopy conditionFromDictionary:targeting];
      }

      v5 = objc_opt_class();
      break;
  }

  v7 = [[v5 alloc] initWithDictionary:dictionaryCopy];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(TPSCondition *)self identifier];
  if ([(TPSCondition *)self joinType])
  {
    v6 = @"OR";
  }

  else
  {
    v6 = @"AND";
  }

  values = [(TPSCondition *)self values];
  v8 = [values valueForKey:@"debugDescription"];
  v9 = [v3 stringWithFormat:@"<%@ %p> [%@] Values(%@): %@ ", v4, self, identifier, v6, v8];

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