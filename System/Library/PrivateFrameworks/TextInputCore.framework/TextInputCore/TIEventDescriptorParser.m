@interface TIEventDescriptorParser
- (TIEventDescriptorParser)init;
- (id)parseFloatFieldSpecWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (id)parseIntegerFieldSpecWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (id)parseStringFieldSpecWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5;
- (void)parseEventDescriptor:(id *)a3 andEventSpec:(id *)a4 withName:(id)a5 fromConfig:(id)a6 errors:(id)a7;
- (void)parseEventDescriptors:(id)a3 andEventSpecs:(id)a4 fromConfig:(id)a5 errors:(id)a6;
- (void)parseFieldDescriptor:(id *)a3 andFieldSpec:(id *)a4 withName:(id)a5 fromConfig:(id)a6 errors:(id)a7;
@end

@implementation TIEventDescriptorParser

- (id)parseFloatFieldSpecWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  if (v9)
  {
    v12 = [(TIDescriptorParser *)self parseFloatForKey:@"minValue" fromConfig:v9 required:0 errors:v11];
    v13 = [(TIDescriptorParser *)self parseFloatForKey:@"maxValue" fromConfig:v9 required:0 errors:v11];
    v14 = [(TIDescriptorParser *)self parseIntegerForKey:@"significantDigits" fromConfig:v9 required:0 errors:v11];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if ([v11 count])
  {
    [v10 addObjectsFromArray:v11];
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277D6F308] floatFieldSpecWithName:v8 minValue:v12 maxValue:v13 significantDigits:v14];
  }

  return v15;
}

- (id)parseIntegerFieldSpecWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  if (v9)
  {
    v12 = [(TIDescriptorParser *)self parseIntegerForKey:@"minValue" fromConfig:v9 required:0 errors:v11];
    v13 = [(TIDescriptorParser *)self parseIntegerForKey:@"maxValue" fromConfig:v9 required:0 errors:v11];
    v14 = [(TIDescriptorParser *)self parseIntegerForKey:@"significantDigits" fromConfig:v9 required:0 errors:v11];
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if ([v11 count])
  {
    [v10 addObjectsFromArray:v11];
    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277D6F308] integerFieldSpecWithName:v8 minValue:v12 maxValue:v13 significantDigits:v14];
  }

  return v15;
}

