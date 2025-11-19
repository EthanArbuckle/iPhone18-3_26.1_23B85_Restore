@interface SDTraceItem
+ (id)stringFromReferenceDate:(double)a3;
+ (void)appendDescription:(id)a3 prefix:(id)a4 toString:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SDTraceItem

+ (id)stringFromReferenceDate:(double)a3
{
  if (stringFromReferenceDate__once != -1)
  {
    +[SDTraceItem stringFromReferenceDate:];
  }

  v4 = stringFromReferenceDate__formatter;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [(SDTraceItem *)self startTime];
  [v4 setStartTime:?];
  [v4 setIdentifier:{-[SDTraceItem identifier](self, "identifier")}];
  v5 = [(SDTraceItem *)self label];
  [v4 setLabel:v5];

  [(SDTraceItem *)self duration];
  [v4 setDuration:?];
  v6 = [(SDTraceItem *)self data];
  [v4 setData:v6];

  v7 = [(SDTraceItem *)self string];
  [v4 setString:v7];

  v8 = self;
  return v8;
}

+ (void)appendDescription:(id)a3 prefix:(id)a4 toString:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v11 = v7;
    v12 = &stru_2846BD100;
    if (v8)
    {
      v12 = v8;
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
          [v9 appendFormat:@"\n"];
          [SDTraceItem appendDescription:v19 prefix:v13 toString:v9];
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v16);
    }

    v7 = v10;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v7;
      v20 = v7;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        if (v8)
        {
          v24 = v8;
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
            [v9 appendFormat:@"\n%@%@ - ", v8, v26];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@   ", v24];
              [SDTraceItem appendDescription:v27 prefix:v28 toString:v9];
            }

            else
            {
              v28 = [v27 description];
              [v9 appendString:v28];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v22);
      }

      v13 = v8;
      v7 = v32;
    }

    else
    {
      if (v8)
      {
        v29 = v8;
      }

      else
      {
        v29 = &stru_2846BD100;
      }

      v30 = [v7 description];
      [v9 appendFormat:@"%@%@", v29, v30];

      v13 = v8;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [SDTraceItem stringFromReferenceDate:self->_startTime];
  [v3 appendString:v4];

  if (self->_identifier != -1)
  {
    [v3 appendFormat:@"\t%ld", self->_identifier];
  }

  if ([(NSString *)self->_label length])
  {
    [v3 appendFormat:@"\t%@", self->_label];
  }

  if (self->_duration != 0.0)
  {
    [v3 appendFormat:@"\telapsed: %g", *&self->_duration];
  }

  if ([(NSString *)self->_string length])
  {
    [v3 appendFormat:@"\t"];
    [v3 appendString:self->_string];
  }

  data = self->_data;
  if (data)
  {
    [SDTraceItem appendDescription:data prefix:@"   " toString:v3];
  }

  return v3;
}

@end