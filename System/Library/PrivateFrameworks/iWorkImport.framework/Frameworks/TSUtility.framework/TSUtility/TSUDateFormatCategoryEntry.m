@interface TSUDateFormatCategoryEntry
- (TSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)a3;
- (id)formatStrings;
- (id)newDateFromString:(id)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(id *)a5 perfect:(BOOL *)a6;
- (void)addFormat:(id)a3 locale:(id)a4;
@end

@implementation TSUDateFormatCategoryEntry

- (TSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)a3
{
  v11.receiver = self;
  v11.super_class = TSUDateFormatCategoryEntry;
  v4 = [(TSUDateFormatCategoryEntry *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_separator = a3;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    formatters = v5->_formatters;
    v5->_formatters = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    formatStrings = v5->_formatStrings;
    v5->_formatStrings = v8;
  }

  return v5;
}

- (id)formatStrings
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(NSMutableArray *)self->_formatters count])
  {
    v4 = 0;
    do
    {
      v5 = CFDateFormatterGetFormat([(NSMutableArray *)self->_formatters objectAtIndex:v4]);
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_formatters count]);
  }

  return v3;
}

- (void)addFormat:(id)a3 locale:(id)a4
{
  formatString = a3;
  v6 = a4;
  if (([(NSMutableSet *)self->_formatStrings containsObject:formatString]& 1) == 0)
  {
    [(NSMutableSet *)self->_formatStrings addObject:formatString];
    v7 = sub_277032454(v6);
    CFDateFormatterSetFormat(v7, formatString);
    [(NSMutableArray *)self->_formatters addObject:v7];
  }
}

- (id)newDateFromString:(id)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(id *)a5 perfect:(BOOL *)a6
{
  v38 = a4;
  v9 = a3;
  v10 = [(__CFString *)v9 length];
  v37 = self;
  v11 = [(NSMutableArray *)self->_formatters count];
  v34 = a6;
  *a6 = 0;
  v36 = v11;
  if (!v11)
  {
    v28 = 0;
    v27 = 0;
    v16 = 0;
    goto LABEL_34;
  }

  v35 = 0;
  v33 = 0;
  v12 = *MEMORY[0x277CBED70];
  v13 = *MEMORY[0x277CBEDA0];
  v14 = 1;
  do
  {
    v15 = [(NSMutableArray *)v37->_formatters objectAtIndex:v14 - 1, v33];
    rangep.location = 0;
    rangep.length = v10;
    v16 = CFDateFormatterCreateDateFromString(0, v15, v9, &rangep);
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = !v38;
    }

    if (!v17)
    {
      v18 = CFDateFormatterCopyProperty(v15, v12);
      v19 = CFDateFormatterCopyProperty(v15, v13);
      CFDateFormatterSetProperty(v15, v12, @"AM");
      CFDateFormatterSetProperty(v15, v13, @"PM");
      rangep.location = 0;
      rangep.length = v10;
      v16 = CFDateFormatterCreateDateFromString(0, v15, v9, &rangep);
      CFDateFormatterSetProperty(v15, v12, v18);
      CFDateFormatterSetProperty(v15, v13, v19);
    }

    if (v16)
    {
      v20 = CFDateFormatterGetFormat(v15);
      v21 = sub_277030634(v16, v20);

      if (a5)
      {
        v22 = v20;
        *a5 = v20;
      }

      StringWithDate = CFDateFormatterCreateStringWithDate(0, v15, v21);
      if (![(__CFString *)v9 compare:StringWithDate options:1])
      {
        *v34 = 1;
        v16 = v21;
LABEL_23:

        goto LABEL_24;
      }

      v24 = v35;
      if (!v35 && !rangep.location)
      {
        if (rangep.length == v10)
        {
          if (!a5)
          {
            v16 = 0;
            v35 = v21;
            goto LABEL_23;
          }

          v25 = *a5;

          v35 = v21;
          v33 = v25;
LABEL_20:
          v16 = 0;
          *a5 = 0;
          goto LABEL_23;
        }

        v24 = 0;
      }

      v35 = v24;

      if (!a5)
      {
        v16 = 0;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_24:
    if (v16)
    {
      break;
    }
  }

  while (v14++ < v36);
  if (v16)
  {
    v27 = v33;
    v28 = v35;
  }

  else
  {
    v27 = v33;
    v28 = v35;
    if (v35)
    {
      v29 = v35;
      if (a5)
      {
        v28 = v29;
        v30 = v33;
        *a5 = v33;
        v16 = v28;
      }

      else
      {
        v16 = v29;
        v28 = v29;
      }
    }
  }

LABEL_34:
  v31 = v16;

  return v31;
}

@end