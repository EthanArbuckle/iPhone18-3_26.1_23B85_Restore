@interface VCSPropertyValue
- (NSString)description;
- (VCSPropertyValue)initWithValue:(id)a3 type:(unint64_t)a4;
- (id)dictify;
- (id)valueDescription;
- (void)addParameter:(id)a3 withValue:(id)a4;
@end

@implementation VCSPropertyValue

- (VCSPropertyValue)initWithValue:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = VCSPropertyValue;
  v8 = [(VCSPropertyValue *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_valueType = a4;
    objc_storeStrong(&v8->_value, a3);
    v10 = objc_opt_new();
    parameters = v9->_parameters;
    v9->_parameters = v10;
  }

  return v9;
}

- (void)addParameter:(id)a3 withValue:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    parameters = self->_parameters;
    if (v6)
    {
      [(NSMutableDictionary *)parameters setObject:v6 forKeyedSubscript:v8];
    }

    else
    {
      [(NSMutableDictionary *)parameters removeObjectForKey:v8];
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

  v6 = [(VCSPropertyValue *)self valueDescription];
  [v3 setObject:v6 forKeyedSubscript:@"value"];

  if ([(NSMutableDictionary *)self->_parameters count])
  {
    v7 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(NSMutableDictionary *)self->_parameters allKeys];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_parameters objectForKeyedSubscript:v13];
          v15 = [v14 dictify];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v5 = [(VCSPropertyValue *)self dictify];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@", v4, self, v5];

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
        v3 = stringForEntityStatus([self->_value unsignedIntegerValue]);
        goto LABEL_8;
      }

      if (valueType == 1)
      {
        v3 = stringForEntityTransparency([self->_value unsignedIntegerValue]);
        goto LABEL_8;
      }
    }

    else
    {
      if (valueType == 2)
      {
        v3 = stringForEntityClassification([self->_value unsignedIntegerValue]);
        goto LABEL_8;
      }

      if (valueType == 3)
      {
        v3 = self->_value;
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if ((valueType - 6) < 3)
  {
LABEL_7:
    v3 = [self->_value description];
LABEL_8:
    v4 = v3;
    goto LABEL_9;
  }

  if (valueType != 5)
  {
    if (valueType == 9)
    {
      v3 = [self->_value dictify];
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