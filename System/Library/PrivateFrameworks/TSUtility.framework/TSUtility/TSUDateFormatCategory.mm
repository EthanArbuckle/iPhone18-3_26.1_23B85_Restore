@interface TSUDateFormatCategory
- (TSUDateFormatCategory)initWithInitialPattern:(id)pattern locale:(__CFLocale *)locale;
- (__CFDate)newDateFromString:(__CFString *)string forceAllowAMPM:(BOOL)m successfulFormatString:(const __CFString *)formatString perfect:(BOOL *)perfect;
- (id)entryForSeparator:(unsigned __int16)separator;
- (void)addSeparator:(unsigned __int16)separator format:(id)format locale:(__CFLocale *)locale;
- (void)dealloc;
@end

@implementation TSUDateFormatCategory

- (TSUDateFormatCategory)initWithInitialPattern:(id)pattern locale:(__CFLocale *)locale
{
  v12.receiver = self;
  v12.super_class = TSUDateFormatCategory;
  v6 = [(TSUDateFormatCategory *)&v12 init];
  if (v6)
  {
    v7 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], locale, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v6->mInitialFormatter = v7;
    CFDateFormatterSetProperty(v7, *MEMORY[0x277CBED88], *MEMORY[0x277CBED10]);
    mInitialFormatter = v6->mInitialFormatter;
    v9 = *MEMORY[0x277CBEDF8];
    v10 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(mInitialFormatter, v9, v10);
    CFDateFormatterSetFormat(v6->mInitialFormatter, pattern);
    v6->mEntries = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v6;
}

- (void)dealloc
{
  CFRelease(self->mInitialFormatter);

  v3.receiver = self;
  v3.super_class = TSUDateFormatCategory;
  [(TSUDateFormatCategory *)&v3 dealloc];
}

- (void)addSeparator:(unsigned __int16)separator format:(id)format locale:(__CFLocale *)locale
{
  separatorCopy = separator;
  v9 = [(TSUDateFormatCategory *)self entryForSeparator:?];
  if (!v9)
  {
    v9 = [[TSUDateFormatCategoryEntry alloc] initWithSeparator:separatorCopy];
    [(NSMutableArray *)self->mEntries addObject:v9];
  }

  [(TSUDateFormatCategoryEntry *)v9 addFormat:format locale:locale];
}

- (id)entryForSeparator:(unsigned __int16)separator
{
  separatorCopy = separator;
  v5 = [(NSMutableArray *)self->mEntries count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    v8 = [(NSMutableArray *)self->mEntries objectAtIndex:v7];
    if ([v8 separator] == separatorCopy)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return v8;
}

- (__CFDate)newDateFromString:(__CFString *)string forceAllowAMPM:(BOOL)m successfulFormatString:(const __CFString *)formatString perfect:(BOOL *)perfect
{
  mCopy = m;
  Length = CFStringGetLength(string);
  v16.location = 0;
  v16.length = Length;
  if (CFDateFormatterGetAbsoluteTimeFromString(self->mInitialFormatter, string, &v16, 0))
  {
    v12 = v16.location == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12 || v16.length < 1)
  {
    return 0;
  }

  if (v16.length >= Length)
  {
    CharacterAtIndex = 0;
  }

  else
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(string, v16.length);
  }

  result = [(TSUDateFormatCategory *)self entryForSeparator:CharacterAtIndex];
  if (result)
  {
    return [(__CFDate *)result newDateFromString:string forceAllowAMPM:mCopy successfulFormatString:formatString perfect:perfect];
  }

  return result;
}

@end