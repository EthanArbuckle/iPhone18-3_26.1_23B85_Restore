@interface ICSDocument
- (ICSDocument)initWithCalendar:(id)calendar;
- (ICSDocument)initWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error;
- (ICSDocument)initWithData:(id)data encoding:(unint64_t)encoding options:(unint64_t)options delegate:(id)delegate error:(id *)error;
- (ICSDocument)initWithICSString:(id)string options:(unint64_t)options error:(id *)error;
- (id)ICSCompressedDataWithOptions:(unint64_t)options;
- (id)ICSDataWithOptions:(unint64_t)options;
- (id)ICSStringWithOptions:(unint64_t)options;
- (void)validateParsedCalendar:(id)calendar;
@end

@implementation ICSDocument

- (ICSDocument)initWithICSString:(id)string options:(unint64_t)options error:(id *)error
{
  v8 = [string dataUsingEncoding:4];
  v9 = [(ICSDocument *)self initWithData:v8 options:options error:error];

  return v9;
}

- (ICSDocument)initWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error
{
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l options:0 error:?];
  if (v8)
  {
    v9 = [(ICSDocument *)self initWithData:v8 options:options error:error];
    self = v9;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ICSDocument)initWithData:(id)data encoding:(unint64_t)encoding options:(unint64_t)options delegate:(id)delegate error:(id *)error
{
  dataCopy = data;
  delegateCopy = delegate;
  if (encoding != 4)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:encoding];
    v14 = [v13 dataUsingEncoding:4 allowLossyConversion:1];

    dataCopy = v14;
  }

  v15 = [ICSParser entitiesFromNSData:dataCopy options:options];
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
    v19 = [delegateCopy documentParsedCalendar:v18];

    v18 = v19;
  }

  if ((options & 0x100) == 0)
  {
    [(ICSDocument *)self validateParsedCalendar:v18];
  }

  v20 = [(ICSDocument *)self initWithCalendar:v18];

  return v20;
}

- (void)validateParsedCalendar:(id)calendar
{
  v36 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [calendarCopy components];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = calendarCopy;
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
              parsingErrors = [v23 parsingErrors];
              v15 = [parsingErrors mutableCopy];

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
      calendarCopy = v23;
      goto LABEL_27;
    }

    calendarCopy = v23;
    components = [v23 components];
    v17 = [components mutableCopy];

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

- (ICSDocument)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v9.receiver = self;
  v9.super_class = ICSDocument;
  v6 = [(ICSDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, calendar);
  }

  return v7;
}

- (id)ICSDataWithOptions:(unint64_t)options
{
  if (self->_calendar)
  {
    v4 = [(ICSDocument *)self ICSStringWithOptions:options];
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

- (id)ICSStringWithOptions:(unint64_t)options
{
  if (self->_calendar)
  {
    v5 = objc_alloc_init(ICSStringWriter);
    [(ICSComponent *)self->_calendar ICSStringWithOptions:options appendingToString:v5];
  }

  else
  {
    v5 = 0;
  }

  result = [(ICSStringWriter *)v5 result];

  return result;
}

- (id)ICSCompressedDataWithOptions:(unint64_t)options
{
  if (self->_calendar)
  {
    v5 = objc_alloc_init(ICSZStringWriter);
    [(ICSComponent *)self->_calendar ICSStringWithOptions:options appendingToString:v5];
  }

  else
  {
    v5 = 0;
  }

  zResult = [(ICSZStringWriter *)v5 zResult];

  return zResult;
}

@end