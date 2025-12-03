@interface SDTraceItem
+ (id)stringFromReferenceDate:(double)date;
+ (void)appendDescription:(id)description prefix:(id)prefix toString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SDTraceItem

+ (id)stringFromReferenceDate:(double)date
{
  if (stringFromReferenceDate__once != -1)
  {
    +[SDTraceItem stringFromReferenceDate:];
  }

  v4 = stringFromReferenceDate__formatter;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:date];
  v6 = [v4 stringFromDate:v5];

  return v6;
}

uint64_t __39__SDTraceItem_stringFromReferenceDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = stringFromReferenceDate__formatter;
  stringFromReferenceDate__formatter = v0;

  v2 = stringFromReferenceDate__formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [(SDTraceItem *)self startTime];
  [v4 setStartTime:?];
  [v4 setIdentifier:{-[SDTraceItem identifier](self, "identifier")}];
  label = [(SDTraceItem *)self label];
  [v4 setLabel:label];

  [(SDTraceItem *)self duration];
  [v4 setDuration:?];
  data = [(SDTraceItem *)self data];
  [v4 setData:data];

  string = [(SDTraceItem *)self string];
  [v4 setString:string];

  selfCopy = self;
  return selfCopy;
}

+ (void)appendDescription:(id)description prefix:(id)prefix toString:(id)string
{
  v43 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  prefixCopy = prefix;
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = descriptionCopy;
    v11 = descriptionCopy;
    v12 = &stru_2846BD100;
    if (prefixCopy)
    {
      v12 = prefixCopy;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@   ", v12];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          [stringCopy appendFormat:@"\n"];
          [SDTraceItem appendDescription:v19 prefix:v13 toString:stringCopy];
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v16);
    }

    descriptionCopy = v10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = descriptionCopy;
      v20 = descriptionCopy;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        if (prefixCopy)
        {
          v24 = prefixCopy;
        }

        else
        {
          v24 = &stru_2846BD100;
        }

        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v33 + 1) + 8 * j);
            v27 = [v20 objectForKeyedSubscript:v26];
            [stringCopy appendFormat:@"\n%@%@ - ", prefixCopy, v26];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@   ", v24];
              [SDTraceItem appendDescription:v27 prefix:v28 toString:stringCopy];
            }

            else
            {
              v28 = [v27 description];
              [stringCopy appendString:v28];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v22);
      }

      v13 = prefixCopy;
      descriptionCopy = v32;
    }

    else
    {
      if (prefixCopy)
      {
        v29 = prefixCopy;
      }

      else
      {
        v29 = &stru_2846BD100;
      }

      v30 = [descriptionCopy description];
      [stringCopy appendFormat:@"%@%@", v29, v30];

      v13 = prefixCopy;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [SDTraceItem stringFromReferenceDate:self->_startTime];
  [string appendString:v4];

  if (self->_identifier != -1)
  {
    [string appendFormat:@"\t%ld", self->_identifier];
  }

  if ([(NSString *)self->_label length])
  {
    [string appendFormat:@"\t%@", self->_label];
  }

  if (self->_duration != 0.0)
  {
    [string appendFormat:@"\telapsed: %g", *&self->_duration];
  }

  if ([(NSString *)self->_string length])
  {
    [string appendFormat:@"\t"];
    [string appendString:self->_string];
  }

  data = self->_data;
  if (data)
  {
    [SDTraceItem appendDescription:data prefix:@"   " toString:string];
  }

  return string;
}

@end