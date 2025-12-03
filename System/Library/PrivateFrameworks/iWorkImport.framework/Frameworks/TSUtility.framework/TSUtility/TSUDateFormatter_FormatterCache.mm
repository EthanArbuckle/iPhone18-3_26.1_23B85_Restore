@interface TSUDateFormatter_FormatterCache
+ (id)dateFormatterStringFromDate:(id)date withFormat:(id)format locale:(id)locale;
- (TSUDateFormatter_FormatterCache)init;
- (id)dateFormatterStringFromDate:(id)date withFormat:(id)format locale:(id)locale;
@end

@implementation TSUDateFormatter_FormatterCache

- (TSUDateFormatter_FormatterCache)init
{
  v8.receiver = self;
  v8.super_class = TSUDateFormatter_FormatterCache;
  v2 = [(TSUDateFormatter_FormatterCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dateFormatterCacheLock = v2->_dateFormatterCacheLock;
    v2->_dateFormatterCacheLock = v3;

    v5 = objc_opt_new();
    dateFormatterCache = v2->_dateFormatterCache;
    v2->_dateFormatterCache = v5;
  }

  return v2;
}

- (id)dateFormatterStringFromDate:(id)date withFormat:(id)format locale:(id)locale
{
  dateCopy = date;
  formatCopy = format;
  localeCopy = locale;
  StringWithDate = 0;
  if (dateCopy && formatCopy)
  {
    [(NSLock *)self->_dateFormatterCacheLock lock];
    UsingHarmonizedSymbols = [(NSMutableDictionary *)self->_dateFormatterCache objectForKey:formatCopy];
    if (!UsingHarmonizedSymbols)
    {
      copyWithGregorianCalendar = [localeCopy copyWithGregorianCalendar];
      UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, copyWithGregorianCalendar, 0, 0);

      v14 = *MEMORY[0x277CBEDF8];
      v15 = TSUGetGMTTimeZone();
      CFDateFormatterSetProperty(UsingHarmonizedSymbols, v14, v15);

      CFDateFormatterSetFormat(UsingHarmonizedSymbols, formatCopy);
      [(NSMutableDictionary *)self->_dateFormatterCache setObject:UsingHarmonizedSymbols forKey:formatCopy];
    }

    StringWithDate = CFDateFormatterCreateStringWithDate(0, UsingHarmonizedSymbols, dateCopy);
    [(NSLock *)self->_dateFormatterCacheLock unlock];
  }

  return StringWithDate;
}

+ (id)dateFormatterStringFromDate:(id)date withFormat:(id)format locale:(id)locale
{
  dateCopy = date;
  formatCopy = format;
  localeCopy = locale;
  v11 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_FormatterCache"];
  if (!v11)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [localeCopy localeSpecificStorageForKey:@"TSUDateFormatter_FormatterCache"];
    if (!v11)
    {
      v11 = objc_opt_new();
      [localeCopy setLocaleSpecificStorage:v11 forKey:@"TSUDateFormatter_FormatterCache"];
    }

    objc_sync_exit(selfCopy);
  }

  v13 = [v11 dateFormatterStringFromDate:dateCopy withFormat:formatCopy locale:localeCopy];

  return v13;
}

@end