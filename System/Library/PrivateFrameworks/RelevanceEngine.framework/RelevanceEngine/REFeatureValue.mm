@interface REFeatureValue
+ (REFeatureValue)featureValueWithDictionary:(id)dictionary;
+ (id)nullValueForFeature:(id)feature;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
@end

@implementation REFeatureValue

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = REValueDescriptionStringFromFeatureValue(self);
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

+ (id)nullValueForFeature:(id)feature
{
  featureCopy = feature;
  if (nullValueForFeature__onceToken != -1)
  {
    +[REFeatureValue(NullValue) nullValueForFeature:];
  }

  featureType = [featureCopy featureType];
  v5 = &nullValueForFeature__NullBinaryValue;
  if (featureType)
  {
    v5 = &nullValueForFeature__NullValue;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

uint64_t __49__REFeatureValue_NullValue__nullValueForFeature___block_invoke()
{
  v0 = [REFeatureValue featureValueWithInt64:-1];
  v1 = nullValueForFeature__NullValue;
  nullValueForFeature__NullValue = v0;

  v2 = [REFeatureValue featureValueWithBool:0];
  v3 = nullValueForFeature__NullBinaryValue;
  nullValueForFeature__NullBinaryValue = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (REFeatureValue)featureValueWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"value_type"];
  integerValue = [v4 integerValue];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"value_value"];
  v7 = v6;
  v8 = 0;
  if (integerValue <= 1)
  {
    if (integerValue)
    {
      if (integerValue != 1)
      {
        goto LABEL_20;
      }

      v16 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v6 integerValue]);
    }

    else
    {
      v16 = +[REFeatureValue featureValueWithBool:](REFeatureValue, "featureValueWithBool:", [v6 BOOLValue]);
    }

    goto LABEL_19;
  }

  switch(integerValue)
  {
    case 2:
      [v6 doubleValue];
      v16 = [REFeatureValue featureValueWithDouble:?];
LABEL_19:
      v8 = v16;
      break;
    case 3:
      v16 = [REFeatureValue featureValueWithString:v6];
      goto LABEL_19;
    case 4:
      v9 = [MEMORY[0x277CBEB58] set];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [REFeatureValue featureValueWithDictionary:*(*(&v19 + 1) + 8 * i), v19];
            [v9 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      v8 = [REFeatureValue featureValueWithSet:v9];

      break;
  }

LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)dictionaryEncoding
{
  v25 = *MEMORY[0x277D85DE8];
  type = [(REFeatureValue *)self type];
  v4 = &unk_283BBD920;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_20;
      }

      stringValue = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[REFeatureValue int64Value](self, "int64Value")}];
    }

    else
    {
      stringValue = [MEMORY[0x277CCABB0] numberWithBool:{-[REFeatureValue BOOLValue](self, "BOOLValue")}];
    }

    goto LABEL_19;
  }

  switch(type)
  {
    case 2:
      v13 = MEMORY[0x277CCABB0];
      [(REFeatureValue *)self doubleValue];
      stringValue = [v13 numberWithDouble:?];
LABEL_19:
      v4 = stringValue;
      break;
    case 3:
      stringValue = [(REFeatureValue *)self stringValue];
      goto LABEL_19;
    case 4:
      array = [MEMORY[0x277CBEB18] array];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      setValue = [(REFeatureValue *)self setValue];
      v7 = [setValue countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(setValue);
            }

            dictionaryEncoding = [*(*(&v18 + 1) + 8 * i) dictionaryEncoding];
            [array addObject:dictionaryEncoding];
          }

          v8 = [setValue countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v8);
      }

      v4 = [array copy];
      break;
  }

LABEL_20:
  v22[0] = @"value_type";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[REFeatureValue type](self, "type")}];
  v22[1] = @"value_value";
  v23[0] = v14;
  v23[1] = v4;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end