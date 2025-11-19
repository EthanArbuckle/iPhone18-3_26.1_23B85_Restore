@interface TSUDateFormatCategoryEntry
- (TSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)a3;
- (__CFDate)newDateFromString:(__CFString *)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(const __CFString *)a5 perfect:(BOOL *)a6;
- (void)addFormat:(id)a3 locale:(__CFLocale *)a4;
- (void)dealloc;
@end

@implementation TSUDateFormatCategoryEntry

- (TSUDateFormatCategoryEntry)initWithSeparator:(unsigned __int16)a3
{
  v7.receiver = self;
  v7.super_class = TSUDateFormatCategoryEntry;
  v4 = [(TSUDateFormatCategoryEntry *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mSeparator = a3;
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

- (void)addFormat:(id)a3 locale:(__CFLocale *)a4
{
  if (([(NSMutableSet *)self->mFormatStrings containsObject:?]& 1) == 0)
  {
    [(NSMutableSet *)self->mFormatStrings addObject:a3];
    v7 = CFDateFormatterCreate(0, a4, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetProperty(v7, *MEMORY[0x277CBED88], *MEMORY[0x277CBED10]);
    v8 = *MEMORY[0x277CBEDF8];
    v9 = TSUGetGMTTimeZone();
    CFDateFormatterSetProperty(v7, v8, v9);
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = objc_alloc(MEMORY[0x277CBEA80]);
    v13 = [v11 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v12 = [v13 dateFromComponents:{objc_msgSend(v13, "components:fromDate:", 4, v10)}];
    CFDateFormatterSetProperty(v7, *MEMORY[0x277CBED78], v12);
    CFDateFormatterSetFormat(v7, a3);
    CFArrayAppendValue(self->mFormatters, v7);
    CFRelease(v7);
  }
}

- (__CFDate)newDateFromString:(__CFString *)a3 forceAllowAMPM:(BOOL)a4 successfulFormatString:(const __CFString *)a5 perfect:(BOOL *)a6
{
  v31 = a4;
  Length = CFStringGetLength(a3);
  v30 = self;
  Count = CFArrayGetCount(self->mFormatters);
  v27 = a6;
  *a6 = 0;
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
    ValueAtIndex = CFArrayGetValueAtIndex(v30->mFormatters, v14 - 1);
    rangep.location = 0;
    rangep.length = Length;
    v16 = CFDateFormatterCreateDateFromString(0, ValueAtIndex, a3, &rangep);
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = !v31;
    }

    if (!v17)
    {
      v18 = CFDateFormatterCopyProperty(ValueAtIndex, v12);
      v19 = CFDateFormatterCopyProperty(ValueAtIndex, v13);
      CFDateFormatterSetProperty(ValueAtIndex, v12, @"AM");
      CFDateFormatterSetProperty(ValueAtIndex, v13, @"PM");
      rangep.location = 0;
      rangep.length = Length;
      v16 = CFDateFormatterCreateDateFromString(0, ValueAtIndex, a3, &rangep);
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
    if (a5)
    {
      *a5 = CFStringCreateCopy(0, Format);
    }

    StringWithDate = CFDateFormatterCreateStringWithDate(0, ValueAtIndex, v21);
    if (CFStringCompare(StringWithDate, a3, 1uLL) == kCFCompareEqualTo)
    {
      *v27 = 1;
      goto LABEL_25;
    }

    if (cf)
    {
      CFRelease(v21);
      if (a5)
      {
        CFRelease(*a5);
        v23 = a5;
LABEL_22:
        v21 = 0;
        *v23 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v23 = a5;
      if (a5)
      {
        v26 = *a5;
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

  else if (a5)
  {
    *a5 = v26;
  }

  return result;
}

@end