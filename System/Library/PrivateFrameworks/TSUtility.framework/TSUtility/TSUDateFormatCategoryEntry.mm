@interface TSUDateFormatCategoryEntry
- (TSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)separator;
- (__CFDate)newDateFromString:(__CFString *)string forceAllowAMPM:(BOOL)m successfulFormatString:(const __CFString *)formatString perfect:(BOOL *)perfect;
- (void)addFormat:(id)format locale:(__CFLocale *)locale;
- (void)dealloc;
@end

@implementation TSUDateFormatCategoryEntry

- (TSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)separator
{
  v7.receiver = self;
  v7.super_class = TSUDateFormatCategoryEntry;
  v4 = [(TSUDateFormatCategoryEntry *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mSeparator = separator;
    v4->mFormatters = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v5->mFormatStrings = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->mFormatters);

  v3.receiver = self;
  v3.super_class = TSUDateFormatCategoryEntry;
  [(TSUDateFormatCategoryEntry *)&v3 dealloc];
}

- (void)addFormat:(id)format locale:(__CFLocale *)locale
{
  if (([(NSMutableSet *)self->mFormatStrings containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->mFormatStrings addObject:format];
    v7 = CFDateFormatterCreate(0, locale, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetProperty(v7, *MEMORY[0x277CBED88], *MEMORY[0x277CBED10]);
    v8 = *MEMORY[0x277CBEDF8];
    v9 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(v7, v8, v9);
    date = [MEMORY[0x277CBEAA8] date];
    v11 = objc_alloc(MEMORY[0x277CBEA80]);
    v13 = [v11 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v12 = [v13 dateFromComponents:{objc_msgSend(v13, "components:fromDate:", 4, date)}];
    CFDateFormatterSetProperty(v7, *MEMORY[0x277CBED78], v12);
    CFDateFormatterSetFormat(v7, format);
    CFArrayAppendValue(self->mFormatters, v7);
    CFRelease(v7);
  }
}

- (__CFDate)newDateFromString:(__CFString *)string forceAllowAMPM:(BOOL)m successfulFormatString:(const __CFString *)formatString perfect:(BOOL *)perfect
{
  mCopy = m;
  Length = CFStringGetLength(string);
  selfCopy = self;
  Count = CFArrayGetCount(self->mFormatters);
  perfectCopy = perfect;
  *perfect = 0;
  if (Count < 1)
  {
    return 0;
  }

  v11 = Count;
  cf = 0;
  v26 = 0;
  v12 = *MEMORY[0x277CBED70];
  v13 = *MEMORY[0x277CBEDA0];
  v14 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(selfCopy->mFormatters, v14 - 1);
    rangep.location = 0;
    rangep.length = Length;
    v16 = CFDateFormatterCreateDateFromString(0, ValueAtIndex, string, &rangep);
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = !mCopy;
    }

    if (!v17)
    {
      v18 = CFDateFormatterCopyProperty(ValueAtIndex, v12);
      v19 = CFDateFormatterCopyProperty(ValueAtIndex, v13);
      CFDateFormatterSetProperty(ValueAtIndex, v12, @"AM");
      CFDateFormatterSetProperty(ValueAtIndex, v13, @"PM");
      rangep.location = 0;
      rangep.length = Length;
      v16 = CFDateFormatterCreateDateFromString(0, ValueAtIndex, string, &rangep);
      CFDateFormatterSetProperty(ValueAtIndex, v12, v18);
      CFDateFormatterSetProperty(ValueAtIndex, v13, v19);
      CFRelease(v18);
      CFRelease(v19);
    }

    if (!v16)
    {
      goto LABEL_18;
    }

    if (rangep.location || rangep.length != Length)
    {
      CFRelease(v16);
LABEL_18:
      v21 = 0;
      continue;
    }

    Format = CFDateFormatterGetFormat(ValueAtIndex);
    v21 = TSUCreateDateWithGregorianUnitsSetToDefaultValue(v16, Format);
    CFRelease(v16);
    if (formatString)
    {
      *formatString = CFStringCreateCopy(0, Format);
    }

    StringWithDate = CFDateFormatterCreateStringWithDate(0, ValueAtIndex, v21);
    if (CFStringCompare(StringWithDate, string, 1uLL) == kCFCompareEqualTo)
    {
      *perfectCopy = 1;
      goto LABEL_25;
    }

    if (cf)
    {
      CFRelease(v21);
      if (formatString)
      {
        CFRelease(*formatString);
        formatStringCopy2 = formatString;
LABEL_22:
        v21 = 0;
        *formatStringCopy2 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      formatStringCopy2 = formatString;
      if (formatString)
      {
        v26 = *formatString;
        cf = v21;
        goto LABEL_22;
      }

      cf = v21;
    }

    v21 = 0;
LABEL_25:
    CFRelease(StringWithDate);
    if (v21)
    {
      break;
    }
  }

  while (v14++ < v11);
  result = cf;
  if (v21 || !cf)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    return v21;
  }

  else if (formatString)
  {
    *formatString = v26;
  }

  return result;
}

@end