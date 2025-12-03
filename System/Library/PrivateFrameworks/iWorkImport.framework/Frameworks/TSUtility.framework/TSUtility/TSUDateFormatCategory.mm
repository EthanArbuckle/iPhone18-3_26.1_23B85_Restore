@interface TSUDateFormatCategory
- (TSUDateFormatCategory)initWithInitialPattern:(id)pattern locale:(id)locale;
- (id)entryForSeparator:(unsigned __int16)separator;
- (id)formatStringsDictionary;
- (id)initialPattern;
- (id)newDateFromString:(id)string forceAllowAMPM:(BOOL)m successfulFormatString:(id *)formatString perfect:(BOOL *)perfect;
- (void)addSeparator:(unsigned __int16)separator format:(id)format locale:(id)locale;
- (void)dealloc;
@end

@implementation TSUDateFormatCategory

- (TSUDateFormatCategory)initWithInitialPattern:(id)pattern locale:(id)locale
{
  patternCopy = pattern;
  localeCopy = locale;
  v13.receiver = self;
  v13.super_class = TSUDateFormatCategory;
  v8 = [(TSUDateFormatCategory *)&v13 init];
  if (v8)
  {
    v9 = sub_277032454(localeCopy);
    v8->_initialFormatter = v9;
    CFDateFormatterSetFormat(v9, patternCopy);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    entries = v8->_entries;
    v8->_entries = v10;
  }

  return v8;
}

- (void)dealloc
{
  CFRelease(self->_initialFormatter);
  v3.receiver = self;
  v3.super_class = TSUDateFormatCategory;
  [(TSUDateFormatCategory *)&v3 dealloc];
}

- (id)initialPattern
{
  v2 = [(__CFString *)CFDateFormatterGetFormat(self->_initialFormatter) copy];

  return v2;
}

- (id)formatStringsDictionary
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_entries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        separator = [v10 separator];
        v11 = [MEMORY[0x277CCACA8] stringWithCharacters:&separator length:1];
        [array addObject:v11];

        formatStrings = [v10 formatStrings];
        [array2 addObject:formatStrings];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  v20[0] = @"keys";
  v20[1] = @"values";
  v21[0] = array;
  v21[1] = array2;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  return v13;
}

- (void)addSeparator:(unsigned __int16)separator format:(id)format locale:(id)locale
{
  separatorCopy = separator;
  formatCopy = format;
  localeCopy = locale;
  v9 = [(TSUDateFormatCategory *)self entryForSeparator:separatorCopy];
  if (!v9)
  {
    v9 = [[TSUDateFormatCategoryEntry alloc] initWithSeparator:separatorCopy];
    [(NSMutableArray *)self->_entries addObject:v9];
  }

  [(TSUDateFormatCategoryEntry *)v9 addFormat:formatCopy locale:localeCopy];
}

- (id)entryForSeparator:(unsigned __int16)separator
{
  separatorCopy = separator;
  v5 = [(NSMutableArray *)self->_entries count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_entries objectAtIndex:v7];
      if ([v8 separator] == separatorCopy)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (id)newDateFromString:(id)string forceAllowAMPM:(BOOL)m successfulFormatString:(id *)formatString perfect:(BOOL *)perfect
{
  mCopy = m;
  stringCopy = string;
  v11 = [(__CFString *)stringCopy length];
  v19.location = 0;
  v19.length = v11;
  v12 = 0;
  if (CFDateFormatterGetAbsoluteTimeFromString(self->_initialFormatter, stringCopy, &v19, 0))
  {
    v13 = v19.location == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && v19.length >= 1)
  {
    if (v19.length >= v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(__CFString *)stringCopy characterAtIndex:v19.length];
    }

    v16 = [(TSUDateFormatCategory *)self entryForSeparator:v15];
    v17 = v16;
    if (v16)
    {
      v12 = [v16 newDateFromString:stringCopy forceAllowAMPM:mCopy successfulFormatString:formatString perfect:perfect];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end