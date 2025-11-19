@interface NSDate
@end

@implementation NSDate

uint64_t __45__NSDate_OFNSDateExtensions__dateFromString___block_invoke()
{
  dateFromString__formatter1 = objc_alloc_init(MEMORY[0x277CCA968]);
  [dateFromString__formatter1 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  [dateFromString__formatter1 setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  dateFromString__formatter2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [dateFromString__formatter2 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  v0 = dateFromString__formatter2;

  return [v0 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

uint64_t __52__NSDate_OFNSDateExtensions__dateFromRFC1123String___block_invoke()
{
  dateFromRFC1123String__formatter = objc_alloc_init(MEMORY[0x277CCA968]);
  [dateFromRFC1123String__formatter setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  v0 = dateFromRFC1123String__formatter;

  return [v0 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
}

uint64_t __51__NSDate_OFNSDateExtensions__dateFromTWTimeString___block_invoke()
{
  dateFromTWTimeString__formatter = objc_alloc_init(MEMORY[0x277CCA968]);
  [dateFromTWTimeString__formatter setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  v0 = dateFromTWTimeString__formatter;

  return [v0 setDateFormat:@"EEE MMM dd HH:mm:ss zzz yyyy"];
}

@end