- (id)parseStringFieldSpecWithName:(id)a3 fromConfig:(id)a4 errors:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  if (v9)
  {
    v12 = [(TIDescriptorParser *)self parseArrayForKey:@"allowedValues" fromConfig:v9 required:0 errors:v11];
    v13 = v12;
    if (v12)
    {
      if ([v12 count])
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = v13;
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          v26 = v8;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v27 + 1) + 8 * i);
              if (![MEMORY[0x277D6F320] isString:v18] || !objc_msgSend(v18, "length"))
              {
                v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' values must all be strings.", @"allowedValues"];
                v20 = [(TIDescriptorParser *)self errorWithMessage:v19 andValue:v13];
                [v11 addObject:v20];

                v8 = v26;
                goto LABEL_17;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
            v8 = v26;
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must contain at least one value.", @"allowedValues"];
        v22 = [(TIDescriptorParser *)self errorWithMessage:v21 andValue:v13];
        [v11 addObject:v22];
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_17:
  if ([v11 count])
  {
    [v10 addObjectsFromArray:v11];
    v23 = 0;
  }

  else
  {
    v23 = [MEMORY[0x277D6F308] stringFieldSpecWithName:v8 allowedValues:v13];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)parseFieldDescriptor:(id *)a3 andFieldSpec:(id *)a4 withName:(id)a5 fromConfig:(id)a6 errors:(id)a7
{
  v25 = a5;
  v10 = a6;
  v11 = a7;
  v12 = objc_opt_new();
  v13 = [(TIDescriptorParser *)self parseStringForKey:@"fieldDescription" fromConfig:v10 required:0 errors:v12];
  v14 = [(TIDescriptorParser *)self parseStringForKey:@"metricName" fromConfig:v10 required:1 errors:v12];
  v15 = [(TIDescriptorParser *)self parseStringForKey:@"metricType" fromConfig:v10 required:1 errors:v12];
  v16 = [(TIDescriptorParser *)self parseStringForKey:@"dataType" fromConfig:v10 required:1 errors:v12];
  v17 = [(TIDescriptorParser *)self parseDictionaryForKey:@"constraints" fromConfig:v10 required:0 errors:v12];
  if ([v16 isEqualToString:@"string"])
  {
    v18 = [(TIDescriptorParser *)self parseStringForKey:@"inactiveValue" fromConfig:v10 required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseStringFieldSpecWithName:v25 fromConfig:v17 errors:v12];
LABEL_9:
    v20 = v19;
    goto LABEL_10;
  }

  if ([v16 isEqualToString:@"integer"])
  {
    v18 = [(TIDescriptorParser *)self parseIntegerForKey:@"inactiveValue" fromConfig:v10 required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseIntegerFieldSpecWithName:v25 fromConfig:v17 errors:v12];
    goto LABEL_9;
  }

  if ([v16 isEqualToString:@"float"])
  {
    v18 = [(TIDescriptorParser *)self parseNumberForKey:@"inactiveValue" fromConfig:v10 required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseFloatFieldSpecWithName:v25 fromConfig:v17 errors:v12];
    goto LABEL_9;
  }

  if ([v16 isEqualToString:@"BOOLean"])
  {
    v18 = [(TIDescriptorParser *)self parseBooleanForKey:@"inactiveValue" fromConfig:v10 required:0 errors:v12];
    v19 = [(TIEventDescriptorParser *)self parseBooleanFieldSpecWithName:v25 fromConfig:v17 errors:v12];
    goto LABEL_9;
  }

  v22 = [(TIDescriptorParser *)self invalidValueErrorForKey:@"dataType" withValue:v16];
  [v12 addObject:v22];

  v18 = 0;
  v20 = 0;
LABEL_10:
  if ([v12 count])
  {
    [v11 addObjectsFromArray:v12];
  }

  else
  {
    *a3 = [TIFieldDescriptor fieldDescriptorWithFieldName:v25 fieldDescription:v13 metricName:v14 metricType:v15 inactiveValue:v18];
    v21 = v20;
    *a4 = v20;
  }
}

- (void)parseEventDescriptor:(id *)a3 andEventSpec:(id *)a4 withName:(id)a5 fromConfig:(id)a6 errors:(id)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = objc_opt_new();
  v16 = [(TIDescriptorParser *)self parseStringForKey:@"eventDescription" fromConfig:v13 required:0 errors:v15];
  v17 = [(TIDescriptorParser *)self parseBooleanForKey:@"includeTestingParameters" fromConfig:v13 required:0 errors:v15];
  v43 = [v17 isEqualToNumber:MEMORY[0x277CBEC38]];

  v18 = [(TIDescriptorParser *)self parseDictionaryForKey:@"fieldDescriptors" fromConfig:v13 required:1 errors:v15];
  v45 = objc_opt_new();
  v44 = objc_opt_new();
  v47 = objc_opt_new();
  v48 = v18;
  if (!v18)
  {
    goto LABEL_18;
  }

  v38 = a3;
  v39 = v16;
  v40 = a4;
  v41 = v14;
  v42 = v13;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v18 allKeys];
  v19 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = v19;
  v21 = *v52;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v52 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v51 + 1) + 8 * i);
      v24 = [(TIDescriptorParser *)self context];
      v25 = v12;
      [v24 setObject:v12 forKey:@"event"];

      v26 = [(TIDescriptorParser *)self parseDictionaryForKey:v23 fromConfig:v48 required:1 errors:v15];
      if (v26)
      {
        v49 = 0;
        v50 = 0;
        [(TIEventDescriptorParser *)self parseFieldDescriptor:&v50 andFieldSpec:&v49 withName:v23 fromConfig:v26 errors:v15];
        v27 = v50;
        v28 = v49;
        v29 = v28;
        if (v27 && v28)
        {
          [v45 setObject:v27 forKey:v23];
          [v44 setObject:v29 forKey:v23];
          goto LABEL_13;
        }
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      [v47 addObject:v23];
LABEL_13:

      v12 = v25;
    }

    v20 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  }

  while (v20);
LABEL_15:

  v14 = v41;
  v13 = v42;
  v16 = v39;
  a4 = v40;
  a3 = v38;
  if (![v45 count] && !objc_msgSend(v47, "count"))
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key '%@' must contain at least one value.", @"fieldDescriptors"];
    v31 = [(TIDescriptorParser *)self errorWithMessage:v30 andValue:v44];
    [v15 addObject:v31];
  }

LABEL_18:
  if ([v15 count])
  {
    [v14 addObjectsFromArray:v15];
    v33 = v44;
    v32 = v45;
  }

  else
  {
    v32 = v45;
    v34 = [v45 allValues];
    *a3 = [TIEventDescriptor eventDescriptorWithEventName:v12 eventDescription:v16 fieldDescriptors:v34 includeTestingParameters:v43];

    v35 = MEMORY[0x277D6F300];
    v33 = v44;
    v36 = [v44 allValues];
    *a4 = [v35 eventSpecWithName:v12 inputModeRequired:0 fieldSpecs:v36];
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)parseEventDescriptors:(id)a3 andEventSpecs:(id)a4 fromConfig:(id)a5 errors:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v25 = a4;
  v10 = a5;
  v24 = a6;
  v11 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v10 allKeys];
  v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [(TIDescriptorParser *)self context];
        v34 = @"event";
        v35 = v16;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        [v17 setDictionary:v18];

        v19 = [(TIDescriptorParser *)self parseDictionaryForKey:v16 fromConfig:v10 required:1 errors:v11];
        if (v19)
        {
          v28 = 0;
          v29 = 0;
          [(TIEventDescriptorParser *)self parseEventDescriptor:&v29 andEventSpec:&v28 withName:v16 fromConfig:v19 errors:v11];
          v20 = v29;
          v21 = v28;
          v22 = v21;
          if (v20 && v21)
          {
            [v26 setObject:v20 forKey:v16];
            [v25 setObject:v22 forKey:v16];
          }
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  [v24 addObjectsFromArray:v11];
  v23 = *MEMORY[0x277D85DE8];
}

- (TIEventDescriptorParser)init
{
  v3.receiver = self;
  v3.super_class = TIEventDescriptorParser;
  return [(TIDescriptorParser *)&v3 initWithErrorCode:1];
}

@end