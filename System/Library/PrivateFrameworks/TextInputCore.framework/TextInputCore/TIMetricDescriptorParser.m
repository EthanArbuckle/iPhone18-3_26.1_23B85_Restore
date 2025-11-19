@interface TIMetricDescriptorParser
- (TIMetricDescriptorParser)init;
- (id)descriptionFromDependencyChain:(id)a3 andDependencyName:(id)a4;
- (id)parseBucketValuesFromConfig:(id)a3 forBucketThresholds:(id)a4 isFeatureUsageDescriptor:(BOOL)a5 errors:(id)a6;
- (id)parseCalculationDefaultValueFromConfig:(id)a3 forExpression:(id)a4 andPrecondition:(id)a5 errors:(id)a6;
- (id)parseCalculationDependenciesFromConfig:(id)a3 forExpression:(id)a4 errors:(id)a5;
- (id)parseCalculationPreconditionFromConfig:(id)a3 forExpression:(id)a4 errors:(id)a5;
- (id)parseContextValueDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (id)parseFeatureUsageDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (id)parseMetricDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (id)parseNumericValueDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (id)parseSettingValueDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (void)findInvalidDependencyChain:(id)a3 forMetricDescriptor:(id)a4 fromMetricDescriptors:(id)a5 andInvalidMetricNames:(id)a6 invalidMetricDescriptors:(id)a7 errors:(id)a8;
- (void)parseMetricDescriptors:(id)a3 andInvalidMetricNames:(id)a4 fromConfig:(id)a5 errors:(id)a6;
@end

@implementation TIMetricDescriptorParser

- (id)descriptionFromDependencyChain:(id)a3 andDependencyName:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) metricName];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if (v6)
  {
    [v7 addObject:v6];
  }

  [v7 removeObjectAtIndex:{0, v17}];
  v14 = [v7 componentsJoinedByString:@" -> "];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)findInvalidDependencyChain:(id)a3 forMetricDescriptor:(id)a4 fromMetricDescriptors:(id)a5 andInvalidMetricNames:(id)a6 invalidMetricDescriptors:(id)a7 errors:(id)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v41 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v14 mutableCopy];
  [v19 addObject:v15];
  v40 = v17;
  if ([v14 containsObject:v15])
  {
    v20 = [(TIMetricDescriptorParser *)self descriptionFromDependencyChain:v19 andDependencyName:0];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Circular dependency: %@", v20];
    v22 = [(TIDescriptorParser *)self errorWithMessage:v21];
    [v18 addObject:v22];

    v23 = [v19 objectAtIndexedSubscript:0];
    [v17 addObject:v23];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = v18;
      v44 = v19;
      v42 = self;
      v38 = v15;
      v39 = v14;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v24 = [v15 calculationDependencies];
      v25 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
      v27 = v17;
      v26 = v41;
      if (v25)
      {
        v28 = v25;
        v29 = *v46;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v46 != v29)
            {
              objc_enumerationMutation(v24);
            }

            v31 = *(*(&v45 + 1) + 8 * i);
            v32 = [v16 objectForKey:v31];
            if (v32)
            {
              [(TIMetricDescriptorParser *)v42 findInvalidDependencyChain:v44 forMetricDescriptor:v32 fromMetricDescriptors:v16 andInvalidMetricNames:v26 invalidMetricDescriptors:v27 errors:v43];
            }

            else if ([v26 containsObject:v31])
            {
              v33 = [(TIMetricDescriptorParser *)v42 descriptionFromDependencyChain:v44 andDependencyName:v31];
              v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid dependency: %@", v33];
              v35 = [(TIDescriptorParser *)v42 errorWithMessage:v34];
              [v43 addObject:v35];

              v27 = v40;
              v36 = [v44 objectAtIndexedSubscript:0];
              [v40 addObject:v36];

              v26 = v41;
            }
          }

          v28 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v28);
      }

      v15 = v38;
      v14 = v39;
      v18 = v43;
      v19 = v44;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (id)parseBucketValuesFromConfig:(id)a3 forBucketThresholds:(id)a4 isFeatureUsageDescriptor:(BOOL)a5 errors:(id)a6
{
  v7 = a5;
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = [(TIDescriptorParser *)self parseArrayForKey:@"bucketValues" fromConfig:v10 required:0 errors:v13];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_28;
  }

  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' cannot be specified for feature usage descriptors.", @"bucketValues", v36];
    v26 = LABEL_26:;
    v27 = self;
    v28 = v26;
    v29 = v11;
    goto LABEL_27;
  }

  if (!v11)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' cannot be specified without key '%@'.", @"bucketValues", @"bucketThresholds"];
    v27 = self;
    v28 = v26;
    v29 = 0;
