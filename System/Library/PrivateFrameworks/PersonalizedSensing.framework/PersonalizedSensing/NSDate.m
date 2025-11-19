@interface NSDate
@end

@implementation NSDate

uint64_t __37__NSDate_MOExtensions__dateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = dateFormatter_dateFormatter;
  dateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [dateFormatter_dateFormatter setLocale:v2];

  [dateFormatter_dateFormatter setDateStyle:1];
  v3 = dateFormatter_dateFormatter;

  return [v3 setTimeStyle:3];
}

void __49__NSDate_MOExtensions__dayNameFormatterInEnglish__block_invoke()
{
  v0 = objc_opt_new();
  v1 = dayNameFormatterInEnglish_dateFormatter;
  dayNameFormatterInEnglish_dateFormatter = v0;

  [dayNameFormatterInEnglish_dateFormatter setDateFormat:@"EEEE"];
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [dayNameFormatterInEnglish_dateFormatter setLocale:v2];
}

uint64_t __51__NSDate_MOExtensions__relativeBundleDateFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = relativeBundleDateFormatter_dateFormatter;
  relativeBundleDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [relativeBundleDateFormatter_dateFormatter setLocale:v2];

  [relativeBundleDateFormatter_dateFormatter setTimeStyle:0];
  [relativeBundleDateFormatter_dateFormatter setDateStyle:4];
  [relativeBundleDateFormatter_dateFormatter setDoesRelativeDateFormatting:1];
  v3 = relativeBundleDateFormatter_dateFormatter;

  return [v3 setFormattingContext:5];
}

void __41__NSDate_MOExtensions__monthDayFormatter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = monthDayFormatter_dateFormatter;
  monthDayFormatter_dateFormatter = v0;

  v2 = MEMORY[0x277CCA968];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v2 dateFormatFromTemplate:@"MM/dd" options:0 locale:v3];

  [monthDayFormatter_dateFormatter setDateFormat:v4];
}

@end