@interface VCSPropertyValue
- (NSString)description;
- (VCSPropertyValue)initWithValue:(id)value type:(unint64_t)type;
- (id)dictify;
- (id)valueDescription;
- (void)addParameter:(id)parameter withValue:(id)value;
@end

@implementation VCSPropertyValue

- (VCSPropertyValue)initWithValue:(id)value type:(unint64_t)type
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = VCSPropertyValue;
  v8 = [(VCSPropertyValue *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_valueType = type;
    objc_storeStrong(&v8->_value, value);
    v10 = objc_opt_new();
    parameters = v9->_parameters;
    v9->_parameters = v10;
  }

  return v9;
}

- (void)addParameter:(id)parameter withValue:(id)value
{
  parameterCopy = parameter;
  valueCopy = value;
  if (parameterCopy)
  {
    parameters = self->_parameters;
    if (valueCopy)
    {
      [(NSMutableDictionary *)parameters setObject:valueCopy forKeyedSubscript:parameterCopy];
    }

    else
    {
      [(NSMutableDictionary *)parameters removeObjectForKey:parameterCopy];
    }
  }
}

- (id)dictify
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  valueType = self->_valueType;
  if (valueType >= 0xA)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid(%lu)", self->_valueType];
  }

  else
  {
    v5 = off_27A64C548[valueType];
  }

  [v3 setObject:v5 forKeyedSubscript:@"valueType"];

  valueDescription = [(VCSPropertyValue *)self valueDescription];
  [v3 setObject:valueDescription forKeyedSubscript:@"value"];

  if ([(NSMutableDictionary *)self->_parameters count])
  {
    v7 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [(NSMutableDictionary *)self->_parameters allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_parameters objectForKeyedSubscript:v13];
          dictify = [v14 dictify];
          [v7 setObject:dictify forKeyedSubscript:v13];
        }

        v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"parameters"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictify = [(VCSPropertyValue *)self dictify];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, dictify];

  return v6;
}

- (id)valueDescription
{
  valueType = self->_valueType;
  if (valueType <= 4)
  {
    if (valueType <= 1)
    {
      if (!valueType)
      {
        dictify = stringForEntityStatus([self->_value unsignedIntegerValue]);
        goto LABEL_8;
      }

      if (valueType == 1)
      {
        dictify = stringForEntityTransparency([self->_value unsignedIntegerValue]);
        goto LABEL_8;
      }
    }

    else
    {
      if (valueType == 2)
      {
        dictify = stringForEntityClassification([self->_value unsignedIntegerValue]);
        goto LABEL_8;
      }

      if (valueType == 3)
      {
        dictify = self->_value;
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if ((valueType - 6) < 3)
  {
LABEL_7:
    dictify = [self->_value description];
LABEL_8:
    v4 = dictify;
    goto LABEL_9;
  }

  if (valueType != 5)
  {
    if (valueType == 9)
    {
      dictify = [self->_value dictify];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = self->_value;
  v4 = [@"P" mutableCopy];
  if ([v6 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 appendFormat:@"%ldD", objc_msgSend(v6, "day")];
  }

  [v4 appendString:@"T"];
  if ([v6 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 appendFormat:@"%ldH", objc_msgSend(v6, "hour")];
  }

  if ([v6 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 appendFormat:@"%ldM", objc_msgSend(v6, "minute")];
  }

  if ([v6 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 appendFormat:@"%ldS", objc_msgSend(v6, "second")];
  }

LABEL_9:

  return v4;
}

@end