LABEL_27:
    v30 = [(TIDescriptorParser *)v27 errorWithMessage:v28 andValue:v29];
    [v13 addObject:v30];

    goto LABEL_28;
  }

  v16 = [v14 count];
  if (v16 != [v11 count] + 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must contain one more value than key '%@'.", @"bucketValues", @"bucketThresholds"];
    goto LABEL_26;
  }

  v37 = v10;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v40;
    do
    {
      v21 = 0;
      do
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v39 + 1) + 8 * v21);
        if ([MEMORY[0x277D6F320] isString:v22] && objc_msgSend(v22, "length") && (!v19 || v19 == objc_opt_class()))
        {
          v23 = 0x277CCACA8;
        }

        else
        {
          if (![MEMORY[0x277D6F320] isNumber:v22] || v19 && v19 != objc_opt_class())
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must contain values of the same data type.", @"bucketValues"];
            v35 = [(TIDescriptorParser *)self errorWithMessage:v34 andValue:v11];
            [v13 addObject:v35];

            goto LABEL_35;
          }

          v23 = 0x277CCABB0;
        }

        v24 = *v23;
        v19 = objc_opt_class();
        ++v21;
      }

      while (v18 != v21);
      v25 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      v18 = v25;
    }

    while (v25);
  }

LABEL_35:

  v10 = v37;
LABEL_28:
  if ([v13 count])
  {
    [v12 addObjectsFromArray:v13];
    v31 = 0;
  }

  else
  {
    v31 = v15;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)parseCalculationDependenciesFromConfig:(id)a3 forExpression:(id)a4 errors:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [(TIDescriptorParser *)self parseArrayForKey:@"calculationDependencies" fromConfig:v8 required:0 errors:v10];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_18;
  }

  if (!a4)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' cannot be specified without key '%@'.", @"calculationDependencies", @"calculationExpression"];
    v21 = LABEL_17:;
    v22 = [(TIDescriptorParser *)self errorWithMessage:v21 andValue:v12];
    [v10 addObject:v22];

    goto LABEL_18;
  }

  if (![v11 count])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must contain at least one value.", @"calculationDependencies", v26];
    goto LABEL_17;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    v27 = v9;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        if (![MEMORY[0x277D6F320] isString:v18] || !objc_msgSend(v18, "length"))
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' values must all be strings.", @"calculationDependencies"];
          v20 = [(TIDescriptorParser *)self errorWithMessage:v19 andValue:v13];
          [v10 addObject:v20];

          v9 = v27;
          goto LABEL_18;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v9 = v27;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  if ([v10 count])
  {
    [v9 addObjectsFromArray:v10];
    v23 = 0;
  }

  else
  {
    v23 = v12;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)parseCalculationDefaultValueFromConfig:(id)a3 forExpression:(id)a4 andPrecondition:(id)a5 errors:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [(TIDescriptorParser *)self parseNumberForKey:@"calculationDefaultValue" fromConfig:v12 required:0 errors:v13];

  if (v14)
  {
    if (a4)
    {
      if (v10)
      {
        goto LABEL_10;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' cannot be specified without key '%@'.", @"calculationDefaultValue", @"calculationPrecondition"];
      v16 = self;
      v17 = v15;
      v18 = 0;
      goto LABEL_9;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' cannot be specified without key '%@'.", @"calculationDefaultValue", @"calculationExpression"];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must be specified with key '%@'.", @"calculationDefaultValue", @"calculationPrecondition"];
  }
  v15 = ;
  v16 = self;
  v17 = v15;
  v18 = v10;
LABEL_9:
  v19 = [(TIDescriptorParser *)v16 errorWithMessage:v17 andValue:v18];
  [v13 addObject:v19];

LABEL_10:
  if ([v13 count])
  {
    [v11 addObjectsFromArray:v13];
    v20 = 0;
  }

  else
  {
    v20 = v14;
  }

  return v20;
}

- (id)parseCalculationPreconditionFromConfig:(id)a3 forExpression:(id)a4 errors:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [(TIDescriptorParser *)self parseStringForKey:@"calculationPrecondition" fromConfig:v9 required:0 errors:v10];

  if (!a4 && v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' cannot be specified without key '%@'.", @"calculationPrecondition", @"calculationExpression"];
    v13 = [(TIDescriptorParser *)self errorWithMessage:v12 andValue:v11];
    [v10 addObject:v13];
  }

  if ([v10 count])
  {
    [v8 addObjectsFromArray:v10];
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

- (id)parseSettingValueDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = [(TIDescriptorParser *)self parseStringForKey:@"settingName" fromConfig:v10 required:1 errors:v11];

  if ([v11 count])
  {
    [v9 addObjectsFromArray:v11];
    v13 = 0;
  }

  else
  {
    v13 = [TISettingValueDescriptor settingValueDescriptorWithMetricName:v8 settingName:v12];
  }

  return v13;
}

- (id)parseContextValueDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = [(TIDescriptorParser *)self parseStringForKey:@"contextFieldName" fromConfig:v10 required:1 errors:v11];

  if ([v11 count])
  {
    [v9 addObjectsFromArray:v11];
    v13 = 0;
  }

  else
  {
    v13 = [TIContextValueDescriptor contextValueDescriptorWithMetricName:v8 contextFieldName:v12];
  }

  return v13;
}

