@interface ICSDocument
- (ICSDocument)initWithCalendar:(id)a3;
- (ICSDocument)initWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (ICSDocument)initWithData:(id)a3 encoding:(unint64_t)a4 options:(unint64_t)a5 delegate:(id)a6 error:(id *)a7;
- (ICSDocument)initWithICSString:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)ICSCompressedDataWithOptions:(unint64_t)a3;
- (id)ICSDataWithOptions:(unint64_t)a3;
- (id)ICSStringWithOptions:(unint64_t)a3;
- (void)validateParsedCalendar:(id)a3;
@end

@implementation ICSDocument

- (ICSDocument)initWithICSString:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [a3 dataUsingEncoding:4];
  v9 = [(ICSDocument *)self initWithData:v8 options:a4 error:a5];

  return v9;
}

- (ICSDocument)initWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:0 error:?];
  if (v8)
  {
    v9 = [(ICSDocument *)self initWithData:v8 options:a4 error:a5];
    self = v9;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ICSDocument)initWithData:(id)a3 encoding:(unint64_t)a4 options:(unint64_t)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  if (a4 != 4)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:a4];
    v14 = [v13 dataUsingEncoding:4 allowLossyConversion:1];

    v11 = v14;
  }

  v15 = [ICSParser entitiesFromNSData:v11 options:a5];
  if ([v15 count] && (objc_msgSend(v15, "objectAtIndex:", 0), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass & 1) != 0))
  {
    v18 = [v15 objectAtIndex:0];
  }

  else
  {
    v18 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v12 documentParsedCalendar:v18];

    v18 = v19;
  }

  if ((a5 & 0x100) == 0)
  {
    [(ICSDocument *)self validateParsedCalendar:v18];
  }

  v20 = [(ICSDocument *)self initWithCalendar:v18];

  return v20;
}

- (void)validateParsedCalendar:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v3 components];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = v3;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v29 = 0;
          v12 = [v11 validate:&v29];
          v13 = v29;
          if ((v12 & 1) == 0)
          {
            [ICSLogger logAtLevel:3 forTokenizer:0 message:@"Invalid component, discarding: %@\n%@", v13, v11];
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
              v14 = [v23 parsingErrors];
              v15 = [v14 mutableCopy];

              v7 = v15;
            }

            [v8 addIndex:v6];
            [v7 addObject:v13];
          }
        }

        ++v6;
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);

    if (!v8)
    {
      v3 = v23;
      goto LABEL_27;
    }

    v3 = v23;
    v16 = [v23 components];
    v17 = [v16 mutableCopy];

    [v17 removeObjectsAtIndexes:v8];
    obj = v17;
    [v23 setComponents:v17];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v7;
    v18 = [v7 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v7);
          }

          [v23 addParsingError:*(*(&v25 + 1) + 8 * j)];
        }

        v19 = [v7 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

LABEL_27:
  v22 = *MEMORY[0x277D85DE8];
}

- (ICSDocument)initWithCalendar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSDocument;
  v6 = [(ICSDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, a3);
  }

  return v7;
}

- (id)ICSDataWithOptions:(unint64_t)a3
{
  if (self->_calendar)
  {
    v4 = [(ICSDocument *)self ICSStringWithOptions:a3];
    v5 = [v4 dataUsingEncoding:4];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      NSLog(&cfstr_Datawithcalend.isa, self->_calendar);
      v6 = [v4 dataUsingEncoding:4 allowLossyConversion:1];
      if (!v6)
      {
        NSLog(&cfstr_Datawithcalend_0.isa);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)ICSStringWithOptions:(unint64_t)a3
{
  if (self->_calendar)
  {
    v5 = objc_alloc_init(ICSStringWriter);
    [(ICSComponent *)self->_calendar ICSStringWithOptions:a3 appendingToString:v5];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICSStringWriter *)v5 result];

  return v6;
}

- (id)ICSCompressedDataWithOptions:(unint64_t)a3
{
  if (self->_calendar)
  {
    v5 = objc_alloc_init(ICSZStringWriter);
    [(ICSComponent *)self->_calendar ICSStringWithOptions:a3 appendingToString:v5];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICSZStringWriter *)v5 zResult];

  return v6;
}

@end