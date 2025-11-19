@interface TSUDateFormatCategory
- (TSUDateFormatCategory)initWithInitialPattern:(id)a3 locale:(__CFLocale *)a4;
- (__CFDate)newDateFromString:(__CFString *)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(const __CFString *)a5 perfect:(BOOL *)a6;
- (id)entryForSeparator:(unsigned __int16)a3;
- (void)addSeparator:(unsigned __int16)a3 format:(id)a4 locale:(__CFLocale *)a5;
- (void)dealloc;
@end

@implementation TSUDateFormatCategory

- (TSUDateFormatCategory)initWithInitialPattern:(id)a3 locale:(__CFLocale *)a4
{
  v12.receiver = self;
  v12.super_class = TSUDateFormatCategory;
  v6 = [(TSUDateFormatCategory *)&v12 init];
  if (v6)
  {
    v7 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], a4, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v6->mInitialFormatter = v7;
    CFDateFormatterSetProperty(v7, *MEMORY[0x277CBED88], *MEMORY[0x277CBED10]);
    mInitialFormatter = v6->mInitialFormatter;
    v9 = *MEMORY[0x277CBEDF8];
    v10 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(mInitialFormatter, v9, v10);
    CFDateFormatterSetFormat(v6->mInitialFormatter, a3);
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

- (void)addSeparator:(unsigned __int16)a3 format:(id)a4 locale:(__CFLocale *)a5
{
  v7 = a3;
  v9 = [(TSUDateFormatCategory *)self entryForSeparator:?];
  if (!v9)
  {
    v9 = [[TSUDateFormatCategoryEntry alloc] initWithSeparator:v7];
    [(NSMutableArray *)self->mEntries addObject:v9];
  }

  [(TSUDateFormatCategoryEntry *)v9 addFormat:a4 locale:a5];
}

- (id)entryForSeparator:(unsigned __int16)a3
{
  v3 = a3;
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
    if ([v8 separator] == v3)
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

- (__CFDate)newDateFromString:(__CFString *)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(const __CFString *)a5 perfect:(BOOL *)a6
{
  v8 = a4;
  Length = CFStringGetLength(a3);
  v16.location = 0;
  v16.length = Length;
  if (CFDateFormatterGetAbsoluteTimeFromString(self->mInitialFormatter, a3, &v16, 0))
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
    CharacterAtIndex = CFStringGetCharacterAtIndex(a3, v16.length);
  }

  result = [(TSUDateFormatCategory *)self entryForSeparator:CharacterAtIndex];
  if (result)
  {
    return [(__CFDate *)result newDateFromString:a3 forceAllowAMPM:v8 successfulFormatString:a5 perfect:a6];
  }

  return result;
}

@end