- (id)parseFeatureUsageDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v28 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [(TIDescriptorParser *)self parseStringForKey:@"discoveryCounter" fromConfig:v8 required:0 errors:v10];
  v12 = [(TIDescriptorParser *)self parseNumberForKey:@"discoveryThreshold" fromConfig:v8 required:0 errors:v10];
  v26 = [(TIDescriptorParser *)self parseStringForKey:@"configString" fromConfig:v8 required:0 errors:v10];
  v13 = [(TIDescriptorParser *)self parseStringForKey:@"calculationExpression" fromConfig:v8 required:0 errors:v10];
  v14 = [(TIMetricDescriptorParser *)self parseCalculationPreconditionFromConfig:v8 forExpression:v13 errors:v10];
  v15 = [(TIMetricDescriptorParser *)self parseCalculationDefaultValueFromConfig:v8 forExpression:v13 andPrecondition:v14 errors:v10];
  v25 = [(TIMetricDescriptorParser *)self parseCalculationDependenciesFromConfig:v8 forExpression:v13 errors:v10];
  v16 = [(TIMetricDescriptorParser *)self parseBucketThresholdsFromConfig:v8 isFeatureUsageDescriptor:1 errors:v10];
  v17 = [(TIMetricDescriptorParser *)self parseBucketValuesFromConfig:v8 forBucketThresholds:v16 isFeatureUsageDescriptor:1 errors:v10];
  v27 = v12;
  if ([v10 count])
  {
    [v9 addObjectsFromArray:v10];
    v24 = 0;
    v18 = v14;
    v20 = v25;
    v19 = v26;
  }

  else
  {
    v23 = v14;
    if (v12)
    {
      v21 = [v12 integerValue];
    }

    else
    {
      v21 = 0;
    }

    v20 = v25;
    v19 = v26;
    v18 = v23;
    v24 = [TIFeatureUsageDescriptor featureUsageDescriptorWithMetricName:v28 discoveryCounter:v11 discoveryThreshold:v21 configString:v26 calculationExpression:v13 calculationPrecondition:v23 calculationDefaultValue:v15 calculationDependencies:v25 bucketThresholds:v16];
  }

  return v24;
}

