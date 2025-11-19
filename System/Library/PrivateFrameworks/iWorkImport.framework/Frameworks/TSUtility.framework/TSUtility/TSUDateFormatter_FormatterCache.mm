@interface TSUDateFormatter_FormatterCache
+ (id)dateFormatterStringFromDate:(id)a3 withFormat:(id)a4 locale:(id)a5;
- (TSUDateFormatter_FormatterCache)init;
- (id)dateFormatterStringFromDate:(id)a3 withFormat:(id)a4 locale:(id)a5;
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

- (id)dateFormatterStringFromDate:(id)a3 withFormat:(id)a4 locale:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  StringWithDate = 0;
  if (v8 && v9)
  {
    [(NSLock *)self->_dateFormatterCacheLock lock];
    UsingHarmonizedSymbols = [(NSMutableDictionary *)self->_dateFormatterCache objectForKey:v9];
    if (!UsingHarmonizedSymbols)
    {
      v13 = [v10 copyWithGregorianCalendar];
      UsingHarmonizedSymbols = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, v13, 0, 0);

      v14 = *MEMORY[0x277CBEDF8];
      v15 = TSUGetGMTTimeZone();
      CFDateFormatterSetProperty(UsingHarmonizedSymbols, v14, v15);

      CFDateFormatterSetFormat(UsingHarmonizedSymbols, v9);
      [(NSMutableDictionary *)self->_dateFormatterCache setObject:UsingHarmonizedSymbols forKey:v9];
    }

    StringWithDate = CFDateFormatterCreateStringWithDate(0, UsingHarmonizedSymbols, v8);
    [(NSLock *)self->_dateFormatterCacheLock unlock];
  }

  return StringWithDate;
}

+ (id)dateFormatterStringFromDate:(id)a3 withFormat:(id)a4 locale:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 localeSpecificStorageForKey:@"TSUDateFormatter_FormatterCache"];
  if (!v11)
  {
    v12 = a1;
    objc_sync_enter(v12);
    v11 = [v10 localeSpecificStorageForKey:@"TSUDateFormatter_FormatterCache"];
    if (!v11)
    {
      v11 = objc_opt_new();
      [v10 setLocaleSpecificStorage:v11 forKey:@"TSUDateFormatter_FormatterCache"];
    }

    objc_sync_exit(v12);
  }

  v13 = [v11 dateFormatterStringFromDate:v8 withFormat:v9 locale:v10];

  return v13;
}

@end