- (id)parseNumericValueDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = [(TIDescriptorParser *)self parseStringForKey:@"calculationExpression" fromConfig:v10 required:0 errors:v11];
  v13 = [(TIMetricDescriptorParser *)self parseCalculationPreconditionFromConfig:v10 forExpression:v12 errors:v11];
  v14 = [(TIMetricDescriptorParser *)self parseCalculationDefaultValueFromConfig:v10 forExpression:v12 andPrecondition:v13 errors:v11];
  v15 = [(TIMetricDescriptorParser *)self parseCalculationDependenciesFromConfig:v10 forExpression:v12 errors:v11];
  v16 = [(TIMetricDescriptorParser *)self parseBucketThresholdsFromConfig:v10 isFeatureUsageDescriptor:0 errors:v11];
  v17 = [(TIMetricDescriptorParser *)self parseBucketValuesFromConfig:v10 forBucketThresholds:v16 isFeatureUsageDescriptor:0 errors:v11];

  if ([v11 count])
  {
    [v9 addObjectsFromArray:v11];
    v18 = 0;
  }

  else
  {
    v18 = [TINumericValueDescriptor numericValueDescriptorWithMetricName:v8 calculationExpression:v12 calculationPrecondition:v13 calculationDefaultValue:v14 calculationDependencies:v15 bucketThresholds:v16 bucketValues:v17];
  }

  return v18;
}

- (id)parseMetricDescriptorWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [(TIDescriptorParser *)self parseStringForKey:@"metricType" fromConfig:v9 required:1 errors:v11];
  if ([v12 isEqualToString:@"numericValue"])
  {
    v13 = [(TIMetricDescriptorParser *)self parseNumericValueDescriptorWithName:v8 fromConfig:v9 errors:v11];
LABEL_9:
    v14 = v13;
    goto LABEL_10;
  }

  if ([v12 isEqualToString:@"featureUsage"])
  {
    v13 = [(TIMetricDescriptorParser *)self parseFeatureUsageDescriptorWithName:v8 fromConfig:v9 errors:v11];
    goto LABEL_9;
  }

  if ([v12 isEqualToString:@"contextValue"])
  {
    v13 = [(TIMetricDescriptorParser *)self parseContextValueDescriptorWithName:v8 fromConfig:v9 errors:v11];
    goto LABEL_9;
  }

  if ([v12 isEqualToString:@"settingValue"])
  {
    v13 = [(TIMetricDescriptorParser *)self parseSettingValueDescriptorWithName:v8 fromConfig:v9 errors:v11];
    goto LABEL_9;
  }

  v17 = [(TIDescriptorParser *)self invalidValueErrorForKey:@"metricType" withValue:v12];
  [v11 addObject:v17];

  v14 = 0;
LABEL_10:
  if ([v11 count])
  {
    [v10 addObjectsFromArray:v11];
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

- (void)parseMetricDescriptors:(id)a3 andInvalidMetricNames:(id)a4 fromConfig:(id)a5 errors:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v10 = a4;
  v11 = a5;
  v39 = a6;
  v12 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [v11 allKeys];
  v13 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * i);
        v18 = [(TIDescriptorParser *)self context];
        [v18 setObject:v17 forKey:@"metric"];

        v19 = [(TIDescriptorParser *)self parseDictionaryForKey:v17 fromConfig:v11 required:1 errors:v12];
        if (v19 && ([(TIMetricDescriptorParser *)self parseMetricDescriptorWithName:v17 fromConfig:v19 errors:v12], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v21 = v20;
          [v43 setObject:v20 forKey:v17];
        }

        else
        {
          [v10 addObject:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v14);
  }

  v40 = v11;

  v22 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obja = [v43 allValues];
  v23 = [obja countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v48 + 1) + 8 * j);
        v28 = [(TIDescriptorParser *)self context:v39];
        v29 = [v27 metricName];
        [v28 setObject:v29 forKey:@"metric"];

        [(TIMetricDescriptorParser *)self findInvalidDependencyChain:MEMORY[0x277CBEBF8] forMetricDescriptor:v27 fromMetricDescriptors:v43 andInvalidMetricNames:v10 invalidMetricDescriptors:v22 errors:v12];
      }

      v24 = [obja countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v24);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = v22;
  v31 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v45;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v44 + 1) + 8 * k);
        v36 = [v35 metricName];
        [v43 removeObjectForKey:v36];

        v37 = [v35 metricName];
        [v10 addObject:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v32);
  }

  [v39 addObjectsFromArray:v12];
  v38 = *MEMORY[0x277D85DE8];
}

- (TIMetricDescriptorParser)init
{
  v3.receiver = self;
  v3.super_class = TIMetricDescriptorParser;
  return [(TIDescriptorParser *)&v3 initWithErrorCode:0];
}

@end